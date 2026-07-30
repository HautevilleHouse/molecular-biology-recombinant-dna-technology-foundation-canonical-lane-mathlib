import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def recombinantProjection : Projection DnaCloningState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem recombinant_projection_idempotent (x : DnaCloningState) :
    recombinantProjection.toFun (recombinantProjection.toFun x) = recombinantProjection.toFun x := by
  exact recombinantProjection.idempotent x

end MolecularBiologyRecombinantDnaTechnologyFoundationCanonicalLaneLean
end HautevilleHouse