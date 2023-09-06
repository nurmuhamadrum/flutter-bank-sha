import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    required this.title,
    this.obsecureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide:
                      BorderSide(width: 1, color: borderTextInputColor)),
              contentPadding: const EdgeInsets.all(12)),
        )
      ],
    );
  }
}
