import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_widget.dart' show AddressWidget;
import 'package:flutter/material.dart';

class AddressModel extends FlutterFlowModel<AddressWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
