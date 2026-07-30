import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure SigmaFactorSwitchingPackage where
  sigmaFactorBinding : Prop
  rnaPolymeraseHoloenzyme : Prop
  promoterRecognition : Prop
  stressResponseRegulation : Prop

structure SigmaFactorSwitchingEvidence (P : SigmaFactorSwitchingPackage) where
  sigmaFactorBindingClosed : P.sigmaFactorBinding
  rnaPolymeraseHoloenzymeClosed : P.rnaPolymeraseHoloenzyme
  promoterRecognitionClosed : P.promoterRecognition
  stressResponseRegulationClosed : P.stressResponseRegulation

def SigmaFactorSwitchingClosed (P : SigmaFactorSwitchingPackage) : Prop :=
  P.sigmaFactorBinding ∧ P.rnaPolymeraseHoloenzyme ∧ P.promoterRecognition ∧ P.stressResponseRegulation

theorem sigma_factor_switching_closed_from_evidence (P : SigmaFactorSwitchingPackage)
    (E : SigmaFactorSwitchingEvidence P) : SigmaFactorSwitchingClosed P := by
  exact And.intro E.sigmaFactorBindingClosed
    (And.intro E.rnaPolymeraseHoloenzymeClosed
      (And.intro E.promoterRecognitionClosed E.stressResponseRegulationClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
