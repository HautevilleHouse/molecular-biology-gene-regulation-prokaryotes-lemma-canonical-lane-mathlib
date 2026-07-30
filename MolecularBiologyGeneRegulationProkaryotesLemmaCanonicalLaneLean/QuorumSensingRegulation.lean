import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

/-! # Quorum Sensing Regulation Package -/

structure QuorumSensingRegulation where
  autoinducerMolecule : Type
  receptorProtein : Type
  signalIntegration : Prop
  targetGeneActivation : Prop
  populationDensityFeedback : Prop

structure QuorumSensingRegulationEvidence (Q : QuorumSensingRegulation) where
  signalIntegrationClosed : Q.signalIntegration
  targetGeneActivationClosed : Q.targetGeneActivation
  populationDensityFeedbackClosed : Q.populationDensityFeedback

def QuorumSensingRegulationClosed (Q : QuorumSensingRegulation) : Prop :=
  Q.signalIntegration ∧ Q.targetGeneActivation ∧ Q.populationDensityFeedback

theorem quorum_sensing_regulation_closed_from_evidence
    (Q : QuorumSensingRegulation) (E : QuorumSensingRegulationEvidence Q) :
    QuorumSensingRegulationClosed Q := by
  exact And.intro E.signalIntegrationClosed (And.intro E.targetGeneActivationClosed E.populationDensityFeedbackClosed)

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
