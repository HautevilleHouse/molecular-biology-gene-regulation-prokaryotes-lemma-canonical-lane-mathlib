import canonicalLaneMathlib.HardyWeinbergEquilibrium

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  populationGenotypeFreq : Prop
  alleleFreqStable : Prop
  noEvolutionaryForces : Prop
  randomMatingAssumption : Prop

def hardyWeinbergClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.populationGenotypeFreq ∧ H.alleleFreqStable ∧ H.noEvolutionaryForces ∧ H.randomMatingAssumption

structure HardyWeinbergEvidence (H : HardyWeinbergEquilibriumPackage) where
  genotypeFreqClosed : H.populationGenotypeFreq
  alleleFreqClosed : H.alleleFreqStable
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  randomMatingClosed : H.randomMatingAssumption

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEvidence H) : hardyWeinbergClosed H := by
  exact And.intro E.genotypeFreqClosed (And.intro E.alleleFreqClosed (And.intro E.noEvolutionaryForcesClosed E.randomMatingClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse