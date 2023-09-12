import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final textStyle = themeData.textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
    final textstyle2 = themeData.textTheme.bodyMedium!.copyWith(
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
    return Theme(
      data: themeData.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(2)),
        ),
      ),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 137),
              child: Text(
                'ورود به برنامه',
                style: textStyle.copyWith(fontFamily: "Morabba", fontSize: 38),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Text(
                'برای ورود به برنامه تیک تالک لطفا شماره همراه خود را وارد نمایید :',
                style: textstyle2.copyWith(fontFamily: "Morabba", fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 63,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: Color(0x33FFFFFF),
                  boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(0, 4))],
                  borderRadius: BorderRadius.circular(2)),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: InternationalPhoneNumberInput(
                  onInputChanged: (valeu) {},
                  inputDecoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'شماره همراه',
                    hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18,
                        fontFamily: "Morabba"),
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 95,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 99),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'دریافت کد فعالسازی',
                    style: TextStyle(fontFamily: "Morabba", fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 103, right: 102),
              child: Image.asset(
                'assets/images/soft_sazan.png',
                width: 154,
                height: 112,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
