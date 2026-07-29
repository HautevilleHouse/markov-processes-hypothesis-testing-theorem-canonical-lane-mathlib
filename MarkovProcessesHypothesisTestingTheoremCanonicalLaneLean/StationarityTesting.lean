import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure StationarityTestingPackage where
  markovProcess : Type u
  stationarityAssumption : Prop
  ergodicityCondition : Prop
  mixingCondition : Prop
  testProcedure : Prop

structure StationarityTestingEvidence (S : StationarityTestingPackage) where
  stationarityAssumptionClosed : S.stationarityAssumption
  ergodicityConditionClosed : S.ergodicityCondition
  mixingConditionClosed : S.mixingCondition
  testProcedureClosed : S.testProcedure

def StationarityTestingClosed (S : StationarityTestingPackage) : Prop :=
  S.stationarityAssumption ∧ S.ergodicityCondition ∧
  S.mixingCondition ∧ S.testProcedure

theorem stationarity_testing_closed_from_evidence
    (S : StationarityTestingPackage) (E : StationarityTestingEvidence S) :
    StationarityTestingClosed S := by
  exact And.intro E.stationarityAssumptionClosed
    (And.intro E.ergodicityConditionClosed
      (And.intro E.mixingConditionClosed E.testProcedureClosed))

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse