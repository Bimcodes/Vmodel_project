import 'package:blog_application/ui/widgets/blog_page.dart';
import 'package:blog_application/constants/validators.dart';
import 'package:blog_application/controllers.dart';
import 'package:blog_application/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateBlogPage extends GetView<BlogController> {
  //final BlogModel? blog;
  const UpdateBlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    // controller.bodyController.text = blog!.body!;
    // controller.titleController.text = blog!.title!;
    // controller.subTitleController.text = blog!.subTitle!;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Update Blog'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              const Text(
                "Please Enter The Following Details",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 27),
              const Text(
                "Title",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                  //controller: controller.titleController,
                  keyboardType: TextInputType.text,
                  validator: isRequiredValidator,
                  initialValue: controller.title,
                  onChanged: (value) => controller.title = value),
              const SizedBox(height: 8),
              const Text(
                "Subtitle",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                  //controller: controller.subTitleController,
                  keyboardType: TextInputType.text,
                  validator: isRequiredValidator,
                  initialValue: controller.subTitle,
                  onChanged: (value) => controller.subTitle = value),
              const SizedBox(height: 8),
              const Text(
                "Body",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              CustomTextField(
                  //controller: controller.bodyController,
                  initialValue: controller.body,
                  keyboardType: TextInputType.text,
                  validator: isRequiredValidator,
                  onChanged: (value) => controller.body = value),
              TextButton(
                onPressed: () {
                  // create
                  controller.title.isEmpty ||
                          controller.subTitle.isEmpty ||
                          controller.body.isEmpty
                      ? null
                      : () => controller.updateBlog();
                  Get.off(BlogPage());
                  //controller.updateBlog();
                },
                child: const Text("Delete"),
              ),
            ]),
          ),
        ));
  }
}

// class UpdateArticle extends GetView<BlogController> {
//   f  @override
//   Widget build(BuildContext context, WidgetRef ref) {
    
//     final theme = Theme.of(context);
//     return Scaffold(
//       backgroundColor: theme.backgroundColor,
//       appBar: AppBar(
//         elevation: 1,
//         leading: Semantics(
//           button: true,
//           child: InkWell(
//             onTap: () {
//               // go back
//               GoRouter.of(context).pop();
//             },
//             borderRadius: BorderRadius.circular(20.sp),
//             child: Padding(
//               padding: const EdgeInsets.all(3.0),
//               child: SvgPicture.asset(
//                 ConstantImage.back,
//                 fit: BoxFit.scaleDown,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         centerTitle: true,
//         title: Text("Update Blog"),
//         actions: [
//           TextButton(
//             onPressed: () {
//               // create
//               if (_formKey.currentState!.validate()) {
//                 ref.read(blogStateProvider.notifier).update(
//                       id: blog!.id,
//                       body: _bodyController.text,
//                       title: _titleController.text,
//                       subtitle: _subtitleController.text,
//                     );
//               }
//             },
//             child: Text("Update"),
//           )
//         ],
//       ),
//       body: Container(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24,
//           child: Form(
//             key: _formKey,
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 20),
//                   Text(
//                     "Please Enter The Following Details",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   SizedBox(height: 27),
//                   Text(
//                     "Title",
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   SizedBox(height: 5),
//                   CustomTextField(
//                     controller: _titleController,
//                     keyboardType: TextInputType.text,
//                     validator: isRequiredValidator
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "Subtitle",
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   SizedBox(height: 5),
//                   CustomTextField(
//                     controller: _subtitleController,
//                     keyboardType: TextInputType.text,
                    
//                     validator: isRequiredValidator
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "Body",
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   SizedBox(height: 5),
//                   CustomTextField(
//                     controller: _bodyController,
//                     keyboardType: TextInputType.text,
                    
//                     validator: isRequiredValidator
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }