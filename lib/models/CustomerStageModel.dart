final String tblCustomerStage = 'customer_stage';

class CustomerStageFields {
  static final List<String> values = [
    /// Add all fields
    sno,
    customerCode,
    customerName,
    branch,
    fatherName,
    mobileNumber,
    dateOfBirth,
    address,
    joiningDate,
    productAmount,
    lastTopUpDate,
    planName,
    panNumber,
    accountNumber,
    accountName,
    bankName,
    ifsc,
    referralCode,
    leaderCode,
    directorCode
  ];

  static final String sno = 'sno';
  static final String customerCode = 'customerCode';
  static final String customerName = 'customerName';
  static final String branch = 'branch';
  static final String fatherName = 'fatherName';
  static final String mobileNumber = 'mobileNumber';
  static final String dateOfBirth = 'dateOfBirth';
  static final String address = 'address';
  static final String joiningDate = 'joiningDate';
  static final String productAmount = 'productAmount';
  static final String lastTopUpDate = 'lastTopUpDate';
  static final String planName = 'planName';
  static final String panNumber = 'panNumber';
  static final String accountNumber = 'accountNumber';
  static final String accountName = 'accountName';
  static final String bankName = 'bankName';
  static final String ifsc = 'ifsc';
  static final String referralCode = 'referralCode';
  static final String leaderCode = 'leaderCode';
  static final String directorCode = 'directorCode';
}

class CustomerStageModel {
  static final CustomerStageModel csm =
      CustomerStageModel._init(3, true, 3, '', '', null);

  CustomerStageModel._init(this.id, this.isImportant, this.number, this.title,
      this.description, this.createdTime);

  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime? createdTime;

  const CustomerStageModel({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  CustomerStageModel copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      CustomerStageModel(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static CustomerStageModel fromJson(Map<String, Object?> json) =>
      CustomerStageModel(
        id: json[CustomerStageFields.id] as int?,
        isImportant: json[CustomerStageFields.isImportant] == 1,
        number: json[CustomerStageFields.number] as int,
        title: json[CustomerStageFields.title] as String,
        description: json[CustomerStageFields.description] as String,
        createdTime: DateTime.parse(json[CustomerStageFields.time] as String),
      );

  Map<String, Object?> toJson() => {
        CustomerStageFields.id: id,
        CustomerStageFields.title: title,
        CustomerStageFields.isImportant: isImportant ? 1 : 0,
        CustomerStageFields.number: number,
        CustomerStageFields.description: description,
        CustomerStageFields.time: createdTime!.toIso8601String(),
      };
}
