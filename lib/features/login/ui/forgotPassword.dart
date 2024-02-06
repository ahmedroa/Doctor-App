import 'package:doctor/core/helpers/app_regex.dart';
import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/theming/widgets/app_text_button.dart';
import 'package:doctor/core/theming/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot Password',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'At our app, we take the security of your information seriously.',
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              AppTextFormField(
                hintText: 'Email',
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                },
                // controller: context.read<LoginCubit>().emailController,
              ),
              const Spacer(),
              AppTextButton(
                buttonText: "Reset Password",
                textStyle: TextStyles.font16WhiteSemiBold,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
