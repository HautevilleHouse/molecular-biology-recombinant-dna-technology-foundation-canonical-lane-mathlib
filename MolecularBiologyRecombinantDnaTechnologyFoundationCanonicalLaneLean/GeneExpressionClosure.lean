import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.DnaRecombinationPackage

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure GeneExpressionClosurePackage {A : AdmissibleClass} (P : DnaRecombinationPackage A) where
  promoterRecognition : Prop
  transcriptionInitiation : Prop
  rnaProcessing : Prop
  translationFidelity : Prop
  proteinFunction : Prop

structure GeneExpressionClosureEvidence {A : AdmissibleClass} {P : DnaRecombinationPackage A} (G : GeneExpressionClosurePackage P) where
  promoterRecognitionClosed : G.promoterRecognition
  transcriptionInitiationClosed : G.transcriptionInitiation
  rnaProcessingClosed : G.rnaProcessing
  translationFidelityClosed : G.translationFidelity
  proteinFunctionClosed : G.proteinFunction

def GeneExpressionClosureClosed {A : AdmissibleClass} {P : DnaRecombinationPackage A} (G : GeneExpressionClosurePackage P) : Prop :=
  G.promoterRecognition ∧ G.transcriptionInitiation ∧ G.rnaProcessing ∧ G.translationFidelity ∧ G.proteinFunction

theorem gene_expression_closure_closed_from_evidence {A : AdmissibleClass} {P : DnaRecombinationPackage A} (G : GeneExpressionClosurePackage P) (E : GeneExpressionClosureEvidence G) :
    GeneExpressionClosureClosed G := by
  exact And.intro E.promoterRecognitionClosed
    (And.intro E.transcriptionInitiationClosed
      (And.intro E.rnaProcessingClosed
        (And.intro E.translationFidelityClosed E.proteinFunctionClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse