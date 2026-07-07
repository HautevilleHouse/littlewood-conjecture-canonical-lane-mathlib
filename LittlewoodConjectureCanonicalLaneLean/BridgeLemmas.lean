import LittlewoodConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LittlewoodConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.primeOrDiophantineGateWitness,
    A.object.localGlobalArithmeticBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end LittlewoodConjectureCanonicalLaneLean
end HautevilleHouse
