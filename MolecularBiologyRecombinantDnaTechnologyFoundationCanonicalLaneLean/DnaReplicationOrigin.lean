import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

structure DnaReplicationOriginPackage where
  originSequence : String
  initiatorBinding : Prop
  unwindingStart : Prop
  replicationForkAssembly : Prop
  originActivityValidated : Prop

structure DnaReplicationOriginEvidence (O : DnaReplicationOriginPackage) where
  initiatorBindingClosed : O.initiatorBinding
  unwindingStartClosed : O.unwindingStart
  replicationForkAssemblyClosed : O.replicationForkAssembly
  originActivityValidatedClosed : O.originActivityValidated

def DnaReplicationOriginClosed (O : DnaReplicationOriginPackage) : Prop :=
  O.initiatorBinding ∧ O.unwindingStart ∧ O.replicationForkAssembly ∧ O.originActivityValidated

theorem dna_replication_origin_closed_from_evidence (O : DnaReplicationOriginPackage) (E : DnaReplicationOriginEvidence O) : DnaReplicationOriginClosed O := by
  exact And.intro E.initiatorBindingClosed (And.intro E.unwindingStartClosed (And.intro E.replicationForkAssemblyClosed E.originActivityValidatedClosed))

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse