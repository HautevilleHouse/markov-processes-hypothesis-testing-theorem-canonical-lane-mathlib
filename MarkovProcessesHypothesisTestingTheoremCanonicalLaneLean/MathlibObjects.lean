import MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MarkovTestSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarkovTestAdmittedObject where
  space : MarkovTestSpace
  markovProcess : Prop
  hypothesisTest : Prop
  testStatistic : Type
  criticalRegion : Type
  conclusion : Prop

structure MarkovTestEndgameState where
  object : MarkovTestAdmittedObject

def MarkovTestWitnessClosed (O : MarkovTestAdmittedObject) : Prop :=
  O.conclusion

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse