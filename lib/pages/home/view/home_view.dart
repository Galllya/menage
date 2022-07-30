import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/chat/view/chat_page.dart';
import 'package:manage/pages/home/bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String? userName;
  final userNameTextController = TextEditingController();
  @override
  void dispose() {
    userNameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Ваш ник:'),
                      content: TextField(
                        controller: userNameTextController,
                        decoration: const InputDecoration(hintText: "..."),
                      ),
                      actions: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.main,
                            ),
                            onPressed: () {
                              setState(() {
                                userName = userNameTextController.text;
                              });
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatPage(
                                            userName: userName!,
                                          )));
                            },
                            child: const Text('Войти'))
                      ],
                    );
                  });
            },
            style: ElevatedButton.styleFrom(
              primary: AppColors.main,
            ),
            child: const Text('Зайти в чат'),
          ),
        );
      },
    );
  }
}
