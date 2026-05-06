import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(60, 30, 13, 82);
  assert(DomainReviewLens.score(item) == 193);
  assert(DomainReviewLens.lane(item) == 'ship');
}
