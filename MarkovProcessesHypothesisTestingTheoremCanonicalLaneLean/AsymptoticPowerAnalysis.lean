import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure AsymptoticPowerAnalysis (S : Type u) (K : TransitionKernelSemigroup S) where
  sampleSize : ℕ → ℕ
  localAlternatives : ℝ → Set (MeasureTheory.Measure S)
  powerSequence : ℕ → ℝ → ℝ
  limitingPower : ℝ → ℝ → ℝ
  contiguousAlternatives : Prop
  efficiencyBound : Prop

structure AsymptoticPowerAnalysisEvidence (S : Type u) (K : TransitionKernelSemigroup S)
    (A : AsymptoticPowerAnalysis S K) where
  contiguousAlternativesClosed : A.contiguousAlternatives
  efficiencyBoundClosed : A.efficiencyBound

def AsymptoticPowerAnalysisClosed (S : Type u) (K : TransitionKernelSemigroup S)
    (A : AsymptoticPowerAnalysis S K) : Prop :=
  A.contiguousAlternatives ∧ A.efficiencyBound

theorem asymptotic_power_analysis_closed_from_evidence
    (S : Type u) (K : TransitionKernelSemigroup S)
    (A : AsymptoticPowerAnalysis S K)
    (E : AsymptoticPowerAnalysisEvidence S K A) :
    AsymptoticPowerAnalysisClosed S K A := by
  exact And.intro E.contiguousAlternativesClosed E.efficiencyBoundClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse