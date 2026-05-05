import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(68, 97, 8, 23, 4);
  assert(Policy.score(signalcase_1) == 118);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(82, 71, 16, 6, 11);
  assert(Policy.score(signalcase_2) == 217);
  assert(Policy.classify(signalcase_2) == 'accept');
  const signalcase_3 = Signal(95, 95, 22, 8, 5);
  assert(Policy.score(signalcase_3) == 221);
  assert(Policy.classify(signalcase_3) == 'accept');
}
