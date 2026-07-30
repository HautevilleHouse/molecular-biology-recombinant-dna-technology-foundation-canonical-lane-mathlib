import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure TransformationProtocol where
  hostStrain : String
  plasmidConcentration : ℝ
  competentCells : Prop
  heatShockTemperature : ℝ
  recoveryTimeMinutes : Nat

structure TransformationProtocolEvidence (T : TransformationProtocol) where
  hostStrainNonempty : T.hostStrain.length > 0
  plasmidConcentrationPositive : T.plasmidConcentration > 0
  cellsCompetent : T.competentCells
  heatShockInRange : T.heatShockTemperature ≥ 315.15 ∧ T.heatShockTemperature ≤ 333.15
  recoveryTimeSufficient : T.recoveryTimeMinutes ≥ 30

def TransformationProtocolClosed (T : TransformationProtocol) : Prop :=
  T.hostStrain.length > 0 ∧ T.plasmidConcentration > 0 ∧ T.competentCells ∧
  (T.heatShockTemperature ≥ 315.15 ∧ T.heatShockTemperature ≤ 333.15) ∧ T.recoveryTimeMinutes ≥ 30

theorem transformation_protocol_closed_from_evidence
    (T : TransformationProtocol) (E : TransformationProtocolEvidence T) :
    TransformationProtocolClosed T := by
  exact And.intro E.hostStrainNonempty
    (And.intro E.plasmidConcentrationPositive
      (And.intro E.cellsCompetent
        (And.intro E.heatShockInRange E.recoveryTimeSufficient)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse