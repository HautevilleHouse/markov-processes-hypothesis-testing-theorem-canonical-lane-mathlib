import MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.HypothesisTestingFramework

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure LimitTheoremPackage (M : MarkovChainPackage) (H : HypothesisTestingFramework M) where
  ergodicTheorem : Prop
  centralLimitTheorem : Prop
  largeDeviationsPrinciple : Prop
  rateFunction : Type u
  asymptoticPower : Prop

structure LimitTheoremEvidence (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (L : LimitTheoremPackage M H) where
  ergodicTheoremClosed : L.ergodicTheorem
  centralLimitTheoremClosed : L.centralLimitTheorem
  largeDeviationsPrincipleClosed : L.largeDeviationsPrinciple

def LimitTheoremClosed (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (L : LimitTheoremPackage M H) : Prop :=
  L.ergodicTheorem ∧ L.centralLimitTheorem ∧ L.largeDeviationsPrinciple

theorem limit_theorem_closed_from_evidence (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (L : LimitTheoremPackage M H) (E : LimitTheoremEvidence M H L) : LimitTheoremClosed M H L := by
  exact And.intro E.ergodicTheoremClosed (And.intro E.centralLimitTheoremClosed E.largeDeviationsPrincipleClosed)

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse