import 'package:blog_application/constants/enum.dart';
import 'package:blog_application/constants/functions.dart';
import 'package:blog_application/data/adapters/repository_adapters.dart';
import 'package:blog_application/data/models/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogController extends GetxController {
  final IBlogRepository repository;
  late final TextEditingController titleController;
  late final TextEditingController subTitleController;
  late final TextEditingController bodyController;
  late final TextEditingController passwordController;
  late final TextEditingController emailController;
  final BlogModel blogModel;

  BlogController({required this.repository, required this.blogModel});

  @override
  void onInit() {
    super.onInit();
    titleController = TextEditingController();
    subTitleController = TextEditingController();
    bodyController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    titleController.dispose();
    subTitleController.dispose();
    bodyController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

// holds request data
  final status = Status.success.obs;

  final RxString _id = ''.obs;
  final RxString _email = ''.obs;
  final RxString _password = ''.obs;
  final RxString _title = ''.obs;
  final RxString _subTitle = ''.obs;
  final RxString _body = ''.obs;
  final RxString _dateCreated = ''.obs;
  var count = 0.obs;

  void increment() {
    count.value++;
  }

  String get id => _id.value;

  set id(String value) => _id.value = value;

  String get email => _email.value;

  set email(String value) => _email.value = value;

  String get password => _password.value;

  set password(String value) => _password.value = value;

  String get title => _title.value;

  set title(String value) => _title.value = value;

  String get subTitle => _subTitle.value;

  set subTitle(String value) => _subTitle.value = value;

  String get body => _body.value;

  set body(String value) => _body.value = value;

  String get dateCreated => _dateCreated.value;

  set dateCreated(String value) => _dateCreated.value = value;

  deleteBlog(String idN) {
    status(Status.loading);
    final deleteBlog = (idN);
    repository.deleteBlog(deleteBlog).then((response) {
      if (response.success == true) {
        toast('Delete Successful', response.message);
      } else {
        status(Status.error);
        handleErrorResponse(response, 'Delete failed');
      }
    }).catchError((error) {
      status(Status.error);
      handleErrorResponse(error, 'Delete failed');
    });
    return null;
  }

  void updateBlog() {
    status(Status.loading);
    final updateBlogPayLoad = {
      'body': bodyController.text,
      'title': titleController.text,
      'subTitle': subTitleController.text,
    };
    repository.updateBlog(updateBlogPayLoad).then((response) {
      if (response.body != null ||
          response.subTitle != null ||
          response.title != null) {
        toast('Update Successful', response.id!);
      } else {
        status(Status.error);
        handleErrorResponse(response, 'Update successful');
      }
    }).catchError((error) {
      status(Status.error);
      handleErrorResponse(error, 'Update successful');
    });
  }

  void getBlog(id) {
    status(Status.loading);

    repository.getBlog(id).then((response) {
      if (response.id != null) {
        toast('Delete Successful', response.id!);
      } else {
        status(Status.error);
        handleErrorResponse(response, 'Delete failed');
      }
    }).catchError((error) {
      status(Status.error);
      handleErrorResponse(error, 'Delete failed');
    });
  }

  Future getAllBlogs() async {
    status(Status.loading);
    final List<Map<String, dynamic>> getBlogs = [
      {
        'title': title,
        'subTitle': subTitle,
        'body': body,
        'id': id,
      }
    ];
    repository.getAllBlogs().then((response) {
      if (response.isNotEmpty) {
        toast('Delete Successful', getBlogs.toString());
      } else {
        status(Status.error);
        handleErrorResponse(response, 'Delete failed');
      }
    }).catchError((error) {
      status(Status.error);
      handleErrorResponse(error, 'Delete failed');
    });
  }

  void createBlog() {
    status(Status.loading);
    final createBlogPayload = {
      'title': titleController.text,
      'subTitle': subTitleController.text,
      'body': bodyController.text,
    };
    repository.createBlog(createBlogPayload).then((response) {
      if (response.title != null ||
          response.body != null ||
          response.subTitle != null) {
        toast('Delete Successful', response.id!);
      } else {
        status(Status.error);
        handleErrorResponse(response, 'Delete failed');
      }
    }).catchError((error) {
      status(Status.error);
      handleErrorResponse(error, 'Delete failed');
    });
  }
}
