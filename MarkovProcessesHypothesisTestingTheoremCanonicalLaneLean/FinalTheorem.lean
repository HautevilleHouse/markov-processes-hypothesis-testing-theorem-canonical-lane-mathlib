import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

def ConstrainedMarkovHypothesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_markov_hypothesis_endgame (A : AdmissibleClass) :
    ConstrainedMarkovHypothesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse