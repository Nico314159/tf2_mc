#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;

out vec4 fragColor;

void main() {
    // removes cape elytras
	vec2 texSize = textureSize(Sampler0,0);
	if(	texSize.x == 64 && texSize.y == 32 && // check if size matches a cape
			texture(Sampler0, vec2(0.0, 1.0/32.0)).a == 1.0 && texture(Sampler0, vec2(12.0/64.0, 16.0/32.0)).a == 1.0 && // check if skin transparent pixels have color
			(	// support both types of cape texture
				(texture(Sampler0, vec2(0.0, 18.0/32.0)) == vec4(1.0) && texture(Sampler0, vec2(0.99, 0.99)) == vec4(1.0) && texture(Sampler0, vec2(0.99, 0.0)) == vec4(1.0)) // for capes filled with white, check for white pixels
				|| (texture(Sampler0, vec2(25.0/64.0, 25.0/32.0)).a == 0.0 || texture(Sampler0, vec2(30.0/64.0, 10.0/32.0)).a == 0.0 || texture(Sampler0, vec2(9.0/64.0, 25.0/32.0)).a == 0.0)  // otherwise check of transparent pixels
			)
	) discard;
    
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    if (color.a < 0.1) {
        discard;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
