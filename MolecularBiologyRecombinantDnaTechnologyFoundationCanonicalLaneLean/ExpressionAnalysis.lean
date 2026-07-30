import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure ExpressionAnalysisPackage where
  promoterActivity : Prop
  transcriptionRegulation : Prop
  translationEfficiency : Prop
  proteinFunction : Prop
  expressionValidated : Prop

structure ExpressionAnalysisEvidence (E : ExpressionAnalysisPackage) where
  promoterActivityClosed : E.promoterActivity
  transcriptionRegulationClosed : E.transcriptionRegulation
  translationEfficiencyClosed : E.translationEfficiency
  proteinFunctionClosed : E.proteinFunction
  expressionValidatedClosed : E.expressionValidated

def ExpressionAnalysisClosed (E : ExpressionAnalysisPackage) : Prop :=
  E.promoterActivity ∧ E.transcriptionRegulation ∧ E.translationEfficiency ∧ E.proteinFunction ∧ E.expressionValidated

theorem expression_analysis_closed_from_evidence (E : ExpressionAnalysisPackage) (Ev : ExpressionAnalysisEvidence E) : ExpressionAnalysisClosed E := by
  exact And.intro Ev.promoterActivityClosed (And.intro Ev.transcriptionRegulationClosed (And.intro Ev.translationEfficiencyClosed (And.intro Ev.proteinFunctionClosed Ev.expressionValidatedClosed)))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse