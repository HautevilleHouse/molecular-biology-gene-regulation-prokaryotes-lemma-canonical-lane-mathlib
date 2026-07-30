import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure LacOperonRepressionPackage where
  promoterBinding : Prop
  repressorBinding : Prop
  allolactoseInduction : Prop
  transcriptionRegulation : Prop

structure LacOperonRepressionEvidence (P : LacOperonRepressionPackage) where
  promoterBindingClosed : P.promoterBinding
  repressorBindingClosed : P.repressorBinding
  allolactoseInductionClosed : P.allolactoseInduction
  transcriptionRegulationClosed : P.transcriptionRegulation

def LacOperonRepressionClosed (P : LacOperonRepressionPackage) : Prop :=
  P.promoterBinding ∧ P.repressorBinding ∧ P.allolactoseInduction ∧ P.transcriptionRegulation

theorem lac_operon_repression_closed_from_evidence (P : LacOperonRepressionPackage)
    (E : LacOperonRepressionEvidence P) : LacOperonRepressionClosed P := by
  exact And.intro E.promoterBindingClosed
    (And.intro E.repressorBindingClosed
      (And.intro E.allolactoseInductionClosed E.transcriptionRegulationClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
