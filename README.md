# Ada Off-by-One Array Access Bug

This repository demonstrates a common off-by-one error in Ada when accessing array elements. The error arises from an incorrect understanding of array indexing in Ada.  Ada arrays are 1-based, meaning the first element is accessed using index 1, not 0 as in some other languages (like C or Python). The `'Range` attribute returns a range that is inclusive on both ends, so when iterating over an array, it should be carefully handled.

The `bug.ada` file contains the erroneous code. The `bugSolution.ada` file provides a corrected version.

## How to Reproduce
1. Compile `bug.ada`.
2. Run the compiled executable. Note that a `Constraint_Error` occurs.
3. Compile `bugSolution.ada`.
4. Run the compiled executable.  It should execute without errors.