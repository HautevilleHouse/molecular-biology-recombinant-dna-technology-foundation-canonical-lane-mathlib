import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure PlasmidVectorPackage where
  originOfReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop
  insertSizeLimit : Nat
  copyNumber : Nat

structure PlasmidVectorEvidence (P : PlasmidVectorPackage) where
  originOfReplicationClosed : P.originOfReplication
  multipleCloningSiteClosed : P.multipleCloningSite
  selectableMarkerClosed : P.selectableMarker
  insertSizeLimitClosed : P.insertSizeLimit ≥ 1000
  copyNumberClosed : P.copyNumber ≥ 10

def PlasmidVectorClosed (P : PlasmidVectorPackage) : Prop :=
  P.originOfReplication ∧ P.multipleCloningSite ∧ P.selectableMarker ∧ P.insertSizeLimit ≥ 1000 ∧ P.copyNumber ≥ 10

theorem plasmid_vector_closed_from_evidence (P : PlasmidVectorPackage) (E : PlasmidVectorEvidence P) :
    PlasmidVectorClosed P := by
  exact And.intro E.originOfReplicationClosed (And.intro E.multipleCloningSiteClosed (And.intro E.selectableMarkerClosed (And.intro E.insertSizeLimitClosed E.copyNumberClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse