import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure LikelihoodRatioProcess (S : Type u) (K : TransitionKernelSemigroup S) where
  referenceMeasure : MeasureTheory.Measure S
  densityProcess : (S → ℝ) → S → ℝ
  martingaleProperty : True
  girsanovTransformation : Prop

structure LikelihoodRatioProcessEvidence (S : Type u) (K : TransitionKernelSemigroup S)
    (L : LikelihoodRatioProcess S K) where
  girsanovTransformationClosed : L.girsanovTransformation

def LikelihoodRatioProcessClosed (S : Type u) (K : TransitionKernelSemigroup S)
    (L : LikelihoodRatioProcess S K) : Prop :=
  L.girsanovTransformation

theorem likelihood_ratio_process_closed_from_evidence
    (S : Type u) (K : TransitionKernelSemigroup S)
    (L : LikelihoodRatioProcess S K)
    (E : LikelihoodRatioProcessEvidence S K L) :
    LikelihoodRatioProcessClosed S K L := by
  exact E.girsanovTransformationClosed

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse