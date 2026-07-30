import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure LacOperonEvidence where
  lacZExpressed : Prop
  lacYExpressed : Prop
  lacAExpressed : Prop
  lactoseInducer : Prop
  glucoseRepression : Prop

def LacOperonClosed (L : LacOperonEvidence) : Prop :=
  L.lacZExpressed ∧ L.lacYExpressed ∧ L.lacAExpressed ∧ L.lactoseInducer

theorem lac_operon_closed (L : LacOperonEvidence) (h : L.lacZExpressed) (h' : L.lacYExpressed) (h'' : L.lacAExpressed) (h''' : L.lactoseInducer) : LacOperonClosed L := by
  exact And.intro h (And.intro h' (And.intro h'' h'''))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse