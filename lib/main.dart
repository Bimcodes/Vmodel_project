import 'package:blog_application/ui/widgets/blog_page.dart';
import 'package:blog_application/controllers.dart';
import 'package:blog_application/data/adapters/repository_adapters.dart';
import 'package:blog_application/data/models/model.dart';
import 'package:blog_application/data/networking/api_services.dart';
import 'package:blog_application/data/repository.dart';
import 'package:blog_application/ui/widgets/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:blog_application/data/networking/graph_client.dart';

import 'firebase_options.dart';

void dependencies() {
  Get.lazyPut(
    () => BlogController(repository: Get.find(), blogModel: Get.find()),
  );

  Get.lazyPut<IBlogRepository>(
      () => BlogRepository(apiService: Get.find(), blogModel: Get.find()),
      fenix: true);

  Get.lazyPut(() => ApiService(graphQlService: Get.find()));
  Get.lazyPut(() => GraphQlService());
  Get.lazyPut(() => BlogModel());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);

  dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    ValueNotifier<GraphQLClient> client = GraphQlService.initializeClient();

    return GraphQLProvider(
      client: client,
      child: GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // routerConfig: _router,
          home: const SignInPage()
          // const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}
