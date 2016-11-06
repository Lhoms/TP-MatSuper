
%se lee el archivo de audio y retorna sample(y) y frecuencia (fs)
[Audio,fs]=wavread('Audio-TPMatSup.wav');

%convierto de stereo a mono
xn = (Audio(:,1)+Audio(:,2))/2;

%aca se calcula la duracion
t=linspace(0, length(Audio)/fs, length(Audio));

%se grafica
%plot(t, xn);

YZ = filter ([1 1.1],[1 0 -0.1] , xn)

yn = iztrans(YZ)

plot(yn);