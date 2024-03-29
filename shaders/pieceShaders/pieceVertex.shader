/*

Creator: Diego Avena
Last Updated: 9/17/21

*/

#version 330 core

layout(location = 0) in vec3 aPos;
layout(location = 1) in vec2 aTexCoord; 

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

out vec2 vTexCoord; 

void main() {

	gl_Position = proj * view * model * vec4(aPos, 1.0);
	vTexCoord = aTexCoord; 

}