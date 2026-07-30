import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure CRISPRCasAdaptationPackage where
  spacerAcquisition : Prop
  protospacerAdjacentMotif : Prop
  casProteinComplex : Prop
  integrationIntoRepeatArray : Prop

structure CRISPRCasAdaptationEvidence (P : CRISPRCasAdaptationPackage) where
  spacerAcquisitionClosed : P.spacerAcquisition
  protospacerAdjacentMotifClosed : P.protospacerAdjacentMotif
  casProteinComplexClosed : P.casProteinComplex
  integrationIntoRepeatArrayClosed : P.integrationIntoRepeatArray

def CRISPRCasAdaptationClosed (P : CRISPRCasAdaptationPackage) : Prop :=
  P.spacerAcquisition ∧ P.protospacerAdjacentMotif ∧ P.casProteinComplex ∧ P.integrationIntoRepeatArray

theorem crispr_cas_adaptation_closed_from_evidence (P : CRISPRCasAdaptationPackage)
    (E : CRISPRCasAdaptationEvidence P) : CRISPRCasAdaptationClosed P := by
  exact And.intro E.spacerAcquisitionClosed
    (And.intro E.protospacerAdjacentMotifClosed
      (And.intro E.casProteinComplexClosed E.integrationIntoRepeatArrayClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
