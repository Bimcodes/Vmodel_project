import 'package:blog_application/constants/type.dart';

abstract class ApiInterface {
  const ApiInterface();
//method to get data
  Future<T> getData<T>({
    required String query,
    required T Function(Json json) response,
  });

// method to post data
  Future<T> postData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  });

// method to update post
  Future<T> updateData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  });

//method to delete post
   Future<T> deleteData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  });
}