import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure RepressorBindingPackage where
  repressorProtein : Type
  dnaBindingDomain : Prop
  allostericChange : Prop
  bindingAffinity : ℝ

def RepressorBindingClosed (R : RepressorBindingPackage) : Prop :=
  R.dnaBindingDomain ∧ R.allostericChange

theorem repressor_binding_closed (R : RepressorBindingPackage) (h : R.dnaBindingDomain) (h' : R.allostericChange) : RepressorBindingClosed R := by
  exact And.intro h h'

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse