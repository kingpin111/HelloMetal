//
//  Shaders.metal
//  HelloMetal
//
//  Created by Victor K Lee on 2018. 9. 18..
//  Copyright © 2018년 Victor K Lee. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

vertex float4 basic_vertex(
    const device packed_float3* vertex_array [[ buffer(0) ]],
    unsigned int vid [[ vertex_id ]]) {
    return float4(vertex_array[vid], 1.0);
}


