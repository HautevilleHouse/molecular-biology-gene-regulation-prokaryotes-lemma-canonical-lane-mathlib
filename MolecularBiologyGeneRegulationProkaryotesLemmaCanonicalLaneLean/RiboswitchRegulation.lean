import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

/-! # Riboswitch Regulation Package -/

structure RiboswitchRegulation where
  rnaElement : Type
  ligandMolecule : Type
  conformationalChange : Prop
  transcriptionTermination : Prop
  translationInitiation : Prop

structure RiboswitchRegulationEvidence (R : RiboswitchRegulation) where
  conformationalChangeClosed : R.conformationalChange
  transcriptionTerminationClosed : R.transcriptionTermination
  translationInitiationClosed : R.translationInitiation

def RiboswitchRegulationClosed (R : RiboswitchRegulation) : Prop :=
  R.conformationalChange ∧ R.transcriptionTermination ∧ R.translationInitiation

theorem riboswitch_regulation_closed_from_evidence
    (R : RiboswitchRegulation) (E : RiboswitchRegulationEvidence R) :
    RiboswitchRegulationClosed R := by
  exact And.intro E.conformationalChangeClosed (And.intro E.transcriptionTerminationClosed E.translationInitiationClosed)

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
