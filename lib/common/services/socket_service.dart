// import 'dart:async';

// import 'package:manage/domain/chat_model.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;

// class SocketService {
//   static late StreamController<ChatModel> _socketResponse;
//   static late StreamController<List<String>> _userResponse;
//   static late io.Socket _socket;
//   static String _userName = '';

//   static String? get userId => _socket.id;

//   static Stream<ChatModel> get getResponse => _socketResponse.stream.asBroadcastStream();
//   static Stream<List<String>> get userResponse => _userResponse.stream.asBroadcastStream();

//   static void setUserName(String name) {
//     _userName = name;
//   }

//   static void sendMessage(ChatModel chatModel) {
//     _socket.emit('sendMessage', ChatModel);
//   }

//   static void connectAndListen() {
//     _socketResponse = StreamController<ChatModel>();
//     _userResponse = StreamController<List<String>>();
//     final socket = IO.io(
//         'http://10.0.2.2:1337',
//         IO.OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
//             .setExtraHeaders({'foo': 'bar'}) // optional
//             .build());
//     socket.onConnect((_) {
//       print('connect');

//       socket.emit('msg', 'test');
//     });
//     socket.on('event', (data) => print(data));
//     socket.onDisconnect((_) {
//       print('disconnect');
//     });
//     socket.on('fromServer', (_) => print(_));
//     socket.onError((data) => print(data));
//     _socket.connect();

//     //When an event recieved from server, data is added to the stream
//     _socket.on('message', (data) {
//       _socketResponse.sink.add(Chat.fromRawJson(data));
//     });

//     //when users are connected or disconnected
//     _socket.on('users', (data) {
//       var users = (data as List<dynamic>).map((e) => e.toString()).toList();
//       _userResponse.sink.add(users);
//     });

//     // _socket.onDisconnect((_) => print('disconnect'));
//   }

//   static void dispose() {
//     _socket.dispose();
//     _socket.destroy();
//     _socket.close();
//     _socket.disconnect();
//     _socketResponse.close();
//     _userResponse.close();
//   }
// }
