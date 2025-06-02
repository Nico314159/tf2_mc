#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out float depthLevel; // added: depthLevel for fsh

void main() {
	depthLevel = Position.z; // added: depthLevel for fsh
    gl_Position = ProjMat * ModelViewMat * vec4(Position.xy, Position.z, 1.0);
    if (texelFetch(Sampler0, ivec2(15, 80), 0) == vec4(255., 255., 255., 1.) / 255.) {
        float multiplier = 1.0;
        vec3 pixeloffset = vec3(0, 116, 0);
        vec4 screenoffset = vec4(0, 1, 0, 0);
        gl_Position = (ProjMat * ModelViewMat * vec4(Position + pixeloffset, 1.0)) + screenoffset;
    }

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}