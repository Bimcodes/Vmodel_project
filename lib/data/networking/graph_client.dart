import 'package:blog_application/constants/type.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class GraphQlService {
  static final HttpLink httpLink =
      HttpLink('https://uat-api.vmodel.app/graphql/');
      

  static ValueNotifier<GraphQLClient> initializeClient() {
    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(cache: GraphQLCache(), link: httpLink)
    );
    return client;
  }

  Future<QueryResult> get<T>(String query) async {
    final client = initializeClient();
    final queryOptions = QueryOptions(document: gql(query));
    final result = await client.value.query(queryOptions);
    return result;
  }

   Future<QueryResult> getAll<T>(String query) async {
    final queryOptions = QueryOptions(document: gql(query));
    final result = await initializeClient().value.query(queryOptions);
    return result;
  }

  Future<QueryResult> post<T>(String query, Json data) async {
    final mutationOptions =
        MutationOptions(document: gql(query), variables: data);
    final result = await initializeClient().value.mutate(mutationOptions);
    return result;
  }

  Future<QueryResult> update<T>(String query, Json data) async {
    final mutationOptions =
        MutationOptions(document: gql(query), variables: data);
    final result = await initializeClient().value.mutate(mutationOptions);
    return result;
  }

  Future<QueryResult> delete<T>(String query, Json data) async {
    final mutationOptions = MutationOptions(
      document: gql(query),
      variables: data,
    );
    final result = await initializeClient().value.mutate(mutationOptions);
    return result;
  }

}
