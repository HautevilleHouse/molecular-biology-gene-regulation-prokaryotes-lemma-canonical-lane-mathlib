import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure OperonPackage where
  operatorSite : Prop
  promoterSite : Prop
  repressorBinding : Prop
  inducerPresence : Prop
  transcriptionInitiated : Prop

structure OperonEvidence (O : OperonPackage) where
  operatorSiteClosed : O.operatorSite
  promoterSiteClosed : O.promoterSite
  repressorBindingClosed : O.repressorBinding
  inducerPresenceClosed : O.inducerPresence
  transcriptionInitiatedClosed : O.transcriptionInitiated

def OperonClosed (O : OperonPackage) : Prop :=
  O.operatorSite ∧ O.promoterSite ∧ O.repressorBinding ∧ O.inducerPresence ∧ O.transcriptionInitiated

theorem operon_closed_from_evidence (O : OperonPackage) (E : OperonEvidence O) : OperonClosed O := by
  exact And.intro E.operatorSiteClosed
    (And.intro E.promoterSiteClosed
      (And.intro E.repressorBindingClosed
        (And.intro E.inducerPresenceClosed E.transcriptionInitiatedClosed)))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
