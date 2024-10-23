// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationConfiguresStruct extends FFFirebaseStruct {
  NotificationConfiguresStruct({
    bool? enableNotification,
    bool? sound,
    bool? vibrate,
    bool? specialOffers,
    bool? promoDiscount,
    bool? payments,
    bool? cashback,
    bool? appUpdates,
    bool? newServices,
    bool? newTips,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _enableNotification = enableNotification,
        _sound = sound,
        _vibrate = vibrate,
        _specialOffers = specialOffers,
        _promoDiscount = promoDiscount,
        _payments = payments,
        _cashback = cashback,
        _appUpdates = appUpdates,
        _newServices = newServices,
        _newTips = newTips,
        super(firestoreUtilData);

  // "EnableNotification" field.
  bool? _enableNotification;
  bool get enableNotification => _enableNotification ?? false;
  set enableNotification(bool? val) => _enableNotification = val;

  bool hasEnableNotification() => _enableNotification != null;

  // "Sound" field.
  bool? _sound;
  bool get sound => _sound ?? false;
  set sound(bool? val) => _sound = val;

  bool hasSound() => _sound != null;

  // "Vibrate" field.
  bool? _vibrate;
  bool get vibrate => _vibrate ?? false;
  set vibrate(bool? val) => _vibrate = val;

  bool hasVibrate() => _vibrate != null;

  // "SpecialOffers" field.
  bool? _specialOffers;
  bool get specialOffers => _specialOffers ?? false;
  set specialOffers(bool? val) => _specialOffers = val;

  bool hasSpecialOffers() => _specialOffers != null;

  // "PromoDiscount" field.
  bool? _promoDiscount;
  bool get promoDiscount => _promoDiscount ?? false;
  set promoDiscount(bool? val) => _promoDiscount = val;

  bool hasPromoDiscount() => _promoDiscount != null;

  // "Payments" field.
  bool? _payments;
  bool get payments => _payments ?? false;
  set payments(bool? val) => _payments = val;

  bool hasPayments() => _payments != null;

  // "Cashback" field.
  bool? _cashback;
  bool get cashback => _cashback ?? false;
  set cashback(bool? val) => _cashback = val;

  bool hasCashback() => _cashback != null;

  // "AppUpdates" field.
  bool? _appUpdates;
  bool get appUpdates => _appUpdates ?? false;
  set appUpdates(bool? val) => _appUpdates = val;

  bool hasAppUpdates() => _appUpdates != null;

  // "NewServices" field.
  bool? _newServices;
  bool get newServices => _newServices ?? false;
  set newServices(bool? val) => _newServices = val;

  bool hasNewServices() => _newServices != null;

  // "NewTips" field.
  bool? _newTips;
  bool get newTips => _newTips ?? false;
  set newTips(bool? val) => _newTips = val;

  bool hasNewTips() => _newTips != null;

  static NotificationConfiguresStruct fromMap(Map<String, dynamic> data) =>
      NotificationConfiguresStruct(
        enableNotification: data['EnableNotification'] as bool?,
        sound: data['Sound'] as bool?,
        vibrate: data['Vibrate'] as bool?,
        specialOffers: data['SpecialOffers'] as bool?,
        promoDiscount: data['PromoDiscount'] as bool?,
        payments: data['Payments'] as bool?,
        cashback: data['Cashback'] as bool?,
        appUpdates: data['AppUpdates'] as bool?,
        newServices: data['NewServices'] as bool?,
        newTips: data['NewTips'] as bool?,
      );

  static NotificationConfiguresStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationConfiguresStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'EnableNotification': _enableNotification,
        'Sound': _sound,
        'Vibrate': _vibrate,
        'SpecialOffers': _specialOffers,
        'PromoDiscount': _promoDiscount,
        'Payments': _payments,
        'Cashback': _cashback,
        'AppUpdates': _appUpdates,
        'NewServices': _newServices,
        'NewTips': _newTips,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'EnableNotification': serializeParam(
          _enableNotification,
          ParamType.bool,
        ),
        'Sound': serializeParam(
          _sound,
          ParamType.bool,
        ),
        'Vibrate': serializeParam(
          _vibrate,
          ParamType.bool,
        ),
        'SpecialOffers': serializeParam(
          _specialOffers,
          ParamType.bool,
        ),
        'PromoDiscount': serializeParam(
          _promoDiscount,
          ParamType.bool,
        ),
        'Payments': serializeParam(
          _payments,
          ParamType.bool,
        ),
        'Cashback': serializeParam(
          _cashback,
          ParamType.bool,
        ),
        'AppUpdates': serializeParam(
          _appUpdates,
          ParamType.bool,
        ),
        'NewServices': serializeParam(
          _newServices,
          ParamType.bool,
        ),
        'NewTips': serializeParam(
          _newTips,
          ParamType.bool,
        ),
      }.withoutNulls;

  static NotificationConfiguresStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationConfiguresStruct(
        enableNotification: deserializeParam(
          data['EnableNotification'],
          ParamType.bool,
          false,
        ),
        sound: deserializeParam(
          data['Sound'],
          ParamType.bool,
          false,
        ),
        vibrate: deserializeParam(
          data['Vibrate'],
          ParamType.bool,
          false,
        ),
        specialOffers: deserializeParam(
          data['SpecialOffers'],
          ParamType.bool,
          false,
        ),
        promoDiscount: deserializeParam(
          data['PromoDiscount'],
          ParamType.bool,
          false,
        ),
        payments: deserializeParam(
          data['Payments'],
          ParamType.bool,
          false,
        ),
        cashback: deserializeParam(
          data['Cashback'],
          ParamType.bool,
          false,
        ),
        appUpdates: deserializeParam(
          data['AppUpdates'],
          ParamType.bool,
          false,
        ),
        newServices: deserializeParam(
          data['NewServices'],
          ParamType.bool,
          false,
        ),
        newTips: deserializeParam(
          data['NewTips'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'NotificationConfiguresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationConfiguresStruct &&
        enableNotification == other.enableNotification &&
        sound == other.sound &&
        vibrate == other.vibrate &&
        specialOffers == other.specialOffers &&
        promoDiscount == other.promoDiscount &&
        payments == other.payments &&
        cashback == other.cashback &&
        appUpdates == other.appUpdates &&
        newServices == other.newServices &&
        newTips == other.newTips;
  }

  @override
  int get hashCode => const ListEquality().hash([
        enableNotification,
        sound,
        vibrate,
        specialOffers,
        promoDiscount,
        payments,
        cashback,
        appUpdates,
        newServices,
        newTips
      ]);
}

NotificationConfiguresStruct createNotificationConfiguresStruct({
  bool? enableNotification,
  bool? sound,
  bool? vibrate,
  bool? specialOffers,
  bool? promoDiscount,
  bool? payments,
  bool? cashback,
  bool? appUpdates,
  bool? newServices,
  bool? newTips,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationConfiguresStruct(
      enableNotification: enableNotification,
      sound: sound,
      vibrate: vibrate,
      specialOffers: specialOffers,
      promoDiscount: promoDiscount,
      payments: payments,
      cashback: cashback,
      appUpdates: appUpdates,
      newServices: newServices,
      newTips: newTips,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationConfiguresStruct? updateNotificationConfiguresStruct(
  NotificationConfiguresStruct? notificationConfigures, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationConfigures
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationConfiguresStructData(
  Map<String, dynamic> firestoreData,
  NotificationConfiguresStruct? notificationConfigures,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationConfigures == null) {
    return;
  }
  if (notificationConfigures.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      notificationConfigures.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationConfiguresData = getNotificationConfiguresFirestoreData(
      notificationConfigures, forFieldValue);
  final nestedData =
      notificationConfiguresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      notificationConfigures.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationConfiguresFirestoreData(
  NotificationConfiguresStruct? notificationConfigures, [
  bool forFieldValue = false,
]) {
  if (notificationConfigures == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationConfigures.toMap());

  // Add any Firestore field values
  notificationConfigures.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationConfiguresListFirestoreData(
  List<NotificationConfiguresStruct>? notificationConfiguress,
) =>
    notificationConfiguress
        ?.map((e) => getNotificationConfiguresFirestoreData(e, true))
        .toList() ??
    [];
