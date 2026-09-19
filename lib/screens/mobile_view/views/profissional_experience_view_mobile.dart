import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/widgets/profissional_experience_card_list_widget.dart';

class ProfissionalExperiencePageView extends StatelessWidget {
  const ProfissionalExperiencePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Professional Experience', style: textTheme.headlineSmall),
        4.verticalSpace,
        Text('Realworld Experiences', style: textTheme.bodyMedium),
        32.verticalSpace,
        SizedBox(
          height: 0.45.sh,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(
                context,
              ).copyWith(scrollbars: false),
              child: ListView(
                children: [
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/afghouse.png',
                    title: 'Afghan House',
                    subTitle:
                        'Afghan house is a online property dealing application, '
                        'you can add your property, search property and contact users',
                    viewMore: () {
                      AppConfig().launch('https://afghouse.com/');
                    },
                  ),
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/tooti2.webp',
                    title: 'Tooti',
                    subTitle:
                        'Tooti is a social network application developed by a '
                        'Software company based in kabul.',
                    viewMore: () {
                      AppConfig().launch('https://tootisabz.tech/');
                    },
                  ),
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/triftplan.jpg',
                    title: 'TriftPlan',
                    subTitle:
                        'A Tale of Veroke’s Fintech Revolution: Empowering '
                        'Financial Futures with Thrift Plan.',
                    viewMore: () {
                      AppConfig().launch(
                        'https://www.veroke.com/portfolio/thriftplan/',
                      );
                    },
                  ),
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/artstation.jpg',
                    title: 'Art Station',
                    subTitle:
                        'Art Station, an innovative mobile application, acts as '
                        'a vital intermediary between two distinct user groups; '
                        'talented artists listed on their platform and event '
                        'organizers seeking to book their services.',
                    viewMore: () {
                      AppConfig().launch(
                        'https://www.veroke.com/portfolio/art-station/',
                      );
                    },
                  ),
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/amex.jpg',
                    title: 'American Express Saudi',
                    subTitle:
                        'A leading banking company in Saudi Arabia aiming to '
                        'deliver an unrivaled standard of excellence. Focusing '
                        'on developing and innovating advanced payment solutions '
                        'for customers.',
                    viewMore: () {
                      AppConfig().launch(
                        'https://www.veroke.com/portfolio/digital-bank/',
                      );
                    },
                  ),
                  4.verticalSpace,
                  MyProfissionalExperienceCardMobileView(
                    icon: 'assets/images/instalab1.png',
                    title: 'InstaMedic',
                    subTitle:
                        'InstaMedic, a leading drug delivery company in Qatar, '
                        'dedicated to ensure seamless and timely delivery of '
                        'healthcare products and medications to patients.',
                    viewMore: () {
                      AppConfig().launch(
                        'https://www.veroke.com/portfolio/instamedic/',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
