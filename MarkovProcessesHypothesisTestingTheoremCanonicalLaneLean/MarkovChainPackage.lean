import MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure MarkovChainPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  transitionKernel : stateSpace → MeasureTheory.Measure stateSpace
  initialDistribution : MeasureTheory.Measure stateSpace
  chainDefined : Prop
  fellerProperty : Prop
  irreducible : Prop
  stationary : Prop

def MarkovChainClosed (M : MarkovChainPackage) : Prop :=
  M.chainDefined ∧ M.fellerProperty ∧ M.irreducible ∧ M.stationary

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse