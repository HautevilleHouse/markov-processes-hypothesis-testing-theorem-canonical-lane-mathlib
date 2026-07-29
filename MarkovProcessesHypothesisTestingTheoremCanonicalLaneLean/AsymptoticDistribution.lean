import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure AsymptoticDistributionPackage where
  sampleSize : ℕ → ℕ
  estimator : Type u
  limitDistribution : Type v
  centralLimitTheorem : Prop
  consistency : Prop
  efficiency : Prop

def AsymptoticDistributionClosed (A : AsymptoticDistributionPackage) : Prop :=
  A.centralLimitTheorem ∧ A.consistency ∧ A.efficiency

theorem asymptotic_distribution_closed (A : AsymptoticDistributionPackage) (hclt : A.centralLimitTheorem) (hcons : A.consistency) (heff : A.efficiency) :
    AsymptoticDistributionClosed A := by
  exact And.intro hclt (And.intro hcons heff)

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse