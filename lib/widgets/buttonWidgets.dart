import 'package:flutter/material.dart';

buildLinkButton({
  @required String? text,
  @required VoidCallback? onClicked,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        onPressed: onClicked,
        child: Text(text!),
      ),
    );
buildFileButton({
  @required String? text,
  @required VoidCallback? onClicked,
}) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        onPressed: onClicked,
        child: Text(text!),
      ),
    );

