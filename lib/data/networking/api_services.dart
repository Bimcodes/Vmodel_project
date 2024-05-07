// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:blog_application/constants/type.dart';
import 'package:blog_application/data/networking/api_interface.dart';
import 'package:blog_application/data/networking/graph_client.dart';

class ApiService implements ApiInterface {
  late final GraphQlService graphQlService;

  ApiService( {required this.graphQlService});

  @override
  Future<T> getData<T>({
    required String query,
    required T Function(Json json) response,
  }) async {
    late Json result;
    try {
      final response = await graphQlService.get<QueryResult>(query);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> postData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await graphQlService.post<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> updateData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await graphQlService.update<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> deleteData<T>({
    required Json param,
    required String query,
    required T Function(dynamic json) response,
  }) async {
    late Json result;
    try {
      final response = await graphQlService.delete<QueryResult>(query, param);
      result = response.data!;
    } on GraphQLError catch (e) {
      throw Exception(e.message);
    }
    try {
      return response(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
