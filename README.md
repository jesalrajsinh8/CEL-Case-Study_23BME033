# CEL-Case-Study_23BME033
Project Overview

This repository presents the analysis of a simply supported beam subjected to a uniformly varying load (UVL) whose maximum intensity varies with time. The objective was to determine the time-dependent support reactions using equilibrium equations and MATLAB matrix computation.


Problem Description

A triangular distributed load acts over the entire span of the beam, varying from zero at one support to a maximum value at the other support. The maximum load intensity is defined as:

w₀(t) = 6 sin(2t)

Since the load varies with time, the equivalent resultant load and support reactions also become time-dependent.


Methodology
	1.	The triangular load was converted into an equivalent point load:
W(t) = (1/2) w₀(t) L
acting at a distance 2L/3 from the zero-intensity side.
	2.	Static equilibrium equations were written:
RA(t) + RB(t) = W(t)
RB(t) L = W(t) x
	3.	The equations were expressed in matrix form:
[A][R] = [B]
	4.	MATLAB was used to solve the system using the left division operator (A\B) for each time step.


Results

Maximum reactions:

RA = 6 kN
RB = 12 kN

Minimum reactions:

RA = −6 kN
RB = −12 kN

Reaction at support B is twice that at support A due to the triangular load distribution.

Purpose

This repository demonstrates how classical structural analysis can be translated into a computational workflow using matrix methods in MATLAB, strengthening the connection between theoretical mechanics and numerical engineering practice.
