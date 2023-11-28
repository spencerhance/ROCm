# Precission Support in Libraries

ROCm™ components precision support for int8, float8, bfloat8, int16, float16, bfloat16, int32, tensorfloat32, 
float32, int64 and float64 is listed in the following table.

## Libraries input/output type support

| Library input/output | int8  | float8 | bfloat8 | float16 | bfloat16 | tensorfloat32 | float32 | float64 |
|:---------------------|:-----:|:------:|:-------:|:-------:|:--------:|:-------------:|:-------:|:-------:|
| rocBLAS              | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipBLAS              | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipBLASLt            | ✅/❌ | ✅/✅  | ✅/✅   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   | 
| rocALUTION           | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| rocWMMA              | ✅/❌ | ✅/✅  | ✅/✅   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| rocSOLVER            | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipSOLVER            | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| rocSPARSE            | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipSPARSE            | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipSPARSELt          | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ❌/❌   | ✅/✅   |
| rocFFT               | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipFFT               | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ❌/❌   |
| rocRAND              | -/❌  | -/❌   | -/❌    | -/✅    | -/❌     | -/❌          | -/✅    | -/✅    |
| hipRAND              | -/❌  | -/❌   | -/❌    | -/✅    | -/❌     | -/❌          | -/✅    | -/✅    |
| rocPRIM              | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipCUB               | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| rocThrust            | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| hipTensor            | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| MIOpen               | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| Composable Kernel    | ❌/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |
| MIGraphX             | ✅/❌ | ❌/❌  | ❌/❌   | ✅/✅   | ✅/✅    | ❌/❌         | ✅/✅   | ✅/✅   |

## Libraries internal calculations type support

| Library internal type  | int8 | float8 | bfloat8 | float16 | bfloat16 | tensorfloat32 | mixed precision | float32 | float64 |
|:-----------------------|:----:|:------:|:-------:|:-------:|:--------:|:-------------:|:---------------:|:-------:|:-------:|
| rocBLAS                | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipBLAS                | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipBLASLt              | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      | 
| rocALUTION             | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ✅              | ✅      | ✅      |
| rocWMMA                | ✅   | ✅     | ✅      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| rocSOLVER              | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipSOLVER              | ❌   | ❌     | ❌      | ❌      | ❌       | ❌            | ❌              | ✅      | ❌      |
| rocSPARSE              | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipSPARSE              | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipSPARSELt            | ❌   | ❌     | ❌      | ✅      | ❌       | ❌            | ❌              | ✅      | ❌      |
| rocFFT                 | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipFFT                 | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| rocRAND                | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipRAND                | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| rocPRIM                | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipCUB                 | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| rocThrust              | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| hipTensor              | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| MIOpen                 | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| Composable Kernel      | ❌   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |
| MIGraphX               | ✅   | ❌     | ❌      | ✅      | ✅       | ❌            | ❌              | ✅      | ✅      |

# Applications

