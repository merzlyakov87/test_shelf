import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

class WebSocketHandler {
  Handler get handler {
    return webSocketHandler((webSocket) {
      webSocket.stream.listen((message) {
        print(message);
        webSocket.sink.add("echo $message");
      });
    });
  }
}
