import canonicalLaneMathlib.LigationAndTransformation

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure ScreeningProtocol where
  antibioticUsed : String
  selectionMarker : String
  colonyCount : ℕ
  insertionConfirmed : Prop

def screeningClosed (S : ScreeningProtocol) : Prop :=
  S.antibioticUsed ≠ "" ∧ S.selectionMarker ≠ "" ∧ S.insertionConfirmed

structure ScreeningEvidence (S : ScreeningProtocol) where
  antibioticUsedClosed : S.antibioticUsed ≠ ""
  selectionMarkerClosed : S.selectionMarker ≠ ""
  insertionConfirmedClosed : S.insertionConfirmed

theorem screening_closed_from_evidence (S : ScreeningProtocol) (E : ScreeningEvidence S) :
    screeningClosed S := by
  exact And.intro E.antibioticUsedClosed (And.intro E.selectionMarkerClosed E.insertionConfirmedClosed)

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse