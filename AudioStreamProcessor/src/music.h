#ifndef MUSIC_H
#define MUSIC_H

#define NUM_KEYS 15
#define NUM_SEMITONES 12

#define C  0
#define Cs 1
#define D  2
#define Ds 3
#define E  4
#define F  5
#define Fs 6
#define G  7
#define Gs 8
#define A  9
#define As 10
#define B  11

// Masks indicating the presence of semitones in all major keys
unsigned int kC[NUM_SEMITONES];
unsigned int kG[NUM_SEMITONES];
unsigned int kD[NUM_SEMITONES];
unsigned int kA[NUM_SEMITONES];
unsigned int kE[NUM_SEMITONES]; 
unsigned int kB[NUM_SEMITONES];  
unsigned int kFs[NUM_SEMITONES]; 
unsigned int kCs[NUM_SEMITONES]; 

unsigned int kF[NUM_SEMITONES];  
unsigned int kBb[NUM_SEMITONES]; 
unsigned int kEb[NUM_SEMITONES];
unsigned int kAb[NUM_SEMITONES];
unsigned int kDb[NUM_SEMITONES]; 
unsigned int kGb[NUM_SEMITONES]; 
unsigned int kCb[NUM_SEMITONES];

unsigned int *keys[NUM_KEYS];

#endif
