import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.RestrictionEnzymeDigestion

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure LigationAndTransformation {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} where
  dnaLigation : Prop
  competentCells : Prop
  transformationEfficiency : Prop
  selectionMarker : Prop

structure LigationEvidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} (L : LigationAndTransformation F D) where
  dnaLigationClosed : L.dnaLigation
  competentCellsClosed : L.competentCells
  transformationEfficiencyClosed : L.transformationEfficiency
  selectionMarkerClosed : L.selectionMarker

def LigationClosed {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} (L : LigationAndTransformation F D) : Prop :=
  L.dnaLigation ∧ L.competentCells ∧ L.transformationEfficiency ∧ L.selectionMarker

theorem ligation_closed_from_evidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} (L : LigationAndTransformation F D)
    (E : LigationEvidence L) : LigationClosed L := by
  exact And.intro E.dnaLigationClosed (And.intro E.competentCellsClosed (And.intro E.transformationEfficiencyClosed E.selectionMarkerClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse