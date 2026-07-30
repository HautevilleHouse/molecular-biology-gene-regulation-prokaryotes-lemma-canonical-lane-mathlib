import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure SigmaFactorRegulationPackage where
  sigmaFactor : Type
  rnaPolymeraseHoloenzyme : Prop
  promoterRecognition : Prop
  transcriptionInitiation : Prop
  regulationByAntiSigma : Prop

def SigmaFactorRegulationClosed (S : SigmaFactorRegulationPackage) : Prop :=
  S.rnaPolymeraseHoloenzyme ∧ S.promoterRecognition ∧ S.transcriptionInitiation

theorem sigma_factor_regulation_closed (S : SigmaFactorRegulationPackage) (h : S.rnaPolymeraseHoloenzyme) (h' : S.promoterRecognition) (h'' : S.transcriptionInitiation) : SigmaFactorRegulationClosed S := by
  exact And.intro h (And.intro h' h'')

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse