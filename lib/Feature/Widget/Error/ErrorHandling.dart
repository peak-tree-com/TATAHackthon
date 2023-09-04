import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tatahackathon/Feature/Widget/Error/CustomErrorDisplay.dart';

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showErrorSnackBar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      showErrorSnackBar(context, jsonDecode(response.body)['error']);
      break;
    default:
      showErrorSnackBar(context, response.body);
  }
}