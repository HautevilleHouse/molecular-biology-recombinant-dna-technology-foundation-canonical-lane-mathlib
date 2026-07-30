import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.GeneExpressionClosure

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

def ConstrainedRecombinantDnaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_recombinant_dna_endgame (A : AdmissibleClass) :
    ConstrainedRecombinantDnaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse