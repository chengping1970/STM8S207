   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L3_frc_update_timer:
  17  0000 00000001      	dc.l	1
  18  0004               L5_Backlight_on_timer:
  19  0004 00000000      	dc.l	0
  20  0008               L7_secret_detect_timer:
  21  0008 00000001      	dc.l	1
  22  000c               L11_signal_detect_timer:
  23  000c 00000001      	dc.l	1
  24  0010               L31_LVDS_mode:
  25  0010 00            	dc.b	0
  26  0011               L51_Power_status:
  27  0011 00            	dc.b	0
  28  0012               L32_I2C_stop:
  29  0012 00            	dc.b	0
  30                     .const:	section	.text
  31  0000               L72_secret_key_table1:
  32  0000 02            	dc.b	2
  33  0001 a1            	dc.b	161
  34  0002 7e            	dc.b	126
  35  0003 7d            	dc.b	125
  36  0004 1e            	dc.b	30
  37  0005 1a            	dc.b	26
  38  0006 2b            	dc.b	43
  39  0007 24            	dc.b	36
  40  0008 a4            	dc.b	164
  41  0009 3c            	dc.b	60
  42  000a a0            	dc.b	160
  43  000b 6e            	dc.b	110
  44  000c 23            	dc.b	35
  45  000d a9            	dc.b	169
  46  000e bf            	dc.b	191
  47  000f 5d            	dc.b	93
  48  0010 4d            	dc.b	77
  49  0011 4f            	dc.b	79
  50  0012 ac            	dc.b	172
  51  0013 a5            	dc.b	165
  52  0014 f7            	dc.b	247
  53  0015 04            	dc.b	4
  54  0016 2a            	dc.b	42
  55  0017 e4            	dc.b	228
  56  0018 64            	dc.b	100
  57  0019 a2            	dc.b	162
  58  001a ec            	dc.b	236
  59  001b fd            	dc.b	253
  60  001c 53            	dc.b	83
  61  001d 4a            	dc.b	74
  62  001e 5c            	dc.b	92
  63  001f c5            	dc.b	197
  64  0020 bb            	dc.b	187
  65  0021 6a            	dc.b	106
  66  0022 dc            	dc.b	220
  67  0023 03            	dc.b	3
  68  0024 e5            	dc.b	229
  69  0025 ca            	dc.b	202
  70  0026 bd            	dc.b	189
  71  0027 2d            	dc.b	45
  72  0028 0b            	dc.b	11
  73  0029 d5            	dc.b	213
  74  002a 29            	dc.b	41
  75  002b bc            	dc.b	188
  76  002c b0            	dc.b	176
  77  002d 34            	dc.b	52
  78  002e 9a            	dc.b	154
  79  002f c3            	dc.b	195
  80  0030 a7            	dc.b	167
  81  0031 f3            	dc.b	243
  82  0032 61            	dc.b	97
  83  0033 70            	dc.b	112
  84  0034 95            	dc.b	149
  85  0035 da            	dc.b	218
  86  0036 33            	dc.b	51
  87  0037 21            	dc.b	33
  88  0038 45            	dc.b	69
  89  0039 ba            	dc.b	186
  90  003a 2e            	dc.b	46
  91  003b 9d            	dc.b	157
  92  003c 67            	dc.b	103
  93  003d 5a            	dc.b	90
  94  003e 9c            	dc.b	156
  95  003f 48            	dc.b	72
  96  0040 8f            	dc.b	143
  97  0041 0f            	dc.b	15
  98  0042 6c            	dc.b	108
  99  0043 e9            	dc.b	233
 100  0044 de            	dc.b	222
 101  0045 1c            	dc.b	28
 102  0046 c8            	dc.b	200
 103  0047 e8            	dc.b	232
 104  0048 1b            	dc.b	27
 105  0049 db            	dc.b	219
 106  004a 5e            	dc.b	94
 107  004b 54            	dc.b	84
 108  004c 58            	dc.b	88
 109  004d 68            	dc.b	104
 110  004e e2            	dc.b	226
 111  004f 81            	dc.b	129
 112  0050 8b            	dc.b	139
 113  0051 79            	dc.b	121
 114  0052 22            	dc.b	34
 115  0053 32            	dc.b	50
 116  0054 f0            	dc.b	240
 117  0055 c2            	dc.b	194
 118  0056 7f            	dc.b	127
 119  0057 df            	dc.b	223
 120  0058 25            	dc.b	37
 121  0059 75            	dc.b	117
 122  005a 97            	dc.b	151
 123  005b 1d            	dc.b	29
 124  005c 18            	dc.b	24
 125  005d 38            	dc.b	56
 126  005e 44            	dc.b	68
 127  005f 8e            	dc.b	142
 128  0060 94            	dc.b	148
 129  0061 57            	dc.b	87
 130  0062 63            	dc.b	99
 131  0063 56            	dc.b	86
 132  0064 90            	dc.b	144
 133  0065 e0            	dc.b	224
 134  0066 fa            	dc.b	250
 135  0067 b7            	dc.b	183
 136  0068 12            	dc.b	18
 137  0069 41            	dc.b	65
 138  006a 84            	dc.b	132
 139  006b e1            	dc.b	225
 140  006c 26            	dc.b	38
 141  006d e3            	dc.b	227
 142  006e 1f            	dc.b	31
 143  006f 8a            	dc.b	138
 144  0070 92            	dc.b	146
 145  0071 30            	dc.b	48
 146  0072 fb            	dc.b	251
 147  0073 9e            	dc.b	158
 148  0074 d9            	dc.b	217
 149  0075 8c            	dc.b	140
 150  0076 99            	dc.b	153
 151  0077 7c            	dc.b	124
 152  0078 96            	dc.b	150
 153  0079 5f            	dc.b	95
 154  007a 77            	dc.b	119
 155  007b a3            	dc.b	163
 156  007c 46            	dc.b	70
 157  007d 06            	dc.b	6
 158  007e 6d            	dc.b	109
 159  007f d2            	dc.b	210
 160  0080 b8            	dc.b	184
 161  0081 4c            	dc.b	76
 162  0082 83            	dc.b	131
 163  0083 72            	dc.b	114
 164  0084 3d            	dc.b	61
 165  0085 59            	dc.b	89
 166  0086 d1            	dc.b	209
 167  0087 6b            	dc.b	107
 168  0088 ab            	dc.b	171
 169  0089 b3            	dc.b	179
 170  008a d8            	dc.b	216
 171  008b 40            	dc.b	64
 172  008c 6f            	dc.b	111
 173  008d 3f            	dc.b	63
 174  008e 3b            	dc.b	59
 175  008f c6            	dc.b	198
 176  0090 ff            	dc.b	255
 177  0091 c0            	dc.b	192
 178  0092 98            	dc.b	152
 179  0093 cb            	dc.b	203
 180  0094 28            	dc.b	40
 181  0095 31            	dc.b	49
 182  0096 05            	dc.b	5
 183  0097 88            	dc.b	136
 184  0098 be            	dc.b	190
 185  0099 f4            	dc.b	244
 186  009a c4            	dc.b	196
 187  009b b5            	dc.b	181
 188  009c 89            	dc.b	137
 189  009d 55            	dc.b	85
 190  009e 0e            	dc.b	14
 191  009f 14            	dc.b	20
 192  00a0 15            	dc.b	21
 193  00a1 17            	dc.b	23
 194  00a2 ad            	dc.b	173
 195  00a3 71            	dc.b	113
 196  00a4 7b            	dc.b	123
 197  00a5 cc            	dc.b	204
 198  00a6 c1            	dc.b	193
 199  00a7 c9            	dc.b	201
 200  00a8 00            	dc.b	0
 201  00a9 d3            	dc.b	211
 202  00aa ea            	dc.b	234
 203  00ab 51            	dc.b	81
 204  00ac b4            	dc.b	180
 205  00ad 35            	dc.b	53
 206  00ae b2            	dc.b	178
 207  00af 3e            	dc.b	62
 208  00b0 47            	dc.b	71
 209  00b1 08            	dc.b	8
 210  00b2 73            	dc.b	115
 211  00b3 20            	dc.b	32
 212  00b4 b1            	dc.b	177
 213  00b5 4e            	dc.b	78
 214  00b6 60            	dc.b	96
 215  00b7 b9            	dc.b	185
 216  00b8 0d            	dc.b	13
 217  00b9 fe            	dc.b	254
 218  00ba 76            	dc.b	118
 219  00bb 37            	dc.b	55
 220  00bc 0c            	dc.b	12
 221  00bd d7            	dc.b	215
 222  00be f9            	dc.b	249
 223  00bf 50            	dc.b	80
 224  00c0 5b            	dc.b	91
 225  00c1 01            	dc.b	1
 226  00c2 8d            	dc.b	141
 227  00c3 78            	dc.b	120
 228  00c4 ce            	dc.b	206
 229  00c5 ae            	dc.b	174
 230  00c6 e6            	dc.b	230
 231  00c7 4b            	dc.b	75
 232  00c8 f5            	dc.b	245
 233  00c9 cd            	dc.b	205
 234  00ca 09            	dc.b	9
 235  00cb c7            	dc.b	199
 236  00cc f6            	dc.b	246
 237  00cd 52            	dc.b	82
 238  00ce 9b            	dc.b	155
 239  00cf fc            	dc.b	252
 240  00d0 62            	dc.b	98
 241  00d1 85            	dc.b	133
 242  00d2 11            	dc.b	17
 243  00d3 74            	dc.b	116
 244  00d4 49            	dc.b	73
 245  00d5 93            	dc.b	147
 246  00d6 66            	dc.b	102
 247  00d7 16            	dc.b	22
 248  00d8 a8            	dc.b	168
 249  00d9 43            	dc.b	67
 250  00da 19            	dc.b	25
 251  00db 9f            	dc.b	159
 252  00dc 27            	dc.b	39
 253  00dd eb            	dc.b	235
 254  00de 13            	dc.b	19
 255  00df 3a            	dc.b	58
 256  00e0 e7            	dc.b	231
 257  00e1 65            	dc.b	101
 258  00e2 82            	dc.b	130
 259  00e3 36            	dc.b	54
 260  00e4 39            	dc.b	57
 261  00e5 dd            	dc.b	221
 262  00e6 87            	dc.b	135
 263  00e7 86            	dc.b	134
 264  00e8 0a            	dc.b	10
 265  00e9 b6            	dc.b	182
 266  00ea d6            	dc.b	214
 267  00eb af            	dc.b	175
 268  00ec 69            	dc.b	105
 269  00ed 2f            	dc.b	47
 270  00ee 42            	dc.b	66
 271  00ef 10            	dc.b	16
 272  00f0 91            	dc.b	145
 273  00f1 f2            	dc.b	242
 274  00f2 2c            	dc.b	44
 275  00f3 d0            	dc.b	208
 276  00f4 7a            	dc.b	122
 277  00f5 d4            	dc.b	212
 278  00f6 ee            	dc.b	238
 279  00f7 80            	dc.b	128
 280  00f8 07            	dc.b	7
 281  00f9 a6            	dc.b	166
 282  00fa f8            	dc.b	248
 283  00fb f1            	dc.b	241
 284  00fc ef            	dc.b	239
 285  00fd cf            	dc.b	207
 286  00fe aa            	dc.b	170
 287  00ff ed            	dc.b	237
 288  0100               L13_secret_key_table2:
 289  0100 ec            	dc.b	236
 290  0101 7c            	dc.b	124
 291  0102 5a            	dc.b	90
 292  0103 da            	dc.b	218
 293  0104 42            	dc.b	66
 294  0105 bd            	dc.b	189
 295  0106 a1            	dc.b	161
 296  0107 23            	dc.b	35
 297  0108 c8            	dc.b	200
 298  0109 d9            	dc.b	217
 299  010a 26            	dc.b	38
 300  010b ee            	dc.b	238
 301  010c 8e            	dc.b	142
 302  010d 80            	dc.b	128
 303  010e e1            	dc.b	225
 304  010f 0f            	dc.b	15
 305  0110 4f            	dc.b	79
 306  0111 4b            	dc.b	75
 307  0112 5c            	dc.b	92
 308  0113 49            	dc.b	73
 309  0114 bc            	dc.b	188
 310  0115 dc            	dc.b	220
 311  0116 06            	dc.b	6
 312  0117 0d            	dc.b	13
 313  0118 d2            	dc.b	210
 314  0119 be            	dc.b	190
 315  011a 50            	dc.b	80
 316  011b 7a            	dc.b	122
 317  011c 94            	dc.b	148
 318  011d ed            	dc.b	237
 319  011e 08            	dc.b	8
 320  011f 2b            	dc.b	43
 321  0120 17            	dc.b	23
 322  0121 2e            	dc.b	46
 323  0122 e9            	dc.b	233
 324  0123 e6            	dc.b	230
 325  0124 6f            	dc.b	111
 326  0125 43            	dc.b	67
 327  0126 c2            	dc.b	194
 328  0127 74            	dc.b	116
 329  0128 83            	dc.b	131
 330  0129 a2            	dc.b	162
 331  012a 97            	dc.b	151
 332  012b a4            	dc.b	164
 333  012c f0            	dc.b	240
 334  012d 36            	dc.b	54
 335  012e b5            	dc.b	181
 336  012f 44            	dc.b	68
 337  0130 58            	dc.b	88
 338  0131 90            	dc.b	144
 339  0132 5e            	dc.b	94
 340  0133 bf            	dc.b	191
 341  0134 84            	dc.b	132
 342  0135 c6            	dc.b	198
 343  0136 27            	dc.b	39
 344  0137 3d            	dc.b	61
 345  0138 20            	dc.b	32
 346  0139 12            	dc.b	18
 347  013a 60            	dc.b	96
 348  013b 55            	dc.b	85
 349  013c d8            	dc.b	216
 350  013d 62            	dc.b	98
 351  013e f6            	dc.b	246
 352  013f 21            	dc.b	33
 353  0140 16            	dc.b	22
 354  0141 73            	dc.b	115
 355  0142 79            	dc.b	121
 356  0143 5b            	dc.b	91
 357  0144 93            	dc.b	147
 358  0145 92            	dc.b	146
 359  0146 69            	dc.b	105
 360  0147 37            	dc.b	55
 361  0148 09            	dc.b	9
 362  0149 04            	dc.b	4
 363  014a b8            	dc.b	184
 364  014b 57            	dc.b	87
 365  014c 33            	dc.b	51
 366  014d 39            	dc.b	57
 367  014e 99            	dc.b	153
 368  014f 88            	dc.b	136
 369  0150 7f            	dc.b	127
 370  0151 f5            	dc.b	245
 371  0152 7e            	dc.b	126
 372  0153 6a            	dc.b	106
 373  0154 4a            	dc.b	74
 374  0155 22            	dc.b	34
 375  0156 91            	dc.b	145
 376  0157 40            	dc.b	64
 377  0158 a8            	dc.b	168
 378  0159 ad            	dc.b	173
 379  015a b6            	dc.b	182
 380  015b d4            	dc.b	212
 381  015c 24            	dc.b	36
 382  015d 7b            	dc.b	123
 383  015e 0c            	dc.b	12
 384  015f b1            	dc.b	177
 385  0160 45            	dc.b	69
 386  0161 9d            	dc.b	157
 387  0162 13            	dc.b	19
 388  0163 c0            	dc.b	192
 389  0164 51            	dc.b	81
 390  0165 5d            	dc.b	93
 391  0166 ba            	dc.b	186
 392  0167 9e            	dc.b	158
 393  0168 41            	dc.b	65
 394  0169 2f            	dc.b	47
 395  016a 01            	dc.b	1
 396  016b ae            	dc.b	174
 397  016c 9b            	dc.b	155
 398  016d b0            	dc.b	176
 399  016e 8f            	dc.b	143
 400  016f d7            	dc.b	215
 401  0170 1e            	dc.b	30
 402  0171 b4            	dc.b	180
 403  0172 8a            	dc.b	138
 404  0173 d5            	dc.b	213
 405  0174 df            	dc.b	223
 406  0175 8d            	dc.b	141
 407  0176 63            	dc.b	99
 408  0177 a0            	dc.b	160
 409  0178 18            	dc.b	24
 410  0179 e3            	dc.b	227
 411  017a 56            	dc.b	86
 412  017b 1d            	dc.b	29
 413  017c 86            	dc.b	134
 414  017d 25            	dc.b	37
 415  017e 48            	dc.b	72
 416  017f f9            	dc.b	249
 417  0180 87            	dc.b	135
 418  0181 a6            	dc.b	166
 419  0182 1c            	dc.b	28
 420  0183 67            	dc.b	103
 421  0184 65            	dc.b	101
 422  0185 70            	dc.b	112
 423  0186 ab            	dc.b	171
 424  0187 35            	dc.b	53
 425  0188 eb            	dc.b	235
 426  0189 e2            	dc.b	226
 427  018a 2a            	dc.b	42
 428  018b 9a            	dc.b	154
 429  018c ca            	dc.b	202
 430  018d cf            	dc.b	207
 431  018e d6            	dc.b	214
 432  018f a7            	dc.b	167
 433  0190 5f            	dc.b	95
 434  0191 31            	dc.b	49
 435  0192 53            	dc.b	83
 436  0193 59            	dc.b	89
 437  0194 d1            	dc.b	209
 438  0195 3e            	dc.b	62
 439  0196 cb            	dc.b	203
 440  0197 cc            	dc.b	204
 441  0198 8b            	dc.b	139
 442  0199 e7            	dc.b	231
 443  019a b3            	dc.b	179
 444  019b 1f            	dc.b	31
 445  019c 81            	dc.b	129
 446  019d e0            	dc.b	224
 447  019e 77            	dc.b	119
 448  019f 0b            	dc.b	11
 449  01a0 de            	dc.b	222
 450  01a1 f1            	dc.b	241
 451  01a2 a9            	dc.b	169
 452  01a3 52            	dc.b	82
 453  01a4 c1            	dc.b	193
 454  01a5 c4            	dc.b	196
 455  01a6 3f            	dc.b	63
 456  01a7 10            	dc.b	16
 457  01a8 3a            	dc.b	58
 458  01a9 4e            	dc.b	78
 459  01aa c5            	dc.b	197
 460  01ab 6b            	dc.b	107
 461  01ac b2            	dc.b	178
 462  01ad a3            	dc.b	163
 463  01ae cd            	dc.b	205
 464  01af 98            	dc.b	152
 465  01b0 e8            	dc.b	232
 466  01b1 96            	dc.b	150
 467  01b2 71            	dc.b	113
 468  01b3 15            	dc.b	21
 469  01b4 6e            	dc.b	110
 470  01b5 00            	dc.b	0
 471  01b6 f7            	dc.b	247
 472  01b7 29            	dc.b	41
 473  01b8 61            	dc.b	97
 474  01b9 3c            	dc.b	60
 475  01ba d0            	dc.b	208
 476  01bb 3b            	dc.b	59
 477  01bc db            	dc.b	219
 478  01bd fa            	dc.b	250
 479  01be 0a            	dc.b	10
 480  01bf b9            	dc.b	185
 481  01c0 9c            	dc.b	156
 482  01c1 32            	dc.b	50
 483  01c2 fe            	dc.b	254
 484  01c3 6d            	dc.b	109
 485  01c4 68            	dc.b	104
 486  01c5 c9            	dc.b	201
 487  01c6 e5            	dc.b	229
 488  01c7 1b            	dc.b	27
 489  01c8 66            	dc.b	102
 490  01c9 30            	dc.b	48
 491  01ca d3            	dc.b	211
 492  01cb ac            	dc.b	172
 493  01cc 82            	dc.b	130
 494  01cd bb            	dc.b	187
 495  01ce fb            	dc.b	251
 496  01cf 19            	dc.b	25
 497  01d0 03            	dc.b	3
 498  01d1 ef            	dc.b	239
 499  01d2 ce            	dc.b	206
 500  01d3 fc            	dc.b	252
 501  01d4 46            	dc.b	70
 502  01d5 4d            	dc.b	77
 503  01d6 0e            	dc.b	14
 504  01d7 76            	dc.b	118
 505  01d8 14            	dc.b	20
 506  01d9 1a            	dc.b	26
 507  01da 2d            	dc.b	45
 508  01db 89            	dc.b	137
 509  01dc 05            	dc.b	5
 510  01dd 72            	dc.b	114
 511  01de 07            	dc.b	7
 512  01df 11            	dc.b	17
 513  01e0 e4            	dc.b	228
 514  01e1 02            	dc.b	2
 515  01e2 54            	dc.b	84
 516  01e3 f4            	dc.b	244
 517  01e4 fd            	dc.b	253
 518  01e5 75            	dc.b	117
 519  01e6 aa            	dc.b	170
 520  01e7 47            	dc.b	71
 521  01e8 ea            	dc.b	234
 522  01e9 f8            	dc.b	248
 523  01ea 7d            	dc.b	125
 524  01eb c7            	dc.b	199
 525  01ec 6c            	dc.b	108
 526  01ed 28            	dc.b	40
 527  01ee 8c            	dc.b	140
 528  01ef 38            	dc.b	56
 529  01f0 95            	dc.b	149
 530  01f1 f3            	dc.b	243
 531  01f2 f2            	dc.b	242
 532  01f3 9f            	dc.b	159
 533  01f4 b7            	dc.b	183
 534  01f5 4c            	dc.b	76
 535  01f6 34            	dc.b	52
 536  01f7 c3            	dc.b	195
 537  01f8 ff            	dc.b	255
 538  01f9 64            	dc.b	100
 539  01fa dd            	dc.b	221
 540  01fb 78            	dc.b	120
 541  01fc af            	dc.b	175
 542  01fd a5            	dc.b	165
 543  01fe 2c            	dc.b	44
 544  01ff 85            	dc.b	133
 545  0200               L33_secret_key_table3:
 546  0200 98            	dc.b	152
 547  0201 e8            	dc.b	232
 548  0202 b8            	dc.b	184
 549  0203 63            	dc.b	99
 550  0204 48            	dc.b	72
 551  0205 60            	dc.b	96
 552  0206 70            	dc.b	112
 553  0207 95            	dc.b	149
 554  0208 ea            	dc.b	234
 555  0209 23            	dc.b	35
 556  020a 69            	dc.b	105
 557  020b 64            	dc.b	100
 558  020c 74            	dc.b	116
 559  020d f0            	dc.b	240
 560  020e 9c            	dc.b	156
 561  020f 5f            	dc.b	95
 562  0210 6c            	dc.b	108
 563  0211 08            	dc.b	8
 564  0212 01            	dc.b	1
 565  0213 c3            	dc.b	195
 566  0214 3f            	dc.b	63
 567  0215 2c            	dc.b	44
 568  0216 05            	dc.b	5
 569  0217 1f            	dc.b	31
 570  0218 0a            	dc.b	10
 571  0219 d1            	dc.b	209
 572  021a 66            	dc.b	102
 573  021b cf            	dc.b	207
 574  021c 1a            	dc.b	26
 575  021d 4a            	dc.b	74
 576  021e 85            	dc.b	133
 577  021f 5b            	dc.b	91
 578  0220 94            	dc.b	148
 579  0221 92            	dc.b	146
 580  0222 67            	dc.b	103
 581  0223 7c            	dc.b	124
 582  0224 e5            	dc.b	229
 583  0225 99            	dc.b	153
 584  0226 87            	dc.b	135
 585  0227 ec            	dc.b	236
 586  0228 28            	dc.b	40
 587  0229 f5            	dc.b	245
 588  022a 6f            	dc.b	111
 589  022b 41            	dc.b	65
 590  022c d6            	dc.b	214
 591  022d eb            	dc.b	235
 592  022e 86            	dc.b	134
 593  022f 75            	dc.b	117
 594  0230 50            	dc.b	80
 595  0231 b5            	dc.b	181
 596  0232 45            	dc.b	69
 597  0233 21            	dc.b	33
 598  0234 93            	dc.b	147
 599  0235 71            	dc.b	113
 600  0236 ac            	dc.b	172
 601  0237 e3            	dc.b	227
 602  0238 f9            	dc.b	249
 603  0239 7d            	dc.b	125
 604  023a 80            	dc.b	128
 605  023b 3c            	dc.b	60
 606  023c 3a            	dc.b	58
 607  023d e6            	dc.b	230
 608  023e 24            	dc.b	36
 609  023f 5a            	dc.b	90
 610  0240 55            	dc.b	85
 611  0241 5e            	dc.b	94
 612  0242 0d            	dc.b	13
 613  0243 68            	dc.b	104
 614  0244 7f            	dc.b	127
 615  0245 ae            	dc.b	174
 616  0246 82            	dc.b	130
 617  0247 0c            	dc.b	12
 618  0248 18            	dc.b	24
 619  0249 f3            	dc.b	243
 620  024a 32            	dc.b	50
 621  024b e0            	dc.b	224
 622  024c 89            	dc.b	137
 623  024d d8            	dc.b	216
 624  024e 34            	dc.b	52
 625  024f 79            	dc.b	121
 626  0250 25            	dc.b	37
 627  0251 c4            	dc.b	196
 628  0252 6e            	dc.b	110
 629  0253 8a            	dc.b	138
 630  0254 46            	dc.b	70
 631  0255 ba            	dc.b	186
 632  0256 4f            	dc.b	79
 633  0257 88            	dc.b	136
 634  0258 e7            	dc.b	231
 635  0259 6a            	dc.b	106
 636  025a 17            	dc.b	23
 637  025b f6            	dc.b	246
 638  025c 20            	dc.b	32
 639  025d af            	dc.b	175
 640  025e bc            	dc.b	188
 641  025f 42            	dc.b	66
 642  0260 78            	dc.b	120
 643  0261 fd            	dc.b	253
 644  0262 44            	dc.b	68
 645  0263 b4            	dc.b	180
 646  0264 40            	dc.b	64
 647  0265 c9            	dc.b	201
 648  0266 11            	dc.b	17
 649  0267 14            	dc.b	20
 650  0268 5c            	dc.b	92
 651  0269 0f            	dc.b	15
 652  026a bb            	dc.b	187
 653  026b 06            	dc.b	6
 654  026c c0            	dc.b	192
 655  026d f2            	dc.b	242
 656  026e 12            	dc.b	18
 657  026f 29            	dc.b	41
 658  0270 13            	dc.b	19
 659  0271 c6            	dc.b	198
 660  0272 f4            	dc.b	244
 661  0273 09            	dc.b	9
 662  0274 bd            	dc.b	189
 663  0275 e1            	dc.b	225
 664  0276 4e            	dc.b	78
 665  0277 da            	dc.b	218
 666  0278 22            	dc.b	34
 667  0279 e4            	dc.b	228
 668  027a b3            	dc.b	179
 669  027b db            	dc.b	219
 670  027c a3            	dc.b	163
 671  027d 5d            	dc.b	93
 672  027e 84            	dc.b	132
 673  027f 0b            	dc.b	11
 674  0280 9b            	dc.b	155
 675  0281 b2            	dc.b	178
 676  0282 c7            	dc.b	199
 677  0283 8b            	dc.b	139
 678  0284 2a            	dc.b	42
 679  0285 76            	dc.b	118
 680  0286 9a            	dc.b	154
 681  0287 f8            	dc.b	248
 682  0288 73            	dc.b	115
 683  0289 be            	dc.b	190
 684  028a 7e            	dc.b	126
 685  028b 8f            	dc.b	143
 686  028c a1            	dc.b	161
 687  028d cb            	dc.b	203
 688  028e cc            	dc.b	204
 689  028f 15            	dc.b	21
 690  0290 4c            	dc.b	76
 691  0291 ef            	dc.b	239
 692  0292 90            	dc.b	144
 693  0293 33            	dc.b	51
 694  0294 2d            	dc.b	45
 695  0295 a4            	dc.b	164
 696  0296 9d            	dc.b	157
 697  0297 35            	dc.b	53
 698  0298 dc            	dc.b	220
 699  0299 8e            	dc.b	142
 700  029a a5            	dc.b	165
 701  029b 04            	dc.b	4
 702  029c 4b            	dc.b	75
 703  029d 7b            	dc.b	123
 704  029e 07            	dc.b	7
 705  029f bf            	dc.b	191
 706  02a0 65            	dc.b	101
 707  02a1 aa            	dc.b	170
 708  02a2 d3            	dc.b	211
 709  02a3 d2            	dc.b	210
 710  02a4 c2            	dc.b	194
 711  02a5 97            	dc.b	151
 712  02a6 b0            	dc.b	176
 713  02a7 d7            	dc.b	215
 714  02a8 56            	dc.b	86
 715  02a9 ff            	dc.b	255
 716  02aa cd            	dc.b	205
 717  02ab ad            	dc.b	173
 718  02ac b7            	dc.b	183
 719  02ad ce            	dc.b	206
 720  02ae 83            	dc.b	131
 721  02af a9            	dc.b	169
 722  02b0 39            	dc.b	57
 723  02b1 fe            	dc.b	254
 724  02b2 fc            	dc.b	252
 725  02b3 30            	dc.b	48
 726  02b4 2b            	dc.b	43
 727  02b5 c8            	dc.b	200
 728  02b6 96            	dc.b	150
 729  02b7 b9            	dc.b	185
 730  02b8 38            	dc.b	56
 731  02b9 fa            	dc.b	250
 732  02ba b6            	dc.b	182
 733  02bb 77            	dc.b	119
 734  02bc 72            	dc.b	114
 735  02bd e9            	dc.b	233
 736  02be 4d            	dc.b	77
 737  02bf 26            	dc.b	38
 738  02c0 53            	dc.b	83
 739  02c1 1d            	dc.b	29
 740  02c2 6d            	dc.b	109
 741  02c3 c5            	dc.b	197
 742  02c4 00            	dc.b	0
 743  02c5 dd            	dc.b	221
 744  02c6 f1            	dc.b	241
 745  02c7 52            	dc.b	82
 746  02c8 9e            	dc.b	158
 747  02c9 ed            	dc.b	237
 748  02ca 43            	dc.b	67
 749  02cb 0e            	dc.b	14
 750  02cc 03            	dc.b	3
 751  02cd 47            	dc.b	71
 752  02ce 37            	dc.b	55
 753  02cf d9            	dc.b	217
 754  02d0 ca            	dc.b	202
 755  02d1 61            	dc.b	97
 756  02d2 36            	dc.b	54
 757  02d3 49            	dc.b	73
 758  02d4 7a            	dc.b	122
 759  02d5 10            	dc.b	16
 760  02d6 a7            	dc.b	167
 761  02d7 a2            	dc.b	162
 762  02d8 1b            	dc.b	27
 763  02d9 31            	dc.b	49
 764  02da a0            	dc.b	160
 765  02db 8c            	dc.b	140
 766  02dc f7            	dc.b	247
 767  02dd 51            	dc.b	81
 768  02de 16            	dc.b	22
 769  02df 2f            	dc.b	47
 770  02e0 1c            	dc.b	28
 771  02e1 2e            	dc.b	46
 772  02e2 6b            	dc.b	107
 773  02e3 54            	dc.b	84
 774  02e4 1e            	dc.b	30
 775  02e5 df            	dc.b	223
 776  02e6 3b            	dc.b	59
 777  02e7 9f            	dc.b	159
 778  02e8 c1            	dc.b	193
 779  02e9 19            	dc.b	25
 780  02ea b1            	dc.b	177
 781  02eb fb            	dc.b	251
 782  02ec 59            	dc.b	89
 783  02ed 57            	dc.b	87
 784  02ee e2            	dc.b	226
 785  02ef 8d            	dc.b	141
 786  02f0 a6            	dc.b	166
 787  02f1 d4            	dc.b	212
 788  02f2 02            	dc.b	2
 789  02f3 58            	dc.b	88
 790  02f4 ee            	dc.b	238
 791  02f5 91            	dc.b	145
 792  02f6 ab            	dc.b	171
 793  02f7 27            	dc.b	39
 794  02f8 a8            	dc.b	168
 795  02f9 de            	dc.b	222
 796  02fa 81            	dc.b	129
 797  02fb 3d            	dc.b	61
 798  02fc 3e            	dc.b	62
 799  02fd d5            	dc.b	213
 800  02fe d0            	dc.b	208
 801  02ff 62            	dc.b	98
 802  0300               L53_secret_key_table4:
 803  0300 fb            	dc.b	251
 804  0301 4e            	dc.b	78
 805  0302 bd            	dc.b	189
 806  0303 01            	dc.b	1
 807  0304 03            	dc.b	3
 808  0305 37            	dc.b	55
 809  0306 1c            	dc.b	28
 810  0307 d9            	dc.b	217
 811  0308 c3            	dc.b	195
 812  0309 57            	dc.b	87
 813  030a b2            	dc.b	178
 814  030b 2a            	dc.b	42
 815  030c d1            	dc.b	209
 816  030d f0            	dc.b	240
 817  030e 86            	dc.b	134
 818  030f 30            	dc.b	48
 819  0310 3c            	dc.b	60
 820  0311 5c            	dc.b	92
 821  0312 85            	dc.b	133
 822  0313 1a            	dc.b	26
 823  0314 3a            	dc.b	58
 824  0315 f5            	dc.b	245
 825  0316 53            	dc.b	83
 826  0317 21            	dc.b	33
 827  0318 8d            	dc.b	141
 828  0319 38            	dc.b	56
 829  031a 58            	dc.b	88
 830  031b af            	dc.b	175
 831  031c 41            	dc.b	65
 832  031d 2b            	dc.b	43
 833  031e 94            	dc.b	148
 834  031f 29            	dc.b	41
 835  0320 d2            	dc.b	210
 836  0321 25            	dc.b	37
 837  0322 db            	dc.b	219
 838  0323 47            	dc.b	71
 839  0324 78            	dc.b	120
 840  0325 98            	dc.b	152
 841  0326 e8            	dc.b	232
 842  0327 be            	dc.b	190
 843  0328 ac            	dc.b	172
 844  0329 8b            	dc.b	139
 845  032a c2            	dc.b	194
 846  032b 67            	dc.b	103
 847  032c 64            	dc.b	100
 848  032d 2d            	dc.b	45
 849  032e b9            	dc.b	185
 850  032f 5f            	dc.b	95
 851  0330 bf            	dc.b	191
 852  0331 e0            	dc.b	224
 853  0332 e5            	dc.b	229
 854  0333 8e            	dc.b	142
 855  0334 aa            	dc.b	170
 856  0335 91            	dc.b	145
 857  0336 8f            	dc.b	143
 858  0337 46            	dc.b	70
 859  0338 6b            	dc.b	107
 860  0339 8c            	dc.b	140
 861  033a 13            	dc.b	19
 862  033b 71            	dc.b	113
 863  033c 02            	dc.b	2
 864  033d 84            	dc.b	132
 865  033e 5d            	dc.b	93
 866  033f 50            	dc.b	80
 867  0340 f3            	dc.b	243
 868  0341 61            	dc.b	97
 869  0342 f7            	dc.b	247
 870  0343 89            	dc.b	137
 871  0344 ae            	dc.b	174
 872  0345 90            	dc.b	144
 873  0346 ed            	dc.b	237
 874  0347 a4            	dc.b	164
 875  0348 7a            	dc.b	122
 876  0349 b5            	dc.b	181
 877  034a f6            	dc.b	246
 878  034b df            	dc.b	223
 879  034c 96            	dc.b	150
 880  034d 18            	dc.b	24
 881  034e a5            	dc.b	165
 882  034f 7c            	dc.b	124
 883  0350 b1            	dc.b	177
 884  0351 34            	dc.b	52
 885  0352 b0            	dc.b	176
 886  0353 7f            	dc.b	127
 887  0354 2c            	dc.b	44
 888  0355 87            	dc.b	135
 889  0356 77            	dc.b	119
 890  0357 7e            	dc.b	126
 891  0358 39            	dc.b	57
 892  0359 07            	dc.b	7
 893  035a 43            	dc.b	67
 894  035b 6a            	dc.b	106
 895  035c c8            	dc.b	200
 896  035d d8            	dc.b	216
 897  035e 9b            	dc.b	155
 898  035f 75            	dc.b	117
 899  0360 31            	dc.b	49
 900  0361 fc            	dc.b	252
 901  0362 6f            	dc.b	111
 902  0363 12            	dc.b	18
 903  0364 0c            	dc.b	12
 904  0365 10            	dc.b	16
 905  0366 d7            	dc.b	215
 906  0367 5a            	dc.b	90
 907  0368 88            	dc.b	136
 908  0369 69            	dc.b	105
 909  036a 3d            	dc.b	61
 910  036b d4            	dc.b	212
 911  036c 1e            	dc.b	30
 912  036d d6            	dc.b	214
 913  036e 9d            	dc.b	157
 914  036f a3            	dc.b	163
 915  0370 fe            	dc.b	254
 916  0371 0a            	dc.b	10
 917  0372 d0            	dc.b	208
 918  0373 b7            	dc.b	183
 919  0374 80            	dc.b	128
 920  0375 49            	dc.b	73
 921  0376 16            	dc.b	22
 922  0377 ca            	dc.b	202
 923  0378 68            	dc.b	104
 924  0379 ea            	dc.b	234
 925  037a 24            	dc.b	36
 926  037b e9            	dc.b	233
 927  037c ce            	dc.b	206
 928  037d 9f            	dc.b	159
 929  037e 11            	dc.b	17
 930  037f bb            	dc.b	187
 931  0380 92            	dc.b	146
 932  0381 83            	dc.b	131
 933  0382 52            	dc.b	82
 934  0383 45            	dc.b	69
 935  0384 27            	dc.b	39
 936  0385 33            	dc.b	51
 937  0386 e1            	dc.b	225
 938  0387 a8            	dc.b	168
 939  0388 6d            	dc.b	109
 940  0389 97            	dc.b	151
 941  038a 5e            	dc.b	94
 942  038b cd            	dc.b	205
 943  038c c7            	dc.b	199
 944  038d ab            	dc.b	171
 945  038e e2            	dc.b	226
 946  038f cc            	dc.b	204
 947  0390 4d            	dc.b	77
 948  0391 28            	dc.b	40
 949  0392 04            	dc.b	4
 950  0393 35            	dc.b	53
 951  0394 55            	dc.b	85
 952  0395 a2            	dc.b	162
 953  0396 ff            	dc.b	255
 954  0397 05            	dc.b	5
 955  0398 ec            	dc.b	236
 956  0399 b6            	dc.b	182
 957  039a eb            	dc.b	235
 958  039b 6c            	dc.b	108
 959  039c a0            	dc.b	160
 960  039d 44            	dc.b	68
 961  039e b8            	dc.b	184
 962  039f 60            	dc.b	96
 963  03a0 26            	dc.b	38
 964  03a1 95            	dc.b	149
 965  03a2 76            	dc.b	118
 966  03a3 c1            	dc.b	193
 967  03a4 dc            	dc.b	220
 968  03a5 56            	dc.b	86
 969  03a6 fa            	dc.b	250
 970  03a7 23            	dc.b	35
 971  03a8 66            	dc.b	102
 972  03a9 4f            	dc.b	79
 973  03aa 19            	dc.b	25
 974  03ab 1f            	dc.b	31
 975  03ac da            	dc.b	218
 976  03ad 65            	dc.b	101
 977  03ae 54            	dc.b	84
 978  03af dd            	dc.b	221
 979  03b0 b4            	dc.b	180
 980  03b1 f9            	dc.b	249
 981  03b2 93            	dc.b	147
 982  03b3 4c            	dc.b	76
 983  03b4 ee            	dc.b	238
 984  03b5 51            	dc.b	81
 985  03b6 63            	dc.b	99
 986  03b7 72            	dc.b	114
 987  03b8 f2            	dc.b	242
 988  03b9 0f            	dc.b	15
 989  03ba c6            	dc.b	198
 990  03bb cf            	dc.b	207
 991  03bc e4            	dc.b	228
 992  03bd a6            	dc.b	166
 993  03be 3b            	dc.b	59
 994  03bf 81            	dc.b	129
 995  03c0 08            	dc.b	8
 996  03c1 a7            	dc.b	167
 997  03c2 e6            	dc.b	230
 998  03c3 1d            	dc.b	29
 999  03c4 d5            	dc.b	213
1000  03c5 6e            	dc.b	110
1001  03c6 9a            	dc.b	154
1002  03c7 4b            	dc.b	75
1003  03c8 cb            	dc.b	203
1004  03c9 f4            	dc.b	244
1005  03ca 9e            	dc.b	158
1006  03cb e7            	dc.b	231
1007  03cc f8            	dc.b	248
1008  03cd f1            	dc.b	241
1009  03ce bc            	dc.b	188
1010  03cf c0            	dc.b	192
1011  03d0 15            	dc.b	21
1012  03d1 09            	dc.b	9
1013  03d2 22            	dc.b	34
1014  03d3 82            	dc.b	130
1015  03d4 79            	dc.b	121
1016  03d5 a1            	dc.b	161
1017  03d6 74            	dc.b	116
1018  03d7 0e            	dc.b	14
1019  03d8 c9            	dc.b	201
1020  03d9 17            	dc.b	23
1021  03da 5b            	dc.b	91
1022  03db 8a            	dc.b	138
1023  03dc 7b            	dc.b	123
1024  03dd 06            	dc.b	6
1025  03de c5            	dc.b	197
1026  03df 3f            	dc.b	63
1027  03e0 00            	dc.b	0
1028  03e1 a9            	dc.b	169
1029  03e2 14            	dc.b	20
1030  03e3 62            	dc.b	98
1031  03e4 4a            	dc.b	74
1032  03e5 c4            	dc.b	196
1033  03e6 de            	dc.b	222
1034  03e7 48            	dc.b	72
1035  03e8 d3            	dc.b	211
1036  03e9 b3            	dc.b	179
1037  03ea 2e            	dc.b	46
1038  03eb 0b            	dc.b	11
1039  03ec 0d            	dc.b	13
1040  03ed 40            	dc.b	64
1041  03ee 3e            	dc.b	62
1042  03ef e3            	dc.b	227
1043  03f0 2f            	dc.b	47
1044  03f1 73            	dc.b	115
1045  03f2 70            	dc.b	112
1046  03f3 ef            	dc.b	239
1047  03f4 9c            	dc.b	156
1048  03f5 36            	dc.b	54
1049  03f6 42            	dc.b	66
1050  03f7 32            	dc.b	50
1051  03f8 ad            	dc.b	173
1052  03f9 20            	dc.b	32
1053  03fa 99            	dc.b	153
1054  03fb 59            	dc.b	89
1055  03fc 7d            	dc.b	125
1056  03fd fd            	dc.b	253
1057  03fe ba            	dc.b	186
1058  03ff 1b            	dc.b	27
1096                     ; 157 static void _Delay_5us(void)
1096                     ; 158 {
1097                     	switch	.text
1098  0000               L73f__Delay_5us:
1100  0000 88            	push	a
1101       00000001      OFST:	set	1
1104                     ; 160    	for (i = 0;i < 10;i++);
1106  0001 0f01          	clr	(OFST+0,sp)
1107  0003               L36:
1111  0003 0c01          	inc	(OFST+0,sp)
1114  0005 7b01          	ld	a,(OFST+0,sp)
1115  0007 a10a          	cp	a,#10
1116  0009 25f8          	jrult	L36
1117                     ; 161 }
1120  000b 84            	pop	a
1121  000c 87            	retf
1146                     ; 163 static void _SWI2C_Start(void)
1146                     ; 164 {
1147                     	switch	.text
1148  000d               L17f__SWI2C_Start:
1152                     ; 165 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1154  000d 4b10          	push	#16
1155  000f ae5005        	ldw	x,#20485
1156  0012 8d000000      	callf	f_GPIO_WriteHigh
1158  0016 84            	pop	a
1159                     ; 166 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1161  0017 4b20          	push	#32
1162  0019 ae5005        	ldw	x,#20485
1163  001c 8d000000      	callf	f_GPIO_WriteHigh
1165  0020 84            	pop	a
1166                     ; 167 	_Delay_5us();
1168  0021 8d000000      	callf	L73f__Delay_5us
1170                     ; 168 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1172  0025 4b20          	push	#32
1173  0027 ae5005        	ldw	x,#20485
1174  002a 8d000000      	callf	f_GPIO_WriteLow
1176  002e 84            	pop	a
1177                     ; 169 	_Delay_5us();
1179  002f 8d000000      	callf	L73f__Delay_5us
1181                     ; 170 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1183  0033 4b10          	push	#16
1184  0035 ae5005        	ldw	x,#20485
1185  0038 8d000000      	callf	f_GPIO_WriteLow
1187  003c 84            	pop	a
1188                     ; 171 }
1191  003d 87            	retf
1216                     ; 173 static void _SWI2C_Stop(void)
1216                     ; 174 {
1217                     	switch	.text
1218  003e               L301f__SWI2C_Stop:
1222                     ; 175 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1224  003e 4b20          	push	#32
1225  0040 ae5005        	ldw	x,#20485
1226  0043 8d000000      	callf	f_GPIO_WriteLow
1228  0047 84            	pop	a
1229                     ; 176 	_Delay_5us();
1231  0048 8d000000      	callf	L73f__Delay_5us
1233                     ; 177 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1235  004c 4b10          	push	#16
1236  004e ae5005        	ldw	x,#20485
1237  0051 8d000000      	callf	f_GPIO_WriteHigh
1239  0055 84            	pop	a
1240                     ; 178 	_Delay_5us();
1242  0056 8d000000      	callf	L73f__Delay_5us
1244                     ; 179 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1246  005a 4b20          	push	#32
1247  005c ae5005        	ldw	x,#20485
1248  005f 8d000000      	callf	f_GPIO_WriteHigh
1250  0063 84            	pop	a
1251                     ; 180 }
1254  0064 87            	retf
1297                     ; 182 static u8 _SWI2C_SendByte(u8 value)
1297                     ; 183 {
1298                     	switch	.text
1299  0065               L511f__SWI2C_SendByte:
1301  0065 88            	push	a
1302  0066 88            	push	a
1303       00000001      OFST:	set	1
1306                     ; 186 	for (count = 0;count < 8;count++)
1308  0067 0f01          	clr	(OFST+0,sp)
1309  0069               L531:
1310                     ; 188 		if (value&0x80)
1312  0069 7b02          	ld	a,(OFST+1,sp)
1313  006b a580          	bcp	a,#128
1314  006d 270c          	jreq	L341
1315                     ; 190 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1317  006f 4b20          	push	#32
1318  0071 ae5005        	ldw	x,#20485
1319  0074 8d000000      	callf	f_GPIO_WriteHigh
1321  0078 84            	pop	a
1323  0079 200a          	jra	L541
1324  007b               L341:
1325                     ; 194 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1327  007b 4b20          	push	#32
1328  007d ae5005        	ldw	x,#20485
1329  0080 8d000000      	callf	f_GPIO_WriteLow
1331  0084 84            	pop	a
1332  0085               L541:
1333                     ; 196 		_Delay_5us();
1335  0085 8d000000      	callf	L73f__Delay_5us
1337                     ; 197 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1339  0089 4b10          	push	#16
1340  008b ae5005        	ldw	x,#20485
1341  008e 8d000000      	callf	f_GPIO_WriteHigh
1343  0092 84            	pop	a
1344                     ; 198 		_Delay_5us();
1346  0093 8d000000      	callf	L73f__Delay_5us
1348                     ; 199 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1350  0097 4b10          	push	#16
1351  0099 ae5005        	ldw	x,#20485
1352  009c 8d000000      	callf	f_GPIO_WriteLow
1354  00a0 84            	pop	a
1355                     ; 200 		value = value<<1;
1357  00a1 0802          	sll	(OFST+1,sp)
1358                     ; 186 	for (count = 0;count < 8;count++)
1360  00a3 0c01          	inc	(OFST+0,sp)
1363  00a5 7b01          	ld	a,(OFST+0,sp)
1364  00a7 a108          	cp	a,#8
1365  00a9 25be          	jrult	L531
1366                     ; 202 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1368  00ab 4b20          	push	#32
1369  00ad ae5005        	ldw	x,#20485
1370  00b0 8d000000      	callf	f_GPIO_WriteHigh
1372  00b4 84            	pop	a
1373                     ; 203 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
1375  00b5 4b00          	push	#0
1376  00b7 4b20          	push	#32
1377  00b9 ae5005        	ldw	x,#20485
1378  00bc 8d000000      	callf	f_GPIO_Init
1380  00c0 85            	popw	x
1381                     ; 204 	_Delay_5us();
1383  00c1 8d000000      	callf	L73f__Delay_5us
1385                     ; 205 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1387  00c5 4b10          	push	#16
1388  00c7 ae5005        	ldw	x,#20485
1389  00ca 8d000000      	callf	f_GPIO_WriteHigh
1391  00ce 84            	pop	a
1392                     ; 206 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
1394  00cf 0f01          	clr	(OFST+0,sp)
1395  00d1               L741:
1396                     ; 208 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
1398  00d1 4b20          	push	#32
1399  00d3 ae5005        	ldw	x,#20485
1400  00d6 8d000000      	callf	f_GPIO_ReadInputPin
1402  00da 5b01          	addw	sp,#1
1403  00dc 4d            	tnz	a
1404  00dd 261a          	jrne	L551
1405                     ; 210 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1407  00df 4b10          	push	#16
1408  00e1 ae5005        	ldw	x,#20485
1409  00e4 8d000000      	callf	f_GPIO_WriteLow
1411  00e8 84            	pop	a
1412                     ; 211 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
1414  00e9 4ba0          	push	#160
1415  00eb 4b20          	push	#32
1416  00ed ae5005        	ldw	x,#20485
1417  00f0 8d000000      	callf	f_GPIO_Init
1419  00f4 85            	popw	x
1420                     ; 212 			return IIC_OK;
1422  00f5 a601          	ld	a,#1
1424  00f7 201f          	jra	L41
1425  00f9               L551:
1426                     ; 206 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
1428  00f9 0c01          	inc	(OFST+0,sp)
1431  00fb 7b01          	ld	a,(OFST+0,sp)
1432  00fd a132          	cp	a,#50
1433  00ff 25d0          	jrult	L741
1434                     ; 215 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1436  0101 4b10          	push	#16
1437  0103 ae5005        	ldw	x,#20485
1438  0106 8d000000      	callf	f_GPIO_WriteLow
1440  010a 84            	pop	a
1441                     ; 216 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1443  010b 4bb0          	push	#176
1444  010d 4b20          	push	#32
1445  010f ae5005        	ldw	x,#20485
1446  0112 8d000000      	callf	f_GPIO_Init
1448  0116 85            	popw	x
1449                     ; 218 	return IIC_FAIL;
1451  0117 4f            	clr	a
1453  0118               L41:
1455  0118 85            	popw	x
1456  0119 87            	retf
1513                     ; 222 static u8 _SWI2C_ReceiveByte(u8 send_ack)
1513                     ; 223 {
1514                     	switch	.text
1515  011a               L751f__SWI2C_ReceiveByte:
1517  011a 88            	push	a
1518  011b 5203          	subw	sp,#3
1519       00000003      OFST:	set	3
1522                     ; 224 	u8 count, read, value = 0;
1524  011d 0f02          	clr	(OFST-1,sp)
1525                     ; 226 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
1527  011f 4b00          	push	#0
1528  0121 4b20          	push	#32
1529  0123 ae5005        	ldw	x,#20485
1530  0126 8d000000      	callf	f_GPIO_Init
1532  012a 85            	popw	x
1533                     ; 227 	for (count = 0;count < 8;count++)
1535  012b 0f01          	clr	(OFST-2,sp)
1536  012d               L302:
1537                     ; 229 		_Delay_5us();
1539  012d 8d000000      	callf	L73f__Delay_5us
1541                     ; 230 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1543  0131 4b10          	push	#16
1544  0133 ae5005        	ldw	x,#20485
1545  0136 8d000000      	callf	f_GPIO_WriteHigh
1547  013a 84            	pop	a
1548                     ; 231 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
1550  013b 4b20          	push	#32
1551  013d ae5005        	ldw	x,#20485
1552  0140 8d000000      	callf	f_GPIO_ReadInputPin
1554  0144 5b01          	addw	sp,#1
1555  0146 4d            	tnz	a
1556  0147 2706          	jreq	L112
1557                     ; 233 			read = 1;
1559  0149 a601          	ld	a,#1
1560  014b 6b03          	ld	(OFST+0,sp),a
1562  014d 2002          	jra	L312
1563  014f               L112:
1564                     ; 237 			read = 0;
1566  014f 0f03          	clr	(OFST+0,sp)
1567  0151               L312:
1568                     ; 239 		value = (value<<1)|read;
1570  0151 7b02          	ld	a,(OFST-1,sp)
1571  0153 48            	sll	a
1572  0154 1a03          	or	a,(OFST+0,sp)
1573  0156 6b02          	ld	(OFST-1,sp),a
1574                     ; 240 		_Delay_5us();
1576  0158 8d000000      	callf	L73f__Delay_5us
1578                     ; 241 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1580  015c 4b10          	push	#16
1581  015e ae5005        	ldw	x,#20485
1582  0161 8d000000      	callf	f_GPIO_WriteLow
1584  0165 84            	pop	a
1585                     ; 227 	for (count = 0;count < 8;count++)
1587  0166 0c01          	inc	(OFST-2,sp)
1590  0168 7b01          	ld	a,(OFST-2,sp)
1591  016a a108          	cp	a,#8
1592  016c 25bf          	jrult	L302
1593                     ; 243 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1595  016e 4bb0          	push	#176
1596  0170 4b20          	push	#32
1597  0172 ae5005        	ldw	x,#20485
1598  0175 8d000000      	callf	f_GPIO_Init
1600  0179 85            	popw	x
1601                     ; 244 	if (send_ack)
1603  017a 0d04          	tnz	(OFST+1,sp)
1604  017c 270c          	jreq	L512
1605                     ; 246 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1607  017e 4b20          	push	#32
1608  0180 ae5005        	ldw	x,#20485
1609  0183 8d000000      	callf	f_GPIO_WriteLow
1611  0187 84            	pop	a
1613  0188 200a          	jra	L712
1614  018a               L512:
1615                     ; 250 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1617  018a 4b20          	push	#32
1618  018c ae5005        	ldw	x,#20485
1619  018f 8d000000      	callf	f_GPIO_WriteHigh
1621  0193 84            	pop	a
1622  0194               L712:
1623                     ; 252 	_Delay_5us();
1625  0194 8d000000      	callf	L73f__Delay_5us
1627                     ; 253 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1629  0198 4b10          	push	#16
1630  019a ae5005        	ldw	x,#20485
1631  019d 8d000000      	callf	f_GPIO_WriteHigh
1633  01a1 84            	pop	a
1634                     ; 254 	_Delay_5us();
1636  01a2 8d000000      	callf	L73f__Delay_5us
1638                     ; 255 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1640  01a6 4b10          	push	#16
1641  01a8 ae5005        	ldw	x,#20485
1642  01ab 8d000000      	callf	f_GPIO_WriteLow
1644  01af 84            	pop	a
1645                     ; 256 	_Delay_5us();
1647  01b0 8d000000      	callf	L73f__Delay_5us
1649                     ; 258 	return	value;		
1651  01b4 7b02          	ld	a,(OFST-1,sp)
1654  01b6 5b04          	addw	sp,#4
1655  01b8 87            	retf
1688                     ; 261 static u8 SWI2C_GetSignalStatus(void)
1688                     ; 262 {
1689                     	switch	.text
1690  01b9               L122f_SWI2C_GetSignalStatus:
1692  01b9 88            	push	a
1693       00000001      OFST:	set	1
1696                     ; 264 	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
1698  01ba 96            	ldw	x,sp
1699  01bb 1c0001        	addw	x,#OFST+0
1700  01be 89            	pushw	x
1701  01bf ae000a        	ldw	x,#10
1702  01c2 a690          	ld	a,#144
1703  01c4 95            	ld	xh,a
1704  01c5 8d4a024a      	callf	f_SWI2C_ReadByte
1706  01c9 85            	popw	x
1707                     ; 265 	if ((p0_status&0x0C) == 0x0C)
1709  01ca 7b01          	ld	a,(OFST+0,sp)
1710  01cc a40c          	and	a,#12
1711  01ce a10c          	cp	a,#12
1712  01d0 2605          	jrne	L732
1713                     ; 267 		return 1;
1715  01d2 a601          	ld	a,#1
1718  01d4 5b01          	addw	sp,#1
1719  01d6 87            	retf
1720  01d7               L732:
1721                     ; 271 		return 0;
1723  01d7 4f            	clr	a
1726  01d8 5b01          	addw	sp,#1
1727  01da 87            	retf
1729                     	switch	.const
1730  0400               L342_wave_table:
1731  0400 00            	dc.b	0
1732  0401 00            	dc.b	0
1733  0402 00            	dc.b	0
1734  0403 00            	dc.b	0
1735  0404 08            	dc.b	8
1736  0405 01            	dc.b	1
1737  0406 00            	dc.b	0
1738  0407 00            	dc.b	0
1739  0408 00            	dc.b	0
1740  0409 07            	dc.b	7
1741  040a 02            	dc.b	2
1742  040b 00            	dc.b	0
1743  040c 00            	dc.b	0
1744  040d 00            	dc.b	0
1745  040e 06            	dc.b	6
1746  040f 03            	dc.b	3
1747  0410 00            	dc.b	0
1748  0411 00            	dc.b	0
1749  0412 00            	dc.b	0
1750  0413 05            	dc.b	5
1751  0414 03            	dc.b	3
1752  0415 00            	dc.b	0
1753  0416 00            	dc.b	0
1754  0417 00            	dc.b	0
1755  0418 05            	dc.b	5
1756  0419 04            	dc.b	4
1757  041a 00            	dc.b	0
1758  041b 00            	dc.b	0
1759  041c 00            	dc.b	0
1760  041d 04            	dc.b	4
1761  041e 05            	dc.b	5
1762  041f 00            	dc.b	0
1763  0420 00            	dc.b	0
1764  0421 00            	dc.b	0
1765  0422 03            	dc.b	3
1766  0423 06            	dc.b	6
1767  0424 00            	dc.b	0
1768  0425 00            	dc.b	0
1769  0426 00            	dc.b	0
1770  0427 02            	dc.b	2
1771  0428 06            	dc.b	6
1772  0429 00            	dc.b	0
1773  042a 00            	dc.b	0
1774  042b 00            	dc.b	0
1775  042c 02            	dc.b	2
1776  042d 07            	dc.b	7
1777  042e 00            	dc.b	0
1778  042f 00            	dc.b	0
1779  0430 00            	dc.b	0
1780  0431 01            	dc.b	1
1781  0432 08            	dc.b	8
1782  0433 00            	dc.b	0
1783  0434 00            	dc.b	0
1784  0435 00            	dc.b	0
1785  0436 00            	dc.b	0
1786  0437 07            	dc.b	7
1787  0438 10            	dc.b	16
1788  0439 00            	dc.b	0
1789  043a 00            	dc.b	0
1790  043b 00            	dc.b	0
1791  043c 07            	dc.b	7
1792  043d 10            	dc.b	16
1793  043e 00            	dc.b	0
1794  043f 00            	dc.b	0
1795  0440 00            	dc.b	0
1796  0441 06            	dc.b	6
1797  0442 20            	dc.b	32
1798  0443 00            	dc.b	0
1799  0444 00            	dc.b	0
1800  0445 00            	dc.b	0
1801  0446 05            	dc.b	5
1802  0447 30            	dc.b	48
1803  0448 00            	dc.b	0
1804  0449 00            	dc.b	0
1805  044a 00            	dc.b	0
1806  044b 04            	dc.b	4
1807  044c 40            	dc.b	64
1808  044d 00            	dc.b	0
1809  044e 00            	dc.b	0
1810  044f 00            	dc.b	0
1811  0450 04            	dc.b	4
1812  0451 40            	dc.b	64
1813  0452 00            	dc.b	0
1814  0453 00            	dc.b	0
1815  0454 00            	dc.b	0
1816  0455 03            	dc.b	3
1817  0456 50            	dc.b	80
1818  0457 00            	dc.b	0
1819  0458 00            	dc.b	0
1820  0459 00            	dc.b	0
1821  045a 02            	dc.b	2
1822  045b 60            	dc.b	96
1823  045c 00            	dc.b	0
1824  045d 00            	dc.b	0
1825  045e 00            	dc.b	0
1826  045f 01            	dc.b	1
1827  0460 70            	dc.b	112
1828  0461 00            	dc.b	0
1829  0462 00            	dc.b	0
1830  0463 00            	dc.b	0
1831  0464 01            	dc.b	1
1832  0465 70            	dc.b	112
1833  0466 00            	dc.b	0
1834  0467 00            	dc.b	0
1835  0468 00            	dc.b	0
1836  0469 00            	dc.b	0
1837  046a 80            	dc.b	128
1838  046b 00            	dc.b	0
1839  046c 00            	dc.b	0
1840  046d 00            	dc.b	0
1841  046e 00            	dc.b	0
1842  046f 71            	dc.b	113
1843  0470 00            	dc.b	0
1844  0471 00            	dc.b	0
1845  0472 00            	dc.b	0
1846  0473 00            	dc.b	0
1847  0474 62            	dc.b	98
1848  0475 00            	dc.b	0
1849  0476 00            	dc.b	0
1850  0477 00            	dc.b	0
1851  0478 00            	dc.b	0
1852  0479 62            	dc.b	98
1853  047a 00            	dc.b	0
1854  047b 00            	dc.b	0
1855  047c 00            	dc.b	0
1856  047d 00            	dc.b	0
1857  047e 53            	dc.b	83
1858  047f 00            	dc.b	0
1859  0480 00            	dc.b	0
1860  0481 00            	dc.b	0
1861  0482 00            	dc.b	0
1862  0483 44            	dc.b	68
1863  0484 00            	dc.b	0
1864  0485 00            	dc.b	0
1865  0486 00            	dc.b	0
1866  0487 00            	dc.b	0
1867  0488 35            	dc.b	53
1868  0489 00            	dc.b	0
1869  048a 00            	dc.b	0
1870  048b 00            	dc.b	0
1871  048c 00            	dc.b	0
1872  048d 35            	dc.b	53
1873  048e 00            	dc.b	0
1874  048f 00            	dc.b	0
1875  0490 00            	dc.b	0
1876  0491 00            	dc.b	0
1877  0492 26            	dc.b	38
1878  0493 00            	dc.b	0
1879  0494 00            	dc.b	0
1880  0495 00            	dc.b	0
1881  0496 00            	dc.b	0
1882  0497 17            	dc.b	23
1883  0498 00            	dc.b	0
1884  0499 00            	dc.b	0
1885  049a 00            	dc.b	0
1886  049b 00            	dc.b	0
1887  049c 08            	dc.b	8
1888  049d 00            	dc.b	0
1889  049e 00            	dc.b	0
1890  049f 00            	dc.b	0
1891  04a0 00            	dc.b	0
1892  04a1 08            	dc.b	8
1893  04a2 00            	dc.b	0
1894  04a3 00            	dc.b	0
1895  04a4 00            	dc.b	0
1896  04a5 00            	dc.b	0
1897  04a6 07            	dc.b	7
1898  04a7 10            	dc.b	16
1899  04a8 00            	dc.b	0
1900  04a9 00            	dc.b	0
1901  04aa 00            	dc.b	0
1902  04ab 06            	dc.b	6
1903  04ac 20            	dc.b	32
1904  04ad 00            	dc.b	0
1905  04ae 00            	dc.b	0
1906  04af 00            	dc.b	0
1907  04b0 05            	dc.b	5
1908  04b1 30            	dc.b	48
1909  04b2 00            	dc.b	0
1910  04b3 00            	dc.b	0
1911  04b4 00            	dc.b	0
1912  04b5 05            	dc.b	5
1913  04b6 30            	dc.b	48
1914  04b7 00            	dc.b	0
1915  04b8 00            	dc.b	0
1916  04b9 00            	dc.b	0
1917  04ba 04            	dc.b	4
1918  04bb 40            	dc.b	64
1919  04bc 00            	dc.b	0
1920  04bd 00            	dc.b	0
1921  04be 00            	dc.b	0
1922  04bf 03            	dc.b	3
1923  04c0 50            	dc.b	80
1924  04c1 00            	dc.b	0
1925  04c2 00            	dc.b	0
1926  04c3 00            	dc.b	0
1927  04c4 02            	dc.b	2
1928  04c5 60            	dc.b	96
1929  04c6 00            	dc.b	0
1930  04c7 00            	dc.b	0
1931  04c8 00            	dc.b	0
1932  04c9 02            	dc.b	2
1933  04ca 60            	dc.b	96
1934  04cb 00            	dc.b	0
1935  04cc 00            	dc.b	0
1936  04cd 00            	dc.b	0
1937  04ce 01            	dc.b	1
1938  04cf 70            	dc.b	112
1939  04d0 00            	dc.b	0
1940  04d1 00            	dc.b	0
1941  04d2 00            	dc.b	0
1942  04d3 00            	dc.b	0
1943  04d4 80            	dc.b	128
1944  04d5 00            	dc.b	0
1945  04d6 00            	dc.b	0
1946  04d7 00            	dc.b	0
1947  04d8 00            	dc.b	0
1948  04d9 80            	dc.b	128
1949  04da 00            	dc.b	0
1950  04db 00            	dc.b	0
1951  04dc 00            	dc.b	0
1952  04dd 01            	dc.b	1
1953  04de 70            	dc.b	112
1954  04df 00            	dc.b	0
1955  04e0 00            	dc.b	0
1956  04e1 00            	dc.b	0
1957  04e2 01            	dc.b	1
1958  04e3 70            	dc.b	112
1959  04e4 00            	dc.b	0
1960  04e5 00            	dc.b	0
1961  04e6 00            	dc.b	0
1962  04e7 01            	dc.b	1
1963  04e8 70            	dc.b	112
1964  04e9 00            	dc.b	0
1965  04ea 00            	dc.b	0
1966  04eb 00            	dc.b	0
1967  04ec 02            	dc.b	2
1968  04ed 60            	dc.b	96
1969  04ee 00            	dc.b	0
1970  04ef 00            	dc.b	0
1971  04f0 00            	dc.b	0
1972  04f1 02            	dc.b	2
1973  04f2 60            	dc.b	96
1974  04f3 00            	dc.b	0
1975  04f4 00            	dc.b	0
1976  04f5 00            	dc.b	0
1977  04f6 03            	dc.b	3
1978  04f7 50            	dc.b	80
1979  04f8 00            	dc.b	0
1980  04f9 00            	dc.b	0
1981  04fa 00            	dc.b	0
1982  04fb 03            	dc.b	3
1983  04fc 50            	dc.b	80
1984  04fd 00            	dc.b	0
1985  04fe 00            	dc.b	0
1986  04ff 00            	dc.b	0
1987  0500 03            	dc.b	3
1988  0501 50            	dc.b	80
1989  0502 00            	dc.b	0
1990  0503 00            	dc.b	0
1991  0504 00            	dc.b	0
1992  0505 04            	dc.b	4
1993  0506 40            	dc.b	64
1994  0507 00            	dc.b	0
1995  0508 00            	dc.b	0
1996  0509 00            	dc.b	0
1997  050a 04            	dc.b	4
1998  050b 40            	dc.b	64
1999  050c 00            	dc.b	0
2000  050d 00            	dc.b	0
2001  050e 00            	dc.b	0
2002  050f 04            	dc.b	4
2003  0510 40            	dc.b	64
2004  0511 00            	dc.b	0
2005  0512 00            	dc.b	0
2006  0513 00            	dc.b	0
2007  0514 05            	dc.b	5
2008  0515 30            	dc.b	48
2009  0516 00            	dc.b	0
2010  0517 00            	dc.b	0
2011  0518 00            	dc.b	0
2012  0519 05            	dc.b	5
2013  051a 30            	dc.b	48
2014  051b 00            	dc.b	0
2015  051c 00            	dc.b	0
2016  051d 00            	dc.b	0
2017  051e 06            	dc.b	6
2018  051f 20            	dc.b	32
2019  0520 00            	dc.b	0
2020  0521 00            	dc.b	0
2021  0522 00            	dc.b	0
2022  0523 06            	dc.b	6
2023  0524 20            	dc.b	32
2024  0525 00            	dc.b	0
2025  0526 00            	dc.b	0
2026  0527 00            	dc.b	0
2027  0528 06            	dc.b	6
2028  0529 20            	dc.b	32
2029  052a 00            	dc.b	0
2030  052b 00            	dc.b	0
2031  052c 00            	dc.b	0
2032  052d 07            	dc.b	7
2033  052e 10            	dc.b	16
2034  052f 00            	dc.b	0
2035  0530 00            	dc.b	0
2036  0531 00            	dc.b	0
2037  0532 07            	dc.b	7
2038  0533 10            	dc.b	16
2039  0534 00            	dc.b	0
2040  0535 00            	dc.b	0
2041  0536 00            	dc.b	0
2042  0537 07            	dc.b	7
2043  0538 10            	dc.b	16
2044  0539 00            	dc.b	0
2045  053a 00            	dc.b	0
2046  053b 00            	dc.b	0
2047  053c 08            	dc.b	8
2048  053d 00            	dc.b	0
2049  053e 00            	dc.b	0
2050  053f 00            	dc.b	0
2051  0540 00            	dc.b	0
2052  0541 08            	dc.b	8
2053  0542 00            	dc.b	0
2054  0543 00            	dc.b	0
2055  0544 00            	dc.b	0
2056  0545 00            	dc.b	0
2057  0546 17            	dc.b	23
2058  0547 00            	dc.b	0
2059  0548 00            	dc.b	0
2060  0549 00            	dc.b	0
2061  054a 00            	dc.b	0
2062  054b 17            	dc.b	23
2063  054c 00            	dc.b	0
2064  054d 00            	dc.b	0
2065  054e 00            	dc.b	0
2066  054f 00            	dc.b	0
2067  0550 17            	dc.b	23
2068  0551 00            	dc.b	0
2069  0552 00            	dc.b	0
2070  0553 00            	dc.b	0
2071  0554 00            	dc.b	0
2072  0555 26            	dc.b	38
2073  0556 00            	dc.b	0
2074  0557 00            	dc.b	0
2075  0558 00            	dc.b	0
2076  0559 00            	dc.b	0
2077  055a 26            	dc.b	38
2078  055b 00            	dc.b	0
2079  055c 00            	dc.b	0
2080  055d 00            	dc.b	0
2081  055e 00            	dc.b	0
2082  055f 26            	dc.b	38
2083  0560 00            	dc.b	0
2084  0561 00            	dc.b	0
2085  0562 00            	dc.b	0
2086  0563 00            	dc.b	0
2087  0564 35            	dc.b	53
2088  0565 00            	dc.b	0
2089  0566 00            	dc.b	0
2090  0567 00            	dc.b	0
2091  0568 00            	dc.b	0
2092  0569 35            	dc.b	53
2093  056a 00            	dc.b	0
2094  056b 00            	dc.b	0
2095  056c 00            	dc.b	0
2096  056d 00            	dc.b	0
2097  056e 44            	dc.b	68
2098  056f 00            	dc.b	0
2099  0570 00            	dc.b	0
2100  0571 00            	dc.b	0
2101  0572 00            	dc.b	0
2102  0573 44            	dc.b	68
2103  0574 00            	dc.b	0
2104  0575 00            	dc.b	0
2105  0576 00            	dc.b	0
2106  0577 00            	dc.b	0
2107  0578 44            	dc.b	68
2108  0579 00            	dc.b	0
2109  057a 00            	dc.b	0
2110  057b 00            	dc.b	0
2111  057c 00            	dc.b	0
2112  057d 53            	dc.b	83
2113  057e 00            	dc.b	0
2114  057f 00            	dc.b	0
2115  0580 00            	dc.b	0
2116  0581 00            	dc.b	0
2117  0582 53            	dc.b	83
2118  0583 00            	dc.b	0
2119  0584 00            	dc.b	0
2120  0585 00            	dc.b	0
2121  0586 00            	dc.b	0
2122  0587 53            	dc.b	83
2123  0588 00            	dc.b	0
2124  0589 00            	dc.b	0
2125  058a 00            	dc.b	0
2126  058b 00            	dc.b	0
2127  058c 62            	dc.b	98
2128  058d 00            	dc.b	0
2129  058e 00            	dc.b	0
2130  058f 00            	dc.b	0
2131  0590 00            	dc.b	0
2132  0591 62            	dc.b	98
2133  0592 00            	dc.b	0
2134  0593 00            	dc.b	0
2135  0594 00            	dc.b	0
2136  0595 00            	dc.b	0
2137  0596 71            	dc.b	113
2138  0597 00            	dc.b	0
2139  0598 00            	dc.b	0
2140  0599 00            	dc.b	0
2141  059a 00            	dc.b	0
2142  059b 71            	dc.b	113
2143  059c 00            	dc.b	0
2144  059d 00            	dc.b	0
2145  059e 00            	dc.b	0
2146  059f 00            	dc.b	0
2147  05a0 71            	dc.b	113
2148  05a1 00            	dc.b	0
2149  05a2 00            	dc.b	0
2150  05a3 00            	dc.b	0
2151  05a4 00            	dc.b	0
2152  05a5 80            	dc.b	128
2153  05a6 00            	dc.b	0
2154  05a7 00            	dc.b	0
2155  05a8 00            	dc.b	0
2156  05a9 00            	dc.b	0
2157  05aa 80            	dc.b	128
2158  05ab 00            	dc.b	0
2159  05ac 00            	dc.b	0
2160  05ad 00            	dc.b	0
2161  05ae 00            	dc.b	0
2162  05af 80            	dc.b	128
2163  05b0 00            	dc.b	0
2164  05b1 00            	dc.b	0
2165  05b2 00            	dc.b	0
2166  05b3 01            	dc.b	1
2167  05b4 70            	dc.b	112
2168  05b5 00            	dc.b	0
2169  05b6 00            	dc.b	0
2170  05b7 00            	dc.b	0
2171  05b8 01            	dc.b	1
2172  05b9 70            	dc.b	112
2173  05ba 00            	dc.b	0
2174  05bb 00            	dc.b	0
2175  05bc 00            	dc.b	0
2176  05bd 02            	dc.b	2
2177  05be 60            	dc.b	96
2178  05bf 00            	dc.b	0
2179  05c0 00            	dc.b	0
2180  05c1 00            	dc.b	0
2181  05c2 02            	dc.b	2
2182  05c3 60            	dc.b	96
2183  05c4 00            	dc.b	0
2184  05c5 00            	dc.b	0
2185  05c6 00            	dc.b	0
2186  05c7 02            	dc.b	2
2187  05c8 60            	dc.b	96
2188  05c9 00            	dc.b	0
2189  05ca 00            	dc.b	0
2190  05cb 00            	dc.b	0
2191  05cc 03            	dc.b	3
2192  05cd 50            	dc.b	80
2193  05ce 00            	dc.b	0
2194  05cf 00            	dc.b	0
2195  05d0 00            	dc.b	0
2196  05d1 03            	dc.b	3
2197  05d2 50            	dc.b	80
2198  05d3 00            	dc.b	0
2199  05d4 00            	dc.b	0
2200  05d5 00            	dc.b	0
2201  05d6 03            	dc.b	3
2202  05d7 50            	dc.b	80
2203  05d8 00            	dc.b	0
2204  05d9 00            	dc.b	0
2205  05da 00            	dc.b	0
2206  05db 04            	dc.b	4
2207  05dc 40            	dc.b	64
2208  05dd 00            	dc.b	0
2209  05de 00            	dc.b	0
2210  05df 00            	dc.b	0
2211  05e0 04            	dc.b	4
2212  05e1 40            	dc.b	64
2213  05e2 00            	dc.b	0
2214  05e3 00            	dc.b	0
2215  05e4 00            	dc.b	0
2216  05e5 05            	dc.b	5
2217  05e6 30            	dc.b	48
2218  05e7 00            	dc.b	0
2219  05e8 00            	dc.b	0
2220  05e9 00            	dc.b	0
2221  05ea 05            	dc.b	5
2222  05eb 30            	dc.b	48
2223  05ec 00            	dc.b	0
2224  05ed 00            	dc.b	0
2225  05ee 00            	dc.b	0
2226  05ef 05            	dc.b	5
2227  05f0 30            	dc.b	48
2228  05f1 00            	dc.b	0
2229  05f2 00            	dc.b	0
2230  05f3 00            	dc.b	0
2231  05f4 06            	dc.b	6
2232  05f5 20            	dc.b	32
2233  05f6 00            	dc.b	0
2234  05f7 00            	dc.b	0
2235  05f8 00            	dc.b	0
2236  05f9 06            	dc.b	6
2237  05fa 20            	dc.b	32
2238  05fb 00            	dc.b	0
2239  05fc 00            	dc.b	0
2240  05fd 00            	dc.b	0
2241  05fe 06            	dc.b	6
2242  05ff 20            	dc.b	32
2243  0600 00            	dc.b	0
2244  0601 00            	dc.b	0
2245  0602 00            	dc.b	0
2246  0603 07            	dc.b	7
2247  0604 10            	dc.b	16
2248  0605 00            	dc.b	0
2249  0606 00            	dc.b	0
2250  0607 00            	dc.b	0
2251  0608 07            	dc.b	7
2252  0609 10            	dc.b	16
2253  060a 00            	dc.b	0
2254  060b 00            	dc.b	0
2255  060c 00            	dc.b	0
2256  060d 08            	dc.b	8
2257  060e 00            	dc.b	0
2258  060f 00            	dc.b	0
2259  0610 00            	dc.b	0
2260  0611 00            	dc.b	0
2261  0612 08            	dc.b	8
2262  0613 00            	dc.b	0
2263  0614 00            	dc.b	0
2264  0615 00            	dc.b	0
2265  0616 00            	dc.b	0
2266  0617 08            	dc.b	8
2267  0618 00            	dc.b	0
2268  0619 00            	dc.b	0
2269  061a 00            	dc.b	0
2270  061b 00            	dc.b	0
2271  061c 07            	dc.b	7
2272  061d 00            	dc.b	0
2273  061e 00            	dc.b	0
2274  061f 00            	dc.b	0
2275  0620 01            	dc.b	1
2276  0621 07            	dc.b	7
2277  0622 00            	dc.b	0
2278  0623 00            	dc.b	0
2279  0624 00            	dc.b	0
2280  0625 01            	dc.b	1
2281  0626 07            	dc.b	7
2282  0627 00            	dc.b	0
2283  0628 00            	dc.b	0
2284  0629 00            	dc.b	0
2285  062a 01            	dc.b	1
2286  062b 06            	dc.b	6
2287  062c 00            	dc.b	0
2288  062d 00            	dc.b	0
2289  062e 00            	dc.b	0
2290  062f 02            	dc.b	2
2291  0630 06            	dc.b	6
2292  0631 00            	dc.b	0
2293  0632 00            	dc.b	0
2294  0633 00            	dc.b	0
2295  0634 02            	dc.b	2
2296  0635 05            	dc.b	5
2297  0636 00            	dc.b	0
2298  0637 00            	dc.b	0
2299  0638 00            	dc.b	0
2300  0639 03            	dc.b	3
2301  063a 05            	dc.b	5
2302  063b 00            	dc.b	0
2303  063c 00            	dc.b	0
2304  063d 00            	dc.b	0
2305  063e 03            	dc.b	3
2306  063f 05            	dc.b	5
2307  0640 00            	dc.b	0
2308  0641 00            	dc.b	0
2309  0642 00            	dc.b	0
2310  0643 03            	dc.b	3
2311  0644 04            	dc.b	4
2312  0645 00            	dc.b	0
2313  0646 00            	dc.b	0
2314  0647 00            	dc.b	0
2315  0648 04            	dc.b	4
2316  0649 04            	dc.b	4
2317  064a 00            	dc.b	0
2318  064b 00            	dc.b	0
2319  064c 00            	dc.b	0
2320  064d 04            	dc.b	4
2321  064e 04            	dc.b	4
2322  064f 00            	dc.b	0
2323  0650 00            	dc.b	0
2324  0651 00            	dc.b	0
2325  0652 04            	dc.b	4
2326  0653 03            	dc.b	3
2327  0654 00            	dc.b	0
2328  0655 00            	dc.b	0
2329  0656 00            	dc.b	0
2330  0657 05            	dc.b	5
2331  0658 03            	dc.b	3
2332  0659 00            	dc.b	0
2333  065a 00            	dc.b	0
2334  065b 00            	dc.b	0
2335  065c 05            	dc.b	5
2336  065d 02            	dc.b	2
2337  065e 00            	dc.b	0
2338  065f 00            	dc.b	0
2339  0660 00            	dc.b	0
2340  0661 06            	dc.b	6
2341  0662 02            	dc.b	2
2342  0663 00            	dc.b	0
2343  0664 00            	dc.b	0
2344  0665 00            	dc.b	0
2345  0666 06            	dc.b	6
2346  0667 02            	dc.b	2
2347  0668 00            	dc.b	0
2348  0669 00            	dc.b	0
2349  066a 00            	dc.b	0
2350  066b 06            	dc.b	6
2351  066c 01            	dc.b	1
2352  066d 00            	dc.b	0
2353  066e 00            	dc.b	0
2354  066f 00            	dc.b	0
2355  0670 07            	dc.b	7
2356  0671 01            	dc.b	1
2357  0672 00            	dc.b	0
2358  0673 00            	dc.b	0
2359  0674 00            	dc.b	0
2360  0675 07            	dc.b	7
2361  0676 01            	dc.b	1
2362  0677 00            	dc.b	0
2363  0678 00            	dc.b	0
2364  0679 00            	dc.b	0
2365  067a 07            	dc.b	7
2366  067b 00            	dc.b	0
2367  067c 00            	dc.b	0
2368  067d 00            	dc.b	0
2369  067e 00            	dc.b	0
2370  067f 08            	dc.b	8
2371  0680 00            	dc.b	0
2372  0681 00            	dc.b	0
2373  0682 00            	dc.b	0
2374  0683 00            	dc.b	0
2375  0684 08            	dc.b	8
2376  0685 00            	dc.b	0
2377  0686 00            	dc.b	0
2378  0687 00            	dc.b	0
2379  0688 00            	dc.b	0
2380  0689 17            	dc.b	23
2381  068a 00            	dc.b	0
2382  068b 00            	dc.b	0
2383  068c 00            	dc.b	0
2384  068d 00            	dc.b	0
2385  068e 17            	dc.b	23
2386  068f 00            	dc.b	0
2387  0690 00            	dc.b	0
2388  0691 00            	dc.b	0
2389  0692 00            	dc.b	0
2390  0693 17            	dc.b	23
2391  0694 00            	dc.b	0
2392  0695 00            	dc.b	0
2393  0696 00            	dc.b	0
2394  0697 00            	dc.b	0
2395  0698 26            	dc.b	38
2396  0699 00            	dc.b	0
2397  069a 00            	dc.b	0
2398  069b 00            	dc.b	0
2399  069c 00            	dc.b	0
2400  069d 26            	dc.b	38
2401  069e 00            	dc.b	0
2402  069f 00            	dc.b	0
2403  06a0 00            	dc.b	0
2404  06a1 00            	dc.b	0
2405  06a2 26            	dc.b	38
2406  06a3 00            	dc.b	0
2407  06a4 00            	dc.b	0
2408  06a5 00            	dc.b	0
2409  06a6 00            	dc.b	0
2410  06a7 35            	dc.b	53
2411  06a8 00            	dc.b	0
2412  06a9 00            	dc.b	0
2413  06aa 00            	dc.b	0
2414  06ab 00            	dc.b	0
2415  06ac 35            	dc.b	53
2416  06ad 00            	dc.b	0
2417  06ae 00            	dc.b	0
2418  06af 00            	dc.b	0
2419  06b0 00            	dc.b	0
2420  06b1 44            	dc.b	68
2421  06b2 00            	dc.b	0
2422  06b3 00            	dc.b	0
2423  06b4 00            	dc.b	0
2424  06b5 00            	dc.b	0
2425  06b6 44            	dc.b	68
2426  06b7 00            	dc.b	0
2427  06b8 00            	dc.b	0
2428  06b9 00            	dc.b	0
2429  06ba 00            	dc.b	0
2430  06bb 44            	dc.b	68
2431  06bc 00            	dc.b	0
2432  06bd 00            	dc.b	0
2433  06be 00            	dc.b	0
2434  06bf 00            	dc.b	0
2435  06c0 53            	dc.b	83
2436  06c1 00            	dc.b	0
2437  06c2 00            	dc.b	0
2438  06c3 00            	dc.b	0
2439  06c4 00            	dc.b	0
2440  06c5 53            	dc.b	83
2441  06c6 00            	dc.b	0
2442  06c7 00            	dc.b	0
2443  06c8 00            	dc.b	0
2444  06c9 00            	dc.b	0
2445  06ca 53            	dc.b	83
2446  06cb 00            	dc.b	0
2447  06cc 00            	dc.b	0
2448  06cd 00            	dc.b	0
2449  06ce 00            	dc.b	0
2450  06cf 62            	dc.b	98
2451  06d0 00            	dc.b	0
2452  06d1 00            	dc.b	0
2453  06d2 00            	dc.b	0
2454  06d3 00            	dc.b	0
2455  06d4 62            	dc.b	98
2456  06d5 00            	dc.b	0
2457  06d6 00            	dc.b	0
2458  06d7 00            	dc.b	0
2459  06d8 00            	dc.b	0
2460  06d9 71            	dc.b	113
2461  06da 00            	dc.b	0
2462  06db 00            	dc.b	0
2463  06dc 00            	dc.b	0
2464  06dd 00            	dc.b	0
2465  06de 71            	dc.b	113
2466  06df 00            	dc.b	0
2467  06e0 00            	dc.b	0
2468  06e1 00            	dc.b	0
2469  06e2 00            	dc.b	0
2470  06e3 71            	dc.b	113
2471  06e4 00            	dc.b	0
2472  06e5 00            	dc.b	0
2473  06e6 00            	dc.b	0
2474  06e7 00            	dc.b	0
2475  06e8 80            	dc.b	128
2476  06e9 00            	dc.b	0
2477  06ea 00            	dc.b	0
2478  06eb 00            	dc.b	0
2479  06ec 00            	dc.b	0
2480  06ed 80            	dc.b	128
2481  06ee 00            	dc.b	0
2482  06ef 00            	dc.b	0
2483  06f0 00            	dc.b	0
2484  06f1 00            	dc.b	0
2485  06f2 80            	dc.b	128
2486  06f3 00            	dc.b	0
2487  06f4 00            	dc.b	0
2488  06f5 00            	dc.b	0
2489  06f6 01            	dc.b	1
2490  06f7 70            	dc.b	112
2491  06f8 00            	dc.b	0
2492  06f9 00            	dc.b	0
2493  06fa 00            	dc.b	0
2494  06fb 01            	dc.b	1
2495  06fc 70            	dc.b	112
2496  06fd 00            	dc.b	0
2497  06fe 00            	dc.b	0
2498  06ff 00            	dc.b	0
2499  0700 02            	dc.b	2
2500  0701 60            	dc.b	96
2501  0702 00            	dc.b	0
2502  0703 00            	dc.b	0
2503  0704 00            	dc.b	0
2504  0705 02            	dc.b	2
2505  0706 60            	dc.b	96
2506  0707 00            	dc.b	0
2507  0708 00            	dc.b	0
2508  0709 00            	dc.b	0
2509  070a 02            	dc.b	2
2510  070b 60            	dc.b	96
2511  070c 00            	dc.b	0
2512  070d 00            	dc.b	0
2513  070e 00            	dc.b	0
2514  070f 03            	dc.b	3
2515  0710 50            	dc.b	80
2516  0711 00            	dc.b	0
2517  0712 00            	dc.b	0
2518  0713 00            	dc.b	0
2519  0714 03            	dc.b	3
2520  0715 50            	dc.b	80
2521  0716 00            	dc.b	0
2522  0717 00            	dc.b	0
2523  0718 00            	dc.b	0
2524  0719 03            	dc.b	3
2525  071a 50            	dc.b	80
2526  071b 00            	dc.b	0
2527  071c 00            	dc.b	0
2528  071d 00            	dc.b	0
2529  071e 04            	dc.b	4
2530  071f 40            	dc.b	64
2531  0720 00            	dc.b	0
2532  0721 00            	dc.b	0
2533  0722 00            	dc.b	0
2534  0723 04            	dc.b	4
2535  0724 40            	dc.b	64
2536  0725 00            	dc.b	0
2537  0726 00            	dc.b	0
2538  0727 00            	dc.b	0
2539  0728 05            	dc.b	5
2540  0729 30            	dc.b	48
2541  072a 00            	dc.b	0
2542  072b 00            	dc.b	0
2543  072c 00            	dc.b	0
2544  072d 05            	dc.b	5
2545  072e 30            	dc.b	48
2546  072f 00            	dc.b	0
2547  0730 00            	dc.b	0
2548  0731 00            	dc.b	0
2549  0732 05            	dc.b	5
2550  0733 30            	dc.b	48
2551  0734 00            	dc.b	0
2552  0735 00            	dc.b	0
2553  0736 00            	dc.b	0
2554  0737 06            	dc.b	6
2555  0738 20            	dc.b	32
2556  0739 00            	dc.b	0
2557  073a 00            	dc.b	0
2558  073b 00            	dc.b	0
2559  073c 06            	dc.b	6
2560  073d 20            	dc.b	32
2561  073e 00            	dc.b	0
2562  073f 00            	dc.b	0
2563  0740 00            	dc.b	0
2564  0741 06            	dc.b	6
2565  0742 20            	dc.b	32
2566  0743 00            	dc.b	0
2567  0744 00            	dc.b	0
2568  0745 00            	dc.b	0
2569  0746 07            	dc.b	7
2570  0747 10            	dc.b	16
2571  0748 00            	dc.b	0
2572  0749 00            	dc.b	0
2573  074a 00            	dc.b	0
2574  074b 07            	dc.b	7
2575  074c 10            	dc.b	16
2576  074d 00            	dc.b	0
2577  074e 00            	dc.b	0
2578  074f 00            	dc.b	0
2579  0750 08            	dc.b	8
2580  0751 00            	dc.b	0
2581  0752 00            	dc.b	0
2582  0753 00            	dc.b	0
2583  0754 00            	dc.b	0
2584  0755 08            	dc.b	8
2585  0756 00            	dc.b	0
2586  0757 00            	dc.b	0
2587  0758 00            	dc.b	0
2588  0759 00            	dc.b	0
2589  075a 08            	dc.b	8
2590  075b 00            	dc.b	0
2591  075c 00            	dc.b	0
2592  075d 00            	dc.b	0
2593  075e 00            	dc.b	0
2594  075f 07            	dc.b	7
2595  0760 00            	dc.b	0
2596  0761 00            	dc.b	0
2597  0762 00            	dc.b	0
2598  0763 00            	dc.b	0
2599  0764 17            	dc.b	23
2600  0765 00            	dc.b	0
2601  0766 00            	dc.b	0
2602  0767 00            	dc.b	0
2603  0768 00            	dc.b	0
2604  0769 17            	dc.b	23
2605  076a 00            	dc.b	0
2606  076b 00            	dc.b	0
2607  076c 00            	dc.b	0
2608  076d 00            	dc.b	0
2609  076e 26            	dc.b	38
2610  076f 00            	dc.b	0
2611  0770 00            	dc.b	0
2612  0771 00            	dc.b	0
2613  0772 00            	dc.b	0
2614  0773 26            	dc.b	38
2615  0774 00            	dc.b	0
2616  0775 00            	dc.b	0
2617  0776 00            	dc.b	0
2618  0777 00            	dc.b	0
2619  0778 35            	dc.b	53
2620  0779 00            	dc.b	0
2621  077a 00            	dc.b	0
2622  077b 00            	dc.b	0
2623  077c 00            	dc.b	0
2624  077d 35            	dc.b	53
2625  077e 00            	dc.b	0
2626  077f 00            	dc.b	0
2627  0780 00            	dc.b	0
2628  0781 00            	dc.b	0
2629  0782 35            	dc.b	53
2630  0783 00            	dc.b	0
2631  0784 00            	dc.b	0
2632  0785 00            	dc.b	0
2633  0786 00            	dc.b	0
2634  0787 44            	dc.b	68
2635  0788 00            	dc.b	0
2636  0789 00            	dc.b	0
2637  078a 00            	dc.b	0
2638  078b 00            	dc.b	0
2639  078c 44            	dc.b	68
2640  078d 00            	dc.b	0
2641  078e 00            	dc.b	0
2642  078f 00            	dc.b	0
2643  0790 00            	dc.b	0
2644  0791 44            	dc.b	68
2645  0792 00            	dc.b	0
2646  0793 00            	dc.b	0
2647  0794 00            	dc.b	0
2648  0795 00            	dc.b	0
2649  0796 53            	dc.b	83
2650  0797 00            	dc.b	0
2651  0798 00            	dc.b	0
2652  0799 00            	dc.b	0
2653  079a 00            	dc.b	0
2654  079b 53            	dc.b	83
2655  079c 00            	dc.b	0
2656  079d 00            	dc.b	0
2657  079e 00            	dc.b	0
2658  079f 00            	dc.b	0
2659  07a0 62            	dc.b	98
2660  07a1 00            	dc.b	0
2661  07a2 00            	dc.b	0
2662  07a3 00            	dc.b	0
2663  07a4 00            	dc.b	0
2664  07a5 62            	dc.b	98
2665  07a6 00            	dc.b	0
2666  07a7 00            	dc.b	0
2667  07a8 00            	dc.b	0
2668  07a9 00            	dc.b	0
2669  07aa 62            	dc.b	98
2670  07ab 00            	dc.b	0
2671  07ac 00            	dc.b	0
2672  07ad 00            	dc.b	0
2673  07ae 00            	dc.b	0
2674  07af 71            	dc.b	113
2675  07b0 00            	dc.b	0
2676  07b1 00            	dc.b	0
2677  07b2 00            	dc.b	0
2678  07b3 00            	dc.b	0
2679  07b4 71            	dc.b	113
2680  07b5 00            	dc.b	0
2681  07b6 00            	dc.b	0
2682  07b7 00            	dc.b	0
2683  07b8 00            	dc.b	0
2684  07b9 71            	dc.b	113
2685  07ba 00            	dc.b	0
2686  07bb 00            	dc.b	0
2687  07bc 00            	dc.b	0
2688  07bd 00            	dc.b	0
2689  07be 80            	dc.b	128
2690  07bf 00            	dc.b	0
2691  07c0 00            	dc.b	0
2692  07c1 00            	dc.b	0
2693  07c2 00            	dc.b	0
2694  07c3 80            	dc.b	128
2695  07c4 00            	dc.b	0
2696  07c5 00            	dc.b	0
2697  07c6 00            	dc.b	0
2698  07c7 01            	dc.b	1
2699  07c8 70            	dc.b	112
2700  07c9 00            	dc.b	0
2701  07ca 00            	dc.b	0
2702  07cb 00            	dc.b	0
2703  07cc 01            	dc.b	1
2704  07cd 70            	dc.b	112
2705  07ce 00            	dc.b	0
2706  07cf 00            	dc.b	0
2707  07d0 00            	dc.b	0
2708  07d1 01            	dc.b	1
2709  07d2 70            	dc.b	112
2710  07d3 00            	dc.b	0
2711  07d4 00            	dc.b	0
2712  07d5 00            	dc.b	0
2713  07d6 02            	dc.b	2
2714  07d7 60            	dc.b	96
2715  07d8 00            	dc.b	0
2716  07d9 00            	dc.b	0
2717  07da 00            	dc.b	0
2718  07db 02            	dc.b	2
2719  07dc 60            	dc.b	96
2720  07dd 00            	dc.b	0
2721  07de 00            	dc.b	0
2722  07df 00            	dc.b	0
2723  07e0 02            	dc.b	2
2724  07e1 60            	dc.b	96
2725  07e2 00            	dc.b	0
2726  07e3 00            	dc.b	0
2727  07e4 00            	dc.b	0
2728  07e5 03            	dc.b	3
2729  07e6 50            	dc.b	80
2730  07e7 00            	dc.b	0
2731  07e8 00            	dc.b	0
2732  07e9 00            	dc.b	0
2733  07ea 03            	dc.b	3
2734  07eb 50            	dc.b	80
2735  07ec 00            	dc.b	0
2736  07ed 00            	dc.b	0
2737  07ee 00            	dc.b	0
2738  07ef 04            	dc.b	4
2739  07f0 40            	dc.b	64
2740  07f1 00            	dc.b	0
2741  07f2 00            	dc.b	0
2742  07f3 00            	dc.b	0
2743  07f4 04            	dc.b	4
2744  07f5 40            	dc.b	64
2745  07f6 00            	dc.b	0
2746  07f7 00            	dc.b	0
2747  07f8 00            	dc.b	0
2748  07f9 04            	dc.b	4
2749  07fa 40            	dc.b	64
2750  07fb 00            	dc.b	0
2751  07fc 00            	dc.b	0
2752  07fd 00            	dc.b	0
2753  07fe 05            	dc.b	5
2754  07ff 30            	dc.b	48
2755  0800 00            	dc.b	0
2756  0801 00            	dc.b	0
2757  0802 00            	dc.b	0
2758  0803 05            	dc.b	5
2759  0804 30            	dc.b	48
2760  0805 00            	dc.b	0
2761  0806 00            	dc.b	0
2762  0807 00            	dc.b	0
2763  0808 05            	dc.b	5
2764  0809 30            	dc.b	48
2765  080a 00            	dc.b	0
2766  080b 00            	dc.b	0
2767  080c 00            	dc.b	0
2768  080d 06            	dc.b	6
2769  080e 20            	dc.b	32
2770  080f 00            	dc.b	0
2771  0810 00            	dc.b	0
2772  0811 00            	dc.b	0
2773  0812 06            	dc.b	6
2774  0813 20            	dc.b	32
2775  0814 00            	dc.b	0
2776  0815 00            	dc.b	0
2777  0816 00            	dc.b	0
2778  0817 07            	dc.b	7
2779  0818 10            	dc.b	16
2780  0819 00            	dc.b	0
2781  081a 00            	dc.b	0
2782  081b 00            	dc.b	0
2783  081c 07            	dc.b	7
2784  081d 10            	dc.b	16
2785  081e 00            	dc.b	0
2786  081f 00            	dc.b	0
2787  0820 00            	dc.b	0
2788  0821 07            	dc.b	7
2789  0822 10            	dc.b	16
2790  0823 00            	dc.b	0
2791  0824 00            	dc.b	0
2792  0825 00            	dc.b	0
2793  0826 08            	dc.b	8
2794  0827 00            	dc.b	0
2795  0828 00            	dc.b	0
2796  0829 00            	dc.b	0
2797  082a 00            	dc.b	0
2798  082b 08            	dc.b	8
2799  082c 00            	dc.b	0
2800  082d 00            	dc.b	0
2801  082e 00            	dc.b	0
2802  082f 00            	dc.b	0
2803  0830 07            	dc.b	7
2804  0831 10            	dc.b	16
2805  0832 00            	dc.b	0
2806  0833 00            	dc.b	0
2807  0834 00            	dc.b	0
2808  0835 06            	dc.b	6
2809  0836 20            	dc.b	32
2810  0837 00            	dc.b	0
2811  0838 00            	dc.b	0
2812  0839 00            	dc.b	0
2813  083a 06            	dc.b	6
2814  083b 20            	dc.b	32
2815  083c 00            	dc.b	0
2816  083d 00            	dc.b	0
2817  083e 00            	dc.b	0
2818  083f 05            	dc.b	5
2819  0840 30            	dc.b	48
2820  0841 00            	dc.b	0
2821  0842 00            	dc.b	0
2822  0843 00            	dc.b	0
2823  0844 04            	dc.b	4
2824  0845 40            	dc.b	64
2825  0846 00            	dc.b	0
2826  0847 00            	dc.b	0
2827  0848 00            	dc.b	0
2828  0849 03            	dc.b	3
2829  084a 50            	dc.b	80
2830  084b 00            	dc.b	0
2831  084c 00            	dc.b	0
2832  084d 00            	dc.b	0
2833  084e 03            	dc.b	3
2834  084f 50            	dc.b	80
2835  0850 00            	dc.b	0
2836  0851 00            	dc.b	0
2837  0852 00            	dc.b	0
2838  0853 02            	dc.b	2
2839  0854 60            	dc.b	96
2840  0855 00            	dc.b	0
2841  0856 00            	dc.b	0
2842  0857 00            	dc.b	0
2843  0858 01            	dc.b	1
2844  0859 70            	dc.b	112
2845  085a 00            	dc.b	0
2846  085b 00            	dc.b	0
2847  085c 00            	dc.b	0
2848  085d 00            	dc.b	0
2849  085e 80            	dc.b	128
2850  085f 00            	dc.b	0
2851  0860 00            	dc.b	0
2852  0861 00            	dc.b	0
2853  0862 00            	dc.b	0
2854  0863 80            	dc.b	128
2855  0864 00            	dc.b	0
2856  0865 00            	dc.b	0
2857  0866 00            	dc.b	0
2858  0867 00            	dc.b	0
2859  0868 71            	dc.b	113
2860  0869 00            	dc.b	0
2861  086a 00            	dc.b	0
2862  086b 00            	dc.b	0
2863  086c 00            	dc.b	0
2864  086d 62            	dc.b	98
2865  086e 00            	dc.b	0
2866  086f 00            	dc.b	0
2867  0870 00            	dc.b	0
2868  0871 00            	dc.b	0
2869  0872 53            	dc.b	83
2870  0873 00            	dc.b	0
2871  0874 00            	dc.b	0
2872  0875 00            	dc.b	0
2873  0876 00            	dc.b	0
2874  0877 53            	dc.b	83
2875  0878 00            	dc.b	0
2876  0879 00            	dc.b	0
2877  087a 00            	dc.b	0
2878  087b 00            	dc.b	0
2879  087c 44            	dc.b	68
2880  087d 00            	dc.b	0
2881  087e 00            	dc.b	0
2882  087f 00            	dc.b	0
2883  0880 00            	dc.b	0
2884  0881 35            	dc.b	53
2885  0882 00            	dc.b	0
2886  0883 00            	dc.b	0
2887  0884 00            	dc.b	0
2888  0885 00            	dc.b	0
2889  0886 26            	dc.b	38
2890  0887 00            	dc.b	0
2891  0888 00            	dc.b	0
2892  0889 00            	dc.b	0
2893  088a 00            	dc.b	0
2894  088b 26            	dc.b	38
2895  088c 00            	dc.b	0
2896  088d 00            	dc.b	0
2897  088e 00            	dc.b	0
2898  088f 00            	dc.b	0
2899  0890 17            	dc.b	23
2900  0891 00            	dc.b	0
2901  0892 00            	dc.b	0
2902  0893 00            	dc.b	0
2903  0894 00            	dc.b	0
2904  0895 08            	dc.b	8
2905  0896 00            	dc.b	0
2906  0897 00            	dc.b	0
2907  0898 00            	dc.b	0
2908  0899 00            	dc.b	0
2909  089a 07            	dc.b	7
2910  089b 10            	dc.b	16
2911  089c 00            	dc.b	0
2912  089d 00            	dc.b	0
2913  089e 00            	dc.b	0
2914  089f 07            	dc.b	7
2915  08a0 10            	dc.b	16
2916  08a1 00            	dc.b	0
2917  08a2 00            	dc.b	0
2918  08a3 00            	dc.b	0
2919  08a4 06            	dc.b	6
2920  08a5 20            	dc.b	32
2921  08a6 00            	dc.b	0
2922  08a7 00            	dc.b	0
2923  08a8 00            	dc.b	0
2924  08a9 05            	dc.b	5
2925  08aa 30            	dc.b	48
2926  08ab 00            	dc.b	0
2927  08ac 00            	dc.b	0
2928  08ad 00            	dc.b	0
2929  08ae 04            	dc.b	4
2930  08af 40            	dc.b	64
2931  08b0 00            	dc.b	0
2932  08b1 00            	dc.b	0
2933  08b2 00            	dc.b	0
2934  08b3 04            	dc.b	4
2935  08b4 40            	dc.b	64
2936  08b5 00            	dc.b	0
2937  08b6 00            	dc.b	0
2938  08b7 00            	dc.b	0
2939  08b8 03            	dc.b	3
2940  08b9 50            	dc.b	80
2941  08ba 00            	dc.b	0
2942  08bb 00            	dc.b	0
2943  08bc 00            	dc.b	0
2944  08bd 02            	dc.b	2
2945  08be 60            	dc.b	96
2946  08bf 00            	dc.b	0
2947  08c0 00            	dc.b	0
2948  08c1 00            	dc.b	0
2949  08c2 01            	dc.b	1
2950  08c3 70            	dc.b	112
2951  08c4 00            	dc.b	0
2952  08c5 00            	dc.b	0
2953  08c6 00            	dc.b	0
2954  08c7 01            	dc.b	1
2955  08c8 70            	dc.b	112
2956  08c9 00            	dc.b	0
2957  08ca 00            	dc.b	0
2958  08cb 00            	dc.b	0
2959  08cc 00            	dc.b	0
2960  08cd 80            	dc.b	128
2961  08ce 00            	dc.b	0
2962  08cf 00            	dc.b	0
2963  08d0 00            	dc.b	0
2964  08d1 00            	dc.b	0
2965  08d2 71            	dc.b	113
2966  08d3 00            	dc.b	0
2967  08d4 00            	dc.b	0
2968  08d5 00            	dc.b	0
2969  08d6 00            	dc.b	0
2970  08d7 62            	dc.b	98
2971  08d8 00            	dc.b	0
2972  08d9 00            	dc.b	0
2973  08da 00            	dc.b	0
2974  08db 00            	dc.b	0
2975  08dc 62            	dc.b	98
2976  08dd 00            	dc.b	0
2977  08de 00            	dc.b	0
2978  08df 00            	dc.b	0
2979  08e0 00            	dc.b	0
2980  08e1 53            	dc.b	83
2981  08e2 00            	dc.b	0
2982  08e3 00            	dc.b	0
2983  08e4 00            	dc.b	0
2984  08e5 00            	dc.b	0
2985  08e6 44            	dc.b	68
2986  08e7 00            	dc.b	0
2987  08e8 00            	dc.b	0
2988  08e9 00            	dc.b	0
2989  08ea 00            	dc.b	0
2990  08eb 35            	dc.b	53
2991  08ec 00            	dc.b	0
2992  08ed 00            	dc.b	0
2993  08ee 00            	dc.b	0
2994  08ef 00            	dc.b	0
2995  08f0 35            	dc.b	53
2996  08f1 00            	dc.b	0
2997  08f2 00            	dc.b	0
2998  08f3 00            	dc.b	0
2999  08f4 00            	dc.b	0
3000  08f5 26            	dc.b	38
3001  08f6 00            	dc.b	0
3002  08f7 00            	dc.b	0
3003  08f8 00            	dc.b	0
3004  08f9 00            	dc.b	0
3005  08fa 17            	dc.b	23
3006  08fb 00            	dc.b	0
3007  08fc 00            	dc.b	0
3008  08fd 00            	dc.b	0
3009  08fe 00            	dc.b	0
3010  08ff 08            	dc.b	8
3043                     ; 359 static void FPGA_WriteWaveTable(void)
3043                     ; 360 {
3044                     	switch	.text
3045  01db               L542f_FPGA_WriteWaveTable:
3047  01db 89            	pushw	x
3048       00000002      OFST:	set	2
3051                     ; 363 	SWI2C_WriteByte(FPGA_ADDRESS, 0x4A, 0x25);
3053  01dc 4b25          	push	#37
3054  01de ae004a        	ldw	x,#74
3055  01e1 a6ba          	ld	a,#186
3056  01e3 95            	ld	xh,a
3057  01e4 8dc602c6      	callf	f_SWI2C_WriteByte
3059  01e8 84            	pop	a
3060                     ; 364 	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x01);
3062  01e9 4b01          	push	#1
3063  01eb ae00c6        	ldw	x,#198
3064  01ee a6ba          	ld	a,#186
3065  01f0 95            	ld	xh,a
3066  01f1 8dc602c6      	callf	f_SWI2C_WriteByte
3068  01f5 84            	pop	a
3069                     ; 365 	for (i = 0; i < sizeof(wave_table); i++)
3071  01f6 5f            	clrw	x
3072  01f7 1f01          	ldw	(OFST-1,sp),x
3073  01f9               L362:
3074                     ; 367 		SWI2C_WriteByte(FPGA_ADDRESS, 0xC7, wave_table[i]);
3076  01f9 1e01          	ldw	x,(OFST-1,sp)
3077  01fb d60400        	ld	a,(L342_wave_table,x)
3078  01fe 88            	push	a
3079  01ff ae00c7        	ldw	x,#199
3080  0202 a6ba          	ld	a,#186
3081  0204 95            	ld	xh,a
3082  0205 8dc602c6      	callf	f_SWI2C_WriteByte
3084  0209 84            	pop	a
3085                     ; 365 	for (i = 0; i < sizeof(wave_table); i++)
3087  020a 1e01          	ldw	x,(OFST-1,sp)
3088  020c 1c0001        	addw	x,#1
3089  020f 1f01          	ldw	(OFST-1,sp),x
3092  0211 1e01          	ldw	x,(OFST-1,sp)
3093  0213 a30500        	cpw	x,#1280
3094  0216 25e1          	jrult	L362
3095                     ; 369 	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x02);
3097  0218 4b02          	push	#2
3098  021a ae00c6        	ldw	x,#198
3099  021d a6ba          	ld	a,#186
3100  021f 95            	ld	xh,a
3101  0220 8dc602c6      	callf	f_SWI2C_WriteByte
3103  0224 84            	pop	a
3104                     ; 370 	SWI2C_WriteByte(FPGA_ADDRESS, 0xE0, 0x11);
3106  0225 4b11          	push	#17
3107  0227 ae00e0        	ldw	x,#224
3108  022a a6ba          	ld	a,#186
3109  022c 95            	ld	xh,a
3110  022d 8dc602c6      	callf	f_SWI2C_WriteByte
3112  0231 84            	pop	a
3113                     ; 371 }
3116  0232 85            	popw	x
3117  0233 87            	retf
3158                     ; 374 u8 SWI2C_TestDevice(u8 addr)
3158                     ; 375 {
3159                     	switch	.text
3160  0234               f_SWI2C_TestDevice:
3162  0234 88            	push	a
3163  0235 88            	push	a
3164       00000001      OFST:	set	1
3167                     ; 377 	_SWI2C_Start();
3169  0236 8d0d000d      	callf	L17f__SWI2C_Start
3171                     ; 378 	result = _SWI2C_SendByte(addr);
3173  023a 7b02          	ld	a,(OFST+1,sp)
3174  023c 8d650065      	callf	L511f__SWI2C_SendByte
3176  0240 6b01          	ld	(OFST+0,sp),a
3177                     ; 379 	_SWI2C_Stop();
3179  0242 8d3e003e      	callf	L301f__SWI2C_Stop
3181                     ; 381 	return result;
3183  0246 7b01          	ld	a,(OFST+0,sp)
3186  0248 85            	popw	x
3187  0249 87            	retf
3236                     ; 384 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
3236                     ; 385 {
3237                     	switch	.text
3238  024a               f_SWI2C_ReadByte:
3240  024a 89            	pushw	x
3241       00000000      OFST:	set	0
3244                     ; 386 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
3246  024b 1e06          	ldw	x,(OFST+6,sp)
3247  024d 89            	pushw	x
3248  024e 4b01          	push	#1
3249  0250 7b05          	ld	a,(OFST+5,sp)
3250  0252 97            	ld	xl,a
3251  0253 7b04          	ld	a,(OFST+4,sp)
3252  0255 95            	ld	xh,a
3253  0256 8d5e025e      	callf	f_SWI2C_ReadBytes
3255  025a 5b03          	addw	sp,#3
3258  025c 85            	popw	x
3259  025d 87            	retf
3325                     ; 389 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
3325                     ; 390 {	
3326                     	switch	.text
3327  025e               f_SWI2C_ReadBytes:
3329  025e 89            	pushw	x
3330  025f 88            	push	a
3331       00000001      OFST:	set	1
3334                     ; 392 	_SWI2C_Start();
3336  0260 8d0d000d      	callf	L17f__SWI2C_Start
3338                     ; 393 	result = _SWI2C_SendByte(addr);
3340  0264 7b02          	ld	a,(OFST+1,sp)
3341  0266 8d650065      	callf	L511f__SWI2C_SendByte
3343  026a 6b01          	ld	(OFST+0,sp),a
3344                     ; 394 	if (result == IIC_FAIL)
3346  026c 0d01          	tnz	(OFST+0,sp)
3347  026e 2608          	jrne	L753
3348                     ; 396 		_SWI2C_Stop();
3350  0270 8d3e003e      	callf	L301f__SWI2C_Stop
3352                     ; 397 		return result;
3354  0274 7b01          	ld	a,(OFST+0,sp)
3356  0276 2012          	jra	L23
3357  0278               L753:
3358                     ; 399 	result = _SWI2C_SendByte(subaddr);
3360  0278 7b03          	ld	a,(OFST+2,sp)
3361  027a 8d650065      	callf	L511f__SWI2C_SendByte
3363  027e 6b01          	ld	(OFST+0,sp),a
3364                     ; 400 	if (result == IIC_FAIL)
3366  0280 0d01          	tnz	(OFST+0,sp)
3367  0282 2609          	jrne	L163
3368                     ; 402 		_SWI2C_Stop();
3370  0284 8d3e003e      	callf	L301f__SWI2C_Stop
3372                     ; 403 		return result;
3374  0288 7b01          	ld	a,(OFST+0,sp)
3376  028a               L23:
3378  028a 5b03          	addw	sp,#3
3379  028c 87            	retf
3380  028d               L163:
3381                     ; 405 	_SWI2C_Start();
3383  028d 8d0d000d      	callf	L17f__SWI2C_Start
3385                     ; 406 	result = _SWI2C_SendByte(addr|0x01);
3387  0291 7b02          	ld	a,(OFST+1,sp)
3388  0293 aa01          	or	a,#1
3389  0295 8d650065      	callf	L511f__SWI2C_SendByte
3391  0299 6b01          	ld	(OFST+0,sp),a
3392                     ; 407 	if (result == IIC_FAIL)
3394  029b 0d01          	tnz	(OFST+0,sp)
3395  029d 2618          	jrne	L763
3396                     ; 409 		_SWI2C_Stop();
3398  029f 8d3e003e      	callf	L301f__SWI2C_Stop
3400                     ; 410 		return result;
3402  02a3 7b01          	ld	a,(OFST+0,sp)
3404  02a5 20e3          	jra	L23
3405  02a7               L563:
3406                     ; 414 		*p_data = _SWI2C_ReceiveByte(number);
3408  02a7 7b07          	ld	a,(OFST+6,sp)
3409  02a9 8d1a011a      	callf	L751f__SWI2C_ReceiveByte
3411  02ad 1e08          	ldw	x,(OFST+7,sp)
3412  02af f7            	ld	(x),a
3413                     ; 415 		p_data++;
3415  02b0 1e08          	ldw	x,(OFST+7,sp)
3416  02b2 1c0001        	addw	x,#1
3417  02b5 1f08          	ldw	(OFST+7,sp),x
3418  02b7               L763:
3419                     ; 412 	while (number--)
3421  02b7 7b07          	ld	a,(OFST+6,sp)
3422  02b9 0a07          	dec	(OFST+6,sp)
3423  02bb 4d            	tnz	a
3424  02bc 26e9          	jrne	L563
3425                     ; 417 	_SWI2C_Stop();
3427  02be 8d3e003e      	callf	L301f__SWI2C_Stop
3429                     ; 419 	return IIC_OK;
3431  02c2 a601          	ld	a,#1
3433  02c4 20c4          	jra	L23
3479                     ; 422 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
3479                     ; 423 {	
3480                     	switch	.text
3481  02c6               f_SWI2C_WriteByte:
3483  02c6 89            	pushw	x
3484       00000000      OFST:	set	0
3487                     ; 424 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
3489  02c7 96            	ldw	x,sp
3490  02c8 1c0006        	addw	x,#OFST+6
3491  02cb 89            	pushw	x
3492  02cc 4b01          	push	#1
3493  02ce 7b05          	ld	a,(OFST+5,sp)
3494  02d0 97            	ld	xl,a
3495  02d1 7b04          	ld	a,(OFST+4,sp)
3496  02d3 95            	ld	xh,a
3497  02d4 8d3b033b      	callf	f_SWI2C_WriteBytes
3499  02d8 5b03          	addw	sp,#3
3502  02da 85            	popw	x
3503  02db 87            	retf
3558                     ; 427 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
3558                     ; 428 {
3559                     	switch	.text
3560  02dc               f_SWI2C_Write2Byte:
3562  02dc 89            	pushw	x
3563  02dd 88            	push	a
3564       00000001      OFST:	set	1
3567                     ; 430 	_SWI2C_Start();                              
3569  02de 8d0d000d      	callf	L17f__SWI2C_Start
3571                     ; 431 	result = _SWI2C_SendByte(addr);  
3573  02e2 7b02          	ld	a,(OFST+1,sp)
3574  02e4 8d650065      	callf	L511f__SWI2C_SendByte
3576  02e8 6b01          	ld	(OFST+0,sp),a
3577                     ; 432 	if (result == IIC_FAIL)
3579  02ea 0d01          	tnz	(OFST+0,sp)
3580  02ec 2608          	jrne	L534
3581                     ; 434 		_SWI2C_Stop();
3583  02ee 8d3e003e      	callf	L301f__SWI2C_Stop
3585                     ; 435 		return result;
3587  02f2 7b01          	ld	a,(OFST+0,sp)
3589  02f4 2012          	jra	L04
3590  02f6               L534:
3591                     ; 437 	result = _SWI2C_SendByte(subaddr);     
3593  02f6 7b03          	ld	a,(OFST+2,sp)
3594  02f8 8d650065      	callf	L511f__SWI2C_SendByte
3596  02fc 6b01          	ld	(OFST+0,sp),a
3597                     ; 438 	if (result == IIC_FAIL)
3599  02fe 0d01          	tnz	(OFST+0,sp)
3600  0300 2609          	jrne	L734
3601                     ; 440 		_SWI2C_Stop();
3603  0302 8d3e003e      	callf	L301f__SWI2C_Stop
3605                     ; 441 		return result;
3607  0306 7b01          	ld	a,(OFST+0,sp)
3609  0308               L04:
3611  0308 5b03          	addw	sp,#3
3612  030a 87            	retf
3613  030b               L734:
3614                     ; 443 	result = _SWI2C_SendByte(data>>8);     
3616  030b 7b07          	ld	a,(OFST+6,sp)
3617  030d 8d650065      	callf	L511f__SWI2C_SendByte
3619  0311 6b01          	ld	(OFST+0,sp),a
3620                     ; 444 	if (result == IIC_FAIL)
3622  0313 0d01          	tnz	(OFST+0,sp)
3623  0315 2608          	jrne	L144
3624                     ; 446 		_SWI2C_Stop();
3626  0317 8d3e003e      	callf	L301f__SWI2C_Stop
3628                     ; 447 		return result;
3630  031b 7b01          	ld	a,(OFST+0,sp)
3632  031d 20e9          	jra	L04
3633  031f               L144:
3634                     ; 449 	result = _SWI2C_SendByte(data);   
3636  031f 7b08          	ld	a,(OFST+7,sp)
3637  0321 8d650065      	callf	L511f__SWI2C_SendByte
3639  0325 6b01          	ld	(OFST+0,sp),a
3640                     ; 450 	if (result == IIC_FAIL)
3642  0327 0d01          	tnz	(OFST+0,sp)
3643  0329 2608          	jrne	L344
3644                     ; 452 		_SWI2C_Stop();
3646  032b 8d3e003e      	callf	L301f__SWI2C_Stop
3648                     ; 453 		return result;
3650  032f 7b01          	ld	a,(OFST+0,sp)
3652  0331 20d5          	jra	L04
3653  0333               L344:
3654                     ; 455 	_SWI2C_Stop();    
3656  0333 8d3e003e      	callf	L301f__SWI2C_Stop
3658                     ; 456 	return IIC_OK;
3660  0337 a601          	ld	a,#1
3662  0339 20cd          	jra	L04
3727                     ; 459 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
3727                     ; 460 {
3728                     	switch	.text
3729  033b               f_SWI2C_WriteBytes:
3731  033b 89            	pushw	x
3732  033c 88            	push	a
3733       00000001      OFST:	set	1
3736                     ; 462 	_SWI2C_Start();
3738  033d 8d0d000d      	callf	L17f__SWI2C_Start
3740                     ; 463 	result = _SWI2C_SendByte(addr);
3742  0341 7b02          	ld	a,(OFST+1,sp)
3743  0343 8d650065      	callf	L511f__SWI2C_SendByte
3745  0347 6b01          	ld	(OFST+0,sp),a
3746                     ; 464 	if (result == IIC_FAIL)
3748  0349 0d01          	tnz	(OFST+0,sp)
3749  034b 2608          	jrne	L374
3750                     ; 466 		_SWI2C_Stop();
3752  034d 8d3e003e      	callf	L301f__SWI2C_Stop
3754                     ; 467 		return result;
3756  0351 7b01          	ld	a,(OFST+0,sp)
3758  0353 2012          	jra	L44
3759  0355               L374:
3760                     ; 469 	result = _SWI2C_SendByte(subaddr);
3762  0355 7b03          	ld	a,(OFST+2,sp)
3763  0357 8d650065      	callf	L511f__SWI2C_SendByte
3765  035b 6b01          	ld	(OFST+0,sp),a
3766                     ; 470 	if (result == IIC_FAIL)
3768  035d 0d01          	tnz	(OFST+0,sp)
3769  035f 2625          	jrne	L105
3770                     ; 472 		_SWI2C_Stop();
3772  0361 8d3e003e      	callf	L301f__SWI2C_Stop
3774                     ; 473 		return result;
3776  0365 7b01          	ld	a,(OFST+0,sp)
3778  0367               L44:
3780  0367 5b03          	addw	sp,#3
3781  0369 87            	retf
3782  036a               L774:
3783                     ; 477 		result = _SWI2C_SendByte(*p_data);
3785  036a 1e08          	ldw	x,(OFST+7,sp)
3786  036c f6            	ld	a,(x)
3787  036d 8d650065      	callf	L511f__SWI2C_SendByte
3789  0371 6b01          	ld	(OFST+0,sp),a
3790                     ; 478 		if (result == IIC_FAIL)
3792  0373 0d01          	tnz	(OFST+0,sp)
3793  0375 2608          	jrne	L505
3794                     ; 480 		_SWI2C_Stop();
3796  0377 8d3e003e      	callf	L301f__SWI2C_Stop
3798                     ; 481 		return result;
3800  037b 7b01          	ld	a,(OFST+0,sp)
3802  037d 20e8          	jra	L44
3803  037f               L505:
3804                     ; 483 		p_data++;
3806  037f 1e08          	ldw	x,(OFST+7,sp)
3807  0381 1c0001        	addw	x,#1
3808  0384 1f08          	ldw	(OFST+7,sp),x
3809  0386               L105:
3810                     ; 475 	while (number--)
3812  0386 7b07          	ld	a,(OFST+6,sp)
3813  0388 0a07          	dec	(OFST+6,sp)
3814  038a 4d            	tnz	a
3815  038b 26dd          	jrne	L774
3816                     ; 485 	_SWI2C_Stop();
3818  038d 8d3e003e      	callf	L301f__SWI2C_Stop
3820                     ; 486 	return IIC_OK;
3822  0391 a601          	ld	a,#1
3824  0393 20d2          	jra	L44
3852                     ; 489 void SWI2C_Init(void)
3852                     ; 490 {
3853                     	switch	.text
3854  0395               f_SWI2C_Init:
3858                     ; 491 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
3860  0395 4bb0          	push	#176
3861  0397 4b10          	push	#16
3862  0399 ae5005        	ldw	x,#20485
3863  039c 8d000000      	callf	f_GPIO_Init
3865  03a0 85            	popw	x
3866                     ; 492 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
3868  03a1 4bb0          	push	#176
3869  03a3 4b20          	push	#32
3870  03a5 ae5005        	ldw	x,#20485
3871  03a8 8d000000      	callf	f_GPIO_Init
3873  03ac 85            	popw	x
3874                     ; 493 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
3876  03ad 4b10          	push	#16
3877  03af ae5005        	ldw	x,#20485
3878  03b2 8d000000      	callf	f_GPIO_WriteHigh
3880  03b6 84            	pop	a
3881                     ; 494 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
3883  03b7 4b20          	push	#32
3884  03b9 ae5005        	ldw	x,#20485
3885  03bc 8d000000      	callf	f_GPIO_WriteHigh
3887  03c0 84            	pop	a
3888                     ; 496 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
3890  03c1 4bf0          	push	#240
3891  03c3 4b20          	push	#32
3892  03c5 ae500a        	ldw	x,#20490
3893  03c8 8d000000      	callf	f_GPIO_Init
3895  03cc 85            	popw	x
3896                     ; 498 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
3898  03cd 4bf0          	push	#240
3899  03cf 4b10          	push	#16
3900  03d1 ae500a        	ldw	x,#20490
3901  03d4 8d000000      	callf	f_GPIO_Init
3903  03d8 85            	popw	x
3904                     ; 499 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
3906  03d9 4bf0          	push	#240
3907  03db 4b01          	push	#1
3908  03dd ae5005        	ldw	x,#20485
3909  03e0 8d000000      	callf	f_GPIO_Init
3911  03e4 85            	popw	x
3912                     ; 501 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
3914  03e5 4bf0          	push	#240
3915  03e7 4b01          	push	#1
3916  03e9 ae5014        	ldw	x,#20500
3917  03ec 8d000000      	callf	f_GPIO_Init
3919  03f0 85            	popw	x
3920                     ; 502 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
3922  03f1 4be0          	push	#224
3923  03f3 4b08          	push	#8
3924  03f5 ae500f        	ldw	x,#20495
3925  03f8 8d000000      	callf	f_GPIO_Init
3927  03fc 85            	popw	x
3928                     ; 504 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
3930  03fd 4bf0          	push	#240
3931  03ff 4b40          	push	#64
3932  0401 ae5005        	ldw	x,#20485
3933  0404 8d000000      	callf	f_GPIO_Init
3935  0408 85            	popw	x
3936                     ; 506 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
3938  0409 4be0          	push	#224
3939  040b 4b80          	push	#128
3940  040d ae500a        	ldw	x,#20490
3941  0410 8d000000      	callf	f_GPIO_Init
3943  0414 85            	popw	x
3944                     ; 507 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
3946  0415 4bf0          	push	#240
3947  0417 4b40          	push	#64
3948  0419 ae500a        	ldw	x,#20490
3949  041c 8d000000      	callf	f_GPIO_Init
3951  0420 85            	popw	x
3952                     ; 508 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
3954  0421 4be0          	push	#224
3955  0423 4b01          	push	#1
3956  0425 ae501e        	ldw	x,#20510
3957  0428 8d000000      	callf	f_GPIO_Init
3959  042c 85            	popw	x
3960                     ; 510 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
3962  042d 4b00          	push	#0
3963  042f ae0fff        	ldw	x,#4095
3964  0432 89            	pushw	x
3965  0433 4b00          	push	#0
3966  0435 5f            	clrw	x
3967  0436 8d000000      	callf	f_TIM1_TimeBaseInit
3969  043a 5b04          	addw	sp,#4
3970                     ; 511 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
3970                     ; 512 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
3970                     ; 513 	           TIM1_OCNIDLESTATE_RESET);
3972  043c 4b00          	push	#0
3973  043e 4b55          	push	#85
3974  0440 4b00          	push	#0
3975  0442 4b22          	push	#34
3976  0444 5f            	clrw	x
3977  0445 89            	pushw	x
3978  0446 4b00          	push	#0
3979  0448 ae0011        	ldw	x,#17
3980  044b a670          	ld	a,#112
3981  044d 95            	ld	xh,a
3982  044e 8d000000      	callf	f_TIM1_OC1Init
3984  0452 5b07          	addw	sp,#7
3985                     ; 514 	TIM1_Cmd(ENABLE);
3987  0454 a601          	ld	a,#1
3988  0456 8d000000      	callf	f_TIM1_Cmd
3990                     ; 515 	TIM1_CtrlPWMOutputs(ENABLE);
3992  045a a601          	ld	a,#1
3993  045c 8d000000      	callf	f_TIM1_CtrlPWMOutputs
3995                     ; 516 }
3998  0460 87            	retf
4086                     	switch	.const
4087  0900               L25:
4088  0900 00000001      	dc.l	1
4089                     ; 518 void SWI2C_Update(void)
4089                     ; 519 {	
4090                     	switch	.text
4091  0461               f_SWI2C_Update:
4093  0461 5205          	subw	sp,#5
4094       00000005      OFST:	set	5
4097                     ; 520 	if (Backlight_on_timer == TIMER_EXPIRED)
4099  0463 ae0004        	ldw	x,#L5_Backlight_on_timer
4100  0466 8d000000      	callf	d_ltor
4102  046a ae0900        	ldw	x,#L25
4103  046d 8d000000      	callf	d_lcmp
4105  0471 2616          	jrne	L545
4106                     ; 522 		SET_BACKLIGHT_ON();
4108  0473 4b80          	push	#128
4109  0475 ae500a        	ldw	x,#20490
4110  0478 8d000000      	callf	f_GPIO_WriteLow
4112  047c 84            	pop	a
4113                     ; 523 		Backlight_on_timer = TIMER_STOPPED;
4115  047d ae0000        	ldw	x,#0
4116  0480 cf0006        	ldw	L5_Backlight_on_timer+2,x
4117  0483 ae0000        	ldw	x,#0
4118  0486 cf0004        	ldw	L5_Backlight_on_timer,x
4119  0489               L545:
4120                     ; 527 	if (Power_status && !I2C_stop)
4122  0489 725d0011      	tnz	L51_Power_status
4123  048d 2604          	jrne	L45
4124  048f ac620662      	jpf	L745
4125  0493               L45:
4127  0493 725d0012      	tnz	L32_I2C_stop
4128  0497 2704          	jreq	L65
4129  0499 ac620662      	jpf	L745
4130  049d               L65:
4131                     ; 529 		IT6802_fsm();
4133  049d 8d000000      	callf	f_IT6802_fsm
4135                     ; 531 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
4137  04a1 ae0000        	ldw	x,#L3_frc_update_timer
4138  04a4 8d000000      	callf	d_ltor
4140  04a8 ae0900        	ldw	x,#L25
4141  04ab 8d000000      	callf	d_lcmp
4143  04af 265f          	jrne	L155
4145  04b1 725d0000      	tnz	L52_Have_FRC
4146  04b5 2759          	jreq	L155
4147                     ; 534 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
4149  04b7 96            	ldw	x,sp
4150  04b8 1c0004        	addw	x,#OFST-1
4151  04bb 89            	pushw	x
4152  04bc ae0018        	ldw	x,#24
4153  04bf a622          	ld	a,#34
4154  04c1 95            	ld	xh,a
4155  04c2 8d4a024a      	callf	f_SWI2C_ReadByte
4157  04c6 85            	popw	x
4158                     ; 535 			if (read_LVDS_mode != LVDS_mode)
4160  04c7 7b04          	ld	a,(OFST-1,sp)
4161  04c9 c10010        	cp	a,L31_LVDS_mode
4162  04cc 270e          	jreq	L355
4163                     ; 537 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
4165  04ce 3b0010        	push	L31_LVDS_mode
4166  04d1 ae0018        	ldw	x,#24
4167  04d4 a622          	ld	a,#34
4168  04d6 95            	ld	xh,a
4169  04d7 8dc602c6      	callf	f_SWI2C_WriteByte
4171  04db 84            	pop	a
4172  04dc               L355:
4173                     ; 539 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
4175  04dc 96            	ldw	x,sp
4176  04dd 1c0005        	addw	x,#OFST+0
4177  04e0 89            	pushw	x
4178  04e1 ae000a        	ldw	x,#10
4179  04e4 a622          	ld	a,#34
4180  04e6 95            	ld	xh,a
4181  04e7 8d4a024a      	callf	f_SWI2C_ReadByte
4183  04eb 85            	popw	x
4184                     ; 540 			if (read_MFC != 0)
4186  04ec 0d05          	tnz	(OFST+0,sp)
4187  04ee 2714          	jreq	L555
4188                     ; 542 				IR_DelayNMiliseconds(50);
4190  04f0 ae0032        	ldw	x,#50
4191  04f3 8d000000      	callf	f_IR_DelayNMiliseconds
4193                     ; 543 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
4195  04f7 4b00          	push	#0
4196  04f9 ae000a        	ldw	x,#10
4197  04fc a622          	ld	a,#34
4198  04fe 95            	ld	xh,a
4199  04ff 8dc602c6      	callf	f_SWI2C_WriteByte
4201  0503 84            	pop	a
4202  0504               L555:
4203                     ; 545 			frc_update_timer = FRC_UPDATE_TIME;
4205  0504 ae01f5        	ldw	x,#501
4206  0507 cf0002        	ldw	L3_frc_update_timer+2,x
4207  050a ae0000        	ldw	x,#0
4208  050d cf0000        	ldw	L3_frc_update_timer,x
4209  0510               L155:
4210                     ; 549 		if (secret_detect_timer == TIMER_EXPIRED)
4212  0510 ae0008        	ldw	x,#L7_secret_detect_timer
4213  0513 8d000000      	callf	d_ltor
4215  0517 ae0900        	ldw	x,#L25
4216  051a 8d000000      	callf	d_lcmp
4218  051e 2704aca605a6  	jrne	L755
4219                     ; 552 			SWI2C_ReadByte(FPGA_ADDRESS, 0x19, &secret_status);
4221  0524 96            	ldw	x,sp
4222  0525 1c0001        	addw	x,#OFST-4
4223  0528 89            	pushw	x
4224  0529 ae0019        	ldw	x,#25
4225  052c a6ba          	ld	a,#186
4226  052e 95            	ld	xh,a
4227  052f 8d4a024a      	callf	f_SWI2C_ReadByte
4229  0533 85            	popw	x
4230                     ; 553 			if ((secret_status&0x03) == 1)
4232  0534 7b01          	ld	a,(OFST-4,sp)
4233  0536 a403          	and	a,#3
4234  0538 a101          	cp	a,#1
4235  053a 265e          	jrne	L165
4236                     ; 555 				SWI2C_ReadBytes(FPGA_ADDRESS, 0x10, 4, secret_key);
4238  053c 96            	ldw	x,sp
4239  053d 1c0002        	addw	x,#OFST-3
4240  0540 89            	pushw	x
4241  0541 4b04          	push	#4
4242  0543 ae0010        	ldw	x,#16
4243  0546 a6ba          	ld	a,#186
4244  0548 95            	ld	xh,a
4245  0549 8d5e025e      	callf	f_SWI2C_ReadBytes
4247  054d 5b03          	addw	sp,#3
4248                     ; 556 				secret_key[0] = secret_key_table1[secret_key[0]];
4250  054f 7b02          	ld	a,(OFST-3,sp)
4251  0551 5f            	clrw	x
4252  0552 97            	ld	xl,a
4253  0553 d60000        	ld	a,(L72_secret_key_table1,x)
4254  0556 6b02          	ld	(OFST-3,sp),a
4255                     ; 557 				secret_key[1] = secret_key_table2[secret_key[1]];
4257  0558 7b03          	ld	a,(OFST-2,sp)
4258  055a 5f            	clrw	x
4259  055b 97            	ld	xl,a
4260  055c d60100        	ld	a,(L13_secret_key_table2,x)
4261  055f 6b03          	ld	(OFST-2,sp),a
4262                     ; 558 				secret_key[2] = secret_key_table3[secret_key[2]];
4264  0561 7b04          	ld	a,(OFST-1,sp)
4265  0563 5f            	clrw	x
4266  0564 97            	ld	xl,a
4267  0565 d60200        	ld	a,(L33_secret_key_table3,x)
4268  0568 6b04          	ld	(OFST-1,sp),a
4269                     ; 559 				secret_key[3] = secret_key_table4[secret_key[3]];
4271  056a 7b05          	ld	a,(OFST+0,sp)
4272  056c 5f            	clrw	x
4273  056d 97            	ld	xl,a
4274  056e d60300        	ld	a,(L53_secret_key_table4,x)
4275  0571 6b05          	ld	(OFST+0,sp),a
4276                     ; 560 				SWI2C_WriteBytes(FPGA_ADDRESS, 0x14, 4, secret_key);
4278  0573 96            	ldw	x,sp
4279  0574 1c0002        	addw	x,#OFST-3
4280  0577 89            	pushw	x
4281  0578 4b04          	push	#4
4282  057a ae0014        	ldw	x,#20
4283  057d a6ba          	ld	a,#186
4284  057f 95            	ld	xh,a
4285  0580 8d3b033b      	callf	f_SWI2C_WriteBytes
4287  0584 5b03          	addw	sp,#3
4288                     ; 561 				secret_status = secret_status|0x02;
4290  0586 7b01          	ld	a,(OFST-4,sp)
4291  0588 aa02          	or	a,#2
4292  058a 6b01          	ld	(OFST-4,sp),a
4293                     ; 562 				SWI2C_WriteByte(FPGA_ADDRESS, 0x19, secret_status);
4295  058c 7b01          	ld	a,(OFST-4,sp)
4296  058e 88            	push	a
4297  058f ae0019        	ldw	x,#25
4298  0592 a6ba          	ld	a,#186
4299  0594 95            	ld	xh,a
4300  0595 8dc602c6      	callf	f_SWI2C_WriteByte
4302  0599 84            	pop	a
4303  059a               L165:
4304                     ; 564 			secret_detect_timer = SECRET_DETECT_TIME;
4306  059a ae01f5        	ldw	x,#501
4307  059d cf000a        	ldw	L7_secret_detect_timer+2,x
4308  05a0 ae0000        	ldw	x,#0
4309  05a3 cf0008        	ldw	L7_secret_detect_timer,x
4310  05a6               L755:
4311                     ; 567 		if (signal_detect_timer == TIMER_EXPIRED)
4313  05a6 ae000c        	ldw	x,#L11_signal_detect_timer
4314  05a9 8d000000      	callf	d_ltor
4316  05ad ae0900        	ldw	x,#L25
4317  05b0 8d000000      	callf	d_lcmp
4319  05b4 2704          	jreq	L06
4320  05b6 ac620662      	jpf	L745
4321  05ba               L06:
4322                     ; 570 			u8 current_signal_status = SWI2C_GetSignalStatus();
4324  05ba 8db901b9      	callf	L122f_SWI2C_GetSignalStatus
4326  05be 6b05          	ld	(OFST+0,sp),a
4327                     ; 572 			signal_detect_timer = SINGNAL_TETECT_TIME;
4329  05c0 ae01f5        	ldw	x,#501
4330  05c3 cf000e        	ldw	L11_signal_detect_timer+2,x
4331  05c6 ae0000        	ldw	x,#0
4332  05c9 cf000c        	ldw	L11_signal_detect_timer,x
4333                     ; 573 			if (current_signal_status != signal_status)
4335  05cc 7b05          	ld	a,(OFST+0,sp)
4336  05ce c10002        	cp	a,L71_signal_status
4337  05d1 276f          	jreq	L565
4338                     ; 575 				singal_change_count++;
4340  05d3 725c0001      	inc	L12_singal_change_count
4341                     ; 576 				if (singal_change_count > SIGNAL_STABLE_COUNT)
4343  05d7 c60001        	ld	a,L12_singal_change_count
4344  05da a104          	cp	a,#4
4345  05dc 2568          	jrult	L575
4346                     ; 578 					signal_status = current_signal_status;
4348  05de 7b05          	ld	a,(OFST+0,sp)
4349  05e0 c70002        	ld	L71_signal_status,a
4350                     ; 579 					if (signal_status)
4352  05e3 725d0002      	tnz	L71_signal_status
4353  05e7 2726          	jreq	L175
4354                     ; 582 						GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
4356  05e9 4b08          	push	#8
4357  05eb ae500f        	ldw	x,#20495
4358  05ee 8d000000      	callf	f_GPIO_WriteHigh
4360  05f2 84            	pop	a
4361                     ; 583 						SWI2C_ResetFPGA();
4363  05f3 8dc606c6      	callf	f_SWI2C_ResetFPGA
4365                     ; 584 						SET_VPANEL_ON();
4367  05f7 4b01          	push	#1
4368  05f9 ae501e        	ldw	x,#20510
4369  05fc 8d000000      	callf	f_GPIO_WriteHigh
4371  0600 84            	pop	a
4372                     ; 585 						Backlight_on_timer = BACKLIGHT_DELAY_TIME;
4374  0601 ae1389        	ldw	x,#5001
4375  0604 cf0006        	ldw	L5_Backlight_on_timer+2,x
4376  0607 ae0000        	ldw	x,#0
4377  060a cf0004        	ldw	L5_Backlight_on_timer,x
4379  060d 2037          	jra	L575
4380  060f               L175:
4381                     ; 589 						Backlight_on_timer = TIMER_STOPPED;
4383  060f ae0000        	ldw	x,#0
4384  0612 cf0006        	ldw	L5_Backlight_on_timer+2,x
4385  0615 ae0000        	ldw	x,#0
4386  0618 cf0004        	ldw	L5_Backlight_on_timer,x
4387                     ; 590 						SET_BACKLIGHT_OFF();
4389  061b 4b80          	push	#128
4390  061d ae500a        	ldw	x,#20490
4391  0620 8d000000      	callf	f_GPIO_WriteHigh
4393  0624 84            	pop	a
4394                     ; 591 						IR_DelayNMiliseconds(200);
4396  0625 ae00c8        	ldw	x,#200
4397  0628 8d000000      	callf	f_IR_DelayNMiliseconds
4399                     ; 592 						SET_VPANEL_OFF();
4401  062c 4b01          	push	#1
4402  062e ae501e        	ldw	x,#20510
4403  0631 8d000000      	callf	f_GPIO_WriteLow
4405  0635 84            	pop	a
4406                     ; 593 						GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
4408  0636 4b08          	push	#8
4409  0638 ae500f        	ldw	x,#20495
4410  063b 8d000000      	callf	f_GPIO_WriteLow
4412  063f 84            	pop	a
4413  0640 2004          	jra	L575
4414  0642               L565:
4415                     ; 599 				singal_change_count = 0;
4417  0642 725f0001      	clr	L12_singal_change_count
4418  0646               L575:
4419                     ; 602 			if (signal_status)
4421  0646 725d0002      	tnz	L71_signal_status
4422  064a 270c          	jreq	L775
4423                     ; 604 				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
4425  064c 4b08          	push	#8
4426  064e ae500f        	ldw	x,#20495
4427  0651 8d000000      	callf	f_GPIO_WriteHigh
4429  0655 84            	pop	a
4431  0656 200a          	jra	L745
4432  0658               L775:
4433                     ; 608 				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
4435  0658 4b08          	push	#8
4436  065a ae500f        	ldw	x,#20495
4437  065d 8d000000      	callf	f_GPIO_WriteReverse
4439  0661 84            	pop	a
4440  0662               L745:
4441                     ; 612 }
4444  0662 5b05          	addw	sp,#5
4445  0664 87            	retf
4477                     ; 614 void SWI2C_SystemPowerUp(void)
4477                     ; 615 {
4478                     	switch	.text
4479  0665               f_SWI2C_SystemPowerUp:
4483                     ; 616 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
4485  0665 4b20          	push	#32
4486  0667 ae500a        	ldw	x,#20490
4487  066a 8d000000      	callf	f_GPIO_WriteLow
4489  066e 84            	pop	a
4490                     ; 617 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
4492  066f 4b01          	push	#1
4493  0671 ae5014        	ldw	x,#20500
4494  0674 8d000000      	callf	f_GPIO_WriteLow
4496  0678 84            	pop	a
4497                     ; 618 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
4499  0679 4b08          	push	#8
4500  067b ae500f        	ldw	x,#20495
4501  067e 8d000000      	callf	f_GPIO_WriteHigh
4503  0682 84            	pop	a
4504                     ; 619 	IR_DelayNMiliseconds(50);
4506  0683 ae0032        	ldw	x,#50
4507  0686 8d000000      	callf	f_IR_DelayNMiliseconds
4509                     ; 620 	Power_status = TRUE;
4511  068a 35010011      	mov	L51_Power_status,#1
4512                     ; 621 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
4514  068e 4b01          	push	#1
4515  0690 ae5005        	ldw	x,#20485
4516  0693 8d000000      	callf	f_GPIO_WriteLow
4518  0697 84            	pop	a
4519                     ; 623 	IR_DelayNMiliseconds(200);
4521  0698 ae00c8        	ldw	x,#200
4522  069b 8d000000      	callf	f_IR_DelayNMiliseconds
4524                     ; 624 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
4526  069f 4b01          	push	#1
4527  06a1 ae5005        	ldw	x,#20485
4528  06a4 8d000000      	callf	f_GPIO_WriteHigh
4530  06a8 84            	pop	a
4531                     ; 626 	IR_DelayNMiliseconds(200);
4533  06a9 ae00c8        	ldw	x,#200
4534  06ac 8d000000      	callf	f_IR_DelayNMiliseconds
4536                     ; 627 	IT6802_fsm_init();
4538  06b0 8d000000      	callf	f_IT6802_fsm_init
4540                     ; 628 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
4542  06b4 a622          	ld	a,#34
4543  06b6 8d340234      	callf	f_SWI2C_TestDevice
4545  06ba c70000        	ld	L52_Have_FRC,a
4546                     ; 629 	singal_change_count = 0;
4548  06bd 725f0001      	clr	L12_singal_change_count
4549                     ; 630 	signal_status = FALSE;
4551  06c1 725f0002      	clr	L71_signal_status
4552                     ; 631 }
4555  06c5 87            	retf
4583                     ; 633 void SWI2C_ResetFPGA(void)
4583                     ; 634 {
4584                     	switch	.text
4585  06c6               f_SWI2C_ResetFPGA:
4589                     ; 635 	if (Power_status)
4591  06c6 725d0011      	tnz	L51_Power_status
4592  06ca 272a          	jreq	L326
4593                     ; 637 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
4595  06cc 4b10          	push	#16
4596  06ce ae500a        	ldw	x,#20490
4597  06d1 8d000000      	callf	f_GPIO_WriteLow
4599  06d5 84            	pop	a
4600                     ; 638 		IR_DelayNMiliseconds(200);
4602  06d6 ae00c8        	ldw	x,#200
4603  06d9 8d000000      	callf	f_IR_DelayNMiliseconds
4605                     ; 639 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
4607  06dd 4b10          	push	#16
4608  06df ae500a        	ldw	x,#20490
4609  06e2 8d000000      	callf	f_GPIO_WriteHigh
4611  06e6 84            	pop	a
4612                     ; 640 		IR_DelayNMiliseconds(1500);
4614  06e7 ae05dc        	ldw	x,#1500
4615  06ea 8d000000      	callf	f_IR_DelayNMiliseconds
4617                     ; 641 		FPGA_Init();	
4619  06ee 8d300830      	callf	f_FPGA_Init
4621                     ; 643 		FPGA_WriteWaveTable();
4623  06f2 8ddb01db      	callf	L542f_FPGA_WriteWaveTable
4625  06f6               L326:
4626                     ; 646 }
4629  06f6 87            	retf
4656                     ; 648 void SWI2C_ResetHDMI(void)
4656                     ; 649 {
4657                     	switch	.text
4658  06f7               f_SWI2C_ResetHDMI:
4662                     ; 650 	if (Power_status)
4664  06f7 725d0011      	tnz	L51_Power_status
4665  06fb 273a          	jreq	L536
4666                     ; 652 		GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);
4668  06fd 4b01          	push	#1
4669  06ff ae5014        	ldw	x,#20500
4670  0702 8d000000      	callf	f_GPIO_WriteHigh
4672  0706 84            	pop	a
4673                     ; 653 		GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
4675  0707 4b01          	push	#1
4676  0709 ae5005        	ldw	x,#20485
4677  070c 8d000000      	callf	f_GPIO_WriteLow
4679  0710 84            	pop	a
4680                     ; 654 		IR_DelayNMiliseconds(200);
4682  0711 ae00c8        	ldw	x,#200
4683  0714 8d000000      	callf	f_IR_DelayNMiliseconds
4685                     ; 655 		GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
4687  0718 4b01          	push	#1
4688  071a ae5005        	ldw	x,#20485
4689  071d 8d000000      	callf	f_GPIO_WriteHigh
4691  0721 84            	pop	a
4692                     ; 656 		IR_DelayNMiliseconds(200);
4694  0722 ae00c8        	ldw	x,#200
4695  0725 8d000000      	callf	f_IR_DelayNMiliseconds
4697                     ; 657 		IT6802_fsm_init();
4699  0729 8d000000      	callf	f_IT6802_fsm_init
4701                     ; 658 		GPIO_WriteLow(LED_R_PORT, LED_R_PIN);
4703  072d 4b01          	push	#1
4704  072f ae5014        	ldw	x,#20500
4705  0732 8d000000      	callf	f_GPIO_WriteLow
4707  0736 84            	pop	a
4708  0737               L536:
4709                     ; 660 }
4712  0737 87            	retf
4741                     ; 662 void SWI2C_SystemPowerDown(void)
4741                     ; 663 {
4742                     	switch	.text
4743  0738               f_SWI2C_SystemPowerDown:
4747                     ; 664 	SET_BACKLIGHT_OFF();
4749  0738 4b80          	push	#128
4750  073a ae500a        	ldw	x,#20490
4751  073d 8d000000      	callf	f_GPIO_WriteHigh
4753  0741 84            	pop	a
4754                     ; 665 	IR_DelayNMiliseconds(200);
4756  0742 ae00c8        	ldw	x,#200
4757  0745 8d000000      	callf	f_IR_DelayNMiliseconds
4759                     ; 666 	SET_VPANEL_OFF();
4761  0749 4b01          	push	#1
4762  074b ae501e        	ldw	x,#20510
4763  074e 8d000000      	callf	f_GPIO_WriteLow
4765  0752 84            	pop	a
4766                     ; 667 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
4768  0753 4b20          	push	#32
4769  0755 ae500a        	ldw	x,#20490
4770  0758 8d000000      	callf	f_GPIO_WriteHigh
4772  075c 84            	pop	a
4773                     ; 668 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
4775  075d 4b01          	push	#1
4776  075f ae5014        	ldw	x,#20500
4777  0762 8d000000      	callf	f_GPIO_WriteHigh
4779  0766 84            	pop	a
4780                     ; 669 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
4782  0767 4b08          	push	#8
4783  0769 ae500f        	ldw	x,#20495
4784  076c 8d000000      	callf	f_GPIO_WriteLow
4786  0770 84            	pop	a
4787                     ; 670 	Backlight_on_timer = TIMER_STOPPED;
4789  0771 ae0000        	ldw	x,#0
4790  0774 cf0006        	ldw	L5_Backlight_on_timer+2,x
4791  0777 ae0000        	ldw	x,#0
4792  077a cf0004        	ldw	L5_Backlight_on_timer,x
4793                     ; 671 	Power_status = FALSE;
4795  077d 725f0011      	clr	L51_Power_status
4796                     ; 672 	I2C_stop = FALSE;
4798  0781 725f0012      	clr	L32_I2C_stop
4799                     ; 673 }
4802  0785 87            	retf
4829                     ; 675 void SWI2C_ToggleI2CMode(void)
4829                     ; 676 {
4830                     	switch	.text
4831  0786               f_SWI2C_ToggleI2CMode:
4835                     ; 677 	if (Power_status)
4837  0786 725d0011      	tnz	L51_Power_status
4838  078a 273e          	jreq	L756
4839                     ; 679 		I2C_stop = !I2C_stop;
4841  078c 725d0012      	tnz	L32_I2C_stop
4842  0790 2604          	jrne	L47
4843  0792 a601          	ld	a,#1
4844  0794 2001          	jra	L67
4845  0796               L47:
4846  0796 4f            	clr	a
4847  0797               L67:
4848  0797 c70012        	ld	L32_I2C_stop,a
4849                     ; 680 		if (I2C_stop)
4851  079a 725d0012      	tnz	L32_I2C_stop
4852  079e 2716          	jreq	L166
4853                     ; 682 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
4855  07a0 4b01          	push	#1
4856  07a2 ae5014        	ldw	x,#20500
4857  07a5 8d000000      	callf	f_GPIO_WriteHigh
4859  07a9 84            	pop	a
4860                     ; 683 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
4862  07aa 4b08          	push	#8
4863  07ac ae500f        	ldw	x,#20495
4864  07af 8d000000      	callf	f_GPIO_WriteHigh
4866  07b3 84            	pop	a
4868  07b4 2014          	jra	L756
4869  07b6               L166:
4870                     ; 687 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
4872  07b6 4b01          	push	#1
4873  07b8 ae5014        	ldw	x,#20500
4874  07bb 8d000000      	callf	f_GPIO_WriteLow
4876  07bf 84            	pop	a
4877                     ; 688 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
4879  07c0 4b08          	push	#8
4880  07c2 ae500f        	ldw	x,#20495
4881  07c5 8d000000      	callf	f_GPIO_WriteHigh
4883  07c9 84            	pop	a
4884  07ca               L756:
4885                     ; 691 }
4888  07ca 87            	retf
4913                     ; 693 void SWI2C_ProcessPower(void)
4913                     ; 694 {
4914                     	switch	.text
4915  07cb               f_SWI2C_ProcessPower:
4919                     ; 695 	if (Power_status)
4921  07cb 725d0011      	tnz	L51_Power_status
4922  07cf 2706          	jreq	L576
4923                     ; 697 		SWI2C_SystemPowerDown();
4925  07d1 8d380738      	callf	f_SWI2C_SystemPowerDown
4928  07d5 2004          	jra	L776
4929  07d7               L576:
4930                     ; 701 		SWI2C_SystemPowerUp();
4932  07d7 8d650665      	callf	f_SWI2C_SystemPowerUp
4934  07db               L776:
4935                     ; 703 }
4938  07db 87            	retf
4940                     	switch	.data
4941  0013               L107_Set3DOn:
4942  0013 00            	dc.b	0
4995                     ; 707 static void SWI2C_Set3DOnOff(u8 OnOff)
4995                     ; 708 {
4996                     	switch	.text
4997  07dc               L307f_SWI2C_Set3DOnOff:
4999  07dc 5203          	subw	sp,#3
5000       00000003      OFST:	set	3
5003                     ; 710 	if (OnOff)
5005  07de 4d            	tnz	a
5006  07df 2706          	jreq	L727
5007                     ; 712 		reg_value = 0x80;
5009  07e1 a680          	ld	a,#128
5010  07e3 6b03          	ld	(OFST+0,sp),a
5012  07e5 2002          	jra	L137
5013  07e7               L727:
5014                     ; 716 		reg_value = 0x0;
5016  07e7 0f03          	clr	(OFST+0,sp)
5017  07e9               L137:
5018                     ; 718 	for (retry = 0; retry < 3; retry++)
5020  07e9 0f02          	clr	(OFST-1,sp)
5021  07eb               L337:
5022                     ; 721 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
5024  07eb 7b03          	ld	a,(OFST+0,sp)
5025  07ed 88            	push	a
5026  07ee ae0057        	ldw	x,#87
5027  07f1 a6ba          	ld	a,#186
5028  07f3 95            	ld	xh,a
5029  07f4 8dc602c6      	callf	f_SWI2C_WriteByte
5031  07f8 84            	pop	a
5032                     ; 722 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
5034  07f9 96            	ldw	x,sp
5035  07fa 1c0001        	addw	x,#OFST-2
5036  07fd 89            	pushw	x
5037  07fe ae0057        	ldw	x,#87
5038  0801 a6ba          	ld	a,#186
5039  0803 95            	ld	xh,a
5040  0804 8d4a024a      	callf	f_SWI2C_ReadByte
5042  0808 85            	popw	x
5043                     ; 723 		if (value == reg_value)
5045  0809 7b01          	ld	a,(OFST-2,sp)
5046  080b 1103          	cp	a,(OFST+0,sp)
5047  080d 2708          	jreq	L737
5048                     ; 725 			break;
5050                     ; 718 	for (retry = 0; retry < 3; retry++)
5052  080f 0c02          	inc	(OFST-1,sp)
5055  0811 7b02          	ld	a,(OFST-1,sp)
5056  0813 a103          	cp	a,#3
5057  0815 25d4          	jrult	L337
5058  0817               L737:
5059                     ; 728 }
5062  0817 5b03          	addw	sp,#3
5063  0819 87            	retf
5088                     ; 730 void SWI2C_Toggle3DOnOff(void)
5088                     ; 731 {	
5089                     	switch	.text
5090  081a               f_SWI2C_Toggle3DOnOff:
5094                     ; 732 	Set3DOn = !Set3DOn;
5096  081a 725d0013      	tnz	L107_Set3DOn
5097  081e 2604          	jrne	L601
5098  0820 a601          	ld	a,#1
5099  0822 2001          	jra	L011
5100  0824               L601:
5101  0824 4f            	clr	a
5102  0825               L011:
5103  0825 c70013        	ld	L107_Set3DOn,a
5104                     ; 733 	SWI2C_Set3DOnOff(Set3DOn);
5106  0828 c60013        	ld	a,L107_Set3DOn
5107  082b 8ddc07dc      	callf	L307f_SWI2C_Set3DOnOff
5109                     ; 734 }
5112  082f 87            	retf
5149                     ; 739 void FPGA_Init(void)
5149                     ; 740  {	
5150                     	switch	.text
5151  0830               f_FPGA_Init:
5153  0830 88            	push	a
5154       00000001      OFST:	set	1
5157                     ; 742 	for (i = 0; i < table_size; i++)
5159  0831 0f01          	clr	(OFST+0,sp)
5161  0833 202a          	jra	L377
5162  0835               L767:
5163                     ; 744 		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
5165  0835 7b01          	ld	a,(OFST+0,sp)
5166  0837 5f            	clrw	x
5167  0838 97            	ld	xl,a
5168  0839 1c4001        	addw	x,#16385
5169  083c 8d000000      	callf	d_itolx
5171  0840 be02          	ldw	x,c_lreg+2
5172  0842 89            	pushw	x
5173  0843 be00          	ldw	x,c_lreg
5174  0845 89            	pushw	x
5175  0846 8d000000      	callf	f_FLASH_ReadByte
5177  084a 5b04          	addw	sp,#4
5178  084c 88            	push	a
5179  084d 7b02          	ld	a,(OFST+1,sp)
5180  084f 5f            	clrw	x
5181  0850 97            	ld	xl,a
5182  0851 d60000        	ld	a,(_address_table,x)
5183  0854 97            	ld	xl,a
5184  0855 a6ba          	ld	a,#186
5185  0857 95            	ld	xh,a
5186  0858 8dc602c6      	callf	f_SWI2C_WriteByte
5188  085c 84            	pop	a
5189                     ; 742 	for (i = 0; i < table_size; i++)
5191  085d 0c01          	inc	(OFST+0,sp)
5192  085f               L377:
5195  085f 7b01          	ld	a,(OFST+0,sp)
5196  0861 c10000        	cp	a,_table_size
5197  0864 25cf          	jrult	L767
5198                     ; 746 	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
5200  0866 ae4001        	ldw	x,#16385
5201  0869 89            	pushw	x
5202  086a ae0000        	ldw	x,#0
5203  086d 89            	pushw	x
5204  086e 8d000000      	callf	f_FLASH_ReadByte
5206  0872 5b04          	addw	sp,#4
5207  0874 4d            	tnz	a
5208  0875 2704          	jreq	L777
5209                     ; 748 		Set3DOn = TRUE;
5211  0877 35010013      	mov	L107_Set3DOn,#1
5212  087b               L777:
5213                     ; 750 	SWI2C_Set3DOnOff(Set3DOn);	
5215  087b c60013        	ld	a,L107_Set3DOn
5216  087e 8ddc07dc      	callf	L307f_SWI2C_Set3DOnOff
5218                     ; 751 }
5221  0882 84            	pop	a
5222  0883 87            	retf
5255                     ; 753 void HDMI_HotPlug(u8 value)
5255                     ; 754 {
5256                     	switch	.text
5257  0884               f_HDMI_HotPlug:
5261                     ; 755 	if (value)
5263  0884 4d            	tnz	a
5264  0885 270c          	jreq	L5101
5265                     ; 757 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
5267  0887 4b40          	push	#64
5268  0889 ae5005        	ldw	x,#20485
5269  088c 8d000000      	callf	f_GPIO_WriteHigh
5271  0890 84            	pop	a
5273  0891 200a          	jra	L7101
5274  0893               L5101:
5275                     ; 761 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
5277  0893 4b40          	push	#64
5278  0895 ae5005        	ldw	x,#20485
5279  0898 8d000000      	callf	f_GPIO_WriteLow
5281  089c 84            	pop	a
5282  089d               L7101:
5283                     ; 763 }
5286  089d 87            	retf
5288                     	switch	.const
5289  0904               L1201_deep_value:
5290  0904 30            	dc.b	48
5291  0905 80            	dc.b	128
5292  0906 60            	dc.b	96
5293  0907 50            	dc.b	80
5294  0908 70            	dc.b	112
5295  0909 70            	dc.b	112
5296  090a 70            	dc.b	112
5297  090b 60            	dc.b	96
5298  090c 80            	dc.b	128
5299  090d 90            	dc.b	144
5300  090e 50            	dc.b	80
5301  090f 90            	dc.b	144
5302  0910 a0            	dc.b	160
5303  0911 40            	dc.b	64
5304  0912 a0            	dc.b	160
5305  0913 a8            	dc.b	168
5306  0914 30            	dc.b	48
5307  0915 a0            	dc.b	160
5340                     ; 775 void SWI2C_Set_deep(u8 deep)
5340                     ; 776 {
5341                     	switch	.text
5342  089e               f_SWI2C_Set_deep:
5344  089e 88            	push	a
5345       00000000      OFST:	set	0
5348                     ; 777 	if (deep == 0)
5350  089f 4d            	tnz	a
5351  08a0 2650          	jrne	L7301
5352                     ; 779 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
5354  08a2 ae400b        	ldw	x,#16395
5355  08a5 89            	pushw	x
5356  08a6 ae0000        	ldw	x,#0
5357  08a9 89            	pushw	x
5358  08aa 8d000000      	callf	f_FLASH_ReadByte
5360  08ae 5b04          	addw	sp,#4
5361  08b0 88            	push	a
5362  08b1 ae0059        	ldw	x,#89
5363  08b4 a6ba          	ld	a,#186
5364  08b6 95            	ld	xh,a
5365  08b7 8dc602c6      	callf	f_SWI2C_WriteByte
5367  08bb 84            	pop	a
5368                     ; 780 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
5370  08bc ae400d        	ldw	x,#16397
5371  08bf 89            	pushw	x
5372  08c0 ae0000        	ldw	x,#0
5373  08c3 89            	pushw	x
5374  08c4 8d000000      	callf	f_FLASH_ReadByte
5376  08c8 5b04          	addw	sp,#4
5377  08ca 88            	push	a
5378  08cb ae005c        	ldw	x,#92
5379  08ce a6ba          	ld	a,#186
5380  08d0 95            	ld	xh,a
5381  08d1 8dc602c6      	callf	f_SWI2C_WriteByte
5383  08d5 84            	pop	a
5384                     ; 781 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
5386  08d6 ae400c        	ldw	x,#16396
5387  08d9 89            	pushw	x
5388  08da ae0000        	ldw	x,#0
5389  08dd 89            	pushw	x
5390  08de 8d000000      	callf	f_FLASH_ReadByte
5392  08e2 5b04          	addw	sp,#4
5393  08e4 88            	push	a
5394  08e5 ae005a        	ldw	x,#90
5395  08e8 a6ba          	ld	a,#186
5396  08ea 95            	ld	xh,a
5397  08eb 8dc602c6      	callf	f_SWI2C_WriteByte
5399  08ef 84            	pop	a
5401  08f0 203f          	jra	L1401
5402  08f2               L7301:
5403                     ; 785 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
5405  08f2 7b01          	ld	a,(OFST+1,sp)
5406  08f4 97            	ld	xl,a
5407  08f5 a603          	ld	a,#3
5408  08f7 42            	mul	x,a
5409  08f8 d60904        	ld	a,(L1201_deep_value,x)
5410  08fb 88            	push	a
5411  08fc ae0059        	ldw	x,#89
5412  08ff a6ba          	ld	a,#186
5413  0901 95            	ld	xh,a
5414  0902 8dc602c6      	callf	f_SWI2C_WriteByte
5416  0906 84            	pop	a
5417                     ; 786 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
5419  0907 7b01          	ld	a,(OFST+1,sp)
5420  0909 97            	ld	xl,a
5421  090a a603          	ld	a,#3
5422  090c 42            	mul	x,a
5423  090d d60905        	ld	a,(L1201_deep_value+1,x)
5424  0910 88            	push	a
5425  0911 ae005c        	ldw	x,#92
5426  0914 a6ba          	ld	a,#186
5427  0916 95            	ld	xh,a
5428  0917 8dc602c6      	callf	f_SWI2C_WriteByte
5430  091b 84            	pop	a
5431                     ; 787 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
5433  091c 7b01          	ld	a,(OFST+1,sp)
5434  091e 97            	ld	xl,a
5435  091f a603          	ld	a,#3
5436  0921 42            	mul	x,a
5437  0922 d60906        	ld	a,(L1201_deep_value+2,x)
5438  0925 88            	push	a
5439  0926 ae005a        	ldw	x,#90
5440  0929 a6ba          	ld	a,#186
5441  092b 95            	ld	xh,a
5442  092c 8dc602c6      	callf	f_SWI2C_WriteByte
5444  0930 84            	pop	a
5445  0931               L1401:
5446                     ; 789 }
5449  0931 84            	pop	a
5450  0932 87            	retf
5476                     	switch	.const
5477  0916               L221:
5478  0916 00000002      	dc.l	2
5479                     ; 791 void SWI2C_UpdateTimer(void)
5479                     ; 792 {
5480                     	switch	.text
5481  0933               f_SWI2C_UpdateTimer:
5485                     ; 793 	if (frc_update_timer > TIMER_EXPIRED)
5487  0933 ae0000        	ldw	x,#L3_frc_update_timer
5488  0936 8d000000      	callf	d_ltor
5490  093a ae0916        	ldw	x,#L221
5491  093d 8d000000      	callf	d_lcmp
5493  0941 2509          	jrult	L3501
5494                     ; 795 		frc_update_timer--;
5496  0943 ae0000        	ldw	x,#L3_frc_update_timer
5497  0946 a601          	ld	a,#1
5498  0948 8d000000      	callf	d_lgsbc
5500  094c               L3501:
5501                     ; 798 	if (Backlight_on_timer > TIMER_EXPIRED)
5503  094c ae0004        	ldw	x,#L5_Backlight_on_timer
5504  094f 8d000000      	callf	d_ltor
5506  0953 ae0916        	ldw	x,#L221
5507  0956 8d000000      	callf	d_lcmp
5509  095a 2509          	jrult	L5501
5510                     ; 800 		Backlight_on_timer--;
5512  095c ae0004        	ldw	x,#L5_Backlight_on_timer
5513  095f a601          	ld	a,#1
5514  0961 8d000000      	callf	d_lgsbc
5516  0965               L5501:
5517                     ; 803 	if (secret_detect_timer > TIMER_EXPIRED)
5519  0965 ae0008        	ldw	x,#L7_secret_detect_timer
5520  0968 8d000000      	callf	d_ltor
5522  096c ae0916        	ldw	x,#L221
5523  096f 8d000000      	callf	d_lcmp
5525  0973 2509          	jrult	L7501
5526                     ; 805 		secret_detect_timer--;
5528  0975 ae0008        	ldw	x,#L7_secret_detect_timer
5529  0978 a601          	ld	a,#1
5530  097a 8d000000      	callf	d_lgsbc
5532  097e               L7501:
5533                     ; 808 	if (signal_detect_timer > TIMER_EXPIRED)
5535  097e ae000c        	ldw	x,#L11_signal_detect_timer
5536  0981 8d000000      	callf	d_ltor
5538  0985 ae0916        	ldw	x,#L221
5539  0988 8d000000      	callf	d_lcmp
5541  098c 2509          	jrult	L1601
5542                     ; 810 		signal_detect_timer--;
5544  098e ae000c        	ldw	x,#L11_signal_detect_timer
5545  0991 a601          	ld	a,#1
5546  0993 8d000000      	callf	d_lgsbc
5548  0997               L1601:
5549                     ; 812 }
5552  0997 87            	retf
5707                     	xref	_table_size
5708                     	xref	_address_table
5709                     	switch	.bss
5710  0000               L52_Have_FRC:
5711  0000 00            	ds.b	1
5712  0001               L12_singal_change_count:
5713  0001 00            	ds.b	1
5714  0002               L71_signal_status:
5715  0002 00            	ds.b	1
5716                     	xref	f_IT6802_fsm
5717                     	xref	f_IT6802_fsm_init
5718                     	xdef	f_SWI2C_UpdateTimer
5719                     	xdef	f_SWI2C_Set_deep
5720                     	xdef	f_SWI2C_Toggle3DOnOff
5721                     	xdef	f_HDMI_HotPlug
5722                     	xdef	f_FPGA_Init
5723                     	xdef	f_SWI2C_TestDevice
5724                     	xdef	f_SWI2C_Write2Byte
5725                     	xdef	f_SWI2C_WriteBytes
5726                     	xdef	f_SWI2C_WriteByte
5727                     	xdef	f_SWI2C_ReadBytes
5728                     	xdef	f_SWI2C_ReadByte
5729                     	xdef	f_SWI2C_ResetHDMI
5730                     	xdef	f_SWI2C_ResetFPGA
5731                     	xdef	f_SWI2C_ToggleI2CMode
5732                     	xdef	f_SWI2C_ProcessPower
5733                     	xdef	f_SWI2C_SystemPowerDown
5734                     	xdef	f_SWI2C_SystemPowerUp
5735                     	xdef	f_SWI2C_Update
5736                     	xdef	f_SWI2C_Init
5737                     	xref	f_IR_DelayNMiliseconds
5738                     	xref	f_FLASH_ReadByte
5739                     	xref	f_TIM1_CtrlPWMOutputs
5740                     	xref	f_TIM1_Cmd
5741                     	xref	f_TIM1_OC1Init
5742                     	xref	f_TIM1_TimeBaseInit
5743                     	xref	f_GPIO_ReadInputPin
5744                     	xref	f_GPIO_WriteReverse
5745                     	xref	f_GPIO_WriteLow
5746                     	xref	f_GPIO_WriteHigh
5747                     	xref	f_GPIO_Init
5748                     	xref.b	c_lreg
5768                     	xref	d_lgsbc
5769                     	xref	d_itolx
5770                     	xref	d_lcmp
5771                     	xref	d_ltor
5772                     	end
