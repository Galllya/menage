import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/common/widgets/error_info_custom.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:manage/pages/text/bloc/text_bloc.dart';
import 'package:manage/pages/text/widgets/text_container.dart';

class TextView extends StatefulWidget {
  const TextView({
    Key? key,
  }) : super(key: key);

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextBloc, TextState>(
      builder: (BuildContext context, TextState state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          loading: () {
            return const LoadingIndicatorCustom();
          },
          error: () {
            return const ErrorInfoCustom();
          },
          loaded: (texts) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [...texts.map((e) => TextContainer(baseTextModel: e))],
            );
          },
        );
      },
    );
  }
}
