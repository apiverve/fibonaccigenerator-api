/// Response models for the Fibonacci Generator API.

/// API Response wrapper.
class FibonaccigeneratorResponse {
  final String status;
  final dynamic error;
  final FibonaccigeneratorData? data;

  FibonaccigeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory FibonaccigeneratorResponse.fromJson(Map<String, dynamic> json) => FibonaccigeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FibonaccigeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Fibonacci Generator API.

class FibonaccigeneratorData {
  List<int>? sequence;
  int? count;
  int? startFrom;
  int? firstValue;
  int? lastValue;
  int? sum;
  List<double>? ratios;
  double? goldenRatioApproximation;

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
      sequence: (json['sequence'] as List?)?.cast<int>(),
      count: json['count'],
      startFrom: json['start_from'],
      firstValue: json['first_value'],
      lastValue: json['last_value'],
      sum: json['sum'],
      ratios: (json['ratios'] as List?)?.cast<double>(),
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
