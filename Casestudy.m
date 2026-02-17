clc;
clear;

% Beam properties
L = 6;                     % Length (m)

% Time vector
t = linspace(0,10,500);

% Time-varying maximum intensity
w0 = 6*sin(2*t);           % kN/m

% Equivalent load (triangular UVL)
W = 0.5 .* w0 .* L;        

% Location of resultant
x = 2*L/3;

% Coefficient matrix (constant)
A = [1  1;
     0  L];

% Preallocate reaction arrays
RA = zeros(size(t));
RB = zeros(size(t));

% Solve at each time step
for i = 1:length(t)
    
    B = [W(i);
         W(i)*x];
    
    R = A\B;
    
    RA(i) = R(1);
    RB(i) = R(2);
end

% Plot reactions
figure
plot(t, RA)
xlabel('Time (s)')
ylabel('Reaction at A (kN)')
title('Reaction RA vs Time')
grid on

figure
plot(t, RB)
xlabel('Time (s)')
ylabel('Reaction at B (kN)')
title('Reaction RB vs Time')
grid on