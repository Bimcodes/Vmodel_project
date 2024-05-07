import 'package:blog_application/controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleTile extends GetView<BlogController> {
  final String id;
  const ArticleTile({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.redAccent,
              child: const Center(
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            onDismissed: (direction) async {
              await controller.deleteBlog(id);
            },
            child: InkWell(
                onTap: () {
                  controller.title.isEmpty ||
                          controller.subTitle.isEmpty ||
                          controller.body.isEmpty
                      ? null
                      : () => controller.getBlog(controller.id);
                  //controller.getBlog(controller.id);
                },
                child: Container(
                    child: Row(children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1684171452382-3ff25b344227?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            controller.title,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            controller.dateCreated.split('T')[0],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 40,
                        width: 220,
                        child: Text(
                          controller.subTitle,
                        ),
                      )
                    ],
                  ),
                ])))));
  }
}
