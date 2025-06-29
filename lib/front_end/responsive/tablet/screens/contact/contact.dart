import 'package:flutter/material.dart';

import '../../../../../back_end/function/function.dart';
import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/contact/contact.dart';
import '../../../desktop/screens/home/home.dart';

class TTabletContact extends StatefulWidget {
  const TTabletContact({super.key});

  @override
  State<TTabletContact> createState() => _TTabletContactState();
}

class _TTabletContactState extends State<TTabletContact> {
  @override
  void dispose() {
    TFunction.firstName.clear();
    TFunction.lastName.clear();
    TFunction.email.clear();
    TFunction.subject.clear();
    TFunction.message.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController subject = TextEditingController(text: "Proposal for a Premium Website or App");
    final TextEditingController message = TextEditingController(
        text:
        "I’m seeking a tailored web or mobile experience that reflects the sophistication of my brand. I would love to explore your premium packages and understand how we can collaborate.");

    validate() {
      var firstName = TFunction.firstName.text.trim();
      if (firstName.isEmpty) {
        TFunction.fieldValidation(
            context, "first name", "First Name can't be empty");
      } else if (TFunction.lastName.text.trim().isEmpty) {
        TFunction.fieldValidation(
            context, "last name", "Last Name can't be empty");
      } else if (TFunction.email.text.trim().isEmpty) {
        TFunction.fieldValidation(context, "email", "Email can't be empty");
      } else {
        TFunction.confirmEmail(context,
            subject: subject.text.trim(), message: message.text.trim());
      }
    }
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 80,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: TColors.white,
                      ),
                    ),
                    child: Center(
                      child: TText(
                        text: "YOUR INVITATION",
                        letterSpacing: 4,
                        fontFamily: "Picasso",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: TColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TText(
                    text: "Let’s Create Something Timeless",
                    letterSpacing: 4,
                    fontFamily: "Picasso",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TText(
                    fontFamily: "Picasso",
                    text:
                        "Every iconic brand begins with a conversation. If you're ready to craft something extraordinary, I invite you to connect. Discretion, dedication, and detail await.",
                    fontWeight: FontWeight.w100,
                    letterSpacing: 2,
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TField(
                          text: "FIRST NAME",
                          controller: TFunction.firstName,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: TField(
                          text: "LAST NAME",
                          controller: TFunction.lastName,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TField(
                          text: "EMAIL",
                          controller: TFunction.email,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: TField(
                          text: "SUBJECT",
                          controller: subject,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TField(
                    text: "MESSAGE",
                    height: 150,
                    controller: message,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 25,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: TColors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                0,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                          ),
                          onPressed: validate,
                          child: TText(
                            text: "SEND",
                            fontFamily: "Picasso",
                            color: TColors.white,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TText(
                        text: "Prefer direct contact?",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Picasso",
                        letterSpacing: 4,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: TText(
                              text: "Reach out at: ",
                              fontSize:16,
                              fontWeight: FontWeight.w100,
                              fontFamily: "Picasso",
                              letterSpacing: 2,
                            ),
                          ),
                          Flexible(
                            child: TText(
                              text: "shalomluxestudio@gmail.com",
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: "Inter",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          TNav()
        ],
      ),
    );
  }
}
