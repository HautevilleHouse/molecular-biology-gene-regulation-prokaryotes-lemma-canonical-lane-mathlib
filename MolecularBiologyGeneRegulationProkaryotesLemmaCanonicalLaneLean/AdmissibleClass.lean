import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure MolecularBiologyAdmittedObject where
  operonFunctional : Prop
  regulationMechanismIdentified : Prop
  evidenceForRegulation : Prop

structure AdmissibleClass where
  object : MolecularBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.evidenceForRegulation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
