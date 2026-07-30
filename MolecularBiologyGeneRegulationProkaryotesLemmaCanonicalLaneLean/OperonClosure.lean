import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean.LacOperonModel
import MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean.TrpOperonRepression
import MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean.TranscriptionFactors

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure OperonClosurePackage (G : GeneRegulationProkaryotesPackage) where
  lacOperon : LacOperonPackage G
  trpOperon : TrpOperonPackage G
  transcriptionFactor : TranscriptionFactorPackage G

structure OperonClosureEvidence {G : GeneRegulationProkaryotesPackage} (O : OperonClosurePackage G) where
  lacOperonClosed : LacOperonClosed O.lacOperon
  trpOperonClosed : TrpOperonClosed O.trpOperon
  transcriptionFactorClosed : TranscriptionFactorClosed O.transcriptionFactor

def OperonClosureClosed {G : GeneRegulationProkaryotesPackage} (O : OperonClosurePackage G) : Prop :=
  LacOperonClosed O.lacOperon ∧ TrpOperonClosed O.trpOperon ∧ TranscriptionFactorClosed O.transcriptionFactor

theorem operon_closure_closed_from_evidence {G : GeneRegulationProkaryotesPackage} (O : OperonClosurePackage G) (E : OperonClosureEvidence O) : OperonClosureClosed O := by
  exact And.intro E.lacOperonClosed (And.intro E.trpOperonClosed E.transcriptionFactorClosed)

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse