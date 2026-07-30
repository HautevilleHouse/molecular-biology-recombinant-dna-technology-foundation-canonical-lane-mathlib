import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RestrictionEnzymeRecognitionPackage where
  recognitionSequence : String
  cleavagePattern : Prop
  methylationSensitivity : Prop
  starActivityConditions : Prop
  recognitionSpecificityValidated : Prop

structure RestrictionEnzymeRecognitionEvidence (R : RestrictionEnzymeRecognitionPackage) where
  cleavagePatternClosed : R.cleavagePattern
  methylationSensitivityClosed : R.methylationSensitivity
  starActivityConditionsClosed : R.starActivityConditions
  recognitionSpecificityValidatedClosed : R.recognitionSpecificityValidated

def RestrictionEnzymeRecognitionClosed (R : RestrictionEnzymeRecognitionPackage) : Prop :=
  R.cleavagePattern ∧ R.methylationSensitivity ∧ R.starActivityConditions ∧ R.recognitionSpecificityValidated

theorem restriction_enzyme_recognition_closed_from_evidence (R : RestrictionEnzymeRecognitionPackage) (E : RestrictionEnzymeRecognitionEvidence R) : RestrictionEnzymeRecognitionClosed R := by
  exact And.intro E.cleavagePatternClosed (And.intro E.methylationSensitivityClosed (And.intro E.starActivityConditionsClosed E.recognitionSpecificityValidatedClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse