#version 300 es

precision highp float;

layout(location=0) in vec3 a_position;
layout(location=1) in vec4 a_color;

uniform mat4 u_projection;
uniform mat4 u_world;
uniform mat4 u_view;

out vec4 color_factor;

void main(void) {
    color_factor = a_color;
    gl_Position = u_projection * u_view * u_world * vec4(a_position, 1.0);
}