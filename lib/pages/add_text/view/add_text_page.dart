import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/pages/add_text/bloc/add_text_bloc.dart';
import 'package:manage/pages/add_text/view/add_text_view.dart';

class AddTextPage extends StatefulWidget {
  const AddTextPage({Key? key}) : super(key: key);

  @override
  State<AddTextPage> createState() => _AddTextPageState();
}

class _AddTextPageState extends State<AddTextPage> {
  late AddTextBloc addTextBloc;

  @override
  void initState() {
    super.initState();

    addTextBloc = AddTextBloc(textRepository: context.read<TextRepository>());
  }

  @override
  void dispose() {
    addTextBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddTextBloc>.value(
      value: addTextBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Добавить новый текст'),
        ),
        body: AddTextView(
          onAdd: ({required Map<String, dynamic> text}) {
            addTextBloc.add(AddTextEvent.post(text));
          },
        ),
      ),
    );
  }
}
