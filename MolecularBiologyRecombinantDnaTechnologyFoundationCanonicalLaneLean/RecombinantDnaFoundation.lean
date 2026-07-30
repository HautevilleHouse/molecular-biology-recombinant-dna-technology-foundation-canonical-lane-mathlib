import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RecombinantDnaFoundation where
  molecularCloning : Prop
  restrictionEnzymes : Prop
  vectors : Prop
  hostOrganism : Prop

def dnatFoundationClosed (F : RecombinantDnaFoundation) : Prop :=
  F.molecularCloning ∧ F.restrictionEnzymes ∧ F.vectors ∧ F.hostOrganism

structure RecombinantDnaEvidence (F : RecombinantDnaFoundation) where
  molecularCloningClosed : F.molecularCloning
  restrictionEnzymesClosed : F.restrictionEnzymes
  vectorsClosed : F.vectors
  hostOrganismClosed : F.hostOrganism

theorem dnat_foundation_closed_from_evidence (F : RecombinantDnaFoundation)
    (E : RecombinantDnaEvidence F) : dnatFoundationClosed F := by
  exact And.intro E.molecularCloningClosed (And.intro E.restrictionEnzymesClosed (And.intro E.vectorsClosed E.hostOrganismClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse