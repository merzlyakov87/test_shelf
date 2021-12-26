import 'dart:async';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:test_shelf/core/config/my_backend_config.dart';

import 'package:shelf/shelf_io.dart' as io;

class MyBackend {
  final MyBackendConfig config;

  final FutureOr<Response> Function(Request) handler;

  MyBackend(this.config, this.handler);

  Future<HttpServer> serve() {
    //TODO: host and port from config
    return io.serve(handler, 'localhost', 8080);
  }
}
