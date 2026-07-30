import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure DnaStrand where
  sequence : String
  topology : Prop
  doubleStranded : Prop

structure Vector where
  originOfReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop

structure Insert where
  geneOfInterest : Prop
  regulatoryElements : Prop
  codonOptimized : Prop

structure HostCell where
  competent : Prop
  transformationEfficiency : Prop
  expressionSystem : Prop

structure AdmittedObject where
  vector : Vector
  insert : Insert
  host : HostCell
  recombinantConstruct : Prop
  functionalExpression : Prop
  conclusion : functionalExpression

def AdmittedObjectClosure (O : AdmittedObject) : Prop :=
  O.functionalExpression

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse