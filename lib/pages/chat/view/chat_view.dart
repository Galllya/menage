import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manage/domain/chat_model.dart';
import 'package:manage/pages/chat/bloc/chat_bloc.dart';
import 'package:manage/pages/chat/widgets/message_container.dart';
import 'package:socket_io_client/socket_io_client.dart';

class ChatView extends StatefulWidget {
  final String userName;
  final Socket socket;
  const ChatView({
    Key? key,
    required this.userName,
    required this.socket,
  }) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final messageTextController = TextEditingController();
  List<ChatModel> chats = [];
  @override
  void initState() {
    widget.socket.on(
      "newMessage",
      (data) {
        addMessage(data);
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    messageTextController.dispose();
    super.dispose();
  }

  void addMessage(Map<String, dynamic> data) {
    setState(() {
      chats.add(ChatModel.fromJson(data));
    });
  }

  void sendMessage() {
    widget.socket.emit(
        "sendMessage", ChatModel(message: messageTextController.value.text, user: widget.userName));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (BuildContext context, ChatState state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  ...chats.map((e) => Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: MessageContainer(
                            chatModel: e, isCurUser: e.user == widget.userName ? true : false),
                      ))
                ],
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageTextController,
                        decoration: InputDecoration(
                          labelText: "сообщение...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          sendMessage();
                          messageTextController.clear();
                        },
                        icon: const Icon(Icons.send)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
