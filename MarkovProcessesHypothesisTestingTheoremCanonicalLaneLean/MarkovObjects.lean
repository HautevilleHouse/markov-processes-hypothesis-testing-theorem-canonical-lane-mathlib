import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure MarkovStateSpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasure : Set (carrier → ℝ)

structure MarkovProcess where
  stateSpace : MarkovStateSpace
  timeIndex : Type
  transitionKernel : timeIndex → stateSpace.carrier → Set (stateSpace.carrier → ℝ)
  consistencyCondition : Prop

structure HypothesisPair where
  nullHypothesis : MarkovProcess
  alternativeHypothesis : MarkovProcess
  observationModel : Type
  likelihoodRatio : observationModel → ℝ

def MarkovAdmittedObject where
  processConfig : HypothesisPair
  initialDistribution : MarkovStateSpace.carrier → ℝ
  testStatistic : (MarkovStateSpace.carrier → ℝ) → ℝ
  criticalRegion : Set (MarkovStateSpace.carrier → ℝ)
  errorConstraint : Prop
  conclusion : errorConstraint

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse