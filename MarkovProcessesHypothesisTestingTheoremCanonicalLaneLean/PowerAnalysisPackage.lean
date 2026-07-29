import MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.LimitTheoremPackage

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure PowerAnalysisPackage (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (L : LimitTheoremPackage M H) where
  sampleSize : ℕ
  effectSize : ℝ
  powerValue : ℝ
  optimalDesign : Prop
  sampleSizeFormula : Prop

def PowerAnalysisClosed (M : MarkovChainPackage) (H : HypothesisTestingFramework M) (L : LimitTheoremPackage M H) (P : PowerAnalysisPackage M H L) : Prop :=
  P.optimalDesign ∧ P.sampleSizeFormula

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse