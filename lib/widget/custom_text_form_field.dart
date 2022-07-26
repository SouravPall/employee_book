import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required TextEditingController controller,
    required textLable
  }) : _controller = controller,_textLable = textLable, super(key: key);

  final TextEditingController _controller;
  final String _textLable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.name,
      decoration:  InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(_textLable),
      ),
      validator: (value){
        if (value == null || value.isEmpty){
          return '$_textLable User name cannot be empty';
        }
        return null;
      },
    );
  }
}