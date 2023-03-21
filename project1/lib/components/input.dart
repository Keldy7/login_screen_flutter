import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Input extends StatelessWidget {
  final TextEditingController myController;
  final String? placeholderTexte;
  final bool? isPassword;
  const Input(
      {Key? key,
      required this.myController,
      this.placeholderTexte,
      this.isPassword,
      required void Function(dynamic name) onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w500,
        fontSize: 12
      ),
      keyboardType: isPassword!
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
      obscureText: isPassword ?? true,
      controller: myController,
      decoration: InputDecoration(
        // suffixIcon: isPassword!
        //     ? IconButton(
        //         icon: const Icon(Icons.remove_red_eye, color: Colors.grey),
        //         onPressed: () {},
        //       )
        //     : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(30)),
              fillColor: const Color.fromARGB(255, 241, 241, 241),
              filled: true,
        hintText: placeholderTexte,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ));
  }
}
