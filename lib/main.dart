import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:manage/common/network/dio_factory.dart';
import 'package:manage/common/network/rest_client.dart';
import 'package:manage/common/repositories/media_repository.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/common/repositories/type_repository.dart';
import 'package:manage/common/ui/theme.dart';
import 'package:manage/pages/home/view/home_page.dart';
import 'package:provider/provider.dart';

String api = '';
String apiFile = '';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    api = 'http://localhost:1337/api/';
    apiFile = 'http://localhost:1337';
  } else {
    api = 'http://10.0.2.2:1337/api/';
    apiFile = 'http://10.0.2.2:1337';
  }

  final restClient = RestClient(DioFactory.createDio(
    api,
  ));
  runApp(MultiProvider(providers: [
    Provider<TextRepository>(
      create: (_) => TextRepository(restClient),
    ),
    Provider<MediaRepository>(
      create: (_) => MediaRepository(restClient),
    ),
    Provider<TypeRepository>(
      create: (_) => TypeRepository(restClient),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Manage',
        debugShowCheckedModeBanner: false,
        theme: applicationTheme,
        home: const HomePage());
  }
}
