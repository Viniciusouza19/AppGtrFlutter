import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final String city;
  final String frequency;
  final String group;
  final String company_name;
  final String plan_page;
  final String processor_version;
  final String id;

  Company(
      {required this.city,
      required this.frequency,
      required this.group,
      required this.company_name,
      required this.plan_page,
      required this.processor_version,
      required this.id});

  factory Company.init() {
    return Company(
      city: "",
      frequency: "",
      group: "",
      company_name: "",
      plan_page: "",
      processor_version: "",
      id: "",
    );
  }

  factory Company.fromJson(Map<String, dynamic> map) {
    return Company(
      city: map["city"],
      frequency: map["frequencie"],
      group: map["group"],
      company_name: map["name"],
      plan_page: map["page"],
      processor_version: map["processorVersion"],
      id: map["id"],
    );
  }

  @override
  List<Object?> get props =>
      [city, company_name, group, plan_page, processor_version, id, frequency];

  Company copyWith({
    String? city,
    String? frequency,
    String? group,
    String? company_name,
    String? plan_page,
    String? processor_version,
    String? id,
  }) {
    return Company(
      city: city ?? this.city,
      frequency: frequency ?? this.frequency,
      group: group ?? this.group,
      company_name: company_name ?? this.company_name,
      plan_page: plan_page ?? this.plan_page,
      processor_version: processor_version ?? this.processor_version,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'city': city,
      'frequency': frequency,
      'group': group,
      'company_name': company_name,
      'plan_page': plan_page,
      'processor_version': processor_version,
      'id': id,
    };
  }
}
