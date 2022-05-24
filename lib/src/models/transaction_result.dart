import 'package:json_annotation/json_annotation.dart';

part 'transaction_result.g.dart';

@JsonSerializable()
class TransactionResult {
  final bool isTransactionCanceled;
  final TransactionResultStatus? transactionStatus;
  final String? statusMessage;
  final String? transactionId;
  final String? orderId;
  final String? grossAmount;
  final String? paymentType;
  final String? pdfUrl;

  TransactionResult({
    this.isTransactionCanceled = true,
    this.transactionStatus,
    this.statusMessage,
    this.transactionId,
    this.orderId,
    this.grossAmount,
    this.paymentType,
    this.pdfUrl,
  });

  factory TransactionResult.fromJson(Map<String, dynamic> json) =>
      _$TransactionResultFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionResultToJson(this);
}

enum TransactionResultStatus {
  capture,
  settlement,
  pending,
  deny,
  expire,
  cancel,
}
