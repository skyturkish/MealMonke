import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/constants/textstyle/text_styles.dart';
import 'package:shopping/core/extension/context_extension.dart';
import 'package:shopping/core/init/translations/locale_keys.g.dart';
import 'package:shopping/product/widget/appbar/custom_appbar.dart';
import 'package:shopping/product/widget/button/custom_elevated_button.dart';
import 'package:shopping/product/widget/textfield/custom_textfield.dart';
import 'package:shopping/view/home/profile/viewmodel/profile_view_model.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ProfileViewModel {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Form(
              key: profileFormKey,
              child: SizedBox(
                height: context.dynamicHeight(isKeyboard ? 1.23 : 0.9),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: context.paddingMediumHorizontal,
                      child: CustomAppBar(
                        leading: Text(
                          LocaleKeys.profile.tr(),
                          style: TextStylesConstants.titleLargeTextStyle(context: context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: context.paddingOnlyTopMedium,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/11/15/18/42/christmas-3817845_960_720.jpg"),
                          ),
                          Padding(
                            padding: context.paddingOnlyTopMedium,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.edit_outlined),
                                Text(
                                  LocaleKeys.editProfile.tr(),
                                  style: TextStylesConstants.clickOrangeTextStyle(context: context),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: context.paddingOnlyTopSmall,
                            child: Text("${LocaleKeys.hiThere.tr()} Emilia!",
                                style: TextStylesConstants.recentItemTextStyle(context: context),
                                textAlign: TextAlign.center),
                          ),
                          Text(LocaleKeys.signOut.tr(),
                              style: TextStylesConstants.smallGreyTextField(context: context),
                              textAlign: TextAlign.center),
                          Column(
                            children: [
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.name.tr()),
                                  controller: nameController,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.email.tr()),
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.mobileNo.tr()),
                                  controller: mobileNoController,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.address.tr()),
                                  controller: addressController,
                                  keyboardType: TextInputType.streetAddress,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.password.tr()),
                                  controller: passwordController,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomTextField(
                                  label: Text(LocaleKeys.confirmPassword.tr()),
                                  controller: passwordConfirmController,
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Padding(
                                padding: context.paddingOnlyTopSmall,
                                child: CustomElevatedButton(
                                  onPressed: () {},
                                  primary: ColorConstants.brightOrange,
                                  child: Text(
                                    LocaleKeys.save.tr(),
                                    style: TextStylesConstants.buttomMediumTextStyleWhite(context: context),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
