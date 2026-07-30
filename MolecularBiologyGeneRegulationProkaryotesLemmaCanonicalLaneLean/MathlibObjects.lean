import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure Genome where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProkaryoteAdmittedObject where
  genome : Genome
  regulatoryNetwork : Prop
  operonModel : Prop
  geneExpressionData : Type
  lemmaBody : Prop
  conclusion : lemmaBody

def ProkaryoteWitnessClosed (O : ProkaryoteAdmittedObject) : Prop :=
  O.lemmaBody

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse