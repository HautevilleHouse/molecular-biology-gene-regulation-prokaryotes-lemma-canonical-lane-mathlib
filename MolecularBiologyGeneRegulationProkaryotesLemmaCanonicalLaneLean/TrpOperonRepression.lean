import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean

structure TrpOperonPackage where
  tryptophanPresent : Prop
  trpRepressorBound : Prop
  operatorBlocked : Prop
  rnaPolymeraseStalled : Prop
  trpGenesTranscribed : Prop
  enzymesSynthesized : Prop
  tryptophanProduced : Prop
  feedbackRepressionActive : Prop
  translationRegulation : Prop
  attenuationControl : Prop

structure TrpOperonEvidence (T : TrpOperonPackage) where
  tryptophanPresentClosed : T.tryptophanPresent
  trpRepressorBoundClosed : T.trpRepressorBound
  operatorBlockedClosed : T.operatorBlocked
  rnaPolymeraseStalledClosed : T.rnaPolymeraseStalled
  trpGenesTranscribedClosed : T.trpGenesTranscribed
  enzymesSynthesizedClosed : T.enzymesSynthesized
  tryptophanProducedClosed : T.tryptophanProduced
  feedbackRepressionActiveClosed : T.feedbackRepressionActive
  translationRegulationClosed : T.translationRegulation
  attenuationControlClosed : T.attenuationControl

def TrpOperonClosed (T : TrpOperonPackage) : Prop :=
  T.tryptophanPresent ∧ T.trpRepressorBound ∧ T.operatorBlocked ∧
  T.rnaPolymeraseStalled ∧ T.trpGenesTranscribed ∧ T.enzymesSynthesized ∧
  T.tryptophanProduced ∧ T.feedbackRepressionActive ∧ T.translationRegulation ∧ T.attenuationControl

theorem trp_operon_closed_from_evidence (T : TrpOperonPackage) (E : TrpOperonEvidence T) : TrpOperonClosed T := by
  exact And.intro E.tryptophanPresentClosed
    (And.intro E.trpRepressorBoundClosed
      (And.intro E.operatorBlockedClosed
        (And.intro E.rnaPolymeraseStalledClosed
          (And.intro E.trpGenesTranscribedClosed
            (And.intro E.enzymesSynthesizedClosed
              (And.intro E.tryptophanProducedClosed
                (And.intro E.feedbackRepressionActiveClosed
                  (And.intro E.translationRegulationClosed E.attenuationControlClosed))))))))

end MolecularBiologyGeneRegulationProkaryotesLemmaCanonicalLaneLean
end HautevilleHouse
