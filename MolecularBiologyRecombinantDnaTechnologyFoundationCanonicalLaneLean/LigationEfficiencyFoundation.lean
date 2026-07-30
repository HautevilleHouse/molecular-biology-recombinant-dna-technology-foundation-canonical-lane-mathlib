import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure LigationEfficiencyFoundation where
  dnaConcentration : ℝ
  insertLength : Nat
  vectorLength : Nat
  temperature : ℝ
  atpLevel : ℝ
  ligaseActivity : Prop

structure LigationEfficiencyEvidence (L : LigationEfficiencyFoundation) where
  dnaConcentrationPositive : L.dnaConcentration > 0
  insertLengthPositive : L.insertLength > 0
  vectorLengthPositive : L.vectorLength > 0
  temperatureInRange : L.temperature ≥ 273.15 ∧ L.temperature ≤ 373.15
  atpLevelSufficient : L.atpLevel > 0.5
  ligaseActive : L.ligaseActivity

def LigationEfficiencyClosed (L : LigationEfficiencyFoundation) : Prop :=
  L.dnaConcentration > 0 ∧ L.insertLength > 0 ∧ L.vectorLength > 0 ∧
  (L.temperature ≥ 273.15 ∧ L.temperature ≤ 373.15) ∧ L.atpLevel > 0.5 ∧ L.ligaseActivity

theorem ligation_efficiency_closed_from_evidence
    (L : LigationEfficiencyFoundation) (E : LigationEfficiencyEvidence L) :
    LigationEfficiencyClosed L := by
  exact And.intro E.dnaConcentrationPositive
    (And.intro E.insertLengthPositive
      (And.intro E.vectorLengthPositive
        (And.intro E.temperatureInRange
          (And.intro E.atpLevelSufficient E.ligaseActive))))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse