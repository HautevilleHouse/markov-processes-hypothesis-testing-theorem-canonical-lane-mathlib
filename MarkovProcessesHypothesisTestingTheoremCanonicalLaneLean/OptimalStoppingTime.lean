import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure OptimalStoppingTime (S : Type u) (K : TransitionKernelSemigroup S) where
  filtration : Filtration ℕ (σ (S → ℝ))
  stoppingTime : ℕ → S → ℕ
  adaptedness : ∀ t : ℕ, Measurable (stoppingTime t)
  optimalityCriterion : Prop
  expectedCost : ℝ
  stoppingRegion : Set (S × ℕ)

structure OptimalStoppingTimeEvidence (S : Type u) (K : TransitionKernelSemigroup S)
    (O : OptimalStoppingTime S K) where
  optimalityCriterionClosed : O.optimalityCriterion

def OptimalStoppingTimeClosed (S : Type u) (K : TransitionKernelSemigroup S)
    (O : OptimalStoppingTime S K) : Prop :=
  O.optimalityCriterion

theorem optimal_stopping_time_closed_from_evidence
    (S : Type u) (K : TransitionKernelSemigroup S)
    (O : OptimalStoppingTime S K)
    (E : OptimalStoppingTimeEvidence S K O) :
    OptimalStoppingTimeClosed S K O := by
  exact E.optimalityCriterionClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse