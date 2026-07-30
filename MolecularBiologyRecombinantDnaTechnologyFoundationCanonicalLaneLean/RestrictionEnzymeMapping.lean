import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RestrictionEnzyme where
  name : String
  recognitionSequence : String
  cutPosition : ℕ
  isStickyEnd : Bool

def restrictionEnzymeClosed (E : RestrictionEnzyme) : Prop :=
  E.recognitionSequence ≠ "" ∧ E.cutPosition > 0

structure RestrictionEnzymeEvidence (E : RestrictionEnzyme) where
  recognitionSequenceClosed : E.recognitionSequence ≠ ""
  cutPositionClosed : E.cutPosition > 0

theorem restriction_enzyme_closed_from_evidence (E : RestrictionEnzyme)
    (Evidence : RestrictionEnzymeEvidence E) : restrictionEnzymeClosed E := by
  exact And.intro Evidence.recognitionSequenceClosed Evidence.cutPositionClosed

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse