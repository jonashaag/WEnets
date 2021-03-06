%% One .wav file, results to screen only
WAWEnet('../speech/T000439_Q231_D401.wav');
%produces:  1 16000 3 -25.9785 0.4955 1 48000 1 1.6242
%% One .wav file, results to screen and Matlab structure
Results = WAWEnet('../speech/T000439_Q231_D401.wav');
Results.name
Results.netOut
%% list of 10 .wav files, results to screen and Matlab structure
Results = WAWEnet('wavNames.txt');
Results.name
Results.netOut
%% list of 10 .wav files, results to screen and myText.txt
clear myInfo
myInfo.outFilename = 'myText.txt';
WAWEnet('wavNames.txt',myInfo);
%produces:
%  1 16000 3 -26.0342 0.91525 1 48000 1 1.3076
%  1 16000 3 -25.9925 0.4986 1 48000 1 4.0845
%  1 16000 3 -25.9993 0.98853 1 48000 1 1.104
%  1 16000 3 -25.9785 0.4955 1 48000 1 1.6242
%  1 16000 3 -25.9933 0.74707 1 48000 1 2.8795
%  1 16000 3 -25.9884 0.4817 1 48000 1 3.7262
%  1 16000 3 -26.0002 0.79517 1 48000 1 2.3776
%  1 16000 3 -25.9847 0.82047 1 48000 1 4.0469
%  1 16000 3 -25.9904 0.57274 1 48000 1 3.1406
%  1 16000 3 -25.9833 0.49164 1 48000 1 2.4489

%% Speech passed in via Matlab vector, results to screen and Matlab structure
speech = audioread('../speech/T000439_Q231_D401.wav');
Results = WAWEnet(speech);
Results.name
Results.netOut

%% One .wav file, 4.7 sec long, results to screen, explicit selection of 
%4 inputs
clear myInfo
myInfo.WAWEnetMode = 2; %mode 2
myInfo.levelNormalization = 0; %level normalization off
myInfo.segmentStep = 12000;   %segment step of 12000 gives 75% segment,
%overlap, will give 3 segments and 3 results
myInfo.channel = 1; %channel 1 of .wav file explicitly selected
WAWEnet('../speech/long.wav',myInfo);
%Produces:  1 16000 4.7175 -27.2326 0.92605 0 12000 2 4.2267      4.1205      4.1003

%% One .wav file with 2 channels.
clear myInfo
myInfo.channel = 1; %channel 1 of .wav file explicitly selected
%This channel is identical to ../speech/T000053_Q159_D401.wav
WAWEnet('../speech/TwoChannel_53_93.wav',myInfo);
%produces: 1 16000 3 -26.0342 0.91525 1 48000 1 1.3076

myInfo.channel = 2; %channel 2 of .wav file explicitly selected
%This channel is identical to ../speech/T000093_Q446_D401.wav
WAWEnet('../speech/TwoChannel_53_93.wav',myInfo);
%produces: 2 16000 3 -25.9925 0.4986 1 48000 1 4.0845

%% One .wav file, sample rate 8k results to screen only
WAWEnet('../speech/T000863_Q316_D401_8.wav');
%produces: 1 8000 3 -26.2047 0.48418 1 48000 1 2.6502

%One .wav file, sample rate 16k results to screen only
WAWEnet('../speech/T000863_Q316_D401.wav');
%produces: 1 16000 3 -25.9884 0.4817 1 48000 1 3.7262

%One .wav file, sample rate 24k results to screen only
WAWEnet('../speech/T000863_Q316_D401_24.wav');
%produces:1 24000 3 -25.959 0.48128 1 48000 1 3.7407

%One .wav file, sample rate 32k results to screen only
WAWEnet('../speech/T000863_Q316_D401_32.wav');
%produces: 1 32000 3 -25.9072 0.4806 1 48000 1 3.7909

%One .wav file, sample rate 48k results to screen only
WAWEnet('../speech/T000863_Q316_D401_48.wav');
%produces:1 48000 3 -26.0435 0.48179 1 48000 1 3.7801

%% One .wav file, mode 1
clear myInfo
myInfo.WAWEnetMode = 1; 
WAWEnet('../speech/T000863_Q316_D401.wav',myInfo);
%produces: 1 16000 3 -25.9884 0.4817 1 48000 1 3.7262

%% One .wav file, mode 2
clear myInfo
myInfo.WAWEnetMode = 2; 
WAWEnet('../speech/T000863_Q316_D401.wav',myInfo);
%produces: 1 16000 3 -25.9884 0.4817 1 48000 2 3.4957

%% One .wav file, mode 3
clear myInfo
myInfo.WAWEnetMode = 3; 
WAWEnet('../speech/T000863_Q316_D401.wav',myInfo);
%produces: 1 16000 3 -25.9884 0.4817 1 48000 3 0.82276

%% One .wav file, mode 4
clear myInfo
myInfo.WAWEnetMode = 4; 
WAWEnet('../speech/T000863_Q316_D401.wav',myInfo);
%produces: 1 16000 3 -25.9884 0.4817 1 48000 4 0.95546
