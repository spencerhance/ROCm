#!/usr/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# TODO: Support a parameter override
RocmRelease=rocm-5.7.1
IcdLoaderRev=6c03f8b58fafd9dd693eaac826749a5cfad515f8
HalfRev=37742ce15b76b44e4b271c1e66d13d2fa7bd003e

# Setup Release for main modules
for d in */
do
	pushd $d >> /dev/null
	if [[ -e .git ]]; then
		git fetch --all
		echo -e "${GREEN}Updating ${d} to tags/${RocmRelease}${NC}"
		git checkout tags/${RocmRelease}
		sleep 1
	else
		echo -e "${RED}${d} is NOT a git folder${NC}"
	fi
	echo -e "${NC}"
	popd >> /dev/null
done

# Setup Release for `openmp-extras` modules
pushd openmp-extras >> /dev/null

for d in */
do
	pushd $d >> /dev/null
	if [[ -e .git ]]; then
		git fetch --all
		echo -e "${GREEN}Updating ${d} to tags/${RocmRelease}${NC}"
		git checkout tags/${RocmRelease}
		sleep 1
	else
		echo -e "${RED}${d} is NOT a git folder${NC}"
	fi
	echo -e "${NC}"
	popd >> /dev/null
done

popd >> /dev/null

# Setup revision of the Half component
pushd half >> /dev/null
git fetch
echo -e "${GREEN}Updating \"half\" to ${HalfRev}${NC}"
git checkout ${HalfRev}
popd >> /dev/null

# Setup revision of the OpenCL ICD Loader
pushd ROCm-OpenCL-Runtime/api/opencl/khronos/icd >> /dev/null
echo -e "${GREEN}Updating \"ROCm-OpenCL-Runtime/api/opencl/khronos/icd\" to ${IcdLoaderRev}${NC}"
git checkout ${IcdLoaderRev}
popd >> /dev/null
