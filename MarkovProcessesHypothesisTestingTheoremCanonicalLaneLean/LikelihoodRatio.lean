import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure LikelihoodRatioPackage where
  observedData : Type u
  likelihoodNull : observedData → ℝ
  likelihoodAlt : observedData → ℝ
  ratio : observedData → ℝ
  monotonicity : Prop
  sufficientStatistic : Prop

def LikelihoodRatioClosed (L : LikelihoodRatioPackage) : Prop :=
  L.monotonicity ∧ L.sufficientStatistic

theorem likelihood_ratio_closed (L : LikelihoodRatioPackage) (hmono : L.monotonicity) (hsuffic : L.sufficientStatistic) :
    LikelihoodRatioClosed L := by
  exact And.intro hmono hsuffic

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse