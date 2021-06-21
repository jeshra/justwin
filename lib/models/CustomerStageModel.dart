final String tblCustomerStage = 'customer_stage';

class FieldsCustomersStage {
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
  final String? directorCode;

  const CustomersStage(
      {required this.sno,
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
      required this.directorCode});

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

  static CustomersStage fromJson(Map<String, Object?> kv) => CustomersStage(
      sno: kv[FieldsCustomersStage.sno] as String,
      customerCode: kv[FieldsCustomersStage.customerCode] as String,
      customerName: kv[FieldsCustomersStage.customerName] as String,
      branch: kv[FieldsCustomersStage.branch] as String,
      fatherName: kv[FieldsCustomersStage.fatherName] as String,
      mobileNumber: kv[FieldsCustomersStage.mobileNumber] as String,
      dateOfBirth: kv[FieldsCustomersStage.dateOfBirth] as String,
      address: kv[FieldsCustomersStage.address] as String,
      joiningDate: kv[FieldsCustomersStage.joiningDate] as String,
      productAmount: kv[FieldsCustomersStage.productAmount] as String,
      lastTopUpDate: kv[FieldsCustomersStage.lastTopUpDate] as String,
      planName: kv[FieldsCustomersStage.planName] as String,
      panNumber: kv[FieldsCustomersStage.panNumber] as String,
      accountNumber: kv[FieldsCustomersStage.accountNumber] as String,
      accountName: kv[FieldsCustomersStage.accountName] as String,
      bankName: kv[FieldsCustomersStage.bankName] as String,
      ifsc: kv[FieldsCustomersStage.ifsc] as String,
      referralCode: kv[FieldsCustomersStage.referralCode] as String,
      leaderCode: kv[FieldsCustomersStage.leaderCode] as String,
      directorCode: kv[FieldsCustomersStage.directorCode] as String);

  Map<String, Object> toJon() => {
        FieldsCustomersStage.sno: sno.trim(),
        FieldsCustomersStage.customerCode: customerCode.trim(),
        FieldsCustomersStage.customerName: customerName.trim(),
        FieldsCustomersStage.branch: branch.trim(),
        FieldsCustomersStage.fatherName: fatherName.trim(),
        FieldsCustomersStage.mobileNumber: mobileNumber.trim(),
        FieldsCustomersStage.dateOfBirth: dateOfBirth.trim(),
        FieldsCustomersStage.address: address.trim(),
        FieldsCustomersStage.joiningDate: joiningDate.trim(),
        FieldsCustomersStage.productAmount: productAmount.trim(),
        FieldsCustomersStage.lastTopUpDate: lastTopUpDate.trim(),
        FieldsCustomersStage.planName: planName.trim(),
        FieldsCustomersStage.panNumber: panNumber.trim(),
        FieldsCustomersStage.accountNumber: accountNumber.trim(),
        FieldsCustomersStage.accountName: accountName.trim(),
        FieldsCustomersStage.bankName: bankName.trim(),
        FieldsCustomersStage.ifsc: ifsc.trim(),
        FieldsCustomersStage.referralCode: referralCode.trim(),
        FieldsCustomersStage.leaderCode: leaderCode.trim(),
        FieldsCustomersStage.directorCode: directorCode!.trim()
      };
}
