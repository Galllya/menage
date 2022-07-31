import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/pages/home/bloc/home_bloc.dart';
import 'package:manage/pages/home/view/home_view.dart';
import 'package:manage/pages/home/widgets/drawer_custom.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc homeBloc;
  bool isConnect = false;
  IO.Socket? socket;

  @override
  void initState() {
    super.initState();
    homeBloc = HomeBloc();
  }

  @override
  void dispose() {
    homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>.value(
      value: homeBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Главная'),
        ),
        body: const HomeView(),
        drawer: kIsWeb ? null : const DrawerCustom(),
      ),
    );
  }
}
