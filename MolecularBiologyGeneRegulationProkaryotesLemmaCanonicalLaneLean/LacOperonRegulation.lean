import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure LacOperonPackage where
  lactosePresent : Prop
  allolactoseBound : Prop
  repressorInactive : Prop
  capBound : Prop
  campPresent : Prop
  rnaPolymeraseBound : Prop
  lacZYAOperonTranscribed : Prop
  betaGalactosidaseProduced : Prop
  lactoseCleaved : Prop
  energySourceUtilized : Prop

structure LacOperonEvidence (L : LacOperonPackage) where
  lactosePresentClosed : L.lactosePresent
  allolactoseBoundClosed : L.allolactoseBound
  repressorInactiveClosed : L.repressorInactive
  capBoundClosed : L.capBound
  campPresentClosed : L.campPresent
  rnaPolymeraseBoundClosed : L.rnaPolymeraseBound
  lacZYAOperonTranscribedClosed : L.lacZYAOperonTranscribed
  betaGalactosidaseProducedClosed : L.betaGalactosidaseProduced
  lactoseCleavedClosed : L.lactoseCleaved
  energySourceUtilizedClosed : L.energySourceUtilized

def LacOperonClosed (L : LacOperonPackage) : Prop :=
  L.lactosePresent ∧ L.allolactoseBound ∧ L.repressorInactive ∧ L.capBound ∧
  L.campPresent ∧ L.rnaPolymeraseBound ∧ L.lacZYAOperonTranscribed ∧
  L.betaGalactosidaseProduced ∧ L.lactoseCleaved ∧ L.energySourceUtilized

theorem lac_operon_closed_from_evidence (L : LacOperonPackage) (E : LacOperonEvidence L) : LacOperonClosed L := by
  exact And.intro E.lactosePresentClosed
    (And.intro E.allolactoseBoundClosed
      (And.intro E.repressorInactiveClosed
        (And.intro E.capBoundClosed
          (And.intro E.campPresentClosed
            (And.intro E.rnaPolymeraseBoundClosed
              (And.intro E.lacZYAOperonTranscribedClosed
                (And.intro E.betaGalactosidaseProducedClosed
                  (And.intro E.lactoseCleavedClosed E.energySourceUtilizedClosed))))))))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
