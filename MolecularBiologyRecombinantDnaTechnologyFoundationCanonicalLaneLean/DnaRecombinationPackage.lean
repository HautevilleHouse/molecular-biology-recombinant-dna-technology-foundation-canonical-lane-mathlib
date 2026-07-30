import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure DnaRecombinationPackage (A : AdmissibleClass) where
  restrictionEnzymeRecognition : Prop
  cleavageSitePrecision : Prop
  stickyEndLigation : Prop
  vectorInsertCompatibility : Prop
  hostCellTransformation : Prop

structure DnaRecombinationEvidence {A : AdmissibleClass} (P : DnaRecombinationPackage A) where
  restrictionEnzymeRecognitionClosed : P.restrictionEnzymeRecognition
  cleavageSitePrecisionClosed : P.cleavageSitePrecision
  stickyEndLigationClosed : P.stickyEndLigation
  vectorInsertCompatibilityClosed : P.vectorInsertCompatibility
  hostCellTransformationClosed : P.hostCellTransformation

def DnaRecombinationClosed {A : AdmissibleClass} (P : DnaRecombinationPackage A) : Prop :=
  P.restrictionEnzymeRecognition ∧ P.cleavageSitePrecision ∧ P.stickyEndLigation ∧ P.vectorInsertCompatibility ∧ P.hostCellTransformation

theorem dna_recombination_closed_from_evidence {A : AdmissibleClass} (P : DnaRecombinationPackage A) (E : DnaRecombinationEvidence P) :
    DnaRecombinationClosed P := by
  exact And.intro E.restrictionEnzymeRecognitionClosed
    (And.intro E.cleavageSitePrecisionClosed
      (And.intro E.stickyEndLigationClosed
        (And.intro E.vectorInsertCompatibilityClosed E.hostCellTransformationClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse