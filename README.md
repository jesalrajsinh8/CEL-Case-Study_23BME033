# CEL-Case-Study_23BME033
Project Overview

This repository presents my approach to determining the unknown support reactions of a simply supported beam subjected to a uniformly varying load (UVL) whose maximum intensity varies with time. The purpose of this case study was not only to compute the numerical values of the time-dependent reactions but also to understand how classical structural analysis methods can be translated into a computational framework using MATLAB.

The study demonstrates how static equilibrium equations can be expressed in matrix form and solved efficiently using numerical tools. This reflects how real engineering systems are analysed when loading conditions become variable and more complex.


Problem Description

In this case study, a simply supported beam of known span length is subjected to a triangular (uniformly varying) distributed load. The load intensity varies linearly from zero at one support to a maximum value at the other support.

The maximum intensity of the load is defined as a function of time:

w₀(t) = 6 sin(2t)

Because the load varies with time, the equivalent resultant load and the support reactions also become time-dependent.

The objective is to determine:
	•	Reaction at support A, RA(t)
	•	Reaction at support B, RB(t)

for the given time interval.


Theoretical Background

Equivalent Load of Uniformly Varying Load

For a triangular load distributed over the entire span:

Total equivalent load:

W(t) = (1/2) w₀(t) L

Location of resultant from the zero-intensity side:

x = 2L / 3

Equilibrium Equations

For a simply supported beam, the governing equations are:
	1.	Sum of vertical forces:

RA(t) + RB(t) = W(t)
	2.	Sum of moments about support A:

RB(t) L = W(t) x

These equations form a linear algebraic system that can be written in matrix form.


Matrix Formulation

The equilibrium equations are expressed as:

[A][R] = [B]

where:

[A] = coefficient matrix derived from equilibrium equations
[R] = vector of unknown reactions
[B] = load vector containing time-dependent terms

Coefficient matrix:

[ 1   1 ]
[ 0   L ]

Load vector:

[ W(t) ]
[ W(t)x ]

This structured representation allows systematic computational solving.


MATLAB Implementation

The following steps were implemented in MATLAB:
	1.	Define beam length and time range.
	2.	Define time-varying maximum intensity function.
	3.	Convert triangular distributed load into equivalent point load.
	4.	Construct coefficient matrix.
	5.	Solve the matrix equation at each time step using the left division operator (A\B).
	6.	Store and plot the reaction values over time.

The left division operator was used because it provides a numerically stable and efficient solution method compared to explicitly computing the inverse of the matrix.


Results

From analytical evaluation:

Maximum equivalent load:

Wmax = 18 kN
Wmin = −18 kN

Corresponding reactions:

Maximum values:
RAmax = 6 kN
RBmax = 12 kN

Minimum values:
RAmin = −6 kN
RBmin = −12 kN

It is observed that reaction at support B is always twice the reaction at support A due to the triangular nature of loading. The sign reversal occurs because the load varies sinusoidally with time.


Learning Outcomes

This case study strengthened the understanding of:
	•	Statistically determinate structures
	•	Uniformly varying distributed loads
	•	Time-dependent loading conditions
	•	Conversion of distributed loads into equivalent point loads
	•	Matrix representation of equilibrium equations
	•	Implementation of structural analysis using MATLAB

It highlights how classical structural mechanics can be integrated with numerical computation for efficient engineering analysis.


Purpose of This Repository

The objective of this repository is to document the complete analytical and computational workflow, beginning from theoretical derivation of equilibrium equations to matrix-based numerical implementation in MATLAB.

This project reflects a practical learning approach where structural analysis principles are combined with programming tools to solve engineering problems efficiently and systematically.
