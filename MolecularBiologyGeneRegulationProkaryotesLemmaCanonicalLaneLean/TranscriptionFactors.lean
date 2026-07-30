import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean.GeneRegulationProkaryotes

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TranscriptionFactorPackage (G : GeneRegulationProkaryotesPackage) where
  sigmaFactor : Prop
  rnaPolymeraseHoloenzyme : Prop
  promoterRecognition : Prop
  openComplexFormation : Prop

def TranscriptionFactorClosed {G : GeneRegulationProkaryotesPackage} (T : TranscriptionFactorPackage G) : Prop :=
  T.sigmaFactor ∧ T.rnaPolymeraseHoloenzyme ∧ T.promoterRecognition ∧ T.openComplexFormation

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse