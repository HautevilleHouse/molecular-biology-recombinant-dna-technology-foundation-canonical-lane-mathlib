import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure HostTransformationPackage where
  competentCellPreparation : Prop
  transformationMethod : Prop
  selectionMarker : Prop
  integrationStability : Prop
  transformationValidated : Prop

structure HostTransformationEvidence (H : HostTransformationPackage) where
  competentCellPreparationClosed : H.competentCellPreparation
  transformationMethodClosed : H.transformationMethod
  selectionMarkerClosed : H.selectionMarker
  integrationStabilityClosed : H.integrationStability
  transformationValidatedClosed : H.transformationValidated

def HostTransformationClosed (H : HostTransformationPackage) : Prop :=
  H.competentCellPreparation ∧ H.transformationMethod ∧ H.selectionMarker ∧ H.integrationStability ∧ H.transformationValidated

theorem host_transformation_closed_from_evidence (H : HostTransformationPackage) (E : HostTransformationEvidence H) : HostTransformationClosed H := by
  exact And.intro E.competentCellPreparationClosed (And.intro E.transformationMethodClosed (And.intro E.selectionMarkerClosed (And.intro E.integrationStabilityClosed E.transformationValidatedClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse