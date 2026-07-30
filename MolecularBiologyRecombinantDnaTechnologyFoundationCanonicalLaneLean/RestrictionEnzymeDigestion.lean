import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.RecombinantDnaFoundation

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RestrictionEnzymeDigestion {F : RecombinantDnaFoundation} where
  recognitionSite : Prop
  cleavagePattern : Prop
  stickyEnds : Prop
  bluntEnds : Prop

structure DigestionEvidence {F : RecombinantDnaFoundation} (D : RestrictionEnzymeDigestion F) where
  recognitionSiteClosed : D.recognitionSite
  cleavagePatternClosed : D.cleavagePattern
  stickyEndsClosed : D.stickyEnds
  bluntEndsClosed : D.bluntEnds

def DigestionClosed {F : RecombinantDnaFoundation} (D : RestrictionEnzymeDigestion F) : Prop :=
  D.recognitionSite ∧ D.cleavagePattern ∧ D.stickyEnds ∧ D.bluntEnds

theorem digestion_closed_from_evidence {F : RecombinantDnaFoundation}
    (D : RestrictionEnzymeDigestion F) (E : DigestionEvidence D) : DigestionClosed D := by
  exact And.intro E.recognitionSiteClosed (And.intro E.cleavagePatternClosed (And.intro E.stickyEndsClosed E.bluntEndsClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse