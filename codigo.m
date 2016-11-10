archivoDeAudio = 'Audio-TPMatSup.wav';
[audioOriginal,frecuencia] = audioread(archivoDeAudio);

%Audio original

subplot(2,1,1);
plot(audioOriginal);
title('Audio original en funcion del tiempo (x(t))');
xlabel('Tiempo');
ylabel('Frecuencia');

% Numerador de la función filtro H(z) -> z + 1.1 
numeradorFuncionFiltro = [1 1.1]; 

% Denominador de la función filtro H(z) -> ze2 - 0.1
denominadorFuncionFiltro = [1 0 -0.1]; 
 
audioFiltrado = filter(numeradorFuncionFiltro,denominadorFuncionFiltro,audioOriginal);

%Audio filtrado

subplot(2,1,2);
plot(audioFiltrado);
title('Audio filtrado en funcion del tiempo (y(t))');
xlabel('Tiempo');
ylabel('Frecuencia');