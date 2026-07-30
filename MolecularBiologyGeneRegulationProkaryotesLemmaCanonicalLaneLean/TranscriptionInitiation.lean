import canonicalLaneMathlib.TranscriptionInitiation

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterRegionPresent : Prop
  rnaPolymeraseBinding : Prop
  sigmaFactorRecognition : Prop
  transcriptionStartSite : Prop

def transcriptionInitiationClosed (P : TranscriptionInitiationPackage) : Prop :=
  P.promoterRegionPresent ∧ P.rnaPolymeraseBinding ∧ P.sigmaFactorRecognition ∧ P.transcriptionStartSite

structure TranscriptionInitiationEvidence (P : TranscriptionInitiationPackage) where
  promoterRegionClosed : P.promoterRegionPresent
  rnaPolymeraseClosed : P.rnaPolymeraseBinding
  sigmaFactorClosed : P.sigmaFactorRecognition
  startSiteClosed : P.transcriptionStartSite

theorem transcription_initiation_closed_from_evidence (P : TranscriptionInitiationPackage) (E : TranscriptionInitiationEvidence P) : transcriptionInitiationClosed P := by
  exact And.intro E.promoterRegionClosed (And.intro E.rnaPolymeraseClosed (And.intro E.sigmaFactorClosed E.startSiteClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse