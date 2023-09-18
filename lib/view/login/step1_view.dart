import 'package:flutter/material.dart';
import 'package:social_app/common/color_extension.dart';
import 'package:social_app/common_widget/round_button.dart';
import 'package:social_app/common_widget/round_textfield.dart';
import 'package:social_app/view/login/step2_view.dart';

class Step1View extends StatefulWidget {
  const Step1View({super.key});

  @override
  State<Step1View> createState() => _Step1ViewState();
}

class _Step1ViewState extends State<Step1View> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/img/back.png",
            width: 20,
            height: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: media.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What's your name?",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextField(
                hintText: "First Name",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                hintText: "Last Name",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                  title: "Next",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Step2View(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
