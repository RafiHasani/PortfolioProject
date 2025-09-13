import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/widgets/profissional_experience_cards_widget.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              primary: true,
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              children: [
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/afghouse.png',
                  title: 'Afghan House',
                  subTitle:
                      'Afghan house is a online property dealing application, you can add your property, search property and contact users',
                  viewMore: () {
                    AppConfig().launch('https://afghouse.com/');
                  },
                ),
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/tooti2.webp',
                  title: 'Tooti',
                  subTitle:
                      'Tooti is a social network application developed by a Software company based in kabul.',
                  viewMore: () {
                    AppConfig().launch('https://tootisabz.tech/');
                  },
                ),
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/triftplan.jpg',
                  title: 'TriftPlan',
                  subTitle:
                      'A Tale of Veroke’s Fintech Revolution: Empowering Financial Futures with Thrift Plan.',
                  viewMore: () {
                    AppConfig()
                        .launch('https://www.veroke.com/portfolio/thriftplan/');
                  },
                ),
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/artstation.jpg',
                  title: 'Art Station',
                  subTitle:
                      'Art Station, an innovative mobile application, acts as a vital intermediary between two distinct user groups; talented artists listed on their platform and event organizers seeking to book their services.',
                  viewMore: () {
                    AppConfig().launch(
                        'https://www.veroke.com/portfolio/art-station/');
                  },
                ),
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/amex.jpg',
                  title: 'American Express Saudi',
                  subTitle:
                      'A leading banking company in Saudi Arabia aiming to deliver an unrivaled standard of excellence. Focusing on developing and innovating advanced payment solutions for customers.',
                  viewMore: () {
                    AppConfig().launch(
                        'https://www.veroke.com/portfolio/digital-bank/');
                  },
                ),
                8.horizontalSpace,
                MyProfissionalExperienceCard(
                  icon: 'assets/images/instalab1.webp',
                  title: 'InstaMedic',
                  subTitle:
                      'InstaMedic, a leading drug delivery company in Qatar, dedicated to ensure seamless and timely delivery of healthcare products and medications to patients.',
                  viewMore: () {
                    AppConfig()
                        .launch('https://www.veroke.com/portfolio/instamedic/');
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
