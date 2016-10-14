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
1096                     ; 154 static void _Delay_5us(void)
1096                     ; 155 {
1097                     	switch	.text
1098  0000               L73f__Delay_5us:
1100  0000 88            	push	a
1101       00000001      OFST:	set	1
1104                     ; 157    	for (i = 0;i < 10;i++);
1106  0001 0f01          	clr	(OFST+0,sp)
1107  0003               L36:
1111  0003 0c01          	inc	(OFST+0,sp)
1114  0005 7b01          	ld	a,(OFST+0,sp)
1115  0007 a10a          	cp	a,#10
1116  0009 25f8          	jrult	L36
1117                     ; 158 }
1120  000b 84            	pop	a
1121  000c 87            	retf
1146                     ; 160 static void _SWI2C_Start(void)
1146                     ; 161 {
1147                     	switch	.text
1148  000d               L17f__SWI2C_Start:
1152                     ; 162 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1154  000d 4b10          	push	#16
1155  000f ae5005        	ldw	x,#20485
1156  0012 8d000000      	callf	f_GPIO_WriteHigh
1158  0016 84            	pop	a
1159                     ; 163 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1161  0017 4b20          	push	#32
1162  0019 ae5005        	ldw	x,#20485
1163  001c 8d000000      	callf	f_GPIO_WriteHigh
1165  0020 84            	pop	a
1166                     ; 164 	_Delay_5us();
1168  0021 8d000000      	callf	L73f__Delay_5us
1170                     ; 165 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1172  0025 4b20          	push	#32
1173  0027 ae5005        	ldw	x,#20485
1174  002a 8d000000      	callf	f_GPIO_WriteLow
1176  002e 84            	pop	a
1177                     ; 166 	_Delay_5us();
1179  002f 8d000000      	callf	L73f__Delay_5us
1181                     ; 167 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1183  0033 4b10          	push	#16
1184  0035 ae5005        	ldw	x,#20485
1185  0038 8d000000      	callf	f_GPIO_WriteLow
1187  003c 84            	pop	a
1188                     ; 168 }
1191  003d 87            	retf
1216                     ; 170 static void _SWI2C_Stop(void)
1216                     ; 171 {
1217                     	switch	.text
1218  003e               L301f__SWI2C_Stop:
1222                     ; 172 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1224  003e 4b20          	push	#32
1225  0040 ae5005        	ldw	x,#20485
1226  0043 8d000000      	callf	f_GPIO_WriteLow
1228  0047 84            	pop	a
1229                     ; 173 	_Delay_5us();
1231  0048 8d000000      	callf	L73f__Delay_5us
1233                     ; 174 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1235  004c 4b10          	push	#16
1236  004e ae5005        	ldw	x,#20485
1237  0051 8d000000      	callf	f_GPIO_WriteHigh
1239  0055 84            	pop	a
1240                     ; 175 	_Delay_5us();
1242  0056 8d000000      	callf	L73f__Delay_5us
1244                     ; 176 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1246  005a 4b20          	push	#32
1247  005c ae5005        	ldw	x,#20485
1248  005f 8d000000      	callf	f_GPIO_WriteHigh
1250  0063 84            	pop	a
1251                     ; 177 }
1254  0064 87            	retf
1297                     ; 179 static u8 _SWI2C_SendByte(u8 value)
1297                     ; 180 {
1298                     	switch	.text
1299  0065               L511f__SWI2C_SendByte:
1301  0065 88            	push	a
1302  0066 88            	push	a
1303       00000001      OFST:	set	1
1306                     ; 183 	for (count = 0;count < 8;count++)
1308  0067 0f01          	clr	(OFST+0,sp)
1309  0069               L531:
1310                     ; 185 		if (value&0x80)
1312  0069 7b02          	ld	a,(OFST+1,sp)
1313  006b a580          	bcp	a,#128
1314  006d 270c          	jreq	L341
1315                     ; 187 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1317  006f 4b20          	push	#32
1318  0071 ae5005        	ldw	x,#20485
1319  0074 8d000000      	callf	f_GPIO_WriteHigh
1321  0078 84            	pop	a
1323  0079 200a          	jra	L541
1324  007b               L341:
1325                     ; 191 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1327  007b 4b20          	push	#32
1328  007d ae5005        	ldw	x,#20485
1329  0080 8d000000      	callf	f_GPIO_WriteLow
1331  0084 84            	pop	a
1332  0085               L541:
1333                     ; 193 		_Delay_5us();
1335  0085 8d000000      	callf	L73f__Delay_5us
1337                     ; 194 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1339  0089 4b10          	push	#16
1340  008b ae5005        	ldw	x,#20485
1341  008e 8d000000      	callf	f_GPIO_WriteHigh
1343  0092 84            	pop	a
1344                     ; 195 		_Delay_5us();
1346  0093 8d000000      	callf	L73f__Delay_5us
1348                     ; 196 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1350  0097 4b10          	push	#16
1351  0099 ae5005        	ldw	x,#20485
1352  009c 8d000000      	callf	f_GPIO_WriteLow
1354  00a0 84            	pop	a
1355                     ; 197 		value = value<<1;
1357  00a1 0802          	sll	(OFST+1,sp)
1358                     ; 183 	for (count = 0;count < 8;count++)
1360  00a3 0c01          	inc	(OFST+0,sp)
1363  00a5 7b01          	ld	a,(OFST+0,sp)
1364  00a7 a108          	cp	a,#8
1365  00a9 25be          	jrult	L531
1366                     ; 199 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1368  00ab 4b20          	push	#32
1369  00ad ae5005        	ldw	x,#20485
1370  00b0 8d000000      	callf	f_GPIO_WriteHigh
1372  00b4 84            	pop	a
1373                     ; 200 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
1375  00b5 4b00          	push	#0
1376  00b7 4b20          	push	#32
1377  00b9 ae5005        	ldw	x,#20485
1378  00bc 8d000000      	callf	f_GPIO_Init
1380  00c0 85            	popw	x
1381                     ; 201 	_Delay_5us();
1383  00c1 8d000000      	callf	L73f__Delay_5us
1385                     ; 202 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1387  00c5 4b10          	push	#16
1388  00c7 ae5005        	ldw	x,#20485
1389  00ca 8d000000      	callf	f_GPIO_WriteHigh
1391  00ce 84            	pop	a
1392                     ; 203 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
1394  00cf 0f01          	clr	(OFST+0,sp)
1395  00d1               L741:
1396                     ; 205 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
1398  00d1 4b20          	push	#32
1399  00d3 ae5005        	ldw	x,#20485
1400  00d6 8d000000      	callf	f_GPIO_ReadInputPin
1402  00da 5b01          	addw	sp,#1
1403  00dc 4d            	tnz	a
1404  00dd 261a          	jrne	L551
1405                     ; 207 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1407  00df 4b10          	push	#16
1408  00e1 ae5005        	ldw	x,#20485
1409  00e4 8d000000      	callf	f_GPIO_WriteLow
1411  00e8 84            	pop	a
1412                     ; 208 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
1414  00e9 4ba0          	push	#160
1415  00eb 4b20          	push	#32
1416  00ed ae5005        	ldw	x,#20485
1417  00f0 8d000000      	callf	f_GPIO_Init
1419  00f4 85            	popw	x
1420                     ; 209 			return IIC_OK;
1422  00f5 a601          	ld	a,#1
1424  00f7 201f          	jra	L41
1425  00f9               L551:
1426                     ; 203 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
1428  00f9 0c01          	inc	(OFST+0,sp)
1431  00fb 7b01          	ld	a,(OFST+0,sp)
1432  00fd a132          	cp	a,#50
1433  00ff 25d0          	jrult	L741
1434                     ; 212 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1436  0101 4b10          	push	#16
1437  0103 ae5005        	ldw	x,#20485
1438  0106 8d000000      	callf	f_GPIO_WriteLow
1440  010a 84            	pop	a
1441                     ; 213 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1443  010b 4bb0          	push	#176
1444  010d 4b20          	push	#32
1445  010f ae5005        	ldw	x,#20485
1446  0112 8d000000      	callf	f_GPIO_Init
1448  0116 85            	popw	x
1449                     ; 215 	return IIC_FAIL;
1451  0117 4f            	clr	a
1453  0118               L41:
1455  0118 85            	popw	x
1456  0119 87            	retf
1513                     ; 219 static u8 _SWI2C_ReceiveByte(u8 send_ack)
1513                     ; 220 {
1514                     	switch	.text
1515  011a               L751f__SWI2C_ReceiveByte:
1517  011a 88            	push	a
1518  011b 5203          	subw	sp,#3
1519       00000003      OFST:	set	3
1522                     ; 221 	u8 count, read, value = 0;
1524  011d 0f02          	clr	(OFST-1,sp)
1525                     ; 223 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
1527  011f 4b00          	push	#0
1528  0121 4b20          	push	#32
1529  0123 ae5005        	ldw	x,#20485
1530  0126 8d000000      	callf	f_GPIO_Init
1532  012a 85            	popw	x
1533                     ; 224 	for (count = 0;count < 8;count++)
1535  012b 0f01          	clr	(OFST-2,sp)
1536  012d               L302:
1537                     ; 226 		_Delay_5us();
1539  012d 8d000000      	callf	L73f__Delay_5us
1541                     ; 227 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1543  0131 4b10          	push	#16
1544  0133 ae5005        	ldw	x,#20485
1545  0136 8d000000      	callf	f_GPIO_WriteHigh
1547  013a 84            	pop	a
1548                     ; 228 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
1550  013b 4b20          	push	#32
1551  013d ae5005        	ldw	x,#20485
1552  0140 8d000000      	callf	f_GPIO_ReadInputPin
1554  0144 5b01          	addw	sp,#1
1555  0146 4d            	tnz	a
1556  0147 2706          	jreq	L112
1557                     ; 230 			read = 1;
1559  0149 a601          	ld	a,#1
1560  014b 6b03          	ld	(OFST+0,sp),a
1562  014d 2002          	jra	L312
1563  014f               L112:
1564                     ; 234 			read = 0;
1566  014f 0f03          	clr	(OFST+0,sp)
1567  0151               L312:
1568                     ; 236 		value = (value<<1)|read;
1570  0151 7b02          	ld	a,(OFST-1,sp)
1571  0153 48            	sll	a
1572  0154 1a03          	or	a,(OFST+0,sp)
1573  0156 6b02          	ld	(OFST-1,sp),a
1574                     ; 237 		_Delay_5us();
1576  0158 8d000000      	callf	L73f__Delay_5us
1578                     ; 238 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1580  015c 4b10          	push	#16
1581  015e ae5005        	ldw	x,#20485
1582  0161 8d000000      	callf	f_GPIO_WriteLow
1584  0165 84            	pop	a
1585                     ; 224 	for (count = 0;count < 8;count++)
1587  0166 0c01          	inc	(OFST-2,sp)
1590  0168 7b01          	ld	a,(OFST-2,sp)
1591  016a a108          	cp	a,#8
1592  016c 25bf          	jrult	L302
1593                     ; 240 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1595  016e 4bb0          	push	#176
1596  0170 4b20          	push	#32
1597  0172 ae5005        	ldw	x,#20485
1598  0175 8d000000      	callf	f_GPIO_Init
1600  0179 85            	popw	x
1601                     ; 241 	if (send_ack)
1603  017a 0d04          	tnz	(OFST+1,sp)
1604  017c 270c          	jreq	L512
1605                     ; 243 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
1607  017e 4b20          	push	#32
1608  0180 ae5005        	ldw	x,#20485
1609  0183 8d000000      	callf	f_GPIO_WriteLow
1611  0187 84            	pop	a
1613  0188 200a          	jra	L712
1614  018a               L512:
1615                     ; 247 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1617  018a 4b20          	push	#32
1618  018c ae5005        	ldw	x,#20485
1619  018f 8d000000      	callf	f_GPIO_WriteHigh
1621  0193 84            	pop	a
1622  0194               L712:
1623                     ; 249 	_Delay_5us();
1625  0194 8d000000      	callf	L73f__Delay_5us
1627                     ; 250 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1629  0198 4b10          	push	#16
1630  019a ae5005        	ldw	x,#20485
1631  019d 8d000000      	callf	f_GPIO_WriteHigh
1633  01a1 84            	pop	a
1634                     ; 251 	_Delay_5us();
1636  01a2 8d000000      	callf	L73f__Delay_5us
1638                     ; 252 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
1640  01a6 4b10          	push	#16
1641  01a8 ae5005        	ldw	x,#20485
1642  01ab 8d000000      	callf	f_GPIO_WriteLow
1644  01af 84            	pop	a
1645                     ; 253 	_Delay_5us();
1647  01b0 8d000000      	callf	L73f__Delay_5us
1649                     ; 255 	return	value;		
1651  01b4 7b02          	ld	a,(OFST-1,sp)
1654  01b6 5b04          	addw	sp,#4
1655  01b8 87            	retf
1709                     ; 258 static u8 SWI2C_GetSignalStatus(void)
1709                     ; 259 {
1710                     	switch	.text
1711  01b9               L122f_SWI2C_GetSignalStatus:
1713  01b9 5208          	subw	sp,#8
1714       00000008      OFST:	set	8
1717                     ; 265 	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
1719  01bb 96            	ldw	x,sp
1720  01bc 1c0003        	addw	x,#OFST-5
1721  01bf 89            	pushw	x
1722  01c0 ae000a        	ldw	x,#10
1723  01c3 a690          	ld	a,#144
1724  01c5 95            	ld	xh,a
1725  01c6 8d780278      	callf	f_SWI2C_ReadByte
1727  01ca 85            	popw	x
1728                     ; 267 	SWI2C_ReadByte(0x90, 0x9F, &val);
1730  01cb 96            	ldw	x,sp
1731  01cc 1c0008        	addw	x,#OFST+0
1732  01cf 89            	pushw	x
1733  01d0 ae009f        	ldw	x,#159
1734  01d3 a690          	ld	a,#144
1735  01d5 95            	ld	xh,a
1736  01d6 8d780278      	callf	f_SWI2C_ReadByte
1738  01da 85            	popw	x
1739                     ; 268 	HActive = val&0x3F;
1741  01db 7b08          	ld	a,(OFST+0,sp)
1742  01dd a43f          	and	a,#63
1743  01df 5f            	clrw	x
1744  01e0 97            	ld	xl,a
1745  01e1 1f04          	ldw	(OFST-4,sp),x
1746                     ; 269 	HActive = HActive<<8;
1748  01e3 7b05          	ld	a,(OFST-3,sp)
1749  01e5 6b04          	ld	(OFST-4,sp),a
1750  01e7 0f05          	clr	(OFST-3,sp)
1751                     ; 270 	SWI2C_ReadByte(0x90, 0x9E, &val);
1753  01e9 96            	ldw	x,sp
1754  01ea 1c0008        	addw	x,#OFST+0
1755  01ed 89            	pushw	x
1756  01ee ae009e        	ldw	x,#158
1757  01f1 a690          	ld	a,#144
1758  01f3 95            	ld	xh,a
1759  01f4 8d780278      	callf	f_SWI2C_ReadByte
1761  01f8 85            	popw	x
1762                     ; 271 	HActive += val;
1764  01f9 7b08          	ld	a,(OFST+0,sp)
1765  01fb 5f            	clrw	x
1766  01fc 97            	ld	xl,a
1767  01fd 1f01          	ldw	(OFST-7,sp),x
1768  01ff 1e04          	ldw	x,(OFST-4,sp)
1769  0201 72fb01        	addw	x,(OFST-7,sp)
1770  0204 1f04          	ldw	(OFST-4,sp),x
1771                     ; 272 	SWI2C_ReadByte(0x90, 0xA4, &val);
1773  0206 96            	ldw	x,sp
1774  0207 1c0008        	addw	x,#OFST+0
1775  020a 89            	pushw	x
1776  020b ae00a4        	ldw	x,#164
1777  020e a690          	ld	a,#144
1778  0210 95            	ld	xh,a
1779  0211 8d780278      	callf	f_SWI2C_ReadByte
1781  0215 85            	popw	x
1782                     ; 273 	VActive = val&0xF0;
1784  0216 7b08          	ld	a,(OFST+0,sp)
1785  0218 a4f0          	and	a,#240
1786  021a 5f            	clrw	x
1787  021b 97            	ld	xl,a
1788  021c 1f06          	ldw	(OFST-2,sp),x
1789                     ; 274 	VActive = VActive<<4;
1791  021e a604          	ld	a,#4
1792  0220               L22:
1793  0220 0807          	sll	(OFST-1,sp)
1794  0222 0906          	rlc	(OFST-2,sp)
1795  0224 4a            	dec	a
1796  0225 26f9          	jrne	L22
1797                     ; 275 	SWI2C_ReadByte(0x90, 0xA5, &val);
1799  0227 96            	ldw	x,sp
1800  0228 1c0008        	addw	x,#OFST+0
1801  022b 89            	pushw	x
1802  022c ae00a5        	ldw	x,#165
1803  022f a690          	ld	a,#144
1804  0231 95            	ld	xh,a
1805  0232 8d780278      	callf	f_SWI2C_ReadByte
1807  0236 85            	popw	x
1808                     ; 276 	VActive += val;
1810  0237 7b08          	ld	a,(OFST+0,sp)
1811  0239 5f            	clrw	x
1812  023a 97            	ld	xl,a
1813  023b 1f01          	ldw	(OFST-7,sp),x
1814  023d 1e06          	ldw	x,(OFST-2,sp)
1815  023f 72fb01        	addw	x,(OFST-7,sp)
1816  0242 1f06          	ldw	(OFST-2,sp),x
1817                     ; 278 	if ((p0_status&0x0C) == 0x0C)
1819  0244 7b03          	ld	a,(OFST-5,sp)
1820  0246 a40c          	and	a,#12
1821  0248 a10c          	cp	a,#12
1822  024a 2612          	jrne	L542
1823                     ; 281 		if (HActive == 3840 && VActive == 2160)
1825  024c 1e04          	ldw	x,(OFST-4,sp)
1826  024e a30f00        	cpw	x,#3840
1827  0251 260b          	jrne	L542
1829  0253 1e06          	ldw	x,(OFST-2,sp)
1830  0255 a30870        	cpw	x,#2160
1831  0258 2604          	jrne	L542
1832                     ; 284 			return 1;
1834  025a a601          	ld	a,#1
1836  025c 2001          	jra	L42
1837  025e               L542:
1838                     ; 288 	return 0;
1840  025e 4f            	clr	a
1842  025f               L42:
1844  025f 5b08          	addw	sp,#8
1845  0261 87            	retf
1886                     ; 345 u8 SWI2C_TestDevice(u8 addr)
1886                     ; 346 {
1887                     	switch	.text
1888  0262               f_SWI2C_TestDevice:
1890  0262 88            	push	a
1891  0263 88            	push	a
1892       00000001      OFST:	set	1
1895                     ; 348 	_SWI2C_Start();
1897  0264 8d0d000d      	callf	L17f__SWI2C_Start
1899                     ; 349 	result = _SWI2C_SendByte(addr);
1901  0268 7b02          	ld	a,(OFST+1,sp)
1902  026a 8d650065      	callf	L511f__SWI2C_SendByte
1904  026e 6b01          	ld	(OFST+0,sp),a
1905                     ; 350 	_SWI2C_Stop();
1907  0270 8d3e003e      	callf	L301f__SWI2C_Stop
1909                     ; 352 	return result;
1911  0274 7b01          	ld	a,(OFST+0,sp)
1914  0276 85            	popw	x
1915  0277 87            	retf
1964                     ; 355 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
1964                     ; 356 {
1965                     	switch	.text
1966  0278               f_SWI2C_ReadByte:
1968  0278 89            	pushw	x
1969       00000000      OFST:	set	0
1972                     ; 357 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
1974  0279 1e06          	ldw	x,(OFST+6,sp)
1975  027b 89            	pushw	x
1976  027c 4b01          	push	#1
1977  027e 7b05          	ld	a,(OFST+5,sp)
1978  0280 97            	ld	xl,a
1979  0281 7b04          	ld	a,(OFST+4,sp)
1980  0283 95            	ld	xh,a
1981  0284 8d8c028c      	callf	f_SWI2C_ReadBytes
1983  0288 5b03          	addw	sp,#3
1986  028a 85            	popw	x
1987  028b 87            	retf
2053                     ; 360 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
2053                     ; 361 {	
2054                     	switch	.text
2055  028c               f_SWI2C_ReadBytes:
2057  028c 89            	pushw	x
2058  028d 88            	push	a
2059       00000001      OFST:	set	1
2062                     ; 363 	_SWI2C_Start();
2064  028e 8d0d000d      	callf	L17f__SWI2C_Start
2066                     ; 364 	result = _SWI2C_SendByte(addr);
2068  0292 7b02          	ld	a,(OFST+1,sp)
2069  0294 8d650065      	callf	L511f__SWI2C_SendByte
2071  0298 6b01          	ld	(OFST+0,sp),a
2072                     ; 365 	if (result == IIC_FAIL)
2074  029a 0d01          	tnz	(OFST+0,sp)
2075  029c 2608          	jrne	L733
2076                     ; 367 		_SWI2C_Stop();
2078  029e 8d3e003e      	callf	L301f__SWI2C_Stop
2080                     ; 368 		return result;
2082  02a2 7b01          	ld	a,(OFST+0,sp)
2084  02a4 2012          	jra	L43
2085  02a6               L733:
2086                     ; 370 	result = _SWI2C_SendByte(subaddr);
2088  02a6 7b03          	ld	a,(OFST+2,sp)
2089  02a8 8d650065      	callf	L511f__SWI2C_SendByte
2091  02ac 6b01          	ld	(OFST+0,sp),a
2092                     ; 371 	if (result == IIC_FAIL)
2094  02ae 0d01          	tnz	(OFST+0,sp)
2095  02b0 2609          	jrne	L143
2096                     ; 373 		_SWI2C_Stop();
2098  02b2 8d3e003e      	callf	L301f__SWI2C_Stop
2100                     ; 374 		return result;
2102  02b6 7b01          	ld	a,(OFST+0,sp)
2104  02b8               L43:
2106  02b8 5b03          	addw	sp,#3
2107  02ba 87            	retf
2108  02bb               L143:
2109                     ; 376 	_SWI2C_Start();
2111  02bb 8d0d000d      	callf	L17f__SWI2C_Start
2113                     ; 377 	result = _SWI2C_SendByte(addr|0x01);
2115  02bf 7b02          	ld	a,(OFST+1,sp)
2116  02c1 aa01          	or	a,#1
2117  02c3 8d650065      	callf	L511f__SWI2C_SendByte
2119  02c7 6b01          	ld	(OFST+0,sp),a
2120                     ; 378 	if (result == IIC_FAIL)
2122  02c9 0d01          	tnz	(OFST+0,sp)
2123  02cb 2618          	jrne	L743
2124                     ; 380 		_SWI2C_Stop();
2126  02cd 8d3e003e      	callf	L301f__SWI2C_Stop
2128                     ; 381 		return result;
2130  02d1 7b01          	ld	a,(OFST+0,sp)
2132  02d3 20e3          	jra	L43
2133  02d5               L543:
2134                     ; 385 		*p_data = _SWI2C_ReceiveByte(number);
2136  02d5 7b07          	ld	a,(OFST+6,sp)
2137  02d7 8d1a011a      	callf	L751f__SWI2C_ReceiveByte
2139  02db 1e08          	ldw	x,(OFST+7,sp)
2140  02dd f7            	ld	(x),a
2141                     ; 386 		p_data++;
2143  02de 1e08          	ldw	x,(OFST+7,sp)
2144  02e0 1c0001        	addw	x,#1
2145  02e3 1f08          	ldw	(OFST+7,sp),x
2146  02e5               L743:
2147                     ; 383 	while (number--)
2149  02e5 7b07          	ld	a,(OFST+6,sp)
2150  02e7 0a07          	dec	(OFST+6,sp)
2151  02e9 4d            	tnz	a
2152  02ea 26e9          	jrne	L543
2153                     ; 388 	_SWI2C_Stop();
2155  02ec 8d3e003e      	callf	L301f__SWI2C_Stop
2157                     ; 390 	return IIC_OK;
2159  02f0 a601          	ld	a,#1
2161  02f2 20c4          	jra	L43
2207                     ; 393 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
2207                     ; 394 {	
2208                     	switch	.text
2209  02f4               f_SWI2C_WriteByte:
2211  02f4 89            	pushw	x
2212       00000000      OFST:	set	0
2215                     ; 395 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
2217  02f5 96            	ldw	x,sp
2218  02f6 1c0006        	addw	x,#OFST+6
2219  02f9 89            	pushw	x
2220  02fa 4b01          	push	#1
2221  02fc 7b05          	ld	a,(OFST+5,sp)
2222  02fe 97            	ld	xl,a
2223  02ff 7b04          	ld	a,(OFST+4,sp)
2224  0301 95            	ld	xh,a
2225  0302 8d690369      	callf	f_SWI2C_WriteBytes
2227  0306 5b03          	addw	sp,#3
2230  0308 85            	popw	x
2231  0309 87            	retf
2286                     ; 398 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
2286                     ; 399 {
2287                     	switch	.text
2288  030a               f_SWI2C_Write2Byte:
2290  030a 89            	pushw	x
2291  030b 88            	push	a
2292       00000001      OFST:	set	1
2295                     ; 401 	_SWI2C_Start();                              
2297  030c 8d0d000d      	callf	L17f__SWI2C_Start
2299                     ; 402 	result = _SWI2C_SendByte(addr);  
2301  0310 7b02          	ld	a,(OFST+1,sp)
2302  0312 8d650065      	callf	L511f__SWI2C_SendByte
2304  0316 6b01          	ld	(OFST+0,sp),a
2305                     ; 403 	if (result == IIC_FAIL)
2307  0318 0d01          	tnz	(OFST+0,sp)
2308  031a 2608          	jrne	L514
2309                     ; 405 		_SWI2C_Stop();
2311  031c 8d3e003e      	callf	L301f__SWI2C_Stop
2313                     ; 406 		return result;
2315  0320 7b01          	ld	a,(OFST+0,sp)
2317  0322 2012          	jra	L24
2318  0324               L514:
2319                     ; 408 	result = _SWI2C_SendByte(subaddr);     
2321  0324 7b03          	ld	a,(OFST+2,sp)
2322  0326 8d650065      	callf	L511f__SWI2C_SendByte
2324  032a 6b01          	ld	(OFST+0,sp),a
2325                     ; 409 	if (result == IIC_FAIL)
2327  032c 0d01          	tnz	(OFST+0,sp)
2328  032e 2609          	jrne	L714
2329                     ; 411 		_SWI2C_Stop();
2331  0330 8d3e003e      	callf	L301f__SWI2C_Stop
2333                     ; 412 		return result;
2335  0334 7b01          	ld	a,(OFST+0,sp)
2337  0336               L24:
2339  0336 5b03          	addw	sp,#3
2340  0338 87            	retf
2341  0339               L714:
2342                     ; 414 	result = _SWI2C_SendByte(data>>8);     
2344  0339 7b07          	ld	a,(OFST+6,sp)
2345  033b 8d650065      	callf	L511f__SWI2C_SendByte
2347  033f 6b01          	ld	(OFST+0,sp),a
2348                     ; 415 	if (result == IIC_FAIL)
2350  0341 0d01          	tnz	(OFST+0,sp)
2351  0343 2608          	jrne	L124
2352                     ; 417 		_SWI2C_Stop();
2354  0345 8d3e003e      	callf	L301f__SWI2C_Stop
2356                     ; 418 		return result;
2358  0349 7b01          	ld	a,(OFST+0,sp)
2360  034b 20e9          	jra	L24
2361  034d               L124:
2362                     ; 420 	result = _SWI2C_SendByte(data);   
2364  034d 7b08          	ld	a,(OFST+7,sp)
2365  034f 8d650065      	callf	L511f__SWI2C_SendByte
2367  0353 6b01          	ld	(OFST+0,sp),a
2368                     ; 421 	if (result == IIC_FAIL)
2370  0355 0d01          	tnz	(OFST+0,sp)
2371  0357 2608          	jrne	L324
2372                     ; 423 		_SWI2C_Stop();
2374  0359 8d3e003e      	callf	L301f__SWI2C_Stop
2376                     ; 424 		return result;
2378  035d 7b01          	ld	a,(OFST+0,sp)
2380  035f 20d5          	jra	L24
2381  0361               L324:
2382                     ; 426 	_SWI2C_Stop();    
2384  0361 8d3e003e      	callf	L301f__SWI2C_Stop
2386                     ; 427 	return IIC_OK;
2388  0365 a601          	ld	a,#1
2390  0367 20cd          	jra	L24
2455                     ; 430 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
2455                     ; 431 {
2456                     	switch	.text
2457  0369               f_SWI2C_WriteBytes:
2459  0369 89            	pushw	x
2460  036a 88            	push	a
2461       00000001      OFST:	set	1
2464                     ; 433 	_SWI2C_Start();
2466  036b 8d0d000d      	callf	L17f__SWI2C_Start
2468                     ; 434 	result = _SWI2C_SendByte(addr);
2470  036f 7b02          	ld	a,(OFST+1,sp)
2471  0371 8d650065      	callf	L511f__SWI2C_SendByte
2473  0375 6b01          	ld	(OFST+0,sp),a
2474                     ; 435 	if (result == IIC_FAIL)
2476  0377 0d01          	tnz	(OFST+0,sp)
2477  0379 2608          	jrne	L354
2478                     ; 437 		_SWI2C_Stop();
2480  037b 8d3e003e      	callf	L301f__SWI2C_Stop
2482                     ; 438 		return result;
2484  037f 7b01          	ld	a,(OFST+0,sp)
2486  0381 2012          	jra	L64
2487  0383               L354:
2488                     ; 440 	result = _SWI2C_SendByte(subaddr);
2490  0383 7b03          	ld	a,(OFST+2,sp)
2491  0385 8d650065      	callf	L511f__SWI2C_SendByte
2493  0389 6b01          	ld	(OFST+0,sp),a
2494                     ; 441 	if (result == IIC_FAIL)
2496  038b 0d01          	tnz	(OFST+0,sp)
2497  038d 2625          	jrne	L164
2498                     ; 443 		_SWI2C_Stop();
2500  038f 8d3e003e      	callf	L301f__SWI2C_Stop
2502                     ; 444 		return result;
2504  0393 7b01          	ld	a,(OFST+0,sp)
2506  0395               L64:
2508  0395 5b03          	addw	sp,#3
2509  0397 87            	retf
2510  0398               L754:
2511                     ; 448 		result = _SWI2C_SendByte(*p_data);
2513  0398 1e08          	ldw	x,(OFST+7,sp)
2514  039a f6            	ld	a,(x)
2515  039b 8d650065      	callf	L511f__SWI2C_SendByte
2517  039f 6b01          	ld	(OFST+0,sp),a
2518                     ; 449 		if (result == IIC_FAIL)
2520  03a1 0d01          	tnz	(OFST+0,sp)
2521  03a3 2608          	jrne	L564
2522                     ; 451 		_SWI2C_Stop();
2524  03a5 8d3e003e      	callf	L301f__SWI2C_Stop
2526                     ; 452 		return result;
2528  03a9 7b01          	ld	a,(OFST+0,sp)
2530  03ab 20e8          	jra	L64
2531  03ad               L564:
2532                     ; 454 		p_data++;
2534  03ad 1e08          	ldw	x,(OFST+7,sp)
2535  03af 1c0001        	addw	x,#1
2536  03b2 1f08          	ldw	(OFST+7,sp),x
2537  03b4               L164:
2538                     ; 446 	while (number--)
2540  03b4 7b07          	ld	a,(OFST+6,sp)
2541  03b6 0a07          	dec	(OFST+6,sp)
2542  03b8 4d            	tnz	a
2543  03b9 26dd          	jrne	L754
2544                     ; 456 	_SWI2C_Stop();
2546  03bb 8d3e003e      	callf	L301f__SWI2C_Stop
2548                     ; 457 	return IIC_OK;
2550  03bf a601          	ld	a,#1
2552  03c1 20d2          	jra	L64
2611                     ; 460 void SWI2C_VerifyKey(void)
2611                     ; 461 {
2612                     	switch	.text
2613  03c3               f_SWI2C_VerifyKey:
2615  03c3 5209          	subw	sp,#9
2616       00000009      OFST:	set	9
2619                     ; 463 	SWI2C_ReadByte(FPGA_ADDRESS, 0x19, &secret_status);
2621  03c5 96            	ldw	x,sp
2622  03c6 1c0009        	addw	x,#OFST+0
2623  03c9 89            	pushw	x
2624  03ca ae0019        	ldw	x,#25
2625  03cd a6ba          	ld	a,#186
2626  03cf 95            	ld	xh,a
2627  03d0 8d780278      	callf	f_SWI2C_ReadByte
2629  03d4 85            	popw	x
2630                     ; 464 	if ((secret_status&0x03) == 1)
2632  03d5 7b09          	ld	a,(OFST+0,sp)
2633  03d7 a403          	and	a,#3
2634  03d9 a101          	cp	a,#1
2635  03db 265e          	jrne	L315
2636                     ; 466 		SWI2C_ReadBytes(FPGA_ADDRESS, 0x10, 4, secret_key);
2638  03dd 96            	ldw	x,sp
2639  03de 1c0001        	addw	x,#OFST-8
2640  03e1 89            	pushw	x
2641  03e2 4b04          	push	#4
2642  03e4 ae0010        	ldw	x,#16
2643  03e7 a6ba          	ld	a,#186
2644  03e9 95            	ld	xh,a
2645  03ea 8d8c028c      	callf	f_SWI2C_ReadBytes
2647  03ee 5b03          	addw	sp,#3
2648                     ; 467 		convert_key[0] = secret_key_table1[secret_key[0]];
2650  03f0 7b01          	ld	a,(OFST-8,sp)
2651  03f2 5f            	clrw	x
2652  03f3 97            	ld	xl,a
2653  03f4 d60000        	ld	a,(L72_secret_key_table1,x)
2654  03f7 6b05          	ld	(OFST-4,sp),a
2655                     ; 468 		convert_key[1] = secret_key_table2[secret_key[1]];
2657  03f9 7b02          	ld	a,(OFST-7,sp)
2658  03fb 5f            	clrw	x
2659  03fc 97            	ld	xl,a
2660  03fd d60100        	ld	a,(L13_secret_key_table2,x)
2661  0400 6b06          	ld	(OFST-3,sp),a
2662                     ; 469 		convert_key[2] = secret_key_table3[secret_key[2]];
2664  0402 7b03          	ld	a,(OFST-6,sp)
2665  0404 5f            	clrw	x
2666  0405 97            	ld	xl,a
2667  0406 d60200        	ld	a,(L33_secret_key_table3,x)
2668  0409 6b07          	ld	(OFST-2,sp),a
2669                     ; 470 		convert_key[3] = secret_key_table4[secret_key[3]];
2671  040b 7b04          	ld	a,(OFST-5,sp)
2672  040d 5f            	clrw	x
2673  040e 97            	ld	xl,a
2674  040f d60300        	ld	a,(L53_secret_key_table4,x)
2675  0412 6b08          	ld	(OFST-1,sp),a
2676                     ; 471 		SWI2C_WriteBytes(FPGA_ADDRESS, 0x14, 4, convert_key);
2678  0414 96            	ldw	x,sp
2679  0415 1c0005        	addw	x,#OFST-4
2680  0418 89            	pushw	x
2681  0419 4b04          	push	#4
2682  041b ae0014        	ldw	x,#20
2683  041e a6ba          	ld	a,#186
2684  0420 95            	ld	xh,a
2685  0421 8d690369      	callf	f_SWI2C_WriteBytes
2687  0425 5b03          	addw	sp,#3
2688                     ; 472 		secret_status = secret_status|0x07;
2690  0427 7b09          	ld	a,(OFST+0,sp)
2691  0429 aa07          	or	a,#7
2692  042b 6b09          	ld	(OFST+0,sp),a
2693                     ; 473 		SWI2C_WriteByte(FPGA_ADDRESS, 0x19, secret_status);
2695  042d 7b09          	ld	a,(OFST+0,sp)
2696  042f 88            	push	a
2697  0430 ae0019        	ldw	x,#25
2698  0433 a6ba          	ld	a,#186
2699  0435 95            	ld	xh,a
2700  0436 8df402f4      	callf	f_SWI2C_WriteByte
2702  043a 84            	pop	a
2703  043b               L315:
2704                     ; 475 }
2707  043b 5b09          	addw	sp,#9
2708  043d 87            	retf
2736                     ; 477 void SWI2C_Init(void)
2736                     ; 478 {
2737                     	switch	.text
2738  043e               f_SWI2C_Init:
2742                     ; 479 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
2744  043e 4bb0          	push	#176
2745  0440 4b10          	push	#16
2746  0442 ae5005        	ldw	x,#20485
2747  0445 8d000000      	callf	f_GPIO_Init
2749  0449 85            	popw	x
2750                     ; 480 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
2752  044a 4bb0          	push	#176
2753  044c 4b20          	push	#32
2754  044e ae5005        	ldw	x,#20485
2755  0451 8d000000      	callf	f_GPIO_Init
2757  0455 85            	popw	x
2758                     ; 481 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
2760  0456 4b10          	push	#16
2761  0458 ae5005        	ldw	x,#20485
2762  045b 8d000000      	callf	f_GPIO_WriteHigh
2764  045f 84            	pop	a
2765                     ; 482 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
2767  0460 4b20          	push	#32
2768  0462 ae5005        	ldw	x,#20485
2769  0465 8d000000      	callf	f_GPIO_WriteHigh
2771  0469 84            	pop	a
2772                     ; 484 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2774  046a 4bf0          	push	#240
2775  046c 4b20          	push	#32
2776  046e ae500a        	ldw	x,#20490
2777  0471 8d000000      	callf	f_GPIO_Init
2779  0475 85            	popw	x
2780                     ; 486 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2782  0476 4bf0          	push	#240
2783  0478 4b10          	push	#16
2784  047a ae500a        	ldw	x,#20490
2785  047d 8d000000      	callf	f_GPIO_Init
2787  0481 85            	popw	x
2788                     ; 487 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2790  0482 4bf0          	push	#240
2791  0484 4b01          	push	#1
2792  0486 ae5005        	ldw	x,#20485
2793  0489 8d000000      	callf	f_GPIO_Init
2795  048d 85            	popw	x
2796                     ; 489 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
2798  048e 4bf0          	push	#240
2799  0490 4b01          	push	#1
2800  0492 ae5014        	ldw	x,#20500
2801  0495 8d000000      	callf	f_GPIO_Init
2803  0499 85            	popw	x
2804                     ; 490 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
2806  049a 4be0          	push	#224
2807  049c 4b08          	push	#8
2808  049e ae500f        	ldw	x,#20495
2809  04a1 8d000000      	callf	f_GPIO_Init
2811  04a5 85            	popw	x
2812                     ; 492 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2814  04a6 4bf0          	push	#240
2815  04a8 4b40          	push	#64
2816  04aa ae5005        	ldw	x,#20485
2817  04ad 8d000000      	callf	f_GPIO_Init
2819  04b1 85            	popw	x
2820                     ; 494 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2822  04b2 4bf0          	push	#240
2823  04b4 4b80          	push	#128
2824  04b6 ae500a        	ldw	x,#20490
2825  04b9 8d000000      	callf	f_GPIO_Init
2827  04bd 85            	popw	x
2828                     ; 495 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2830  04be 4bf0          	push	#240
2831  04c0 4b40          	push	#64
2832  04c2 ae500a        	ldw	x,#20490
2833  04c5 8d000000      	callf	f_GPIO_Init
2835  04c9 85            	popw	x
2836                     ; 496 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
2838  04ca 4be0          	push	#224
2839  04cc 4b01          	push	#1
2840  04ce ae501e        	ldw	x,#20510
2841  04d1 8d000000      	callf	f_GPIO_Init
2843  04d5 85            	popw	x
2844                     ; 498 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
2846  04d6 4b00          	push	#0
2847  04d8 ae0fff        	ldw	x,#4095
2848  04db 89            	pushw	x
2849  04dc 4b00          	push	#0
2850  04de 5f            	clrw	x
2851  04df 8d000000      	callf	f_TIM1_TimeBaseInit
2853  04e3 5b04          	addw	sp,#4
2854                     ; 499 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
2854                     ; 500 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
2854                     ; 501 	           TIM1_OCNIDLESTATE_RESET);
2856  04e5 4b00          	push	#0
2857  04e7 4b55          	push	#85
2858  04e9 4b00          	push	#0
2859  04eb 4b22          	push	#34
2860  04ed 5f            	clrw	x
2861  04ee 89            	pushw	x
2862  04ef 4b00          	push	#0
2863  04f1 ae0011        	ldw	x,#17
2864  04f4 a670          	ld	a,#112
2865  04f6 95            	ld	xh,a
2866  04f7 8d000000      	callf	f_TIM1_OC1Init
2868  04fb 5b07          	addw	sp,#7
2869                     ; 502 	TIM1_Cmd(ENABLE);
2871  04fd a601          	ld	a,#1
2872  04ff 8d000000      	callf	f_TIM1_Cmd
2874                     ; 503 	TIM1_CtrlPWMOutputs(ENABLE);
2876  0503 a601          	ld	a,#1
2877  0505 8d000000      	callf	f_TIM1_CtrlPWMOutputs
2879                     ; 504 }
2882  0509 87            	retf
2948                     	switch	.const
2949  0400               L65:
2950  0400 00000001      	dc.l	1
2951                     ; 506 void SWI2C_Update(void)
2951                     ; 507 {	
2952                     	switch	.text
2953  050a               f_SWI2C_Update:
2955  050a 89            	pushw	x
2956       00000002      OFST:	set	2
2959                     ; 508 	if (Backlight_on_timer == TIMER_EXPIRED)
2961  050b ae0004        	ldw	x,#L5_Backlight_on_timer
2962  050e 8d000000      	callf	d_ltor
2964  0512 ae0400        	ldw	x,#L65
2965  0515 8d000000      	callf	d_lcmp
2967  0519 2616          	jrne	L545
2968                     ; 510 		SET_BACKLIGHT_ON();
2970  051b 4b80          	push	#128
2971  051d ae500a        	ldw	x,#20490
2972  0520 8d000000      	callf	f_GPIO_WriteLow
2974  0524 84            	pop	a
2975                     ; 511 		Backlight_on_timer = TIMER_STOPPED;
2977  0525 ae0000        	ldw	x,#0
2978  0528 cf0006        	ldw	L5_Backlight_on_timer+2,x
2979  052b ae0000        	ldw	x,#0
2980  052e cf0004        	ldw	L5_Backlight_on_timer,x
2981  0531               L545:
2982                     ; 515 	if (Power_status && !I2C_stop)
2984  0531 725d0011      	tnz	L51_Power_status
2985  0535 2604          	jrne	L06
2986  0537 ac960696      	jpf	L745
2987  053b               L06:
2989  053b 725d0012      	tnz	L32_I2C_stop
2990  053f 2704          	jreq	L26
2991  0541 ac960696      	jpf	L745
2992  0545               L26:
2993                     ; 517 		IT6802_fsm();
2995  0545 8d000000      	callf	f_IT6802_fsm
2997                     ; 519 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
2999  0549 ae0000        	ldw	x,#L3_frc_update_timer
3000  054c 8d000000      	callf	d_ltor
3002  0550 ae0400        	ldw	x,#L65
3003  0553 8d000000      	callf	d_lcmp
3005  0557 265f          	jrne	L155
3007  0559 725d0000      	tnz	L52_Have_FRC
3008  055d 2759          	jreq	L155
3009                     ; 522 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
3011  055f 96            	ldw	x,sp
3012  0560 1c0001        	addw	x,#OFST-1
3013  0563 89            	pushw	x
3014  0564 ae0018        	ldw	x,#24
3015  0567 a622          	ld	a,#34
3016  0569 95            	ld	xh,a
3017  056a 8d780278      	callf	f_SWI2C_ReadByte
3019  056e 85            	popw	x
3020                     ; 523 			if (read_LVDS_mode != LVDS_mode)
3022  056f 7b01          	ld	a,(OFST-1,sp)
3023  0571 c10010        	cp	a,L31_LVDS_mode
3024  0574 270e          	jreq	L355
3025                     ; 525 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
3027  0576 3b0010        	push	L31_LVDS_mode
3028  0579 ae0018        	ldw	x,#24
3029  057c a622          	ld	a,#34
3030  057e 95            	ld	xh,a
3031  057f 8df402f4      	callf	f_SWI2C_WriteByte
3033  0583 84            	pop	a
3034  0584               L355:
3035                     ; 527 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
3037  0584 96            	ldw	x,sp
3038  0585 1c0002        	addw	x,#OFST+0
3039  0588 89            	pushw	x
3040  0589 ae000a        	ldw	x,#10
3041  058c a622          	ld	a,#34
3042  058e 95            	ld	xh,a
3043  058f 8d780278      	callf	f_SWI2C_ReadByte
3045  0593 85            	popw	x
3046                     ; 528 			if (read_MFC != 0)
3048  0594 0d02          	tnz	(OFST+0,sp)
3049  0596 2714          	jreq	L555
3050                     ; 530 				IR_DelayNMiliseconds(50);
3052  0598 ae0032        	ldw	x,#50
3053  059b 8d000000      	callf	f_IR_DelayNMiliseconds
3055                     ; 531 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
3057  059f 4b00          	push	#0
3058  05a1 ae000a        	ldw	x,#10
3059  05a4 a622          	ld	a,#34
3060  05a6 95            	ld	xh,a
3061  05a7 8df402f4      	callf	f_SWI2C_WriteByte
3063  05ab 84            	pop	a
3064  05ac               L555:
3065                     ; 533 			frc_update_timer = FRC_UPDATE_TIME;
3067  05ac ae01f5        	ldw	x,#501
3068  05af cf0002        	ldw	L3_frc_update_timer+2,x
3069  05b2 ae0000        	ldw	x,#0
3070  05b5 cf0000        	ldw	L3_frc_update_timer,x
3071  05b8               L155:
3072                     ; 537 		if (secret_detect_timer == TIMER_EXPIRED)
3074  05b8 ae0008        	ldw	x,#L7_secret_detect_timer
3075  05bb 8d000000      	callf	d_ltor
3077  05bf ae0400        	ldw	x,#L65
3078  05c2 8d000000      	callf	d_lcmp
3080  05c6 2610          	jrne	L755
3081                     ; 539 			SWI2C_VerifyKey();
3083  05c8 8dc303c3      	callf	f_SWI2C_VerifyKey
3085                     ; 540 			secret_detect_timer = SECRET_DETECT_TIME;
3087  05cc ae01f5        	ldw	x,#501
3088  05cf cf000a        	ldw	L7_secret_detect_timer+2,x
3089  05d2 ae0000        	ldw	x,#0
3090  05d5 cf0008        	ldw	L7_secret_detect_timer,x
3091  05d8               L755:
3092                     ; 543 		if (signal_detect_timer == TIMER_EXPIRED)
3094  05d8 ae000c        	ldw	x,#L11_signal_detect_timer
3095  05db 8d000000      	callf	d_ltor
3097  05df ae0400        	ldw	x,#L65
3098  05e2 8d000000      	callf	d_lcmp
3100  05e6 2704          	jreq	L46
3101  05e8 ac960696      	jpf	L745
3102  05ec               L46:
3103                     ; 548 			signal_detect_timer = SINGNAL_TETECT_TIME;
3105  05ec ae0097        	ldw	x,#151
3106  05ef cf000e        	ldw	L11_signal_detect_timer+2,x
3107  05f2 ae0000        	ldw	x,#0
3108  05f5 cf000c        	ldw	L11_signal_detect_timer,x
3109                     ; 549 			current_signal_status = SWI2C_GetSignalStatus();
3111  05f8 8db901b9      	callf	L122f_SWI2C_GetSignalStatus
3113  05fc 6b02          	ld	(OFST+0,sp),a
3114                     ; 550 			if (current_signal_status != signal_status)
3116  05fe 7b02          	ld	a,(OFST+0,sp)
3117  0600 c10002        	cp	a,L71_signal_status
3118  0603 2771          	jreq	L365
3119                     ; 552 				singal_change_count++;
3121  0605 725c0001      	inc	L12_singal_change_count
3122                     ; 553 				if (current_signal_status && singal_change_count > SIGNAL_STABLE_COUNT)
3124  0609 0d02          	tnz	(OFST+0,sp)
3125  060b 2731          	jreq	L565
3127  060d c60001        	ld	a,L12_singal_change_count
3128  0610 a106          	cp	a,#6
3129  0612 252a          	jrult	L565
3130                     ; 555 					signal_status = TRUE;
3132  0614 35010002      	mov	L71_signal_status,#1
3133                     ; 556 					GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3135  0618 4b08          	push	#8
3136  061a ae500f        	ldw	x,#20495
3137  061d 8d000000      	callf	f_GPIO_WriteHigh
3139  0621 84            	pop	a
3140                     ; 560 					SWI2C_ResetFPGA();
3142  0622 8df906f9      	callf	f_SWI2C_ResetFPGA
3144                     ; 561 					SET_VPANEL_ON();
3146  0626 4b01          	push	#1
3147  0628 ae501e        	ldw	x,#20510
3148  062b 8d000000      	callf	f_GPIO_WriteHigh
3150  062f 84            	pop	a
3151                     ; 562 					Backlight_on_timer = BACKLIGHT_DELAY_TIME;
3153  0630 ae1771        	ldw	x,#6001
3154  0633 cf0006        	ldw	L5_Backlight_on_timer+2,x
3155  0636 ae0000        	ldw	x,#0
3156  0639 cf0004        	ldw	L5_Backlight_on_timer,x
3158  063c 203c          	jra	L375
3159  063e               L565:
3160                     ; 564 				else if (!current_signal_status && singal_change_count > NO_SIGNAL_COUNT)
3162  063e 0d02          	tnz	(OFST+0,sp)
3163  0640 2638          	jrne	L375
3165  0642 c60001        	ld	a,L12_singal_change_count
3166  0645 a103          	cp	a,#3
3167  0647 2531          	jrult	L375
3168                     ; 566 					signal_status = FALSE;
3170  0649 725f0002      	clr	L71_signal_status
3171                     ; 567 					Backlight_on_timer = TIMER_STOPPED;
3173  064d ae0000        	ldw	x,#0
3174  0650 cf0006        	ldw	L5_Backlight_on_timer+2,x
3175  0653 ae0000        	ldw	x,#0
3176  0656 cf0004        	ldw	L5_Backlight_on_timer,x
3177                     ; 568 					SET_BACKLIGHT_OFF();
3179  0659 4b80          	push	#128
3180  065b ae500a        	ldw	x,#20490
3181  065e 8d000000      	callf	f_GPIO_WriteHigh
3183  0662 84            	pop	a
3184                     ; 569 					IR_DelayNMiliseconds(200);
3186  0663 ae00c8        	ldw	x,#200
3187  0666 8d000000      	callf	f_IR_DelayNMiliseconds
3189                     ; 570 					SET_VPANEL_OFF();
3191  066a 4b01          	push	#1
3192  066c ae501e        	ldw	x,#20510
3193  066f 8d000000      	callf	f_GPIO_WriteLow
3195  0673 84            	pop	a
3196  0674 2004          	jra	L375
3197  0676               L365:
3198                     ; 575 				singal_change_count = 0;
3200  0676 725f0001      	clr	L12_singal_change_count
3201  067a               L375:
3202                     ; 578 			if (signal_status)
3204  067a 725d0002      	tnz	L71_signal_status
3205  067e 270c          	jreq	L575
3206                     ; 580 				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3208  0680 4b08          	push	#8
3209  0682 ae500f        	ldw	x,#20495
3210  0685 8d000000      	callf	f_GPIO_WriteHigh
3212  0689 84            	pop	a
3214  068a 200a          	jra	L745
3215  068c               L575:
3216                     ; 584 				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
3218  068c 4b08          	push	#8
3219  068e ae500f        	ldw	x,#20495
3220  0691 8d000000      	callf	f_GPIO_WriteReverse
3222  0695 84            	pop	a
3223  0696               L745:
3224                     ; 588 }
3227  0696 85            	popw	x
3228  0697 87            	retf
3260                     ; 590 void SWI2C_SystemPowerUp(void)
3260                     ; 591 {
3261                     	switch	.text
3262  0698               f_SWI2C_SystemPowerUp:
3266                     ; 592 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
3268  0698 4b20          	push	#32
3269  069a ae500a        	ldw	x,#20490
3270  069d 8d000000      	callf	f_GPIO_WriteLow
3272  06a1 84            	pop	a
3273                     ; 593 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
3275  06a2 4b01          	push	#1
3276  06a4 ae5014        	ldw	x,#20500
3277  06a7 8d000000      	callf	f_GPIO_WriteLow
3279  06ab 84            	pop	a
3280                     ; 594 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3282  06ac 4b08          	push	#8
3283  06ae ae500f        	ldw	x,#20495
3284  06b1 8d000000      	callf	f_GPIO_WriteHigh
3286  06b5 84            	pop	a
3287                     ; 595 	IR_DelayNMiliseconds(50);
3289  06b6 ae0032        	ldw	x,#50
3290  06b9 8d000000      	callf	f_IR_DelayNMiliseconds
3292                     ; 596 	Power_status = TRUE;
3294  06bd 35010011      	mov	L51_Power_status,#1
3295                     ; 597 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
3297  06c1 4b01          	push	#1
3298  06c3 ae5005        	ldw	x,#20485
3299  06c6 8d000000      	callf	f_GPIO_WriteLow
3301  06ca 84            	pop	a
3302                     ; 599 	IR_DelayNMiliseconds(200);
3304  06cb ae00c8        	ldw	x,#200
3305  06ce 8d000000      	callf	f_IR_DelayNMiliseconds
3307                     ; 600 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
3309  06d2 4b01          	push	#1
3310  06d4 ae5005        	ldw	x,#20485
3311  06d7 8d000000      	callf	f_GPIO_WriteHigh
3313  06db 84            	pop	a
3314                     ; 602 	IR_DelayNMiliseconds(200);
3316  06dc ae00c8        	ldw	x,#200
3317  06df 8d000000      	callf	f_IR_DelayNMiliseconds
3319                     ; 603 	IT6802_fsm_init();
3321  06e3 8d000000      	callf	f_IT6802_fsm_init
3323                     ; 604 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
3325  06e7 a622          	ld	a,#34
3326  06e9 8d620262      	callf	f_SWI2C_TestDevice
3328  06ed c70000        	ld	L52_Have_FRC,a
3329                     ; 605 	singal_change_count = 0;
3331  06f0 725f0001      	clr	L12_singal_change_count
3332                     ; 606 	signal_status = FALSE;
3334  06f4 725f0002      	clr	L71_signal_status
3335                     ; 607 }
3338  06f8 87            	retf
3365                     ; 609 void SWI2C_ResetFPGA(void)
3365                     ; 610 {
3366                     	switch	.text
3367  06f9               f_SWI2C_ResetFPGA:
3371                     ; 611 	if (Power_status)
3373  06f9 725d0011      	tnz	L51_Power_status
3374  06fd 2726          	jreq	L126
3375                     ; 613 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
3377  06ff 4b10          	push	#16
3378  0701 ae500a        	ldw	x,#20490
3379  0704 8d000000      	callf	f_GPIO_WriteLow
3381  0708 84            	pop	a
3382                     ; 614 		IR_DelayNMiliseconds(200);
3384  0709 ae00c8        	ldw	x,#200
3385  070c 8d000000      	callf	f_IR_DelayNMiliseconds
3387                     ; 615 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
3389  0710 4b10          	push	#16
3390  0712 ae500a        	ldw	x,#20490
3391  0715 8d000000      	callf	f_GPIO_WriteHigh
3393  0719 84            	pop	a
3394                     ; 616 		IR_DelayNMiliseconds(1500);
3396  071a ae05dc        	ldw	x,#1500
3397  071d 8d000000      	callf	f_IR_DelayNMiliseconds
3399                     ; 620 		FPGA_Init();
3401  0721 8d680868      	callf	f_FPGA_Init
3403  0725               L126:
3404                     ; 622 }
3407  0725 87            	retf
3434                     ; 624 void SWI2C_ResetHDMI(void)
3434                     ; 625 {
3435                     	switch	.text
3436  0726               f_SWI2C_ResetHDMI:
3440                     ; 626 	if (Power_status)
3442  0726 725d0011      	tnz	L51_Power_status
3443  072a 2743          	jreq	L336
3444                     ; 628 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
3446  072c 4b10          	push	#16
3447  072e ae500a        	ldw	x,#20490
3448  0731 8d000000      	callf	f_GPIO_WriteLow
3450  0735 84            	pop	a
3451                     ; 629 		IR_DelayNMiliseconds(200);
3453  0736 ae00c8        	ldw	x,#200
3454  0739 8d000000      	callf	f_IR_DelayNMiliseconds
3456                     ; 630 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
3458  073d 4b10          	push	#16
3459  073f ae500a        	ldw	x,#20490
3460  0742 8d000000      	callf	f_GPIO_WriteHigh
3462  0746 84            	pop	a
3463                     ; 631 		IR_DelayNMiliseconds(500);
3465  0747 ae01f4        	ldw	x,#500
3466  074a 8d000000      	callf	f_IR_DelayNMiliseconds
3468                     ; 632 		SWI2C_WriteByte(0x90, 0x14, 0xFF);
3470  074e 4bff          	push	#255
3471  0750 ae0014        	ldw	x,#20
3472  0753 a690          	ld	a,#144
3473  0755 95            	ld	xh,a
3474  0756 8df402f4      	callf	f_SWI2C_WriteByte
3476  075a 84            	pop	a
3477                     ; 633 		IR_DelayNMiliseconds(1000);
3479  075b ae03e8        	ldw	x,#1000
3480  075e 8d000000      	callf	f_IR_DelayNMiliseconds
3482                     ; 634 		SWI2C_WriteByte(0x90, 0x14, 0x0);
3484  0762 4b00          	push	#0
3485  0764 ae0014        	ldw	x,#20
3486  0767 a690          	ld	a,#144
3487  0769 95            	ld	xh,a
3488  076a 8df402f4      	callf	f_SWI2C_WriteByte
3490  076e 84            	pop	a
3491  076f               L336:
3492                     ; 636 }
3495  076f 87            	retf
3524                     ; 638 void SWI2C_SystemPowerDown(void)
3524                     ; 639 {
3525                     	switch	.text
3526  0770               f_SWI2C_SystemPowerDown:
3530                     ; 640 	SET_BACKLIGHT_OFF();
3532  0770 4b80          	push	#128
3533  0772 ae500a        	ldw	x,#20490
3534  0775 8d000000      	callf	f_GPIO_WriteHigh
3536  0779 84            	pop	a
3537                     ; 641 	IR_DelayNMiliseconds(200);
3539  077a ae00c8        	ldw	x,#200
3540  077d 8d000000      	callf	f_IR_DelayNMiliseconds
3542                     ; 642 	SET_VPANEL_OFF();
3544  0781 4b01          	push	#1
3545  0783 ae501e        	ldw	x,#20510
3546  0786 8d000000      	callf	f_GPIO_WriteLow
3548  078a 84            	pop	a
3549                     ; 643 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
3551  078b 4b20          	push	#32
3552  078d ae500a        	ldw	x,#20490
3553  0790 8d000000      	callf	f_GPIO_WriteHigh
3555  0794 84            	pop	a
3556                     ; 644 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
3558  0795 4b01          	push	#1
3559  0797 ae5014        	ldw	x,#20500
3560  079a 8d000000      	callf	f_GPIO_WriteHigh
3562  079e 84            	pop	a
3563                     ; 645 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
3565  079f 4b08          	push	#8
3566  07a1 ae500f        	ldw	x,#20495
3567  07a4 8d000000      	callf	f_GPIO_WriteLow
3569  07a8 84            	pop	a
3570                     ; 646 	Backlight_on_timer = TIMER_STOPPED;
3572  07a9 ae0000        	ldw	x,#0
3573  07ac cf0006        	ldw	L5_Backlight_on_timer+2,x
3574  07af ae0000        	ldw	x,#0
3575  07b2 cf0004        	ldw	L5_Backlight_on_timer,x
3576                     ; 647 	Power_status = FALSE;
3578  07b5 725f0011      	clr	L51_Power_status
3579                     ; 648 	I2C_stop = FALSE;
3581  07b9 725f0012      	clr	L32_I2C_stop
3582                     ; 649 }
3585  07bd 87            	retf
3612                     ; 651 void SWI2C_ToggleI2CMode(void)
3612                     ; 652 {
3613                     	switch	.text
3614  07be               f_SWI2C_ToggleI2CMode:
3618                     ; 653 	if (Power_status)
3620  07be 725d0011      	tnz	L51_Power_status
3621  07c2 273e          	jreq	L556
3622                     ; 655 		I2C_stop = !I2C_stop;
3624  07c4 725d0012      	tnz	L32_I2C_stop
3625  07c8 2604          	jrne	L001
3626  07ca a601          	ld	a,#1
3627  07cc 2001          	jra	L201
3628  07ce               L001:
3629  07ce 4f            	clr	a
3630  07cf               L201:
3631  07cf c70012        	ld	L32_I2C_stop,a
3632                     ; 656 		if (I2C_stop)
3634  07d2 725d0012      	tnz	L32_I2C_stop
3635  07d6 2716          	jreq	L756
3636                     ; 658 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
3638  07d8 4b01          	push	#1
3639  07da ae5014        	ldw	x,#20500
3640  07dd 8d000000      	callf	f_GPIO_WriteHigh
3642  07e1 84            	pop	a
3643                     ; 659 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3645  07e2 4b08          	push	#8
3646  07e4 ae500f        	ldw	x,#20495
3647  07e7 8d000000      	callf	f_GPIO_WriteHigh
3649  07eb 84            	pop	a
3651  07ec 2014          	jra	L556
3652  07ee               L756:
3653                     ; 663 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
3655  07ee 4b01          	push	#1
3656  07f0 ae5014        	ldw	x,#20500
3657  07f3 8d000000      	callf	f_GPIO_WriteLow
3659  07f7 84            	pop	a
3660                     ; 664 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3662  07f8 4b08          	push	#8
3663  07fa ae500f        	ldw	x,#20495
3664  07fd 8d000000      	callf	f_GPIO_WriteHigh
3666  0801 84            	pop	a
3667  0802               L556:
3668                     ; 667 }
3671  0802 87            	retf
3696                     ; 669 void SWI2C_ProcessPower(void)
3696                     ; 670 {
3697                     	switch	.text
3698  0803               f_SWI2C_ProcessPower:
3702                     ; 671 	if (Power_status)
3704  0803 725d0011      	tnz	L51_Power_status
3705  0807 2706          	jreq	L376
3706                     ; 673 		SWI2C_SystemPowerDown();
3708  0809 8d700770      	callf	f_SWI2C_SystemPowerDown
3711  080d 2004          	jra	L576
3712  080f               L376:
3713                     ; 677 		SWI2C_SystemPowerUp();
3715  080f 8d980698      	callf	f_SWI2C_SystemPowerUp
3717  0813               L576:
3718                     ; 679 }
3721  0813 87            	retf
3723                     	switch	.data
3724  0013               L776_Set3DOn:
3725  0013 00            	dc.b	0
3778                     ; 683 static void SWI2C_Set3DOnOff(u8 OnOff)
3778                     ; 684 {
3779                     	switch	.text
3780  0814               L107f_SWI2C_Set3DOnOff:
3782  0814 5203          	subw	sp,#3
3783       00000003      OFST:	set	3
3786                     ; 686 	if (OnOff)
3788  0816 4d            	tnz	a
3789  0817 2706          	jreq	L527
3790                     ; 688 		reg_value = 0x80;
3792  0819 a680          	ld	a,#128
3793  081b 6b03          	ld	(OFST+0,sp),a
3795  081d 2002          	jra	L727
3796  081f               L527:
3797                     ; 692 		reg_value = 0x0;
3799  081f 0f03          	clr	(OFST+0,sp)
3800  0821               L727:
3801                     ; 694 	for (retry = 0; retry < 3; retry++)
3803  0821 0f02          	clr	(OFST-1,sp)
3804  0823               L137:
3805                     ; 697 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
3807  0823 7b03          	ld	a,(OFST+0,sp)
3808  0825 88            	push	a
3809  0826 ae0057        	ldw	x,#87
3810  0829 a6ba          	ld	a,#186
3811  082b 95            	ld	xh,a
3812  082c 8df402f4      	callf	f_SWI2C_WriteByte
3814  0830 84            	pop	a
3815                     ; 698 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
3817  0831 96            	ldw	x,sp
3818  0832 1c0001        	addw	x,#OFST-2
3819  0835 89            	pushw	x
3820  0836 ae0057        	ldw	x,#87
3821  0839 a6ba          	ld	a,#186
3822  083b 95            	ld	xh,a
3823  083c 8d780278      	callf	f_SWI2C_ReadByte
3825  0840 85            	popw	x
3826                     ; 699 		if (value == reg_value)
3828  0841 7b01          	ld	a,(OFST-2,sp)
3829  0843 1103          	cp	a,(OFST+0,sp)
3830  0845 2708          	jreq	L537
3831                     ; 701 			break;
3833                     ; 694 	for (retry = 0; retry < 3; retry++)
3835  0847 0c02          	inc	(OFST-1,sp)
3838  0849 7b02          	ld	a,(OFST-1,sp)
3839  084b a103          	cp	a,#3
3840  084d 25d4          	jrult	L137
3841  084f               L537:
3842                     ; 704 }
3845  084f 5b03          	addw	sp,#3
3846  0851 87            	retf
3871                     ; 706 void SWI2C_Toggle3DOnOff(void)
3871                     ; 707 {	
3872                     	switch	.text
3873  0852               f_SWI2C_Toggle3DOnOff:
3877                     ; 708 	Set3DOn = !Set3DOn;
3879  0852 725d0013      	tnz	L776_Set3DOn
3880  0856 2604          	jrne	L211
3881  0858 a601          	ld	a,#1
3882  085a 2001          	jra	L411
3883  085c               L211:
3884  085c 4f            	clr	a
3885  085d               L411:
3886  085d c70013        	ld	L776_Set3DOn,a
3887                     ; 709 	SWI2C_Set3DOnOff(Set3DOn);
3889  0860 c60013        	ld	a,L776_Set3DOn
3890  0863 8d140814      	callf	L107f_SWI2C_Set3DOnOff
3892                     ; 710 }
3895  0867 87            	retf
3932                     ; 715 void FPGA_Init(void)
3932                     ; 716  {	
3933                     	switch	.text
3934  0868               f_FPGA_Init:
3936  0868 88            	push	a
3937       00000001      OFST:	set	1
3940                     ; 718 	for (i = 0; i < table_size; i++)
3942  0869 0f01          	clr	(OFST+0,sp)
3944  086b 202a          	jra	L177
3945  086d               L567:
3946                     ; 720 		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
3948  086d 7b01          	ld	a,(OFST+0,sp)
3949  086f 5f            	clrw	x
3950  0870 97            	ld	xl,a
3951  0871 1c4001        	addw	x,#16385
3952  0874 8d000000      	callf	d_itolx
3954  0878 be02          	ldw	x,c_lreg+2
3955  087a 89            	pushw	x
3956  087b be00          	ldw	x,c_lreg
3957  087d 89            	pushw	x
3958  087e 8d000000      	callf	f_FLASH_ReadByte
3960  0882 5b04          	addw	sp,#4
3961  0884 88            	push	a
3962  0885 7b02          	ld	a,(OFST+1,sp)
3963  0887 5f            	clrw	x
3964  0888 97            	ld	xl,a
3965  0889 d60000        	ld	a,(_address_table,x)
3966  088c 97            	ld	xl,a
3967  088d a6ba          	ld	a,#186
3968  088f 95            	ld	xh,a
3969  0890 8df402f4      	callf	f_SWI2C_WriteByte
3971  0894 84            	pop	a
3972                     ; 718 	for (i = 0; i < table_size; i++)
3974  0895 0c01          	inc	(OFST+0,sp)
3975  0897               L177:
3978  0897 7b01          	ld	a,(OFST+0,sp)
3979  0899 c10000        	cp	a,_table_size
3980  089c 25cf          	jrult	L567
3981                     ; 722 	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
3983  089e ae4001        	ldw	x,#16385
3984  08a1 89            	pushw	x
3985  08a2 ae0000        	ldw	x,#0
3986  08a5 89            	pushw	x
3987  08a6 8d000000      	callf	f_FLASH_ReadByte
3989  08aa 5b04          	addw	sp,#4
3990  08ac 4d            	tnz	a
3991  08ad 2704          	jreq	L577
3992                     ; 724 		Set3DOn = TRUE;
3994  08af 35010013      	mov	L776_Set3DOn,#1
3995  08b3               L577:
3996                     ; 726 	SWI2C_WriteByte(FPGA_ADDRESS, 0x19, 0x04);
3998  08b3 4b04          	push	#4
3999  08b5 ae0019        	ldw	x,#25
4000  08b8 a6ba          	ld	a,#186
4001  08ba 95            	ld	xh,a
4002  08bb 8df402f4      	callf	f_SWI2C_WriteByte
4004  08bf 84            	pop	a
4005                     ; 727 	SWI2C_Set3DOnOff(Set3DOn);	
4007  08c0 c60013        	ld	a,L776_Set3DOn
4008  08c3 8d140814      	callf	L107f_SWI2C_Set3DOnOff
4010                     ; 728 }
4013  08c7 84            	pop	a
4014  08c8 87            	retf
4047                     ; 730 void HDMI_HotPlug(u8 value)
4047                     ; 731 {
4048                     	switch	.text
4049  08c9               f_HDMI_HotPlug:
4053                     ; 732 	if (value)
4055  08c9 4d            	tnz	a
4056  08ca 270c          	jreq	L3101
4057                     ; 734 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
4059  08cc 4b40          	push	#64
4060  08ce ae5005        	ldw	x,#20485
4061  08d1 8d000000      	callf	f_GPIO_WriteHigh
4063  08d5 84            	pop	a
4065  08d6 200a          	jra	L5101
4066  08d8               L3101:
4067                     ; 738 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
4069  08d8 4b40          	push	#64
4070  08da ae5005        	ldw	x,#20485
4071  08dd 8d000000      	callf	f_GPIO_WriteLow
4073  08e1 84            	pop	a
4074  08e2               L5101:
4075                     ; 740 }
4078  08e2 87            	retf
4080                     	switch	.const
4081  0404               L7101_deep_value:
4082  0404 30            	dc.b	48
4083  0405 80            	dc.b	128
4084  0406 60            	dc.b	96
4085  0407 50            	dc.b	80
4086  0408 70            	dc.b	112
4087  0409 70            	dc.b	112
4088  040a 70            	dc.b	112
4089  040b 60            	dc.b	96
4090  040c 80            	dc.b	128
4091  040d 90            	dc.b	144
4092  040e 50            	dc.b	80
4093  040f 90            	dc.b	144
4094  0410 a0            	dc.b	160
4095  0411 40            	dc.b	64
4096  0412 a0            	dc.b	160
4097  0413 a8            	dc.b	168
4098  0414 30            	dc.b	48
4099  0415 a0            	dc.b	160
4132                     ; 752 void SWI2C_Set_deep(u8 deep)
4132                     ; 753 {
4133                     	switch	.text
4134  08e3               f_SWI2C_Set_deep:
4136  08e3 88            	push	a
4137       00000000      OFST:	set	0
4140                     ; 754 	if (deep == 0)
4142  08e4 4d            	tnz	a
4143  08e5 2650          	jrne	L5301
4144                     ; 756 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
4146  08e7 ae400b        	ldw	x,#16395
4147  08ea 89            	pushw	x
4148  08eb ae0000        	ldw	x,#0
4149  08ee 89            	pushw	x
4150  08ef 8d000000      	callf	f_FLASH_ReadByte
4152  08f3 5b04          	addw	sp,#4
4153  08f5 88            	push	a
4154  08f6 ae0059        	ldw	x,#89
4155  08f9 a6ba          	ld	a,#186
4156  08fb 95            	ld	xh,a
4157  08fc 8df402f4      	callf	f_SWI2C_WriteByte
4159  0900 84            	pop	a
4160                     ; 757 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
4162  0901 ae400d        	ldw	x,#16397
4163  0904 89            	pushw	x
4164  0905 ae0000        	ldw	x,#0
4165  0908 89            	pushw	x
4166  0909 8d000000      	callf	f_FLASH_ReadByte
4168  090d 5b04          	addw	sp,#4
4169  090f 88            	push	a
4170  0910 ae005c        	ldw	x,#92
4171  0913 a6ba          	ld	a,#186
4172  0915 95            	ld	xh,a
4173  0916 8df402f4      	callf	f_SWI2C_WriteByte
4175  091a 84            	pop	a
4176                     ; 758 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
4178  091b ae400c        	ldw	x,#16396
4179  091e 89            	pushw	x
4180  091f ae0000        	ldw	x,#0
4181  0922 89            	pushw	x
4182  0923 8d000000      	callf	f_FLASH_ReadByte
4184  0927 5b04          	addw	sp,#4
4185  0929 88            	push	a
4186  092a ae005a        	ldw	x,#90
4187  092d a6ba          	ld	a,#186
4188  092f 95            	ld	xh,a
4189  0930 8df402f4      	callf	f_SWI2C_WriteByte
4191  0934 84            	pop	a
4193  0935 203f          	jra	L7301
4194  0937               L5301:
4195                     ; 762 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
4197  0937 7b01          	ld	a,(OFST+1,sp)
4198  0939 97            	ld	xl,a
4199  093a a603          	ld	a,#3
4200  093c 42            	mul	x,a
4201  093d d60404        	ld	a,(L7101_deep_value,x)
4202  0940 88            	push	a
4203  0941 ae0059        	ldw	x,#89
4204  0944 a6ba          	ld	a,#186
4205  0946 95            	ld	xh,a
4206  0947 8df402f4      	callf	f_SWI2C_WriteByte
4208  094b 84            	pop	a
4209                     ; 763 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
4211  094c 7b01          	ld	a,(OFST+1,sp)
4212  094e 97            	ld	xl,a
4213  094f a603          	ld	a,#3
4214  0951 42            	mul	x,a
4215  0952 d60405        	ld	a,(L7101_deep_value+1,x)
4216  0955 88            	push	a
4217  0956 ae005c        	ldw	x,#92
4218  0959 a6ba          	ld	a,#186
4219  095b 95            	ld	xh,a
4220  095c 8df402f4      	callf	f_SWI2C_WriteByte
4222  0960 84            	pop	a
4223                     ; 764 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
4225  0961 7b01          	ld	a,(OFST+1,sp)
4226  0963 97            	ld	xl,a
4227  0964 a603          	ld	a,#3
4228  0966 42            	mul	x,a
4229  0967 d60406        	ld	a,(L7101_deep_value+2,x)
4230  096a 88            	push	a
4231  096b ae005a        	ldw	x,#90
4232  096e a6ba          	ld	a,#186
4233  0970 95            	ld	xh,a
4234  0971 8df402f4      	callf	f_SWI2C_WriteByte
4236  0975 84            	pop	a
4237  0976               L7301:
4238                     ; 766 }
4241  0976 84            	pop	a
4242  0977 87            	retf
4268                     	switch	.const
4269  0416               L621:
4270  0416 00000002      	dc.l	2
4271                     ; 768 void SWI2C_UpdateTimer(void)
4271                     ; 769 {
4272                     	switch	.text
4273  0978               f_SWI2C_UpdateTimer:
4277                     ; 770 	if (frc_update_timer > TIMER_EXPIRED)
4279  0978 ae0000        	ldw	x,#L3_frc_update_timer
4280  097b 8d000000      	callf	d_ltor
4282  097f ae0416        	ldw	x,#L621
4283  0982 8d000000      	callf	d_lcmp
4285  0986 2509          	jrult	L1501
4286                     ; 772 		frc_update_timer--;
4288  0988 ae0000        	ldw	x,#L3_frc_update_timer
4289  098b a601          	ld	a,#1
4290  098d 8d000000      	callf	d_lgsbc
4292  0991               L1501:
4293                     ; 775 	if (Backlight_on_timer > TIMER_EXPIRED)
4295  0991 ae0004        	ldw	x,#L5_Backlight_on_timer
4296  0994 8d000000      	callf	d_ltor
4298  0998 ae0416        	ldw	x,#L621
4299  099b 8d000000      	callf	d_lcmp
4301  099f 2509          	jrult	L3501
4302                     ; 777 		Backlight_on_timer--;
4304  09a1 ae0004        	ldw	x,#L5_Backlight_on_timer
4305  09a4 a601          	ld	a,#1
4306  09a6 8d000000      	callf	d_lgsbc
4308  09aa               L3501:
4309                     ; 780 	if (secret_detect_timer > TIMER_EXPIRED)
4311  09aa ae0008        	ldw	x,#L7_secret_detect_timer
4312  09ad 8d000000      	callf	d_ltor
4314  09b1 ae0416        	ldw	x,#L621
4315  09b4 8d000000      	callf	d_lcmp
4317  09b8 2509          	jrult	L5501
4318                     ; 782 		secret_detect_timer--;
4320  09ba ae0008        	ldw	x,#L7_secret_detect_timer
4321  09bd a601          	ld	a,#1
4322  09bf 8d000000      	callf	d_lgsbc
4324  09c3               L5501:
4325                     ; 785 	if (signal_detect_timer > TIMER_EXPIRED)
4327  09c3 ae000c        	ldw	x,#L11_signal_detect_timer
4328  09c6 8d000000      	callf	d_ltor
4330  09ca ae0416        	ldw	x,#L621
4331  09cd 8d000000      	callf	d_lcmp
4333  09d1 2509          	jrult	L7501
4334                     ; 787 		signal_detect_timer--;
4336  09d3 ae000c        	ldw	x,#L11_signal_detect_timer
4337  09d6 a601          	ld	a,#1
4338  09d8 8d000000      	callf	d_lgsbc
4340  09dc               L7501:
4341                     ; 789 }
4344  09dc 87            	retf
4489                     	xref	_table_size
4490                     	xref	_address_table
4491                     	switch	.bss
4492  0000               L52_Have_FRC:
4493  0000 00            	ds.b	1
4494  0001               L12_singal_change_count:
4495  0001 00            	ds.b	1
4496  0002               L71_signal_status:
4497  0002 00            	ds.b	1
4498                     	xref	f_IT6802_fsm
4499                     	xref	f_IT6802_fsm_init
4500                     	xdef	f_SWI2C_UpdateTimer
4501                     	xdef	f_SWI2C_Set_deep
4502                     	xdef	f_SWI2C_Toggle3DOnOff
4503                     	xdef	f_HDMI_HotPlug
4504                     	xdef	f_FPGA_Init
4505                     	xdef	f_SWI2C_VerifyKey
4506                     	xdef	f_SWI2C_TestDevice
4507                     	xdef	f_SWI2C_Write2Byte
4508                     	xdef	f_SWI2C_WriteBytes
4509                     	xdef	f_SWI2C_WriteByte
4510                     	xdef	f_SWI2C_ReadBytes
4511                     	xdef	f_SWI2C_ReadByte
4512                     	xdef	f_SWI2C_ResetHDMI
4513                     	xdef	f_SWI2C_ResetFPGA
4514                     	xdef	f_SWI2C_ToggleI2CMode
4515                     	xdef	f_SWI2C_ProcessPower
4516                     	xdef	f_SWI2C_SystemPowerDown
4517                     	xdef	f_SWI2C_SystemPowerUp
4518                     	xdef	f_SWI2C_Update
4519                     	xdef	f_SWI2C_Init
4520                     	xref	f_IR_DelayNMiliseconds
4521                     	xref	f_FLASH_ReadByte
4522                     	xref	f_TIM1_CtrlPWMOutputs
4523                     	xref	f_TIM1_Cmd
4524                     	xref	f_TIM1_OC1Init
4525                     	xref	f_TIM1_TimeBaseInit
4526                     	xref	f_GPIO_ReadInputPin
4527                     	xref	f_GPIO_WriteReverse
4528                     	xref	f_GPIO_WriteLow
4529                     	xref	f_GPIO_WriteHigh
4530                     	xref	f_GPIO_Init
4531                     	xref.b	c_lreg
4551                     	xref	d_lgsbc
4552                     	xref	d_itolx
4553                     	xref	d_lcmp
4554                     	xref	d_ltor
4555                     	end
