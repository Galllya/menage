import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/add_text/view/add_text_page.dart';
import 'package:manage/pages/home/view/home_page.dart';
import 'package:manage/pages/text/bloc/text_bloc.dart';
import 'package:manage/pages/text/view/text_view.dart';

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  late TextBloc textBloc;

  @override
  void initState() {
    super.initState();

    textBloc = TextBloc(textRepository: context.read<TextRepository>())
      ..add(const TextEvent.started());
  }

  @override
  void dispose() {
    textBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TextBloc>.value(
      value: textBloc,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Работа с текстом'),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: const TextView(),
          floatingActionButton: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddTextPage()));
            },
            child: const CircleAvatar(
              backgroundColor: AppColors.main,
              child: Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ),
          )),
    );
  }
}
