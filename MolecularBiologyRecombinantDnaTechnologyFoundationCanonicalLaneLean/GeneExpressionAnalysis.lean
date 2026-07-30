import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean.VectorConstruction

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure GeneExpressionAnalysis {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    {V : VectorConstruction F D L} where
  promoter : Prop
  reporterGene : Prop
  expressionLevels : Prop
  inductionConditions : Prop

structure ExpressionEvidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    {V : VectorConstruction F D L} (G : GeneExpressionAnalysis F D L V) where
  promoterClosed : G.promoter
  reporterGeneClosed : G.reporterGene
  expressionLevelsClosed : G.expressionLevels
  inductionConditionsClosed : G.inductionConditions

def ExpressionClosed {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    {V : VectorConstruction F D L} (G : GeneExpressionAnalysis F D L V) : Prop :=
  G.promoter ∧ G.reporterGene ∧ G.expressionLevels ∧ G.inductionConditions

theorem expression_closed_from_evidence {F : RecombinantDnaFoundation}
    {D : RestrictionEnzymeDigestion F} {L : LigationAndTransformation F D}
    {V : VectorConstruction F D L} (G : GeneExpressionAnalysis F D L V)
    (E : ExpressionEvidence G) : ExpressionClosed G := by
  exact And.intro E.promoterClosed (And.intro E.reporterGeneClosed (And.intro E.expressionLevelsClosed E.inductionConditionsClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse