import 'package:flutter/material.dart';
import 'package:reservas_canchas_nolatech/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key, required this.body, required this.title});

  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: CustomText(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            text: title,
            textAlign: TextAlign.center,
          ),
        )),
        body: body);
  }
}
