import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TrpOperonAttenuationPackage where
  leaderPeptide : Prop
  ribosomeStalling : Prop
  terminatorAntiterminatorChoice : Prop
  tryptophanSensing : Prop

structure TrpOperonAttenuationEvidence (P : TrpOperonAttenuationPackage) where
  leaderPeptideClosed : P.leaderPeptide
  ribosomeStallingClosed : P.ribosomeStalling
  terminatorAntiterminatorChoiceClosed : P.terminatorAntiterminatorChoice
  tryptophanSensingClosed : P.tryptophanSensing

def TrpOperonAttenuationClosed (P : TrpOperonAttenuationPackage) : Prop :=
  P.leaderPeptide ∧ P.ribosomeStalling ∧ P.terminatorAntiterminatorChoice ∧ P.tryptophanSensing

theorem trp_operon_attenuation_closed_from_evidence (P : TrpOperonAttenuationPackage)
    (E : TrpOperonAttenuationEvidence P) : TrpOperonAttenuationClosed P := by
  exact And.intro E.leaderPeptideClosed
    (And.intro E.ribosomeStallingClosed
      (And.intro E.terminatorAntiterminatorChoiceClosed E.tryptophanSensingClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
