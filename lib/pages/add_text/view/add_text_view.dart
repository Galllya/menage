import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/common/widgets/snack_bar_custom.dart';
import 'package:manage/pages/add_text/bloc/add_text_bloc.dart';
import 'package:manage/pages/text/view/text_page.dart';

class AddTextView extends StatefulWidget {
  final Function({required Map<String, dynamic> text}) onAdd;
  const AddTextView({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  @override
  State<AddTextView> createState() => _AddTextViewState();
}

class _AddTextViewState extends State<AddTextView> {
  late TextEditingController textContainer;
  @override
  void initState() {
    textContainer = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textContainer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTextBloc, AddTextState>(
        listener: (BuildContext context, AddTextState state) {
      state.maybeWhen(
        orElse: () {},
        error: () {
          CustomScaffoldMessages().show(
            title: 'Произошла ошибка при отрравки',
          );
        },
        success: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const TextPage()));
        },
      );
    }, child: BlocBuilder<AddTextBloc, AddTextState>(
      builder: (BuildContext context, AddTextState state) {
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
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                        widget.onAdd(text: text);
                      }
                    },
                    child: state.maybeWhen(
                      orElse: () {
                        return const Text('Добавить');
                      },
                      processing: () {
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
