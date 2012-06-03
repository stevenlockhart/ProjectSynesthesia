#include "music.h"

// Masks indicating the presence of semitones in all major keys
                                 // C, C#,  D, D#,  E,  F, F#,  G, G#,  A, A#, B
unsigned int kC[NUM_SEMITONES]  = {1,  0,  1,  0,  1,  1,  0,  1,  0,  1,  0, 1};
unsigned int kG[NUM_SEMITONES]  = {1,  0,  1,  0,  1,  0,  1,  1,  0,  1,  0, 1};
unsigned int kD[NUM_SEMITONES]  = {0,  1,  1,  0,  1,  0,  1,  1,  0,  1,  0, 1};
unsigned int kA[NUM_SEMITONES]  = {0,  1,  1,  0,  1,  0,  1,  0,  1,  1,  0, 1};
unsigned int kE[NUM_SEMITONES]  = {0,  1,  0,  1,  1,  0,  1,  0,  1,  1,  0, 1};
unsigned int kB[NUM_SEMITONES]  = {0,  1,  0,  1,  1,  0,  1,  0,  1,  0,  1, 1};
unsigned int kFs[NUM_SEMITONES] = {0,  1,  0,  1,  0,  1,  1,  0,  1,  0,  1, 1};
unsigned int kCs[NUM_SEMITONES] = {1,  1,  0,  1,  0,  1,  1,  0,  1,  0,  1, 0};

unsigned int kF[NUM_SEMITONES]  = {1,  0,  1,  0,  1,  1,  0,  1,  0,  1,  1, 0};
unsigned int kBb[NUM_SEMITONES] = {1,  0,  1,  1,  0,  1,  0,  1,  0,  1,  1, 0};
unsigned int kEb[NUM_SEMITONES] = {1,  0,  1,  1,  0,  1,  0,  1,  1,  0,  1, 0};
unsigned int kAb[NUM_SEMITONES] = {1,  1,  0,  1,  0,  1,  0,  1,  1,  0,  1, 0};
unsigned int kDb[NUM_SEMITONES] = {1,  1,  0,  1,  0,  1,  1,  0,  1,  0,  1, 0};
unsigned int kGb[NUM_SEMITONES] = {0,  1,  0,  1,  0,  1,  1,  0,  1,  0,  1, 1};
unsigned int kCb[NUM_SEMITONES] = {0,  1,  0,  1,  1,  0,  1,  0,  1,  0,  1, 1};

unsigned int *keys[NUM_KEYS] = {kC, kG,  kD,  kA,  kE,  kB,  kFs, kCs,
                                    kF,  kBb, kEb, kAb, kDb, kGb, kCb};
