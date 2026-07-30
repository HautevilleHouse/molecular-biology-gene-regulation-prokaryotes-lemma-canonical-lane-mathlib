import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TRNActivationEvidence where
  trpAExpressed : Prop
  trpBExpressed : Prop
  trpEExpressed : Prop
  tryptophanAbsent : Prop
  leaderPeptide : Prop
  attenuationMechanism : Prop

def TRNActivationClosed (T : TRNActivationEvidence) : Prop :=
  T.trpAExpressed ∧ T.trpBExpressed ∧ T.trpEExpressed ∧ T.attenuationMechanism

theorem trp_activation_closed (T : TRNActivationEvidence) (h : T.trpAExpressed) (h' : T.trpBExpressed) (h'' : T.trpEExpressed) (h''' : T.attenuationMechanism) : TRNActivationClosed T := by
  exact And.intro h (And.intro h' (And.intro h'' h'''))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse