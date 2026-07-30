import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean.GeneRegulationProkaryotes

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure LacOperonPackage (G : GeneRegulationProkaryotesPackage) where
  glucoseAbsent : Prop
  lactosePresent : Prop
  capBinding : Prop
  rnaPolymeraseBinding : Prop
  betaGalactosidaseProduction : Prop

structure LacOperonEvidence {G : GeneRegulationProkaryotesPackage} (L : LacOperonPackage G) where
  glucoseAbsentClosed : L.glucoseAbsent
  lactosePresentClosed : L.lactosePresent
  capBindingClosed : L.capBinding
  rnaPolymeraseBindingClosed : L.rnaPolymeraseBinding
  betaGalactosidaseProductionClosed : L.betaGalactosidaseProduction

def LacOperonClosed {G : GeneRegulationProkaryotesPackage} (L : LacOperonPackage G) : Prop :=
  L.glucoseAbsent ∧ L.lactosePresent ∧ L.capBinding ∧ L.rnaPolymeraseBinding ∧ L.betaGalactosidaseProduction

theorem lac_operon_closed_from_evidence {G : GeneRegulationProkaryotesPackage} (L : LacOperonPackage G) (E : LacOperonEvidence L) : LacOperonClosed L := by
  exact And.intro E.glucoseAbsentClosed (And.intro E.lactosePresentClosed (And.intro E.capBindingClosed (And.intro E.rnaPolymeraseBindingClosed E.betaGalactosidaseProductionClosed)))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse