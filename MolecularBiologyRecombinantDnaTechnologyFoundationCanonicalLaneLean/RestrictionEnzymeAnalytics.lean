import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSequence : String
  cutPattern : Prop
  stickyEnds : Bool
  methylationSensitivity : Prop

structure RestrictionEnzymeEvidence (R : RestrictionEnzymePackage) where
  recognitionSequenceClosed : R.recognitionSequence.length > 0
  cutPatternClosed : R.cutPattern
  stickyEndsClosed : R.stickyEnds = true ∨ R.stickyEnds = false
  methylationSensitivityClosed : R.methylationSensitivity

def RestrictionEnzymeClosed (R : RestrictionEnzymePackage) : Prop :=
  R.recognitionSequence.length > 0 ∧ R.cutPattern ∧ (R.stickyEnds = true ∨ R.stickyEnds = false) ∧ R.methylationSensitivity

theorem restriction_enzyme_closed_from_evidence
    (R : RestrictionEnzymePackage) (E : RestrictionEnzymeEvidence R) :
    RestrictionEnzymeClosed R := by
  exact And.intro E.recognitionSequenceClosed
    (And.intro E.cutPatternClosed
      (And.intro E.stickyEndsClosed E.methylationSensitivityClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse