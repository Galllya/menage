import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/common/widgets/snack_bar_custom.dart';
import 'package:manage/pages/all_text/bloc/all_text_bloc.dart';
import 'package:manage/pages/text/view/text_page.dart';

class AllTextView extends StatefulWidget {
  final Function({required Map<String, dynamic> text}) onUpdate;
  final String text;

  const AllTextView({
    Key? key,
    required this.onUpdate,
    required this.text,
  }) : super(key: key);

  @override
  State<AllTextView> createState() => _AllTextViewState();
}

class _AllTextViewState extends State<AllTextView> {
  late TextEditingController textContainer;
  @override
  void initState() {
    textContainer = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  void dispose() {
    textContainer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AllTextBloc, AllTextState>(
        listener: (BuildContext context, AllTextState state) {
      state.maybeWhen(
        orElse: () {},
        errorDelete: () {
          CustomScaffoldMessages().show(
            title: 'Произошла ошибка при удалении',
          );
        },
        successDelete: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const TextPage()));
        },
        errorUpdate: () {
          CustomScaffoldMessages().show(
            title: 'Произошла ошибка при обновлении',
          );
        },
        successUpdate: () {
          CustomScaffoldMessages().show(
            title: 'Данные обновились',
          );
        },
      );
    }, child: BlocBuilder<AllTextBloc, AllTextState>(
      builder: (BuildContext context, AllTextState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TextField(
                  controller: textContainer,
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.main.withOpacity(0.2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 60, 10),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (textContainer.text == '') {
                        CustomScaffoldMessages().show(title: 'Не забудьте добавить текст');
                      } else {
                        final Map<String, dynamic> text = {
                          "text": textContainer.text,
                        };
                        widget.onUpdate(text: text);
                      }
                    },
                    child: state.maybeWhen(
                      orElse: () {
                        return const Text('Изменить');
                      },
                      processingUpdate: () {
                        return const SizedBox(
                          height: 10,
                          child: CircularProgressIndicator(
                            color: AppColors.white,
                          ),
                        );
                      },
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.main,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
