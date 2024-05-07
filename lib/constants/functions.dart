import 'dart:developer';

import 'package:blog_application/data/models/freezed_models.dart';
import 'package:get/get.dart';

void toast(
  String title,
  String message, {
  SnackPosition? snackPosition = SnackPosition.BOTTOM,
}) {
  log("Toast: $title - $message");
  //where is toast called from
  // log("Toast: ${StackTrace.current}");
  Get.snackbar(
    title.tr,
    message.tr,
    snackPosition: snackPosition,
  );
}

void handleErrorResponse(dynamic err, String errorMessage) {
  log('Error: $err');
  final BasicResponse? error = err is Map<String, dynamic>
      ? BasicResponse.fromJson(err)
      : err is BasicResponse
          ? err
          : null;

  if (error == null) {
    toast(errorMessage, err.toString());
    return;
  }

  final errorString = error.message ?? error.toString();
  toast(errorMessage, errorString);
}

bool? getBool(dynamic val) {
  if (val == null) {
    return null;
  }
  if (val is bool) {
    return val;
  }
  if (val is String) {
    if (val.isEmpty) return null;
    return val.toLowerCase().trim() == "true" || val == "1";
  }
  if (val is int) {
    return val == 1;
  }
  return false;
}
String? getString(dynamic val) {
  if (val == null) {
    return null;
  }
  if (val is String) {
    if (val.isEmpty) return null;
    return val;
  }
  if (val is List<dynamic>) {
    return val.map((e) => "$e").toList().join("\n");
  }
  return "$val";
}

int? getInt(dynamic val) {
  if (val == null) {
    return null;
  }
  return int.tryParse("$val");
}
