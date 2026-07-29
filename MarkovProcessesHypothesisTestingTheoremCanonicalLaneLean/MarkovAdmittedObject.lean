import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure MarkovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarkovAdmittedObject where
  space : MarkovSpace
  markovKernel : Prop
  stationaryDistribution : Prop
  hypothesisTestDefined : Prop
  conclusion : hypothesisTestDefined

def MarkovWitnessClosed (O : MarkovAdmittedObject) : Prop :=
  O.hypothesisTestDefined

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse