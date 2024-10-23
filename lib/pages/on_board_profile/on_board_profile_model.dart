import '/backend/backend.dart';
import '/components/avatar_with_update/avatar_with_update_widget.dart';
import '/components/birthday_update/birthday_update_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'on_board_profile_widget.dart' show OnBoardProfileWidget;
import 'package:flutter/material.dart';

class OnBoardProfileModel extends FlutterFlowModel<OnBoardProfileWidget> {
  ///  Local state fields for this page.

  List<String> listOfUserNames = [];
  void addToListOfUserNames(String item) => listOfUserNames.add(item);
  void removeFromListOfUserNames(String item) => listOfUserNames.remove(item);
  void removeAtIndexFromListOfUserNames(int index) =>
      listOfUserNames.removeAt(index);
  void insertAtIndexInListOfUserNames(int index, String item) =>
      listOfUserNames.insert(index, item);
  void updateListOfUserNamesAtIndex(int index, Function(String) updateFn) =>
      listOfUserNames[index] = updateFn(listOfUserNames[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in onBoard_Profile widget.
  AppSettingRecord? currentAppSetting;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for avatarWithUpdate component.
  late AvatarWithUpdateModel avatarWithUpdateModel;
  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode;
  TextEditingController? fullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextControllerValidator;
  String? _fullNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9dyjpeqh' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for tf_userName widget.
  FocusNode? tfUserNameFocusNode;
  TextEditingController? tfUserNameTextController;
  String? Function(BuildContext, String?)? tfUserNameTextControllerValidator;
  String? _tfUserNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ndlygltm' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qemubkgi' /* Field is required */,
      );
    }

    return null;
  }

  // Model for BirthdayUpdate component.
  late BirthdayUpdateModel birthdayUpdateModel;
  // State field(s) for tf_phone widget.
  FocusNode? tfPhoneFocusNode;
  TextEditingController? tfPhoneTextController;
  String? Function(BuildContext, String?)? tfPhoneTextControllerValidator;
  // State field(s) for dd-gender widget.
  String? ddGenderValue;
  FormFieldController<String>? ddGenderValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CartRecord? cartCreatedForUser;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    avatarWithUpdateModel = createModel(context, () => AvatarWithUpdateModel());
    fullNameTextFieldTextControllerValidator =
        _fullNameTextFieldTextControllerValidator;
    tfUserNameTextControllerValidator = _tfUserNameTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    birthdayUpdateModel = createModel(context, () => BirthdayUpdateModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    avatarWithUpdateModel.dispose();
    fullNameTextFieldFocusNode?.dispose();
    fullNameTextFieldTextController?.dispose();

    tfUserNameFocusNode?.dispose();
    tfUserNameTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    birthdayUpdateModel.dispose();
    tfPhoneFocusNode?.dispose();
    tfPhoneTextController?.dispose();
  }
}
