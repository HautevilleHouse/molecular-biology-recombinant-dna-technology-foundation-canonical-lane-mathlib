import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSequence : String
  cutType : String
  stickyEnds : Bool
  bluntEnds : Bool
  methylationSensitivity : Prop

structure RestrictionEnzymeEvidence (R : RestrictionEnzymePackage) where
  recognitionSequenceClosed : R.recognitionSequence = "GAATTC"
  cutTypeClosed : R.cutType = "staggered"
  stickyEndsClosed : R.stickyEnds
  bluntEndsClosed : ¬ R.bluntEnds
  methylationSensitivityClosed : R.methylationSensitivity

def RestrictionEnzymeClosed (R : RestrictionEnzymePackage) : Prop :=
  R.recognitionSequence = "GAATTC" ∧ R.cutType = "staggered" ∧ R.stickyEnds ∧ ¬ R.bluntEnds ∧ R.methylationSensitivity

theorem restriction_enzyme_closed_from_evidence (R : RestrictionEnzymePackage) (E : RestrictionEnzymeEvidence R) :
    RestrictionEnzymeClosed R := by
  exact And.intro E.recognitionSequenceClosed (And.intro E.cutTypeClosed (And.intro E.stickyEndsClosed (And.intro E.bluntEndsClosed E.methylationSensitivityClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse