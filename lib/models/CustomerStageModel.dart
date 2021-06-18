final String tblCustomerStage = 'customer_stage';

class CustomersStageFields {
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

class CustomersStage {
  final String sno;
  final String customerCode;
  final String customerName;
  final String branch;
  final String fatherName;
  final String mobileNumber;
  final String dateOfBirth;
  final String address;
  final String joiningDate;
  final String productAmount;
  final String lastTopUpDate;
  final String planName;
  final String panNumber;
  final String accountNumber;
  final String accountName;
  final String bankName;
  final String ifsc;
  final String referralCode;
  final String leaderCode;
  final String directorCode;

  const CustomersStage({
    required this.sno,
    required this.customerCode,
    required this.customerName,
    required this.branch,
    required this.fatherName,
    required this.mobileNumber,
    required this.dateOfBirth,
    required this.address,
    required this.joiningDate,
    required this.productAmount,
    required this.lastTopUpDate,
    required this.planName,
    required this.panNumber,
    required this.accountNumber,
    required this.accountName,
    required this.bankName,
    required this.ifsc,
    required this.referralCode,
    required this.leaderCode,
    required this.directorCode,
  });

  CustomersStage copy({
    String? sno,
    String? customerCode,
    String? customerName,
    String? branch,
    String? fatherName,
    String? mobileNumber,
    String? dateOfBirth,
    String? address,
    String? joiningDate,
    String? productAmount,
    String? lastTopUpDate,
    String? planName,
    String? panNumber,
    String? accountNumber,
    String? accountName,
    String? bankName,
    String? ifsc,
    String? referralCode,
    String? leaderCode,
    String? directorCode,
  }) =>
      CustomersStage(
          sno: sno ?? this.sno,
          customerCode: customerCode ?? this.customerCode,
          customerName: customerName ?? this.customerName,
          branch: branch ?? this.branch,
          fatherName: fatherName ?? this.fatherName,
          mobileNumber: mobileNumber ?? this.mobileNumber,
          dateOfBirth: dateOfBirth ?? this.dateOfBirth,
          address: address ?? this.address,
          joiningDate: joiningDate ?? this.joiningDate,
          productAmount: productAmount ?? this.productAmount,
          lastTopUpDate: lastTopUpDate ?? this.lastTopUpDate,
          planName: planName ?? this.planName,
          panNumber: panNumber ?? this.panNumber,
          accountNumber: accountNumber ?? this.accountNumber,
          accountName: accountName ?? this.accountName,
          bankName: bankName ?? this.bankName,
          ifsc: ifsc ?? this.ifsc,
          referralCode: referralCode ?? this.referralCode,
          leaderCode: leaderCode ?? this.leaderCode,
          directorCode: directorCode ?? this.directorCode);

  static CustomersStage fromJson(Map<String, Object> jsonn) => CustomersStage(
      sno: jsonn[CustomersStageFields.sno] as String,
      customerCode: jsonn[CustomersStageFields.customerCode] as String,
      customerName: jsonn[CustomersStageFields.customerName] as String,
      branch: jsonn[CustomersStageFields.branch] as String,
      fatherName: jsonn[CustomersStageFields.fatherName] as String,
      mobileNumber: jsonn[CustomersStageFields.mobileNumber] as String,
      dateOfBirth: jsonn[CustomersStageFields.dateOfBirth] as String,
      address: jsonn[CustomersStageFields.address] as String,
      joiningDate: jsonn[CustomersStageFields.joiningDate] as String,
      productAmount: jsonn[CustomersStageFields.productAmount] as String,
      lastTopUpDate: jsonn[CustomersStageFields.lastTopUpDate] as String,
      planName: jsonn[CustomersStageFields.planName] as String,
      panNumber: jsonn[CustomersStageFields.panNumber] as String,
      accountNumber: jsonn[CustomersStageFields.accountNumber] as String,
      accountName: jsonn[CustomersStageFields.accountName] as String,
      bankName: jsonn[CustomersStageFields.bankName] as String,
      ifsc: jsonn[CustomersStageFields.ifsc] as String,
      referralCode: jsonn[CustomersStageFields.referralCode] as String,
      leaderCode: jsonn[CustomersStageFields.leaderCode] as String,
      directorCode: jsonn[CustomersStageFields.directorCode] as String);

  Map<String, Object> toJon() => {
        CustomersStageFields.sno: sno.trim(),
        CustomersStageFields.customerCode: customerCode.trim(),
        CustomersStageFields.customerName: customerName.trim(),
        CustomersStageFields.branch: branch.trim(),
        CustomersStageFields.fatherName: fatherName.trim(),
        CustomersStageFields.mobileNumber: mobileNumber.trim(),
        CustomersStageFields.dateOfBirth: dateOfBirth.trim(),
        CustomersStageFields.address: address.trim(),
        CustomersStageFields.joiningDate: joiningDate.trim(),
        CustomersStageFields.productAmount: productAmount.trim(),
        CustomersStageFields.lastTopUpDate: lastTopUpDate.trim(),
        CustomersStageFields.planName: planName.trim(),
        CustomersStageFields.panNumber: panNumber.trim(),
        CustomersStageFields.accountNumber: accountNumber.trim(),
        CustomersStageFields.accountName: accountName.trim(),
        CustomersStageFields.bankName: bankName.trim(),
        CustomersStageFields.ifsc: ifsc.trim(),
        CustomersStageFields.referralCode: referralCode.trim(),
        CustomersStageFields.leaderCode: leaderCode.trim(),
        CustomersStageFields.directorCode: directorCode.trim()
      };
}
