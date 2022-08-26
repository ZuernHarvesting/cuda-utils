#pragma once

#include <stdio.h>
namespace cudautils
{
    __device__ float distancePointToPlane(float3 point, float4 plane)
    {
        return (plane.x*point.x + plane.y*point.y + plane.z*point.z + plane.w);
    }
    __device__ float distancePointToPlane(float4 point, float4 plane)
    {
        return (plane.x*point.x + plane.y*point.y + plane.z*point.z + plane.w);
    }
}