import MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.MarkovChainPackage

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure HypothesisTestingFramework (M : MarkovChainPackage) where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type v
  criticalRegion : Type w
  significanceLevel : ℝ
  powerFunction : Type x
  typeIErrorControlled : Prop
  typeIIErrorControlled : Prop
  consistency : Prop

structure HypothesisTestingEvidence (M : MarkovChainPackage) (H : HypothesisTestingFramework M) where
  typeIErrorControlledClosed : H.typeIErrorControlled
  typeIIErrorControlledClosed : H.typeIIErrorControlled
  consistencyClosed : H.consistency

def HypothesisTestingClosed (M : MarkovChainPackage) (H : HypothesisTestingFramework M) : Prop :=
  H.typeIErrorControlled ∧ H.typeIIErrorControlled ∧ H.consistency

theorem hypothesis_testing_closed_from_evidence (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (E : HypothesisTestingEvidence M H) : HypothesisTestingClosed M H := by
  exact And.intro E.typeIErrorControlledClosed (And.intro E.typeIIErrorControlledClosed E.consistencyClosed)

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse