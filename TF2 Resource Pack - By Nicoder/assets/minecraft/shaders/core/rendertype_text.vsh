#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out float depthLevel; // added: depthLevel for fsh

int guiScale = int(ScreenSize.x * ProjMat[0][0] / 2);

void main() {
	depthLevel = Position.z; // added: depthLevel for fsh
    gl_Position = ProjMat * ModelViewMat * vec4(Position.xy, Position.z, 1.0);
    if (texelFetch(Sampler0, ivec2(15, 80), 0) == vec4(255., 255., 255., 1.) / 255.) {
        float multiplier;
        switch (guiScale) {
            case 1:
                multiplier = 1.45; 
                break;
            case 2:
                multiplier = 1.225;
                break;
            case 3:
                multiplier = 1.0;
                break;
            case 4:
                multiplier = 0.75;
                break;
            case 5:
                multiplier = 0.5;
                break;
            case 6:
                multiplier = 0.3;
                break;
            default:
                multiplier = 0.05;
                break;
        }
        gl_Position.y += 0.585 * multiplier;
    }
    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}
