import 'package:expressions/expressions.dart';
import 'package:f_calculator/models/operation_model.dart';

class CalculatorModel {

  static CalculatorModel? _instance;
  String _display = "0";
  String get display => _display;
  final _operations = [];
  Function? displayObserver;
  
  CalculatorModel._internal();

  static getInstance() {
    if(_instance == null) {
      _instance = CalculatorModel._internal();
    }
    return _instance;
  }
  
  void observeDisplay(Function observer) {
    displayObserver = observer;
  }

  void onReceiveSymbol(String symbol) {
    _updateDisplay(_display == "0" ? symbol : _display + symbol);
  }

  void onBackspace() {
    final displayContentSize = _display.length - 1;
    if(displayContentSize > 0) {
      _updateDisplay(_display.substring(0, _display.length - 1));
    } else {
      _updateDisplay("0");
    }
  }

  void onClear() {
    _updateDisplay("0");
  }

  void onEquals() {
    final expression = Expression.parse(_display);
    final result = ExpressionEvaluator().eval(expression, {}).toString();
    save(OperationModel(_display, result));
    _updateDisplay(result);
  }

  void onGetLastOperation() {
    final lastOperation = _operations.last;
    _updateDisplay(lastOperation);
  }

  void _updateDisplay(display) {
    _display = display;
    displayObserver?.call(_display);
  }

  void save(OperationModel operation) => _operations.add(operation);

  List getAll() => _operations;

}