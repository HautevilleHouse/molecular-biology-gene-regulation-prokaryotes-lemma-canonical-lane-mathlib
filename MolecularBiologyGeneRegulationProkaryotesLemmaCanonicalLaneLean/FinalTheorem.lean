import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

def ConstrainedGeneRegulationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gene_regulation_endgame (A : AdmissibleClass) : ConstrainedGeneRegulationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
