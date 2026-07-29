import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure HypothesisTestingPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  rejectionRegion : Prop
  significanceLevel : ℝ
  powerFunction : ℝ → ℝ

def SignificanceLevelValid (α : ℝ) : Prop := 0 < α ∧ α < 1

structure HypothesisTestingEvidence (H : HypothesisTestingPackage) where
  nullHypothesisClosed : H.nullHypothesis
  alternativeHypothesisClosed : H.alternativeHypothesis
  rejectionRegionClosed : H.rejectionRegion
  significanceLevelValid : SignificanceLevelValid H.significanceLevel

def HypothesisTestingClosed (H : HypothesisTestingPackage) : Prop :=
  H.nullHypothesis ∧ H.alternativeHypothesis ∧ H.rejectionRegion ∧
  SignificanceLevelValid H.significanceLevel

theorem hypothesis_testing_closed_from_evidence
    (H : HypothesisTestingPackage) (E : HypothesisTestingEvidence H) :
    HypothesisTestingClosed H := by
  exact And.intro E.nullHypothesisClosed
    (And.intro E.alternativeHypothesisClosed
      (And.intro E.rejectionRegionClosed E.significanceLevelValid))

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse