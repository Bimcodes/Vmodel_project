import 'package:blog_application/ui/widgets/blog_tile.dart';
import 'package:blog_application/controllers.dart';
import 'package:blog_application/ui/widgets/update_blog_page.screen.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BlogPage extends GetView<BlogController> {
const  BlogPage({super.key});

  final int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Blog Page'),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              ElevatedButton.icon(
                  onPressed: () {
                    Get.to(const UpdateBlogPage());
                  },
                  icon: const Icon(Icons.update),
                  label: const Text('Update'))
            ]),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Quick Reads",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 12,
                children: List.generate(
                  4,
                  (index) => AnimatedContainer(
                    decoration: BoxDecoration(
                      color: index == _selected
                          ? context.theme.primaryColor
                          : Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    duration: const Duration(milliseconds: 300),
                    child: InkWell(
                      onTap: () {
                        //_selected = index;
                        controller.increment();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return ArticleTile(
                            id: controller.id,
                          );
                        },
                      )))
            ])));
  }
}
