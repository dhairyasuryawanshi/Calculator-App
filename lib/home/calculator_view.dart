import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();
  String _result = "";

  void _addNumbers() {
    int num1 = int.parse(_firstNumberController.text);
    int num2 = int.parse(_secondNumberController.text);
    setState(() {
      _result = (num1 + num2).toString();
    });
  }

  void _subtractNumbers() {
    int num1 = int.parse(_firstNumberController.text);
    int num2 = int.parse(_secondNumberController.text);
    setState(() {
      _result = (num1 - num2).toString();
    });
  }
  void _multiplyNumbers() {
    int num1 = int.parse(_firstNumberController.text);
    int num2 = int.parse(_secondNumberController.text);
    setState(() {
      _result = (num1 * num2).toString();
    });
  }
  void _divideNumbers() {
    int num1 = int.parse(_firstNumberController.text);
    int num2 = int.parse(_secondNumberController.text);
    setState(() {
      _result = (num1 / num2).toString();
    });
  }

  void _clearInput() {
    setState(() {
      _firstNumberController.clear();
      _secondNumberController.clear();
      _result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          displaybox(
            hint: "Enter the first number",
            controller: _firstNumberController,
          ),
          const SizedBox(
            height: 30,
          ),
          displaybox(
            hint: "Enter the second number",
            controller: _secondNumberController,
          ),
          const Spacer(
            flex: 1,
          ),
          Text("Result: $_result"),
          const SizedBox(height: 10),
          // Wrap widget to handle multiple FloatingActionButtons
          Wrap(
            spacing: 10.0, // Horizontal spacing between buttons
            runSpacing: 10.0, // Vertical spacing between rows
            children: [
              FloatingActionButton(
                onPressed: _addNumbers,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _subtractNumbers,
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: _multiplyNumbers,
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: _divideNumbers,
                child: const Icon(CupertinoIcons.divide),
              ),
              FloatingActionButton(
                onPressed: _clearInput,
                child: const Icon(CupertinoIcons.arrow_counterclockwise_circle_fill),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class displaybox extends StatelessWidget {
  const displaybox({super.key, this.hint = "Enter the number", required this.controller});

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number, // Set keyboardType to number
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 48.0),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        hintText: hint,
      ),
    );
  }
}
