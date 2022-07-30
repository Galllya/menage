import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/repositories/text_repository.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/domain/base_model.dart';
import 'package:manage/pages/all_text/bloc/all_text_bloc.dart';
import 'package:manage/pages/all_text/view/all_text_view.dart';
import 'package:manage/pages/all_text/widgets/delete_dialog.dart';
import 'package:manage/pages/text/view/text_page.dart';

class AllTextPage extends StatefulWidget {
  final BaseTextModel baseTextModel;
  const AllTextPage({
    Key? key,
    required this.baseTextModel,
  }) : super(key: key);

  @override
  State<AllTextPage> createState() => _AllTextPageState();
}

class _AllTextPageState extends State<AllTextPage> {
  late AllTextBloc allTextBloc;

  @override
  void initState() {
    super.initState();

    allTextBloc =
        AllTextBloc(textRepository: context.read<TextRepository>(), id: widget.baseTextModel.id);
  }

  @override
  void dispose() {
    allTextBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AllTextBloc>.value(
      value: allTextBloc,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Полный текст',
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TextPage()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: AllTextView(
            text: widget.baseTextModel.attributes!.text!,
            onUpdate: ({required Map<String, dynamic> text}) {
              allTextBloc.add(AllTextEvent.startUpdate(text));
            },
          ),
          floatingActionButton: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DeleteDialog(
                      onDelete: () {
                        allTextBloc.add(const AllTextEvent.startDelete());
                      },
                    );
                  });
            },
            child: const CircleAvatar(
              backgroundColor: AppColors.main,
              child: Icon(
                Icons.delete,
                color: AppColors.white,
              ),
            ),
          )),
    );
  }
}
