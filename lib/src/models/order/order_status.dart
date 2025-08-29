/// Represents the different statuses of an order.
enum OrderStatus {
  /// Only get orders with all statuses.
  all,
  /// The order is created but not yet submitted for fulfillment.
  draft,

  /// The order has been submitted but not yet accepted for fulfillment.
  pending,

  /// The order was returned for review due to an error
  /// (invalid address, missing print files, payment failed, etc.).
  failed,

  /// The order has been canceled and cannot be processed anymore.
  /// If charged, the amount was refunded to your credit card.
  canceled,

  /// The order is being fulfilled and cannot be canceled or modified.
  /// Contact support if issues occur at this stage.
  inprocess,

  /// The order has encountered a fulfillment problem and
  /// requires resolution with Printful customer service.
  onhold,

  /// The order is partially fulfilled (some items shipped, others pending).
  partial,

  /// All items have been shipped successfully.
  fulfilled,

  /// The order has been archived and hidden from the UI.
  archived,
}