import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guaranteedsavingsprojectui/screens/textstyledetails.dart';

class GsDetails extends StatelessWidget {
  const GsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: AppColors.whiteColorDFD,
          title: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text("Learn about Guaranteed Savings",
                      maxLines: 2,
                      style: Ts.helveticaRegular.const18.lightBlack121.h13),
                ),
                Flexible(
                  flex: 1,
                  child: Icon(
                    Icons.close,
                    size: 24,
                    color: AppColors.lightBlack121,
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 60),
            child: Text("Grow your wealth in long term",
                style: Ts.helveticaBold.const28.h12.lightBlack747),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "guaranteed savings".toUpperCase(),
              style: Ts.helveticaSemiBold.const12.h13.blueCBD.h14.l20,
            ),
          ),
          Image.asset(
            "assets/graph1.png",
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
            child: Column(
              children: [
                Text(
                  "For example: If you pay ₹1.5L/year for 10 years until 2031. From 2033, you start getting an annual amount of ₹1.5L/year for 30 years. With this you also get a life cover worth ₹18.9L and extra ₹15L in the last year.",
                  style: Ts.helveticaRegular.const14.lightBlackE5E.h14,
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 10),
                      child: SvgPicture.asset("assets/svg/infoIcon.svg",
                          height: 16),
                    ),
                    Flexible(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 12, 12),
                      child: Text(
                        "You can also opt for a lumsum plan in which you can get your returns as a lumpsum amount instead of income",
                        style: Ts.helveticaRegular.const12.lightBlackA2A.l05,
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "This plan beats the returns from FD",
              style: Ts.helveticaSemiBold.const14.black000,
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          const Image(image: AssetImage("assets/images/graph1_1.png")),

          const SizedBox(
            height: 16,
          ),

          Divider(
            color: AppColors.lightBlack57F,
            height: 2,
          ),
//================================================================
          const SizedBox(
            height: 16,
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "dual tax benefits".toUpperCase(),
              style: Ts.helveticaSemiBold.const12.h13.l20.blueCBD,
            ),
          ),

          const SizedBox(
            height: 4,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 2),
            child: Text(
              "Save tax when you pay premium",
              style: Ts.helveticaBold.const14.h14.lightBlack347,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Get upto 30% as returns by filing tax returns on payment made towards policy through 80C",
              style: Ts.helveticaRegular.const14.h14.lightBlackE5E,
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax amounts",
                  style: Ts.helveticaSemiBold.const14.h14.lightBlackE5E,
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: AppColors.black000,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "On payment of Rs. 1.5L, you can save upto",
              style: Ts.helveticaRegular.const14.h14.lightBlackE5E,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Rs. 10,000",
                        style: Ts.helveticaSemiBold.const14.h14.lightBlackE5E,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "on annual income of 5-7.5L ",
                        style:
                            Ts.helveticaRegular.const12.h13.lightBlackE5E.l05,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      thickness: 1,
                      color: AppColors.lightBlack57F,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Rs. 15,000",
                        style: Ts.helveticaSemiBold.const14.h14.lightBlackE5E,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "on annual income of 7.5-10L",
                        style:
                            Ts.helveticaRegular.const12.h13.lightBlackE5E.l05,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      thickness: 1,
                      color: AppColors.lightBlack57F,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Rs. 20,000",
                        style: Ts.helveticaSemiBold.const14.h14.lightBlackE5E,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "on annual income of 10-15L",
                        style:
                            Ts.helveticaRegular.const12.h13.lightBlackE5E.l05,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                    height: 90,
                    child: VerticalDivider(
                      thickness: 1,
                      color: AppColors.lightBlack57F,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Rs. 30,000",
                        style: Ts.helveticaSemiBold.const14.h14.lightBlackE5E,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "on annual income of above 15L",
                        style:
                            Ts.helveticaRegular.const12.h13.lightBlackE5E.l05,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Save tax when you receive income & maturity benefit",
              style: Ts.helveticaBold.const14.h14.lightBlack347,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Get 100% tax exemption under 10(10D)",
              style: Ts.helveticaRegular.const14.h14.lightBlackE5E,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Divider(
            color: AppColors.lightBlack57F,
            thickness: 1,
          ),
          const SizedBox(
            height: 28,
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "life cover included".toUpperCase(),
              style: Ts.helveticaSemiBold.const12.h13.blueCBD.l20,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "In-built life cover worth 10X of annual premium. For example: for a plan with annual premium of ₹1.5L, ₹18.9L life cover will be provided",
              style: Ts.helveticaRegular.const14.h14.lightBlack747,
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffF3F0F5), Color(0xffEDE3F5)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Understand more about Guaranteed \nSavings plan",
                        style: Ts.helveticaSemiBold.const14.h14.lightBlackA2A,
                      ),
                    ),
                    Expanded(
                        child: Image.asset(
                      "assets/images/earphone.png",
                      height: 34,
                    )),
                  ],
                ),
                Text(
                  "contact advisor".toUpperCase(),
                  style: Ts.helveticaSemiBold.const12.l20.h13.pinkColor0EC,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 70,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Color(0xffE4E1E6), boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 7,
              offset: Offset(5, 5))
        ]),
        padding: const EdgeInsets.all(28),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff8800EC),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.all(0),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Check plans".toUpperCase(),
                style: const TextStyle(color: Colors.white, letterSpacing: 2),
              )),
        ),
      ),
    );
  }
}
