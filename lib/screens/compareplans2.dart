import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComparePlans2 extends StatefulWidget {
  const ComparePlans2({Key? key}) : super(key: key);

  @override
  State<ComparePlans2> createState() => _ComparePlans2State();
}

class _ComparePlans2State extends State<ComparePlans2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff212121),
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text(
          "Guaranteed savings plan",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1.3,
              color: Color(0xffE2E2E2)),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 12, top: 8, bottom: 12, right: 12),
            color: const Color(0xff212121),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2A2A2A),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 8, bottom: 8, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "You pay",
                              style: TextStyle(
                                color: Color(0xffABABAB),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "₹ 1L/year for 10 years",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffE2E2E2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   width: 8,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2A2A2A),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 8, bottom: 8, right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "You get",
                              style: TextStyle(
                                color: Color(0xffABABAB),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "as income for 20 years",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffE2E2E2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Change".toUpperCase(),
                  style: const TextStyle(
                    color: Color(0xffCB92FF),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            color: Color(0xffD6E3FF),
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                SvgPicture.asset("assets/svg/verified_user.svg", height: 20),
                SizedBox(
                  width: 8,
                ),
                Text("All policies have a life cover included"),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "select a plan".toUpperCase(),
                    style: const TextStyle(
                        color: Color(0xff474747),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    children: [
                      Container(
                        //                    box==============2
                        decoration: BoxDecoration(
                            color: const Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(4)),

                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/tata-aia-life-logo-freelogovectors1.png",
                                  height: 24,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "Guaranteed Income Plan",
                                      style: TextStyle(
                                          color: Color(0xff212121),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.5),
                                    ),
                                    Text(
                                      "Income plan",
                                      style: TextStyle(
                                          color: Color(0xff006A6A),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.5),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          27, 27, 27, 0.04),
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "₹ 10L",
                                        style: TextStyle(
                                            color: Color(0xff2B0052),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Total payment (10 years)",
                                        style: TextStyle(
                                            color: Color(0xff5F5E62),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            0, 106, 106, 0.08),
                                        borderRadius: BorderRadius.circular(4)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                  text: TextSpan(
                                                      text: "₹ 41.1L",
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xff2B0052),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      children: [
                                                    const WidgetSpan(
                                                        child: SizedBox(
                                                      width: 4,
                                                    )),
                                                    WidgetSpan(
                                                        child: Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 6,
                                                          vertical: 3),
                                                      color:
                                                          const Color.fromRGBO(
                                                              49, 0, 82, 0.08),
                                                      child: const Text(
                                                        "2.2x",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff474747),
                                                            letterSpacing: 1,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ))
                                                  ])),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              const Text(
                                                "Returns (after 20 years)",
                                                style: TextStyle(
                                                    color: Color(0xff5F5E62),
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: SizedBox(
                                            height: 36,
                                            child: VerticalDivider(
                                              thickness: 1,
                                              color: Color(0xff7C757F),
                                            ),
                                          ),
                                        ), // vertical divider

                                        Column(
                                          children: [
                                            const Text(
                                              "7.1%",
                                              style: TextStyle(
                                                  color: Color(0xff006E1E),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                            ),
                                            RichText(
                                              text: const TextSpan(
                                                  text: "IRR",
                                                  style: TextStyle(
                                                      color: Color(0xff5F5E62),
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  children: [
                                                    WidgetSpan(
                                                        child: Icon(
                                                      Icons.info_outline,
                                                      size: 8,
                                                    ))
                                                  ]),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xffffffff),
                        child: ListTile(
                          title: const Text(
                            "List title",
                            style: TextStyle(
                                color: Color(0xff2a2a2a),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Container(
                              color: const Color(0xffD6E3FF),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 6),
                              child: Text(
                                "higher returns- 7.3%".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2A2A2A)),
                              )),
                          trailing: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff2A2A2A),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
