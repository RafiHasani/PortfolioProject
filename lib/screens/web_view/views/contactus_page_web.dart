import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/widgets/contactus_card_widget.dart';

import '../../../controllers/home_screen_controller.dart';

class ContactDetailsPageView extends StatelessWidget {
  final HomeController homeController;

  const ContactDetailsPageView({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Contact Details", style: textTheme.displayLarge),
        4.verticalSpace,
        Text("Ways to get in touch with me", style: textTheme.displayLarge),
        32.verticalSpace,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Talk to me", style: textTheme.titleMedium),
                  16.verticalSpace,
                  ContactTalkCardWidget(
                    icon: Icon(
                      Icons.email_outlined,
                      size: 18.r,
                      color: Colors.orange.shade500,
                    ),
                    title: 'Email',
                    subtitle: 'rafihasani2010@gmail.com',
                    showAction: false,
                    actionTitle: 'Write Me',
                  ),
                  8.verticalSpace,
                  ContactTalkCardWidget(
                    icon: Image.asset(
                      'assets/images/whatsapp.png',
                      height: 18.r,
                      width: 18.r,
                      color: Colors.orange.shade500,
                    ),
                    title: 'WhatsApp',
                    subtitle: '+93 707085670',
                    showAction: false,
                  ),
                ],
              ),
              24.horizontalSpace,
              SizedBox(
                width: 0.3.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Write email", style: textTheme.titleMedium),
                    16.verticalSpace,
                    TextField(
                      style: textTheme.bodyMedium,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your name',
                        labelText: 'Name',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    16.verticalSpace,
                    TextField(
                      style: textTheme.bodyMedium,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your email',
                        labelText: 'Mail',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    16.verticalSpace,
                    Expanded(
                      child: TextField(
                        style: textTheme.bodyMedium,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          isDense: false,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          hintText: 'What is on your mind!',
                          labelText: 'Message',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        expands: true,
                        maxLines: null,
                      ),
                    ),
                    22.verticalSpace,
                    ElevatedButton.icon(
                      iconAlignment: .end,
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_rounded,
                        size: 18.r,
                        color: theme.primaryColor,
                      ),
                      label: Text(
                        "Send Message",
                        style: textTheme.titleSmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
