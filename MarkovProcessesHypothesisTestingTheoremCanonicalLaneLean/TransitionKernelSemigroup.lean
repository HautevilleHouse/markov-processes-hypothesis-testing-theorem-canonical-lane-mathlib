import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure TransitionKernelSemigroup (S : Type u) where
  stateSpace : Type u
  measurableStructure : MeasurableSpace stateSpace
  indexSet : Type v
  indexOrder : PartialOrder indexSet
  kernelFamily : indexSet → stateSpace → MeasureTheory.Measure stateSpace
  semigroupProperty : ∀ (t s : indexSet) (x : stateSpace) (A : Set stateSpace),
    MeasurableSet A → kernelFamily (t + s) x A = ∫∫ y, kernelFamily t x dy * kernelFamily s y A
  initialCondition : ∀ (x : stateSpace) (A : Set stateSpace), MeasurableSet A →
    kernelFamily 0 x A = MeasureTheory.DiracMeasure x A

structure TransitionKernelSemigroupEvidence (S : Type u) (K : TransitionKernelSemigroup S) where
  semigroupPropertyClosed : K.semigroupProperty
  initialConditionClosed : K.initialCondition

def TransitionKernelSemigroupClosed (S : Type u) (K : TransitionKernelSemigroup S) : Prop :=
  K.semigroupProperty ∧ K.initialCondition

theorem transition_kernel_semigroup_closed_from_evidence
    (S : Type u) (K : TransitionKernelSemigroup S)
    (E : TransitionKernelSemigroupEvidence S K) : TransitionKernelSemigroupClosed S K := by
  exact And.intro E.semigroupPropertyClosed E.initialConditionClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse