v = [1 2 3 4 5 6 7 8 9 0]; % The vector that will be operated on
fs = 20000; % Sampling rate
A = 0.15; % Amplitude
t = 0:1:4000; % tone duration of 0.2 seconds (4000/fs = 0.2)
L = [697 ; 770 ; 852 ; 941]; % Low frequencies
H = [1209 1366 1477]; % high frequencies

for i = 1:10
    x = v(1, i);
    lf = 941;
    hf = 1366;
    if(x > 0)
        lf = L(ceil(x/4), 1);
        hf = H(1, x - 3*floor((x-1)/3));
    end
    wave = A*sin(2*pi*(lf/fs).*t) + A*sin(2*pi*(hf/fs).*t);
    sound(wave,fs)
    pause(0.25)
end
