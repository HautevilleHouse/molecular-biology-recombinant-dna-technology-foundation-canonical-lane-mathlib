import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure SafetyContainmentPackage where
  biologicalContainment : Prop
  physicalContainment : Prop
  hostRestriction : Prop
  accidentalReleasePrevention : Prop
  containmentValidated : Prop

structure SafetyContainmentEvidence (S : SafetyContainmentPackage) where
  biologicalContainmentClosed : S.biologicalContainment
  physicalContainmentClosed : S.physicalContainment
  hostRestrictionClosed : S.hostRestriction
  accidentalReleasePreventionClosed : S.accidentalReleasePrevention
  containmentValidatedClosed : S.containmentValidated

def SafetyContainmentClosed (S : SafetyContainmentPackage) : Prop :=
  S.biologicalContainment ∧ S.physicalContainment ∧ S.hostRestriction ∧ S.accidentalReleasePrevention ∧ S.containmentValidated

theorem safety_containment_closed_from_evidence (S : SafetyContainmentPackage) (E : SafetyContainmentEvidence S) : SafetyContainmentClosed S := by
  exact And.intro E.biologicalContainmentClosed (And.intro E.physicalContainmentClosed (And.intro E.hostRestrictionClosed (And.intro E.accidentalReleasePreventionClosed E.containmentValidatedClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse