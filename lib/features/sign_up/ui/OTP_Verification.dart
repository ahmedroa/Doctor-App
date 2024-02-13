import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/theming/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                'OTP Verification',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'At our app, we take the security of your information seriously.',
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(40),
              _buildPinCodeFields(context),
              const Spacer(),
              AppTextButton(
                buttonText: "Submit",
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

Widget _buildPinCodeFields(BuildContext context) {
  return Container(
    child: PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: ColorsManager.mainBlue,
        inactiveColor: ColorsManager.lightGray,
        inactiveFillColor: Colors.white,
        activeFillColor: Colors.white,
        selectedColor: ColorsManager.lightGray,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (submitedCode) {
        // otpCode = submitedCode;
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    ),
  );
}
