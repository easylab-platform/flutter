import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart' as io_client;

/// An [http.Client] that trusts a bundled CA (used only by the legacy
/// SSE/plain-http helpers; the Connect RPC surface speaks HTTP/2 directly).
///
/// Android's per-app trust always falls back to the system trust store even
/// when a network-security-config is present, so we trust the CA ourselves
/// inside the Dart HTTP layer instead.
Future<http.Client> platformHttpClient() async {
  final context = SecurityContext(withTrustedRoots: true);
  try {
    final data = await rootBundle.load('assets/certs/ca.crt');
    context.setTrustedCertificatesBytes(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  } catch (_) {}
  return io_client.IOClient(HttpClient(context: context));
}
