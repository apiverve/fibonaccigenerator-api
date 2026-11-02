/// Response models for the Fibonacci Generator API.

/// API Response wrapper.
class FibonaccigeneratorResponse {
  final String status;
  final dynamic error;
  final FibonaccigeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  FibonaccigeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory FibonaccigeneratorResponse.fromJson(Map<String, dynamic> json) => FibonaccigeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FibonaccigeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Fibonacci Generator API.

class FibonaccigeneratorData {
  List<num>? sequence;
  num? count;
  num? startFrom;
  num? firstValue;
  num? lastValue;
  num? sum;
  List<num>? ratios;
  num? goldenRatioApproximation;

  FibonaccigeneratorData({
    this.sequence,
    this.count,
    this.startFrom,
    this.firstValue,
    this.lastValue,
    this.sum,
    this.ratios,
    this.goldenRatioApproximation,
  });

  factory FibonaccigeneratorData.fromJson(Map<String, dynamic> json) => FibonaccigeneratorData(
      sequence: (json['sequence'] as List?)?.cast<num>(),
      count: json['count'],
      startFrom: json['start_from'],
      firstValue: json['first_value'],
      lastValue: json['last_value'],
      sum: json['sum'],
      ratios: (json['ratios'] as List?)?.cast<num>(),
      goldenRatioApproximation: json['golden_ratio_approximation'],
    );
}

class FibonaccigeneratorRequest {
  int count;
  int? startfrom;

  FibonaccigeneratorRequest({
    required this.count,
    this.startfrom,
  });

  Map<String, dynamic> toJson() => {
      'count': count,
      if (startfrom != null) 'startfrom': startfrom,
    };
}
