import canonicalLaneMathlib.GenomeStructure

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure GenomeStructure where
  sequenceLength : Nat
  gcContent : Float
  codingRegionCount : Nat
  originOfReplicationNat : Prop

def genomeStructureClosed (G : GenomeStructure) : Prop :=
  G.sequenceLength > 0 ∧ G.gcContent > 0.0 ∧ G.codingRegionCount > 0 ∧ G.originOfReplicationNat

structure GenomeStructureEvidence (G : GenomeStructure) where
  sequenceLengthPositive : G.sequenceLength > 0
  gcContentPositive : G.gcContent > 0.0
  codingRegionCountPositive : G.codingRegionCount > 0
  originClosed : G.originOfReplicationNat

theorem genome_structure_closed_from_evidence (G : GenomeStructure) (E : GenomeStructureEvidence G) : genomeStructureClosed G := by
  exact And.intro E.sequenceLengthPositive (And.intro E.gcContentPositive (And.intro E.codingRegionCountPositive E.originClosed))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse