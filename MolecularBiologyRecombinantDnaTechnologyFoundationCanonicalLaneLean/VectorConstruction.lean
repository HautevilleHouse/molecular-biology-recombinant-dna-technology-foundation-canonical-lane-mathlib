import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.LigationAndTransformation

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure VectorConstruction {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D} where
  plasmidBackbone : Prop
  multipleCloningSite : Prop
  originOfReplication : Prop
  antibioticResistance : Prop

structure VectorEvidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    (V : VectorConstruction F D L) where
  plasmidBackboneClosed : V.plasmidBackbone
  multipleCloningSiteClosed : V.multipleCloningSite
  originOfReplicationClosed : V.originOfReplication
  antibioticResistanceClosed : V.antibioticResistance

def VectorClosed {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    (V : VectorConstruction F D L) : Prop :=
  V.plasmidBackbone ∧ V.multipleCloningSite ∧ V.originOfReplication ∧ V.antibioticResistance

theorem vector_closed_from_evidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    (V : VectorConstruction F D L) (E : VectorEvidence V) : VectorClosed V := by
  exact And.intro E.plasmidBackboneClosed (And.intro E.multipleCloningSiteClosed (And.intro E.originOfReplicationClosed E.antibioticResistanceClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse