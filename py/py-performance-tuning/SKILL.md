---
name: Python Performance Tuning
description: Advanced techniques for profiling and optimizing Python code for speed and memory.
---

# Python Performance Tuning

Optimization should always follow measurement. This skill focuses on a data-driven approach to making Python go fast.

## The Performance Loop
1.  **Measure**: Profile with `cProfile` or `Pyinstrument`.
2.  **Analyze**: Identify bottlenecks (CPU-bound vs. I/O-bound).
3.  **Optimize**: Apply targeted fixes.
4.  **Verify**: Re-profile to confirm gains.

## Optimization Strategies
- **Vectorization**: Use NumPy/Pandas to replace explicit loops.
- **Just-in-Time (JIT)**: Use `Numba` for numerical heavy-lifting.
- **Compiled Extensions**: Write performance-critical modules in Cython or Rust (PyO3).
- **Algorithmic Fixes**: Check O(n) complexity before micro-optimizing.

## Tools
- `timeit`: For micro-benchmarking snippets.
- `memory_profiler`: For tracking memory leaks and peaks.
- `scalene`: A high-performance CPU, GPU, and memory profiler.
