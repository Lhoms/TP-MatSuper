

%se lee el archivo de audio y retorna sample(y) y frecuencia (fs)
[y,fs]=wavread('Audio-TPMatSup.wav');

%aca se calcula la duracion
t=linspace(0, length(y)/fs, length(y));

%se grafica
plot(t, y)