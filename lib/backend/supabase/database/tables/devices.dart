import '../database.dart';

class DevicesTable extends SupabaseTable<DevicesRow> {
  @override
  String get tableName => 'devices';

  @override
  DevicesRow createRow(Map<String, dynamic> data) => DevicesRow(data);
}

class DevicesRow extends SupabaseDataRow {
  DevicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DevicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get serial => getField<String>('serial_#')!;
  set serial(String value) => setField<String>('serial_#', value);

  DateTime? get dateTime => getField<DateTime>('date_time');
  set dateTime(DateTime? value) => setField<DateTime>('date_time', value);

  String? get chargerStatus => getField<String>('charger_status');
  set chargerStatus(String? value) => setField<String>('charger_status', value);

  String? get batteryStatus => getField<String>('battery_status');
  set batteryStatus(String? value) => setField<String>('battery_status', value);

  String? get utilityStatus => getField<String>('utility_status');
  set utilityStatus(String? value) => setField<String>('utility_status', value);

  String? get faultState => getField<String>('fault_state');
  set faultState(String? value) => setField<String>('fault_state', value);

  String? get chargerAction => getField<String>('charger_action');
  set chargerAction(String? value) => setField<String>('charger_action', value);
}
