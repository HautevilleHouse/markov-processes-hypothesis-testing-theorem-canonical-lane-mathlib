import HautevilleHouse.MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  markovConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "markov-processes-hypothesis-testing-canonical-lane",
  theoremName := "Markov Processes Hypothesis Testing Theorem",
  theoremObject := "Admissible Markov processes with transition kernel and hypothesis test",
  classicalBoundary := "Unrestricted classical measure-theoretic closure carried separately",
  markovConstrainedStatement := "Markov-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "markov_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end MarkovProcessesHypothesisTestingTheoremCanonicalLaneLean
end HautevilleHouse