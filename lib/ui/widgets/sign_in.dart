import 'package:blog_application/constants/validators.dart';
import 'package:blog_application/controllers.dart';
import 'package:blog_application/ui/widgets/blog_page.dart';
import 'package:blog_application/ui/widgets/custom_password_field.dart';
import 'package:blog_application/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<BlogController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        body: Center(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome Back',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: ' 👋',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'signInToContinue',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white10),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'enter Your Email',
              label: Text('email'),
              validator: isRequiredValidator,
              initialValue: controller.email,
              onChanged: (value) => controller.email = value,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomPasswordField(
              hintText: 'Enter Your Password',
              label: Text('password'),
              validator: isRequiredValidator,
              obscureText: true,
              onChanged: (value) => controller.password = value,
            ),
            Obx(
              () => ElevatedButton(
                onPressed:
                    controller.email.isEmpty || controller.password.isEmpty
                        ? null
                        : () {
                            if (formKey.currentState!.validate()) {
                              Get.to(const BlogPage());
                            }
                          },
                child: Text('signIn'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
