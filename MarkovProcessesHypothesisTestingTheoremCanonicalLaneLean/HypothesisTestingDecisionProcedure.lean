import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure HypothesisTestingDecisionProcedure (S : Type u) (K : TransitionKernelSemigroup S) where
  nullHypothesis : Set (MeasureTheory.Measure S)
  alternativeHypothesis : Set (MeasureTheory.Measure S)
  testFunction : (S → ℝ) → ℝ
  significanceLevel : ℝ
  powerFunction : ℝ → ℝ
  decisionRule : MeasureTheory.Measure S → Bool
  errorProbabilities : Prop

def HypothesisTestingDecisionProcedureClosed (S : Type u) (K : TransitionKernelSemigroup S)
    (D : HypothesisTestingDecisionProcedure S K) : Prop :=
  D.errorProbabilities

structure HypothesisTestingDecisionProcedureEvidence (S : Type u) (K : TransitionKernelSemigroup S)
    (D : HypothesisTestingDecisionProcedure S K) where
  errorProbabilitiesClosed : D.errorProbabilities

theorem hypothesis_testing_decision_procedure_closed_from_evidence
    (S : Type u) (K : TransitionKernelSemigroup S)
    (D : HypothesisTestingDecisionProcedure S K)
    (E : HypothesisTestingDecisionProcedureEvidence S K D) :
    HypothesisTestingDecisionProcedureClosed S K D := by
  exact E.errorProbabilitiesClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse