import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../utils/helper/color.dart';
import '../../../desktop/screens/home/home.dart';

class TMobileTestimonials extends StatelessWidget {
  const TMobileTestimonials({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> details = [
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632498/fyorb6dytjwsix8q75rd.webp",
        "package": "The Elite Experience",
        "price": "2,500",
        "brand": "NOIR Audio",
        "name": "Amélie Rousseau",
        "review":
            "Shalom has a rare ability to blend technology and sophistication. Our site feels powerful, cinematic, and beautifully silent — just like our speakers.He gave us exactly the tone and polish we needed to impress high-end distributors and audiophiles alike."
      },
      {
        "url":
            "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/xva3cmimnxxwllh2jzw4.webp",
        "package": "The Signature Build",
        "price": "5,000",
        "brand": "Liora Fine Jewellery",
        "name": "Clara DuBois",
        "review":
            "Shalom didn’t just build us a website — he built an experience. Every scroll, every transition, every pixel reflects the elegance of our brand. It exceeded expectations in every sense. Our clients now say the digital experience mirrors the luxury of our pieces."
      },
      {
        "url": "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632507/crfcuezqt4urnsall9ga.jpg",
        "package": "The Legacy Edition",
        "price": "10,000",
        "brand": "Voss Private Estates",
        "name": "Daniel Voss",
        "review":
            "From the moment we connected, Shalom understood the essence of luxury. His eye for clean design and mobile responsiveness helped us attract high-net-worth clients with ease, and I’d gladly do it again. It felt like working with a digital architect, not just a developer."
      },
      {
        "url": "https://res.cloudinary.com/dsqc1pitc/image/upload/v1748632508/fvu7gnklsa3nghsggvrc.jpg",
        "package": "The Elite Experience",
        "price": "2,500",
        "brand": "VELVET84",
        "name": "Isabella Martens",
        "review":
            "I’ve worked with many creatives, but Shalom’s process was refreshingly elevated. I felt the quality, care, and couture-level attention that defines true luxury. Our launch was seamless, and our visuals now feel like an extension of the runway."
      },
    ];

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
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        20,
                      ),
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
                          text: "WORDS FROM THE PRIVILEGED",
                          letterSpacing: 4,
                          fontFamily: "Picasso",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: TColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TText(
                      text: "What Visionaries Say About Shalom",
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "AscendantSerif",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TText(
                      text:
                          "Trusted by elite clients across fashion, tech, luxury, and lifestyle, here’s how I helped shape their digital legacy.",
                      fontWeight: FontWeight.w100,
                      fontSize:16,
                      letterSpacing: 2,
                      fontFamily: "AscendantSerif",
                    ),
                    SizedBox(
                      height: 80,
                    ),

                    /// MasonryGridView
                    MasonryGridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      itemCount: 4,
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(
                            15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 0.3,
                                              color: TColors.white,
                                            ),
                                          ),
                                          child:  Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline_rounded,
                                                  color: TColors.white,
                                                ),
                                                TText(
                                                  text: "UNABLE TO LOAD IMAGE",
                                                  fontSize: 6,
                                                  color: TColors.white,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      frameBuilder: (context, child, frame,_) {

                                        if (frame != null) {
                                          return child;
                                        } else {
                                          return AspectRatio(
                                            aspectRatio: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 0.3,
                                                  color: TColors.white,
                                                ),
                                              ),
                                              child: Center(
                                                child: SpinKitChasingDots(
                                                  color: TColors.white,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      details[index]["url"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: List.generate(
                                  5,
                                  (_) => Icon(
                                    Icons.star_rate,
                                    color: Colors.orange,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TText(
                                    text: details[index]["name"],
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    fontFamily: "Betty",
                                  ),
                                  TText(
                                    text: details[index]["brand"],
                                    letterSpacing: 2,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    fontFamily: "AscendantSerif",
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TText(
                                    text: details[index]["review"],
                                    fontSize:14,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: details[index]["package"],
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontFamily: "AscendantSerif",
                                            fontWeight: FontWeight.w100,
                                            fontSize:14,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " - ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w100,
                                            fontSize:14,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "£",
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w100,
                                            fontSize:14,
                                          ),
                                        ),
                                        TextSpan(
                                          text: details[index]["price"],
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontFamily: "AscendantSerif",
                                            fontWeight: FontWeight.w100,
                                            fontSize:16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 70,
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
