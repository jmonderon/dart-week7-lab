void main() {
  // ===== INPUT (simulated) =====
  String studentName = 'Ana Reyes';
  int blackPages = 24;
  int colorPages = 6;
  bool isMember = true;
  bool wantsBinding = true;

  // ===== PROCESS =====
  const double blackRate = 2.50;
  const double colorRate = 8.25;
  const double bindingFee = 35.75;
  const double discountAmount = 5.25;
  const int minimumPagesForDiscount = 30;
  const int pagesPerMinute = 10;

  double blackCost = blackPages * blackRate;
  double colorCost = colorPages * colorRate;
  int totalPages = blackPages + colorPages;
  double subtotal = blackCost + colorCost;

  bool discountApplies = isMember && totalPages >= minimumPagesForDiscount;
  double afterDiscount = discountApplies ? subtotal - discountAmount : subtotal;

  double bindingCost = wantsBinding ? bindingFee : 0.0;
  double finalTotal = afterDiscount + bindingCost;

  int waitingTime = totalPages ~/ pagesPerMinute;

  String discountText = discountApplies ? '-PHP ${discountAmount.toStringAsFixed(2)}' : 'Not eligible';
  String bindingText = wantsBinding ? 'PHP ${bindingFee.toStringAsFixed(2)}' : 'None';

  // ===== OUTPUT =====
  print('===== Campus Print Shop =====');
  print('Student: $studentName');
  print('B&W: $blackPages pages x ${blackRate.toStringAsFixed(2)} = PHP ${blackCost.toStringAsFixed(2)}');
  print('Color: $colorPages pages x ${colorRate.toStringAsFixed(2)} = PHP ${colorCost.toStringAsFixed(2)}');
  print('Total pages: $totalPages');
  print('Subtotal: PHP ${subtotal.toStringAsFixed(2)}');
  print('Member discount: $discountText');
  print('Binding: $bindingText');
  print('TOTAL: PHP ${finalTotal.toStringAsFixed(2)}');
  print('Ready in about $waitingTime minutes');
  print('=============================');
}
