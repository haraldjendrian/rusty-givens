# Introducing RustyGivens: A Modular, Open-Source Power System State Estimator for the Rust Ecosystem

**Authors:** H. Jendrian

**Keywords:** State Estimation, Weighted Least Squares, Rust, Open Source, Modular Architecture, Vendor Agnostic, Givens Rotations, Power System

---

## Abstract

European transmission system operators face increasing vendor lock-in from monolithic SCADA/EMS platforms — a systemic risk identified by ENTSO-E's 2025 position paper on vendor-agnostic solutions for next-generation control room ecosystems. Existing open-source state estimators, implemented in interpreted languages such as Python (pandapower) and Julia (JuliaGrid), offer transparency but trade computational performance for ease of prototyping — a compromise unsuitable for real-time operational environments where estimation cycles must complete within seconds.

This paper introduces RustyGivens, a modular AC Weighted Least-Squares state estimator implemented in the Rust programming language. The framework follows a strict separation-of-concerns architecture: a pure computational kernel with zero I/O dependencies, a JSON-based data ingestion layer, and a dual-transport API service (REST and gRPC). The kernel implements six solver formulations sharing a common Jacobian evaluator — Normal Equations (Sparse Cholesky, Sparse LU, Dense Cholesky), Orthogonal QR via Givens rotations, Peters-Wilkinson, Equality-Constrained WLS via the Lagrangian KKT system, Fast Decoupled, and DC Estimation — all selectable through a pluggable trait interface. Zero-injection bus handling is provided via virtual measurements or exact equality constraints. Post-estimation evaluation computes branch power flows, losses, and bus injections from the estimated state.

The framework is validated on a 2,224-bus, 3,207-branch model of the Great Britain transmission network with approximately 10,400 measurements, demonstrating convergence across all formulations with detailed per-iteration diagnostics. RustyGivens is released under the Apache-2.0 license, directly aligning with ENTSO-E's tenets of transparency, modularity, and cross-source compatibility.

---

*Word count: 229*
