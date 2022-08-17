#include "../include/cuda-utils.cuh"

#include <stdio.h>

namespace cudautils
{
    void distancePointToPlane(float3 point, float4 plane)
    {
        printf("Point: %f, %f, %f\n", point.x, point.y, point.z);
    }
}
