import "package:flutter/material.dart";
import "package:musaed_user2/specific_UI/head.dart";
import "package:musaed_user2/specific_UI/headContent.dart";
import "package:musaed_user2/utils/ThemeColors.dart";

import "../specific_UI/drawer.dart";

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List<ReviewsData> RData = [
    ReviewsData(numberOfReviews: "2", dateOfReviews: "20/11/2024", imoji: [
      "assets/images/Star-struck.png",
      "assets/images/Star-struck.png"
    ], ReviewHeader: [
      "عميل",
      "عميل"
    ], numberOfRate: [
      "5.0",
      "5.0"
    ], rate: [
      "assets/images/stars1.png",
      "assets/images/stars1.png"
    ], ReviewBody1: [
      "العميل مهذب ولطيف",
      "ملتزم ومهذب"
    ], ReviewBody2: [
      "تعامله محترم ويأتى فى التوقيت المحدد",
      "تعامله محترم ويأتى فى التوقيت المحدد"
    ]),
    ReviewsData(
        numberOfReviews: "1",
        dateOfReviews: "10/11/2024",
        imoji: ["assets/images/Big-frown.png"],
        ReviewHeader: ["عميل"],
        numberOfRate: ["3.0"],
        rate: ["assets/images/stars2.png"],
        ReviewBody1: ["التواصل بالعصبيه ازعجنى"],
        ReviewBody2: [""]),
    ReviewsData(numberOfReviews: "3", dateOfReviews: "11/11/2024", imoji: [
      "assets/images/Star-struck.png",
      "assets/images/Star-struck.png",
      "assets/images/Star-struck.png"
    ], ReviewHeader: [
      "عميل",
      "عميل",
      "عميل"
    ], numberOfRate: [
      "5.0",
      "5.0",
      "5.0"
    ], rate: [
      "assets/images/stars1.png",
      "assets/images/stars1.png",
      "assets/images/stars1.png",
    ], ReviewBody1: [
      "العميل مهذب ولطيف",
      "ملتزم ومهذب",
      "ملتزم ومهذب"
    ], ReviewBody2: [
      "تعامله محترم ويأتى فى التوقيت المحدد",
      "تعامله محترم ويأتى فى التوقيت المحدد",
      "تعامله محترم ويأتى فى التوقيت المحدد"
    ])
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer1(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppTheme.appBackGroundColor,
          ),
          Head1(check: false),
          HeadContent1(
              text: "تقييماتى", scaffoldKey: _scaffoldKey, prePage: Reviews()),
          Positioned(
              top: 146,
              left: 9,
              right: 9,
              child: Container(
                width: 343,
                height: 642,
                child: Column(
                  children: [
                    Container(
                      width: 153,
                      height: 153,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black26,
                            width: 4,
                          )),
                      child: Center(
                        child: Container(
                          width: 110,
                          height: 110.73,
                          child: Column(
                            children: [
                              Image.asset("assets/images/star.png"),
                              Container(
                                width: 110,
                                height: 37,
                                child: Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    height: 36 / 24,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "اعتمادا على اخر 50 تقييم",
                        style: TextStyle(
                          fontSize: 14,
                          height: 16.8 / 14,
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      width: 343,
                      height: 444,
                      child: ListView.builder(
                          itemCount: RData.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: 343,
                                  height: (51 *
                                          int.parse(
                                              RData[index].numberOfReviews)) +
                                      75 +
                                      (10 *
                                          (int.parse(RData[index]
                                                  .numberOfReviews) -
                                              1)),
                                  decoration: BoxDecoration(
                                    color:
                                        AppTheme.whiteColor, // Background color
                                    borderRadius: BorderRadius.circular(
                                        10), // Rounded corners
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(RData[index].dateOfReviews,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text("تقييم",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                    RData[index]
                                                        .numberOfReviews,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 327,
                                        height: (51 *
                                                int.parse(RData[index]
                                                    .numberOfReviews)) +
                                            30 +
                                            (10 *
                                                (int.parse(RData[index]
                                                        .numberOfReviews) -
                                                    1)),
                                        child: ListView.builder(
                                          itemCount: int.parse(
                                              RData[index].numberOfReviews),
                                          itemBuilder: (context, i) {
                                            return Row(
                                              children: [
                                                Container(
                                                  width: 287,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                0, 0, 20, 0),
                                                        child: Container(
                                                          width: 287,
                                                          child: Text(
                                                            RData[index]
                                                                .ReviewHeader[i],
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Tajawal",
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                            textAlign:
                                                                TextAlign.right,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 0,
                                                                horizontal: 20),
                                                        child: Container(
                                                          width: 287,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Image.asset(
                                                                  RData[index]
                                                                      .rate[i]),
                                                              Text(
                                                                RData[index]
                                                                    .numberOfRate[i],
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Tajawal",
                                                                    fontSize: 9,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                0, 0, 20, 0),
                                                        child: Container(
                                                          width: 287,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                RData[index]
                                                                    .ReviewBody1[i],
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Tajawal",
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                              ),
                                                              Text(
                                                                  RData[index]
                                                                          .ReviewBody2[
                                                                      i],
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          "Tajawal",
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 32,
                                                  height: 32,
                                                  child: Image.asset(
                                                      RData[index].imoji[i]),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (index != RData.length - 1)
                                  SizedBox(
                                    height: 10,
                                  )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ReviewsData {
  final numberOfReviews;
  final dateOfReviews;
  final List<String> imoji;
  final List<String> ReviewHeader;
  final List<String> numberOfRate;
  final List<String> rate;
  final List<String> ReviewBody1;
  final List<String> ReviewBody2;
  ReviewsData(
      {required this.numberOfReviews,
      required this.dateOfReviews,
      required this.imoji,
      required this.ReviewHeader,
      required this.numberOfRate,
      required this.rate,
      required this.ReviewBody1,
      required this.ReviewBody2});
}
