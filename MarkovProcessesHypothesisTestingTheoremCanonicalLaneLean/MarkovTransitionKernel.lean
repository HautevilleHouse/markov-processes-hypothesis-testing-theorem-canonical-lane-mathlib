import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure MarkovTransitionKernelPackage where
  stateSpace : Type u
  actionSpace : Type v
  transitionProbability : stateSpace → actionSpace → stateSpace → ℝ
  transitionMeasurable : Prop
  kernelRegular : Prop

structure MarkovTransitionKernelEvidence (K : MarkovTransitionKernelPackage) where
  transitionMeasurableClosed : K.transitionMeasurable
  kernelRegularClosed : K.kernelRegular

def MarkovTransitionKernelClosed (K : MarkovTransitionKernelPackage) : Prop :=
  K.transitionMeasurable ∧ K.kernelRegular

theorem markov_transition_kernel_closed_from_evidence
    (K : MarkovTransitionKernelPackage) (E : MarkovTransitionKernelEvidence K) :
    MarkovTransitionKernelClosed K := by
  exact And.intro E.transitionMeasurableClosed E.kernelRegularClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse