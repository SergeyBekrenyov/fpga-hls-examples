/*
 * SinCosTables.h
 *
 *  Created on: Jan 12, 2021
 *      Author: M34934
 */

#ifndef __SHLS_SEV_SINCOSTABLES_H__
#define __SHLS_SEV_SINCOSTABLES_H__

// 1.0 = 32768
int g_sin_table[360] = {
    0,      571,    1143,   1714,   2285,   2855,   3425,   3993,   4560,
    5126,   5690,   6252,   6812,   7371,   7927,   8480,   9032,   9580,
    10125,  10668,  11207,  11743,  12275,  12803,  13327,  13848,  14364,
    14876,  15383,  15886,  16384,  16876,  17364,  17846,  18323,  18794,
    19260,  19720,  20173,  20621,  21062,  21497,  21926,  22347,  22762,
    23170,  23571,  23964,  24351,  24730,  25101,  25465,  25821,  26169,
    26509,  26841,  27165,  27481,  27788,  28087,  28377,  28659,  28932,
    29196,  29451,  29697,  29935,  30163,  30381,  30591,  30791,  30982,
    31164,  31336,  31498,  31651,  31794,  31928,  32051,  32165,  32270,
    32364,  32449,  32523,  32588,  32643,  32688,  32723,  32748,  32763,
    32768,  32763,  32748,  32723,  32688,  32643,  32588,  32523,  32449,
    32364,  32270,  32165,  32051,  31928,  31794,  31651,  31498,  31336,
    31164,  30982,  30791,  30591,  30381,  30163,  29935,  29697,  29451,
    29196,  28932,  28659,  28377,  28087,  27788,  27481,  27165,  26841,
    26509,  26169,  25821,  25465,  25101,  24730,  24351,  23964,  23571,
    23170,  22762,  22347,  21926,  21497,  21062,  20621,  20173,  19720,
    19260,  18794,  18323,  17846,  17364,  16876,  16384,  15886,  15383,
    14876,  14364,  13848,  13327,  12803,  12275,  11743,  11207,  10668,
    10125,  9580,   9032,   8480,   7927,   7371,   6812,   6252,   5690,
    5126,   4560,   3993,   3425,   2855,   2285,   1714,   1143,   571,
    0,      -572,   -1144,  -1715,  -2286,  -2856,  -3426,  -3994,  -4561,
    -5127,  -5691,  -6253,  -6813,  -7372,  -7928,  -8481,  -9033,  -9581,
    -10126, -10669, -11208, -11744, -12276, -12804, -13328, -13849, -14365,
    -14877, -15384, -15887, -16384, -16877, -17365, -17847, -18324, -18795,
    -19261, -19721, -20174, -20622, -21063, -21498, -21927, -22348, -22763,
    -23171, -23572, -23965, -24352, -24731, -25102, -25466, -25822, -26170,
    -26510, -26842, -27166, -27482, -27789, -28088, -28378, -28660, -28933,
    -29197, -29452, -29698, -29936, -30164, -30382, -30592, -30792, -30983,
    -31165, -31337, -31499, -31652, -31795, -31929, -32052, -32166, -32271,
    -32365, -32450, -32524, -32589, -32644, -32689, -32724, -32749, -32764,
    -32768, -32764, -32749, -32724, -32689, -32644, -32589, -32524, -32450,
    -32365, -32271, -32166, -32052, -31929, -31795, -31652, -31499, -31337,
    -31165, -30983, -30792, -30592, -30382, -30164, -29936, -29698, -29452,
    -29197, -28933, -28660, -28378, -28088, -27789, -27482, -27166, -26842,
    -26510, -26170, -25822, -25466, -25102, -24731, -24352, -23965, -23572,
    -23171, -22763, -22348, -21927, -21498, -21063, -20622, -20174, -19721,
    -19261, -18795, -18324, -17847, -17365, -16877, -16384, -15887, -15384,
    -14877, -14365, -13849, -13328, -12804, -12276, -11744, -11208, -10669,
    -10126, -9581,  -9033,  -8481,  -7928,  -7372,  -6813,  -6253,  -5691,
    -5127,  -4561,  -3994,  -3426,  -2856,  -2286,  -1715,  -1144,  -572};

// 1.0 = 32768
int g_cos_table[360] = {
    32768,  32763,  32748,  32723,  32688,  32643,  32588,  32523,  32449,
    32364,  32270,  32165,  32051,  31928,  31794,  31651,  31498,  31336,
    31164,  30982,  30791,  30591,  30381,  30163,  29935,  29697,  29451,
    29196,  28932,  28659,  28377,  28087,  27788,  27481,  27165,  26841,
    26509,  26169,  25821,  25465,  25101,  24730,  24351,  23964,  23571,
    23170,  22762,  22347,  21926,  21497,  21062,  20621,  20173,  19720,
    19260,  18794,  18323,  17846,  17364,  16876,  16384,  15886,  15383,
    14876,  14364,  13848,  13327,  12803,  12275,  11743,  11207,  10668,
    10125,  9580,   9032,   8480,   7927,   7371,   6812,   6252,   5690,
    5126,   4560,   3993,   3425,   2855,   2285,   1714,   1143,   571,
    0,      -572,   -1144,  -1715,  -2286,  -2856,  -3426,  -3994,  -4561,
    -5127,  -5691,  -6253,  -6813,  -7372,  -7928,  -8481,  -9033,  -9581,
    -10126, -10669, -11208, -11744, -12276, -12804, -13328, -13849, -14365,
    -14877, -15384, -15887, -16384, -16877, -17365, -17847, -18324, -18795,
    -19261, -19721, -20174, -20622, -21063, -21498, -21927, -22348, -22763,
    -23171, -23572, -23965, -24352, -24731, -25102, -25466, -25822, -26170,
    -26510, -26842, -27166, -27482, -27789, -28088, -28378, -28660, -28933,
    -29197, -29452, -29698, -29936, -30164, -30382, -30592, -30792, -30983,
    -31165, -31337, -31499, -31652, -31795, -31929, -32052, -32166, -32271,
    -32365, -32450, -32524, -32589, -32644, -32689, -32724, -32749, -32764,
    -32768, -32764, -32749, -32724, -32689, -32644, -32589, -32524, -32450,
    -32365, -32271, -32166, -32052, -31929, -31795, -31652, -31499, -31337,
    -31165, -30983, -30792, -30592, -30382, -30164, -29936, -29698, -29452,
    -29197, -28933, -28660, -28378, -28088, -27789, -27482, -27166, -26842,
    -26510, -26170, -25822, -25466, -25102, -24731, -24352, -23965, -23572,
    -23171, -22763, -22348, -21927, -21498, -21063, -20622, -20174, -19721,
    -19261, -18795, -18324, -17847, -17365, -16877, -16384, -15887, -15384,
    -14877, -14365, -13849, -13328, -12804, -12276, -11744, -11208, -10669,
    -10126, -9581,  -9033,  -8481,  -7928,  -7372,  -6813,  -6253,  -5691,
    -5127,  -4561,  -3994,  -3426,  -2856,  -2286,  -1715,  -1144,  -572,
    -1,     571,    1143,   1714,   2285,   2855,   3425,   3993,   4560,
    5126,   5690,   6252,   6812,   7371,   7927,   8480,   9032,   9580,
    10125,  10668,  11207,  11743,  12275,  12803,  13327,  13848,  14364,
    14876,  15383,  15886,  16384,  16876,  17364,  17846,  18323,  18794,
    19260,  19720,  20173,  20621,  21062,  21497,  21926,  22347,  22762,
    23170,  23571,  23964,  24351,  24730,  25101,  25465,  25821,  26169,
    26509,  26841,  27165,  27481,  27788,  28087,  28377,  28659,  28932,
    29196,  29451,  29697,  29935,  30163,  30381,  30591,  30791,  30982,
    31164,  31336,  31498,  31651,  31794,  31928,  32051,  32165,  32270,
    32364,  32449,  32523,  32588,  32643,  32688,  32723,  32748,  32763};

#endif /* __SHLS_SEV_SINCOSTABLES_H__ */
