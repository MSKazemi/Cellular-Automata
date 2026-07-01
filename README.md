# Cellular-Automata

A MATLAB cellular automaton that simulates threshold-based cell toppling and
neighbor redistribution on a two-dimensional grid, with an animated
visualization of how the grid evolves over time.

## What it does

The model runs on a square grid (10×10 by default) of integer-valued cells.
Each cell accumulates a value, and when that value crosses a fixed threshold the
cell "topples": it sheds part of its content and redistributes the excess to
neighboring cells. Redistribution has a directional (downward) bias and handles
grid boundaries by accumulating the overflow that leaves the edges. This
toppling-and-redistribution rule is the same mechanism that underlies
sandpile / chip-firing style cellular automata.

The system is described with two matrices — a base **state matrix** and an
**actuation matrix** — whose sum drives each update step. The grid is redrawn at
every step and the frames are played back as a MATLAB movie, so the evolution of
the automaton can be watched as an animation.

## Files

| File | Role |
|------|------|
| `wmsk.m` | Main actuation loop: applies the toppling rule, redistributes excess to neighbors, tracks boundary overflow, and captures animation frames. |
| `Rul.m` | Builds the per-cell state (cell plus up/down/left/right neighbors) and applies the toppling rule. |
| `StActu.m` | Iterates the update until no cell exceeds the threshold, stacking each step into 3-D history arrays. |
| `Shift.m` | Row-shift helper used during redistribution. |
| `mskgrp.m` | Renders the grid as a labeled color plot for each animation frame. |
| `MX.m`, `Temp.m`, `Untitled.m`, `TEST.m` | Scripts and sample matrices used to set up and drive runs. |
| `Input initial matrix.xlsx` | Example initial grid. |

## Requirements

- MATLAB (the project was written and tested with MATLAB, R2015-era).

## How to run

1. Open the project folder in MATLAB (or add it to the MATLAB path).
2. Run the test driver, which sets up an initial grid and starts the animation:

   ```matlab
   TEST
   ```

3. To run the iterative update on your own state and actuation matrices, call:

   ```matlab
   [SMD, AMD, TMD] = StActu(stateMatrix, actuationMatrix);
   ```

   or invoke the animated actuation directly:

   ```matlab
   [sac, f, bnd] = wmsk(initialMatrix, actuationMatrix, dim, movrep, movra);
   ```

## License

Released under the [Apache License 2.0](LICENSE).
