import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TwoComponentSignalTransductionPackage where
  sensorKinaseAutophosphorylation : Prop
  responseRegulatorPhosphorylation : Prop
  transcriptionalActivationByRegulator : Prop
  phosphotransferRelay : Prop
  signalTerminationByPhosphatase : Prop

structure TwoComponentSignalTransductionEvidence (P : TwoComponentSignalTransductionPackage) where
  sensorKinaseAutophosphorylationClosed : P.sensorKinaseAutophosphorylation
  responseRegulatorPhosphorylationClosed : P.responseRegulatorPhosphorylation
  transcriptionalActivationByRegulatorClosed : P.transcriptionalActivationByRegulator
  phosphotransferRelayClosed : P.phosphotransferRelay
  signalTerminationByPhosphataseClosed : P.signalTerminationByPhosphatase

def TwoComponentSignalTransductionClosed (P : TwoComponentSignalTransductionPackage) : Prop :=
  P.sensorKinaseAutophosphorylation ∧ P.responseRegulatorPhosphorylation ∧
  P.transcriptionalActivationByRegulator ∧ P.phosphotransferRelay ∧
  P.signalTerminationByPhosphatase

theorem two_component_signal_transduction_closed_from_evidence (P : TwoComponentSignalTransductionPackage)
    (E : TwoComponentSignalTransductionEvidence P) : TwoComponentSignalTransductionClosed P := by
  exact And.intro E.sensorKinaseAutophosphorylationClosed
    (And.intro E.responseRegulatorPhosphorylationClosed
      (And.intro E.transcriptionalActivationByRegulatorClosed
        (And.intro E.phosphotransferRelayClosed E.signalTerminationByPhosphataseClosed)))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
