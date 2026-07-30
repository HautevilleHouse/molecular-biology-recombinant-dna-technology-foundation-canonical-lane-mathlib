import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure LigationAssemblyPackage where
  compatibleEnds : Prop
  ligationEfficiency : Prop
  insertOrientation : Prop
  circularizationControl : Prop
  recombinantConstructValidated : Prop

structure LigationAssemblyEvidence (L : LigationAssemblyPackage) where
  compatibleEndsClosed : L.compatibleEnds
  ligationEfficiencyClosed : L.ligationEfficiency
  insertOrientationClosed : L.insertOrientation
  circularizationControlClosed : L.circularizationControl
  recombinantConstructValidatedClosed : L.recombinantConstructValidated

def LigationAssemblyClosed (L : LigationAssemblyPackage) : Prop :=
  L.compatibleEnds ∧ L.ligationEfficiency ∧ L.insertOrientation ∧ L.circularizationControl ∧ L.recombinantConstructValidated

theorem ligation_assembly_closed_from_evidence (L : LigationAssemblyPackage) (E : LigationAssemblyEvidence L) : LigationAssemblyClosed L := by
  exact And.intro E.compatibleEndsClosed (And.intro E.ligationEfficiencyClosed (And.intro E.insertOrientationClosed (And.intro E.circularizationControlClosed E.recombinantConstructValidatedClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse