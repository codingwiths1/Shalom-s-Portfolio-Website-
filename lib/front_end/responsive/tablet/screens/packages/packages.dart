import 'package:flutter/material.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/home/home.dart';
import '../../../desktop/screens/packages/packages.dart';

class TTabletPackages extends StatelessWidget {
  const TTabletPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Drawer(
            width: double.maxFinite,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 80,
                ),
                child: Column(
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
                          text: "PRESTIGE PACKAGES",
                          fontFamily: "Picasso",
                          letterSpacing: 4,
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
                      text:
                          "Crafted for visionaries who demand distinction. Each package is a curated digital experience — tailored with precision, elegance, and intent.",
                      fontWeight: FontWeight.w100,
                      letterSpacing: 4,
                      fontFamily: "Picasso",
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TText(
                      text: "Select your suite and begin your legacy.",
                      fontWeight: FontWeight.w500,
                      fontFamily: "Betty",
                      fontSize: 25,
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    /// Package Cards
                    Row(
                      children: [
                        Expanded(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,alignment: WrapAlignment.spaceEvenly,runSpacing: 70,spacing: 30,
                            children: [
                              TPackage(
                                package: 'The Foundation Build',
                                description:
                                'For emerging brands that desire elegance from day one.',
                                price: '500',
                                details1: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Brand",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " - ",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "Inter",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "inspired color palette",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " & ",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "Inter",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "typography",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                length: 1,
                                details2: TText(
                                  text: "Premium contact form integration",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                days: 5,
                              ),
                              TPackage(
                                package: 'The Prestige Suite',
                                description:
                                'Polished presence for growing visionaries.',
                                price: '1,000',
                                widget: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5.0,
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 3,
                                        color: TColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: TText(
                                        text: "Basic SEO optimization",
                                        fontFamily: "AscendantSerif",
                                        color: TColors.white,
                                        fontSize:16,
                                      ),
                                    ),
                                  ],
                                ),
                                details1: TText(
                                  text:
                                  "Strategic layout design for conversions",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                length: 2,
                                details2: TText(
                                  text: "Premium mobile experience",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                days: 10,
                              ),
                              TPackage(
                                package: ' The Elite Experience',
                                description:
                                'A bespoke digital statement for established brands.',
                                price: '2500',
                                details1: TText(
                                  text:
                                  "Product showcase or portfolio integration",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                length: 3,
                                details2: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "High",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " - ",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "Inter",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "end contact or booking flow",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                widget: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5.0,
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 3,
                                        color: TColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: TText(
                                        text: "Priority revisions",
                                        fontFamily: "AscendantSerif",
                                        color: TColors.white,
                                        fontSize:16,
                                      ),
                                    ),
                                  ],
                                ),
                                days: 15,
                              ),
                              TPackage(
                                package: 'The Signature Build',
                                description:
                                'Tailored for industry leaders and timeless brands.',
                                price: '5,000',
                                details1: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Custom full",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "-",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "Inter",
                                          color: TColors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        "width visuals, parallax design",
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          fontSize:16,
                                          fontFamily: "AscendantSerif",
                                          color: TColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                length: 4,
                                details2: TText(
                                  text: "Cinematic interactions",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                widget: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Fully bespoke UX",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "/",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "UX flow",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: TText(
                                            text:
                                            "Luxury copywriting included",
                                            fontFamily: "AscendantSerif",
                                            color: TColors.white,
                                            fontSize:16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Concierge",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "-",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "style collaboration",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                days: 18,
                              ),
                              TPackage(
                                widget: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "E",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "-",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                  "commerce or booking systems",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                  "Advanced strategy, copy, design",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " & ",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "launch",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                          ),
                                          child: Icon(
                                            Icons.circle,
                                            size: 3,
                                            color: TColors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Web",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " & ",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "mobile apps,",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " full",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "-",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily: "Inter",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "stack experience",
                                                  style: TextStyle(
                                                    overflow:
                                                    TextOverflow.clip,
                                                    fontSize:16,
                                                    fontFamily:
                                                    "AscendantSerif",
                                                    color: TColors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                description:
                                'An elite brand ecosystem, completely handcrafted.',
                                package: 'The Legacy Edition',
                                price: '10,000',
                                details1: TText(
                                  text: "Brand film or storytelling visuals",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                length: 5,
                                details2: TText(
                                  text: "Ongoing digital care concierge",
                                  fontFamily: "AscendantSerif",
                                  color: TColors.white,
                                  fontSize:16,
                                ),
                                days: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          TNav()
        ],
      ),
    );
  }
}
