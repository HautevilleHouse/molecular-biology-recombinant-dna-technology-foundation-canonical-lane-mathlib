import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure TransformationSelectionPackage where
  competentCells : Prop
  transformationMethod : String
  selectionAgent : String
  incubationTime : Float
  colonyFormation : Prop

structure TransformationSelectionEvidence (T : TransformationSelectionPackage) where
  competentCellsClosed : T.competentCells
  transformationMethodClosed : T.transformationMethod = "heat shock" ∨ T.transformationMethod = "electroporation"
  selectionAgentClosed : T.selectionAgent = "antibiotic"
  incubationTimeClosed : T.incubationTime > 0.0
  colonyFormationClosed : T.colonyFormation

def TransformationSelectionClosed (T : TransformationSelectionPackage) : Prop :=
  T.competentCells ∧ (T.transformationMethod = "heat shock" ∨ T.transformationMethod = "electroporation") ∧ T.selectionAgent = "antibiotic" ∧ T.incubationTime > 0.0 ∧ T.colonyFormation

theorem transformation_selection_closed_from_evidence (T : TransformationSelectionPackage) (E : TransformationSelectionEvidence T) :
    TransformationSelectionClosed T := by
  exact And.intro E.competentCellsClosed (And.intro E.transformationMethodClosed (And.intro E.selectionAgentClosed (And.intro E.incubationTimeClosed E.colonyFormationClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse