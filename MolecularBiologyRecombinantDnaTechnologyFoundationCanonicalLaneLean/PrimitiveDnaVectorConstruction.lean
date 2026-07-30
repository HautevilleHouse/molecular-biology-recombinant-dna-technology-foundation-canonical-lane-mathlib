import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure PrimitiveDnaVector (N : Type) where
  nucleotideSequence : List Char
  direction : Prop
  length : Nat
  complementPaired : Prop

structure PrimitivePlasmidVector (V : PrimitiveDnaVector Unit) where
  originOfReplication : Prop
  selectableMarker : Prop
  multipleCloningSite : List Nat

structure PrimitiveInsertConstruction (V : PrimitivePlasmidVector (PrimitiveDnaVector Unit)) where
  insertSequence : PrimitiveDnaVector Unit
  restrictionEnzymeSites : List Nat
  ligationEfficiency : Prop

structure PrimitiveExpressionHost where
  hostStrain : String
  transformationMethod : Prop
  inductionCondition : Prop

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse