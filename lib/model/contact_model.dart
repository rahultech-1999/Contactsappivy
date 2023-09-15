



import 'package:equatable/equatable.dart';

class ContactModel extends Equatable {

  final String name;
  final String number;

  ContactModel({required this.name, required this.number});

  @override
  List<Object?> get props =>[];
  
}