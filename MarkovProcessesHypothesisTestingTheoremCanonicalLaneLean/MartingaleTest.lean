import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure MartingaleTestPackage where
  filtration : Type u
  process : filtration → ℝ
  martingalePropertyNull : Prop
  optionalStopping : Prop
  testStatistic : Prop

def MartingaleTestClosed (M : MartingaleTestPackage) : Prop :=
  M.martingalePropertyNull ∧ M.optionalStopping ∧ M.testStatistic

theorem martingale_test_closed (M : MartingaleTestPackage) (hmart : M.martingalePropertyNull) (hstop : M.optionalStopping) (hstat : M.testStatistic) :
    MartingaleTestClosed M := by
  exact And.intro hmart (And.intro hstop hstat)

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse