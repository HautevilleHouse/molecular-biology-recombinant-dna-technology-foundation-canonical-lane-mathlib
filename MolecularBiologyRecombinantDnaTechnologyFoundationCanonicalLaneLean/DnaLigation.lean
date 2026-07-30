import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure DnaLigationPackage where
  insertDna : String
  vectorDna : String
  compatibleEnds : Prop
  ligasePresent : Prop
  ligationEfficiency : Float

structure DnaLigationEvidence (L : DnaLigationPackage) where
  insertDnaClosed : L.insertDna ≠ ""
  vectorDnaClosed : L.vectorDna ≠ ""
  compatibleEndsClosed : L.compatibleEnds
  ligasePresentClosed : L.ligasePresent
  ligationEfficiencyClosed : L.ligationEfficiency > 0.5

def DnaLigationClosed (L : DnaLigationPackage) : Prop :=
  L.insertDna ≠ "" ∧ L.vectorDna ≠ "" ∧ L.compatibleEnds ∧ L.ligasePresent ∧ L.ligationEfficiency > 0.5

theorem dna_ligation_closed_from_evidence (L : DnaLigationPackage) (E : DnaLigationEvidence L) :
    DnaLigationClosed L := by
  exact And.intro E.insertDnaClosed (And.intro E.vectorDnaClosed (And.intro E.compatibleEndsClosed (And.intro E.ligasePresentClosed E.ligationEfficiencyClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse