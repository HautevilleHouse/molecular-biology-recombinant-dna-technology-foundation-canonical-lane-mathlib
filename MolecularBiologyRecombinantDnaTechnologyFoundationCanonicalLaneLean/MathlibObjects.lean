import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Group.Defs

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure RecombinantDNAMolecularObject where
  hostOrganism : String
  vectorType : String
  insertSize : ℕ
  markerResistance : String
  replicationOrigin : String

def recombinantDNAWitnessClosed (O : RecombinantDNAMolecularObject) : Prop :=
  O.vectorType ≠ "" ∧ O.insertSize > 0

structure RecombinantDNAAdmittedObject where
  object : RecombinantDNAMolecularObject
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def RecombinantDNAWitnessClosed (O : RecombinantDNAAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse