import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.evidenceForRegulation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.evidenceForRegulation

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
