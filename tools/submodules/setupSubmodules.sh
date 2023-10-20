#!/usr/bin/bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White


# Repos in RadeonOpenCompute
RadeonOpenComputeRepos=(
    ROCK-Kernel-Driver
    ROCT-Thunk-Interface
    ROCR-Runtime
    amdsmi
    rocm_smi_lib
    rocm-core
    rocm-cmake
    rocminfo
    rocm_bandwidth_test
    clang-ocl
    rdc
    llvm-project
    ROCm-Device-Libs
    ROCm-CompilerSupport
)

# Repos in the ROCmSoftwarePlatform organization
SwPlatRepos=(
    hipBLAS
    hipFFT
    hipSPARSE
    hipSOLVER
    hipTensor
    hipCUB
    hipfort
    rocBLAS
    rocFFT
    rocRAND
    rocSPARSE
    rocSOLVER
    rocALUTION
    rocThrust
    rocPRIM
    rocWMMA
    rocMLIR
    rccl
    Tensile
    MIOpen
    composable_kernel
    AMDMIGraphX
    half
)

# Repos in the ROCm-Developer-Tools organization
DevToolsRepos=(
    rocprofiler
    roctracer
    HIP
    HIP-Examples
    clr
    HIPIFY
    HIPCC
    ROCgdb
    ROCdbgapi
    rocr_debug_agent
    ROCmValidationSuite
)


OpenMpExtrasRepos=(
    aomp
    aomp-extras
    flang
)


GpuOpenLibsRepos=(
    MIVisionX
    rpp
)


echo
echo -e $On_Red"Setup modules in the RadeonOpenCompute organization"$Color_Off
echo

for repo in ${RadeonOpenComputeRepos[@]};
do
    echo -e $Green  Adding Submodule \"$repo\" $Color_Off
    git submodule add ../$repo
done


echo
echo -e $On_Red"Setup modules in the ROCm Software Platforms organization"$Color_Off
echo

for repo in ${SwPlatRepos[@]};
do
    echo -e $Green  Adding Submodule \"$repo\" $Color_Off
    git submodule add git@github.com:ROCmSoftwarePlatform/$repo.git
done


echo
echo -e $On_Red"Setup modules in the ROCm-Developer-Tools organization"$Color_Off
echo

for repo in ${DevToolsRepos[@]};
do
    echo -e $Green  Adding Submodule \"$repo\" $Color_Off
    git submodule add git@github.com:ROCm-Developer-Tools/$repo.git
done


echo
echo -e $On_Red"Setup modules in OpenMP-Extras"$Color_Off
echo

mkdir openmp-extras

for repo in ${OpenMpExtrasRepos[@]};
do
    echo -e $Green  Adding Submodule \"$repo\" $Color_Off
    git submodule add git@github.com:ROCm-Developer-Tools/$repo.git openmp-extras/$repo
done


echo
echo -e $On_Red"Setup modules in the GPUOpen-ProfessionalCompute-Libraries organization"$Color_Off
echo

for repo in ${GpuOpenLibsRepos[@]};
do
    echo -e $Green  Adding Submodule \"$repo\" $Color_Off
    git submodule add git@github.com:GPUOpen-ProfessionalCompute-Libraries/$repo.git
done

echo -e $Green Adding Submodule \"KhronosGroup/OpenCL-ICD-Loader\"$Color_Off

mkdir -p ROCm-OpenCL-Runtime/api/opencl/khronos/
git submodule add git@github.com:KhronosGroup/OpenCL-ICD-Loader.git ROCm-OpenCL-Runtime/api/opencl/khronos/icd
