import '/flutter_flow/flutter_flow_util.dart';
import 'movie_details_page_widget.dart' show MovieDetailsPageWidget;
import 'package:flutter/material.dart';

class MovieDetailsPageModel extends FlutterFlowModel<MovieDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
