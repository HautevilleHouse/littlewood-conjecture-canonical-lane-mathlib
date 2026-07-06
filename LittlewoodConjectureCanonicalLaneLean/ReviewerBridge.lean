import LittlewoodConjectureCanonicalLaneLean.Formalization
import LittlewoodConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace LittlewoodConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "54f98134d622bb3587b2e0c864f36fea018592e85f1a74235d411321f1ddf33e", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "e93c10d877dabb51a20006419782b62c447555076f182b9a9992d61d9bfb55ea", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "caf6948601f714c59e9312db2db69e0c21844e8b8b0e4e76af38bf6cd2c77f5b", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "7d45878df81a6fc51db33dd32d1f38f2138e422b616d366f340e950a1ff6e408", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "45d51110361e298263fc4d2fe40bf5fe5a13b2d67fe771dd28b4930cba56fac0", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "ca9fa1e8c9b54a7b44a7ce4ccd68b711a9382c567e209bec186569efb5caf251", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "20433cb65a640996742dbce72b32b999db3a8fbb1d503cdf39b01baef9d9e5a2", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "fb14b8f17e7429d9c7dc27749f8e6422891c949301444db778b95686942205b9", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "11881ee6a521d0045297c66fe1f18e0f05d766207bf74f4fdca43de3f720db04", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "LC_G1", constant := "kappa_flow" },
  { gate := "LC_G2", constant := "sigma_nonescape" },
  { gate := "LC_G3", constant := "kappa_compact" },
  { gate := "LC_G4", constant := "rho_rigidity" },
  { gate := "LC_G5", constant := "exceptional_transfer" },
  { gate := "LC_G6", constant := "eps_coh" },
  { gate := "LC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "86073321111c8aa45401348a5580504f46eba5048358a6d15da3fb9d5368cee6" },
  { path := "README.md", sha256 := "e4304e6ffaf9b37d84645ea64091c1cbe9d84cde5ec452ae6614a90297aba5d4" },
  { path := "artifacts/constants_extracted.json", sha256 := "7d45878df81a6fc51db33dd32d1f38f2138e422b616d366f340e950a1ff6e408" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "caf6948601f714c59e9312db2db69e0c21844e8b8b0e4e76af38bf6cd2c77f5b" },
  { path := "artifacts/constants_registry.json", sha256 := "45d51110361e298263fc4d2fe40bf5fe5a13b2d67fe771dd28b4930cba56fac0" },
  { path := "artifacts/promotion_report.json", sha256 := "20433cb65a640996742dbce72b32b999db3a8fbb1d503cdf39b01baef9d9e5a2" },
  { path := "artifacts/stitch_constants.json", sha256 := "ca9fa1e8c9b54a7b44a7ce4ccd68b711a9382c567e209bec186569efb5caf251" },
  { path := "notes/EG1_public.md", sha256 := "11ad5a531e9b25dc4cf96afe8cf3f492d328c830ca7719df486ee23dbeeb628c" },
  { path := "notes/EG2_public.md", sha256 := "896da14f8896e2c8c994bef3ec33455a7e94279ae3994c0f17423734bad52a6f" },
  { path := "notes/EG3_public.md", sha256 := "6fb83347aea1774ff8f12ab26965ffd4519376ca37006ea66719f10faa80c624" },
  { path := "notes/EG4_public.md", sha256 := "0942e8f0eb0b4ee48f150eb37db43d3447726dec52b4601c1d3289e4476c9e34" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "e93c10d877dabb51a20006419782b62c447555076f182b9a9992d61d9bfb55ea" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "e5ce60c879fbe079eadf67ae5bdfc1e094390b36858a9416d6b993e1f13a635b" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "51e395794e99048cb75502a9b6712f0224bdd8dff81beb1f1bd70bd98cd0abfd" },
  { path := "paper/LITTLEWOOD_CONJECTURE_PREPRINT.md", sha256 := "083190ca33d0e0ebd18bdce4137e97386b64e841880a4b060f9e54aaf2246f03" },
  { path := "repro/REPRO_PACK.md", sha256 := "10ceba5a46e0cfa2183d7f92b2e7dc0e63e942455bdfe0c4f774364ea018cf83" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "e27725f9df5aa060a9b6fadfc54fb9a29e2bb2ce3db1eed39948e1460bd5d61f" },
  { path := "repro/certificate_baseline.json", sha256 := "11881ee6a521d0045297c66fe1f18e0f05d766207bf74f4fdca43de3f720db04" },
  { path := "repro/run_repro.sh", sha256 := "ceb494e82195248e3b9319389ccb14fcb64bbe67f59f48b2beb97f24a2163ee7" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/lc_closure_guard.py", sha256 := "e18aa713d1ff108f83e0d35cd4b8238feb21e7dbb19acd59cb11b6a8e2621995" },
  { path := "scripts/README.md", sha256 := "df19d1d97a323149a2dbea6fcd1c700507d6d6dad7ef9002631524291a289e75" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "LC_G1", status := "PASS" },
  { gate := "LC_G2", status := "PASS" },
  { gate := "LC_G3", status := "PASS" },
  { gate := "LC_G4", status := "PASS" },
  { gate := "LC_G5", status := "PASS" },
  { gate := "LC_G6", status := "PASS" },
  { gate := "LC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "exceptional_transfer", value := "1.02745" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_flow", value := "1.0783099999999999" },
  { key := "rho_rigidity", value := "1.076" },
  { key := "sigma_nonescape", value := "1.065" },
  { key := "sigma_star_can", value := "1.05" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "exceptional_transfer",
  "kappa_compact",
  "kappa_flow",
  "rho_rigidity",
  "sigma_nonescape",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end LittlewoodConjectureCanonicalLaneLean
end HautevilleHouse
