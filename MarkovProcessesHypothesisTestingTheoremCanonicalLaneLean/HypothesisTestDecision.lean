import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure HypothesisTestDecisionPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  criticalRegion : Set (testStatistic)
  significanceLevel : ℝ
  powerFunction : Type v

def HypothesisTestDecisionClosed (H : HypothesisTestDecisionPackage) : Prop :=
  H.nullHypothesis ∧ H.alternativeHypothesis ∧ H.significanceLevel > 0

theorem hypothesis_test_decision_closed (H : HypothesisTestDecisionPackage) : HypothesisTestDecisionClosed H := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact H.nullHypothesis
  · exact H.alternativeHypothesis
  · exact by linarith

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse