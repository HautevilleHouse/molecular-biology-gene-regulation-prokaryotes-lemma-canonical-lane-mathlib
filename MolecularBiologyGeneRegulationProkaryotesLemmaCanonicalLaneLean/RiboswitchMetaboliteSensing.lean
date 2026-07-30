import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure RiboswitchMetaboliteSensingPackage where
  aptamerDomain : Prop
  expressionPlatform : Prop
  ligandBinding : Prop
  conformationalSwitching : Prop
  transcriptionTerminationOrTranslationInhibition : Prop

structure RiboswitchMetaboliteSensingEvidence (P : RiboswitchMetaboliteSensingPackage) where
  aptamerDomainClosed : P.aptamerDomain
  expressionPlatformClosed : P.expressionPlatform
  ligandBindingClosed : P.ligandBinding
  conformationalSwitchingClosed : P.conformationalSwitching
  transcriptionTerminationOrTranslationInhibitionClosed : P.transcriptionTerminationOrTranslationInhibition

def RiboswitchMetaboliteSensingClosed (P : RiboswitchMetaboliteSensingPackage) : Prop :=
  P.aptamerDomain ∧ P.expressionPlatform ∧ P.ligandBinding ∧
  P.conformationalSwitching ∧ P.transcriptionTerminationOrTranslationInhibition

theorem riboswitch_metabolite_sensing_closed_from_evidence (P : RiboswitchMetaboliteSensingPackage)
    (E : RiboswitchMetaboliteSensingEvidence P) : RiboswitchMetaboliteSensingClosed P := by
  exact And.intro E.aptamerDomainClosed
    (And.intro E.expressionPlatformClosed
      (And.intro E.ligandBindingClosed
        (And.intro E.conformationalSwitchingClosed E.transcriptionTerminationOrTranslationInhibitionClosed)))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
