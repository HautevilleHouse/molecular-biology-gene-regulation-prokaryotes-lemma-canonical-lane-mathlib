import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure GeneRegulationProkaryotesPackage where
  promoterRegion : Prop
  operatorSite : Prop
  repressorBinding : Prop
  inducerPresence : Prop
  transcriptionInitiation : Prop

def GeneRegulationClosed (G : GeneRegulationProkaryotesPackage) : Prop :=
  G.promoterRegion ∧ G.operatorSite ∧ G.repressorBinding ∧ G.inducerPresence ∧ G.transcriptionInitiation

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse