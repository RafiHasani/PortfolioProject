import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/widgets/profissional_experience_card_list_widget.dart';

import '../../../controllers/home_screen_controller.dart';

class ProfissionalExperiencePageView extends StatelessWidget {
  final HomeController homeController;

  const ProfissionalExperiencePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Professional Experience",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        4.verticalSpace,
        Text(
          "Realworld Experiences",
          style: TextStyle(
            fontSize: 7.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            semanticChildCount: 3,
            shrinkWrap: true,
            children: [
              MyProfissionalExperienceCardMobileView(
                icon: 'assets/images/triftplan.jpg',
                title: 'TriftPlan',
                subTitle:
                    'A Tale of Veroke’s Fintech Revolution: Empowering Financial Futures with Thrift Plan.',
                viewMore: () {
                  AppConfig()
                      .launch('https://www.veroke.com/portfolio/thriftplan/');
                },
              ),
              4.verticalSpace,
              MyProfissionalExperienceCardMobileView(
                icon: 'assets/images/artstation.jpg',
                title: 'Art Station',
                subTitle:
                    'Art Station, an innovative mobile application, acts as a vital intermediary between two distinct user groups; talented artists listed on their platform and event organizers seeking to book their services.',
                viewMore: () {
                  AppConfig()
                      .launch('https://www.veroke.com/portfolio/art-station/');
                },
              ),
              4.verticalSpace,
              MyProfissionalExperienceCardMobileView(
                icons: CarouselSlider(
                    items: [
                      Image.asset('assets/images/amex.jpg'),
                      Image.asset('assets/images/amex1.jpg'),
                      Image.asset('assets/images/amex2.jpg'),
                    ],
                    options: CarouselOptions(
                      height: 300,
                      aspectRatio: 1 / 2,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )),
                icon: 'assets/images/amex.jpg',
                title: 'American Express Saudi',
                subTitle:
                    'A leading banking company in Saudi Arabia aiming to deliver an unrivaled standard of excellence. Focusing on developing and innovating advanced payment solutions for customers.',
                viewMore: () {
                  AppConfig()
                      .launch('https://www.veroke.com/portfolio/digital-bank/');
                },
              ),
            ],
          ),
        )

        // ListView(
        //   children: [],
        // ),
      ],
    );
  }
}
