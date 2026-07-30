import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RecombinantDnaScreeningPackage where
  pcrVerification : Prop
  restrictionDigestAnalysis : Prop
  sequencingConfirmation : Prop
  expressionAssay : Prop

def RecombinantDnaScreeningClosed (S : RecombinantDnaScreeningPackage) : Prop :=
  S.pcrVerification ∧ S.restrictionDigestAnalysis ∧ S.sequencingConfirmation ∧ S.expressionAssay

structure RecombinantDnaScreeningEvidence (S : RecombinantDnaScreeningPackage) where
  pcrVerificationClosed : S.pcrVerification
  restrictionDigestAnalysisClosed : S.restrictionDigestAnalysis
  sequencingConfirmationClosed : S.sequencingConfirmation
  expressionAssayClosed : S.expressionAssay

theorem recombinant_dna_screening_closed_from_evidence (S : RecombinantDnaScreeningPackage) (E : RecombinantDnaScreeningEvidence S) :
    RecombinantDnaScreeningClosed S := by
  exact And.intro E.pcrVerificationClosed (And.intro E.restrictionDigestAnalysisClosed (And.intro E.sequencingConfirmationClosed E.expressionAssayClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse