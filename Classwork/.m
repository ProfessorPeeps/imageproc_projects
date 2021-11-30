%generate a digitized waveform
clear, clc
format compact

%delay
A = [0  12.5*10^-9  25.0*10^-9  37.5*10^-9  50*10^-9 ];

for i = 1:5
    b = sin(2)*pi*(80*10^6)*A(i)*((2^19)-1)
    plot(A(i),b(i))
end
