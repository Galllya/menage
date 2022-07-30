import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/pages/chat/bloc/chat_bloc.dart';
import 'package:manage/pages/chat/view/chat_view.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatPage extends StatefulWidget {
  final String userName;
  const ChatPage({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late ChatBloc chatBloc;
  IO.Socket? socket;
  @override
  void initState() {
    super.initState();
    connectWithStrapi();

    chatBloc = ChatBloc();
  }

  void connectWithStrapi() {
    socket = IO.io('http://10.0.2.2:1337',
        IO.OptionBuilder().setTransports(['websocket']).setExtraHeaders({'foo': 'bar'}).build());
  }

  @override
  void dispose() {
    chatBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>.value(
      value: chatBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Чат'),
        ),
        body: ChatView(
          userName: widget.userName,
          socket: socket!,
        ),
      ),
    );
  }
}
