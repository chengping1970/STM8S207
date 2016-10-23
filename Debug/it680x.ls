   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _V3D_EntryCnt:
  17  0000 00            	dc.b	0
  18  0001               _TxWrBstSeq:
  19  0001 00            	dc.b	0
  20  0002               _EnMSCWrBurst3D:
  21  0002 00            	dc.b	0
  22  0003               _EnMHL3DSupport:
  23  0003 00            	dc.b	0
  24  0004               _wakeupfailcnt:
  25  0004 00            	dc.b	0
  26  0005               _DeviceID:
  27  0005 01            	dc.b	1
  28  0006               _InColorMode:
  29  0006 0000          	dc.w	0
  30  0008               _OutColorMode:
  31  0008 0000          	dc.w	0
  32  000a               _OutCD:
  33  000a 0000          	dc.w	0
  34  000c               _OldRegB4:
  35  000c aa            	dc.b	170
  36  000d               _OldRegB5:
  37  000d aa            	dc.b	170
  38  000e               _OldRegB9:
  39  000e aa            	dc.b	170
  40  000f               _OldRegBA:
  41  000f aa            	dc.b	170
  42                     .const:	section	.text
  43  0000               L3_IT6802_HDMI_INIT_TABLE:
  44  0000 0f            	dc.b	15
  45  0001 03            	dc.b	3
  46  0002 00            	dc.b	0
  47  0003 10            	dc.b	16
  48  0004 ff            	dc.b	255
  49  0005 08            	dc.b	8
  50  0006 10            	dc.b	16
  51  0007 ff            	dc.b	255
  52  0008 17            	dc.b	23
  53  0009 11            	dc.b	17
  54  000a ff            	dc.b	255
  55  000b 1f            	dc.b	31
  56  000c 18            	dc.b	24
  57  000d ff            	dc.b	255
  58  000e 1f            	dc.b	31
  59  000f 12            	dc.b	18
  60  0010 ff            	dc.b	255
  61  0011 f8            	dc.b	248
  62  0012 10            	dc.b	16
  63  0013 ff            	dc.b	255
  64  0014 10            	dc.b	16
  65  0015 11            	dc.b	17
  66  0016 ff            	dc.b	255
  67  0017 a0            	dc.b	160
  68  0018 18            	dc.b	24
  69  0019 ff            	dc.b	255
  70  001a a0            	dc.b	160
  71  001b 12            	dc.b	18
  72  001c ff            	dc.b	255
  73  001d 00            	dc.b	0
  74  001e 0f            	dc.b	15
  75  001f 03            	dc.b	3
  76  0020 01            	dc.b	1
  77  0021 c0            	dc.b	192
  78  0022 80            	dc.b	128
  79  0023 00            	dc.b	0
  80  0024 0f            	dc.b	15
  81  0025 03            	dc.b	3
  82  0026 00            	dc.b	0
  83  0027 17            	dc.b	23
  84  0028 c0            	dc.b	192
  85  0029 80            	dc.b	128
  86  002a 1e            	dc.b	30
  87  002b c0            	dc.b	192
  88  002c 00            	dc.b	0
  89  002d 0e            	dc.b	14
  90  002e ff            	dc.b	255
  91  002f ff            	dc.b	255
  92  0030 86            	dc.b	134
  93  0031 ff            	dc.b	255
  94  0032 c9            	dc.b	201
  95  0033 16            	dc.b	22
  96  0034 08            	dc.b	8
  97  0035 08            	dc.b	8
  98  0036 1d            	dc.b	29
  99  0037 08            	dc.b	8
 100  0038 08            	dc.b	8
 101  0039 2b            	dc.b	43
 102  003a 07            	dc.b	7
 103  003b 07            	dc.b	7
 104  003c 31            	dc.b	49
 105  003d ff            	dc.b	255
 106  003e 2c            	dc.b	44
 107  003f 34            	dc.b	52
 108  0040 ff            	dc.b	255
 109  0041 e1            	dc.b	225
 110  0042 35            	dc.b	53
 111  0043 0c            	dc.b	12
 112  0044 01            	dc.b	1
 113  0045 54            	dc.b	84
 114  0046 0c            	dc.b	12
 115  0047 11            	dc.b	17
 116  0048 6a            	dc.b	106
 117  0049 ff            	dc.b	255
 118  004a 81            	dc.b	129
 119  004b 74            	dc.b	116
 120  004c ff            	dc.b	255
 121  004d a0            	dc.b	160
 122  004e 50            	dc.b	80
 123  004f 1f            	dc.b	31
 124  0050 12            	dc.b	18
 125  0051 65            	dc.b	101
 126  0052 0c            	dc.b	12
 127  0053 08            	dc.b	8
 128  0054 7a            	dc.b	122
 129  0055 80            	dc.b	128
 130  0056 80            	dc.b	128
 131  0057 85            	dc.b	133
 132  0058 02            	dc.b	2
 133  0059 02            	dc.b	2
 134  005a c0            	dc.b	192
 135  005b 03            	dc.b	3
 136  005c 00            	dc.b	0
 137  005d 87            	dc.b	135
 138  005e ff            	dc.b	255
 139  005f a1            	dc.b	161
 140  0060 71            	dc.b	113
 141  0061 08            	dc.b	8
 142  0062 00            	dc.b	0
 143  0063 37            	dc.b	55
 144  0064 ff            	dc.b	255
 145  0065 88            	dc.b	136
 146  0066 4d            	dc.b	77
 147  0067 ff            	dc.b	255
 148  0068 88            	dc.b	136
 149  0069 67            	dc.b	103
 150  006a 80            	dc.b	128
 151  006b 00            	dc.b	0
 152  006c 7a            	dc.b	122
 153  006d 70            	dc.b	112
 154  006e 70            	dc.b	112
 155  006f 77            	dc.b	119
 156  0070 80            	dc.b	128
 157  0071 80            	dc.b	128
 158  0072 0f            	dc.b	15
 159  0073 03            	dc.b	3
 160  0074 01            	dc.b	1
 161  0075 c0            	dc.b	192
 162  0076 80            	dc.b	128
 163  0077 80            	dc.b	128
 164  0078 0f            	dc.b	15
 165  0079 03            	dc.b	3
 166  007a 00            	dc.b	0
 167  007b 7e            	dc.b	126
 168  007c 40            	dc.b	64
 169  007d 40            	dc.b	64
 170  007e 52            	dc.b	82
 171  007f 20            	dc.b	32
 172  0080 20            	dc.b	32
 173  0081 53            	dc.b	83
 174  0082 c0            	dc.b	192
 175  0083 40            	dc.b	64
 176  0084 58            	dc.b	88
 177  0085 ff            	dc.b	255
 178  0086 33            	dc.b	51
 179  0087 0f            	dc.b	15
 180  0088 03            	dc.b	3
 181  0089 01            	dc.b	1
 182  008a bc            	dc.b	188
 183  008b ff            	dc.b	255
 184  008c 06            	dc.b	6
 185  008d 0f            	dc.b	15
 186  008e 03            	dc.b	3
 187  008f 00            	dc.b	0
 188  0090 22            	dc.b	34
 189  0091 ff            	dc.b	255
 190  0092 38            	dc.b	56
 191  0093 26            	dc.b	38
 192  0094 ff            	dc.b	255
 193  0095 80            	dc.b	128
 194  0096 3a            	dc.b	58
 195  0097 ff            	dc.b	255
 196  0098 38            	dc.b	56
 197  0099 3e            	dc.b	62
 198  009a ff            	dc.b	255
 199  009b 80            	dc.b	128
 200  009c 20            	dc.b	32
 201  009d 40            	dc.b	64
 202  009e 40            	dc.b	64
 203  009f 38            	dc.b	56
 204  00a0 40            	dc.b	64
 205  00a1 40            	dc.b	64
 206  00a2 ff            	dc.b	255
 207  00a3 ff            	dc.b	255
 208  00a4 ff            	dc.b	255
 209  00a5               L5_IT6802_MHL_INIT_TABLE:
 210  00a5 0a            	dc.b	10
 211  00a6 ff            	dc.b	255
 212  00a7 00            	dc.b	0
 213  00a8 08            	dc.b	8
 214  00a9 ff            	dc.b	255
 215  00aa 00            	dc.b	0
 216  00ab 09            	dc.b	9
 217  00ac ff            	dc.b	255
 218  00ad 00            	dc.b	0
 219  00ae 52            	dc.b	82
 220  00af ff            	dc.b	255
 221  00b0 00            	dc.b	0
 222  00b1 53            	dc.b	83
 223  00b2 ff            	dc.b	255
 224  00b3 80            	dc.b	128
 225  00b4 32            	dc.b	50
 226  00b5 ff            	dc.b	255
 227  00b6 0c            	dc.b	12
 228  00b7 81            	dc.b	129
 229  00b8 ff            	dc.b	255
 230  00b9 20            	dc.b	32
 231  00ba 82            	dc.b	130
 232  00bb ff            	dc.b	255
 233  00bc 31            	dc.b	49
 234  00bd 83            	dc.b	131
 235  00be ff            	dc.b	255
 236  00bf 78            	dc.b	120
 237  00c0 84            	dc.b	132
 238  00c1 ff            	dc.b	255
 239  00c2 56            	dc.b	86
 240  00c3 8b            	dc.b	139
 241  00c4 ff            	dc.b	255
 242  00c5 68            	dc.b	104
 243  00c6 8c            	dc.b	140
 244  00c7 ff            	dc.b	255
 245  00c8 02            	dc.b	2
 246  00c9 28            	dc.b	40
 247  00ca 01            	dc.b	1
 248  00cb 00            	dc.b	0
 249  00cc 0f            	dc.b	15
 250  00cd 20            	dc.b	32
 251  00ce 20            	dc.b	32
 252  00cf 29            	dc.b	41
 253  00d0 80            	dc.b	128
 254  00d1 80            	dc.b	128
 255  00d2 39            	dc.b	57
 256  00d3 80            	dc.b	128
 257  00d4 80            	dc.b	128
 258  00d5 00            	dc.b	0
 259  00d6 8f            	dc.b	143
 260  00d7 04            	dc.b	4
 261  00d8 01            	dc.b	1
 262  00d9 8c            	dc.b	140
 263  00da 84            	dc.b	132
 264  00db 0c            	dc.b	12
 265  00dc 89            	dc.b	137
 266  00dd 88            	dc.b	136
 267  00de 36            	dc.b	54
 268  00df fc            	dc.b	252
 269  00e0 b4            	dc.b	180
 270  00e1 38            	dc.b	56
 271  00e2 20            	dc.b	32
 272  00e3 00            	dc.b	0
 273  00e4 5c            	dc.b	92
 274  00e5 fc            	dc.b	252
 275  00e6 d4            	dc.b	212
 276  00e7 66            	dc.b	102
 277  00e8 03            	dc.b	3
 278  00e9 01            	dc.b	1
 279  00ea 2a            	dc.b	42
 280  00eb 01            	dc.b	1
 281  00ec 01            	dc.b	1
 282  00ed 0f            	dc.b	15
 283  00ee 10            	dc.b	16
 284  00ef 00            	dc.b	0
 285  00f0 ff            	dc.b	255
 286  00f1 ff            	dc.b	255
 287  00f2 ff            	dc.b	255
 288  00f3               _SuppRAPCode:
 289  00f3 01            	dc.b	1
 290  00f4 00            	dc.b	0
 291  00f5 00            	dc.b	0
 292  00f6 00            	dc.b	0
 293  00f7 00            	dc.b	0
 294  00f8 00            	dc.b	0
 295  00f9 00            	dc.b	0
 296  00fa 00            	dc.b	0
 297  00fb 00            	dc.b	0
 298  00fc 00            	dc.b	0
 299  00fd 00            	dc.b	0
 300  00fe 00            	dc.b	0
 301  00ff 00            	dc.b	0
 302  0100 00            	dc.b	0
 303  0101 00            	dc.b	0
 304  0102 00            	dc.b	0
 305  0103 01            	dc.b	1
 306  0104 01            	dc.b	1
 307  0105 00            	dc.b	0
 308  0106 00            	dc.b	0
 309  0107 00            	dc.b	0
 310  0108 00            	dc.b	0
 311  0109 00            	dc.b	0
 312  010a 00            	dc.b	0
 313  010b 00            	dc.b	0
 314  010c 00            	dc.b	0
 315  010d 00            	dc.b	0
 316  010e 00            	dc.b	0
 317  010f 00            	dc.b	0
 318  0110 00            	dc.b	0
 319  0111 00            	dc.b	0
 320  0112 00            	dc.b	0
 321  0113               _SuppRCPCode:
 322  0113 01            	dc.b	1
 323  0114 01            	dc.b	1
 324  0115 01            	dc.b	1
 325  0116 01            	dc.b	1
 326  0117 01            	dc.b	1
 327  0118 01            	dc.b	1
 328  0119 01            	dc.b	1
 329  011a 01            	dc.b	1
 330  011b 01            	dc.b	1
 331  011c 01            	dc.b	1
 332  011d 01            	dc.b	1
 333  011e 01            	dc.b	1
 334  011f 01            	dc.b	1
 335  0120 01            	dc.b	1
 336  0121 00            	dc.b	0
 337  0122 00            	dc.b	0
 338  0123 00            	dc.b	0
 339  0124 00            	dc.b	0
 340  0125 00            	dc.b	0
 341  0126 00            	dc.b	0
 342  0127 00            	dc.b	0
 343  0128 00            	dc.b	0
 344  0129 00            	dc.b	0
 345  012a 00            	dc.b	0
 346  012b 00            	dc.b	0
 347  012c 00            	dc.b	0
 348  012d 00            	dc.b	0
 349  012e 00            	dc.b	0
 350  012f 00            	dc.b	0
 351  0130 00            	dc.b	0
 352  0131 00            	dc.b	0
 353  0132 00            	dc.b	0
 354  0133 01            	dc.b	1
 355  0134 01            	dc.b	1
 356  0135 01            	dc.b	1
 357  0136 01            	dc.b	1
 358  0137 01            	dc.b	1
 359  0138 01            	dc.b	1
 360  0139 01            	dc.b	1
 361  013a 01            	dc.b	1
 362  013b 01            	dc.b	1
 363  013c 01            	dc.b	1
 364  013d 01            	dc.b	1
 365  013e 01            	dc.b	1
 366  013f 01            	dc.b	1
 367  0140 00            	dc.b	0
 368  0141 00            	dc.b	0
 369  0142 00            	dc.b	0
 370  0143 01            	dc.b	1
 371  0144 01            	dc.b	1
 372  0145 01            	dc.b	1
 373  0146 01            	dc.b	1
 374  0147 01            	dc.b	1
 375  0148 01            	dc.b	1
 376  0149 01            	dc.b	1
 377  014a 01            	dc.b	1
 378  014b 01            	dc.b	1
 379  014c 00            	dc.b	0
 380  014d 00            	dc.b	0
 381  014e 00            	dc.b	0
 382  014f 00            	dc.b	0
 383  0150 00            	dc.b	0
 384  0151 00            	dc.b	0
 385  0152 00            	dc.b	0
 386  0153 00            	dc.b	0
 387  0154 01            	dc.b	1
 388  0155 01            	dc.b	1
 389  0156 01            	dc.b	1
 390  0157 01            	dc.b	1
 391  0158 01            	dc.b	1
 392  0159 01            	dc.b	1
 393  015a 01            	dc.b	1
 394  015b 01            	dc.b	1
 395  015c 01            	dc.b	1
 396  015d 01            	dc.b	1
 397  015e 01            	dc.b	1
 398  015f 01            	dc.b	1
 399  0160 00            	dc.b	0
 400  0161 00            	dc.b	0
 401  0162 00            	dc.b	0
 402  0163 01            	dc.b	1
 403  0164 01            	dc.b	1
 404  0165 00            	dc.b	0
 405  0166 00            	dc.b	0
 406  0167 00            	dc.b	0
 407  0168 00            	dc.b	0
 408  0169 00            	dc.b	0
 409  016a 00            	dc.b	0
 410  016b 00            	dc.b	0
 411  016c 00            	dc.b	0
 412  016d 00            	dc.b	0
 413  016e 00            	dc.b	0
 414  016f 00            	dc.b	0
 415  0170 00            	dc.b	0
 416  0171 00            	dc.b	0
 417  0172 00            	dc.b	0
 418  0173 01            	dc.b	1
 419  0174 01            	dc.b	1
 420  0175 01            	dc.b	1
 421  0176 01            	dc.b	1
 422  0177 01            	dc.b	1
 423  0178 01            	dc.b	1
 424  0179 01            	dc.b	1
 425  017a 01            	dc.b	1
 426  017b 01            	dc.b	1
 427  017c 00            	dc.b	0
 428  017d 00            	dc.b	0
 429  017e 00            	dc.b	0
 430  017f 00            	dc.b	0
 431  0180 00            	dc.b	0
 432  0181 00            	dc.b	0
 433  0182 00            	dc.b	0
 434  0183 00            	dc.b	0
 435  0184 01            	dc.b	1
 436  0185 01            	dc.b	1
 437  0186 01            	dc.b	1
 438  0187 01            	dc.b	1
 439  0188 01            	dc.b	1
 440  0189 00            	dc.b	0
 441  018a 00            	dc.b	0
 442  018b 00            	dc.b	0
 443  018c 00            	dc.b	0
 444  018d 00            	dc.b	0
 445  018e 00            	dc.b	0
 446  018f 00            	dc.b	0
 447  0190 00            	dc.b	0
 448  0191 01            	dc.b	1
 449  0192 00            	dc.b	0
 450  0193               _bCSCMtx_RGB2YUV_ITU601_16_235:
 451  0193 00            	dc.b	0
 452  0194 80            	dc.b	128
 453  0195 10            	dc.b	16
 454  0196 b2            	dc.b	178
 455  0197 04            	dc.b	4
 456  0198 65            	dc.b	101
 457  0199 02            	dc.b	2
 458  019a e9            	dc.b	233
 459  019b 00            	dc.b	0
 460  019c 93            	dc.b	147
 461  019d 3c            	dc.b	60
 462  019e 18            	dc.b	24
 463  019f 04            	dc.b	4
 464  01a0 55            	dc.b	85
 465  01a1 3f            	dc.b	63
 466  01a2 49            	dc.b	73
 467  01a3 3d            	dc.b	61
 468  01a4 9f            	dc.b	159
 469  01a5 3e            	dc.b	62
 470  01a6 18            	dc.b	24
 471  01a7 04            	dc.b	4
 472  01a8               _bCSCMtx_RGB2YUV_ITU601_0_255:
 473  01a8 10            	dc.b	16
 474  01a9 80            	dc.b	128
 475  01aa 10            	dc.b	16
 476  01ab 09            	dc.b	9
 477  01ac 04            	dc.b	4
 478  01ad 0e            	dc.b	14
 479  01ae 02            	dc.b	2
 480  01af c9            	dc.b	201
 481  01b0 00            	dc.b	0
 482  01b1 0f            	dc.b	15
 483  01b2 3d            	dc.b	61
 484  01b3 84            	dc.b	132
 485  01b4 03            	dc.b	3
 486  01b5 6d            	dc.b	109
 487  01b6 3f            	dc.b	63
 488  01b7 ab            	dc.b	171
 489  01b8 3d            	dc.b	61
 490  01b9 d1            	dc.b	209
 491  01ba 3e            	dc.b	62
 492  01bb 84            	dc.b	132
 493  01bc 03            	dc.b	3
 494  01bd               _bCSCMtx_RGB2YUV_ITU709_16_235:
 495  01bd 00            	dc.b	0
 496  01be 80            	dc.b	128
 497  01bf 10            	dc.b	16
 498  01c0 b8            	dc.b	184
 499  01c1 05            	dc.b	5
 500  01c2 b4            	dc.b	180
 501  01c3 01            	dc.b	1
 502  01c4 94            	dc.b	148
 503  01c5 00            	dc.b	0
 504  01c6 4a            	dc.b	74
 505  01c7 3c            	dc.b	60
 506  01c8 17            	dc.b	23
 507  01c9 04            	dc.b	4
 508  01ca 9f            	dc.b	159
 509  01cb 3f            	dc.b	63
 510  01cc d9            	dc.b	217
 511  01cd 3c            	dc.b	60
 512  01ce 10            	dc.b	16
 513  01cf 3f            	dc.b	63
 514  01d0 17            	dc.b	23
 515  01d1 04            	dc.b	4
 516  01d2               _bCSCMtx_RGB2YUV_ITU709_0_255:
 517  01d2 10            	dc.b	16
 518  01d3 80            	dc.b	128
 519  01d4 10            	dc.b	16
 520  01d5 ea            	dc.b	234
 521  01d6 04            	dc.b	4
 522  01d7 77            	dc.b	119
 523  01d8 01            	dc.b	1
 524  01d9 7f            	dc.b	127
 525  01da 00            	dc.b	0
 526  01db d0            	dc.b	208
 527  01dc 3c            	dc.b	60
 528  01dd 83            	dc.b	131
 529  01de 03            	dc.b	3
 530  01df ad            	dc.b	173
 531  01e0 3f            	dc.b	63
 532  01e1 4b            	dc.b	75
 533  01e2 3d            	dc.b	61
 534  01e3 32            	dc.b	50
 535  01e4 3f            	dc.b	63
 536  01e5 83            	dc.b	131
 537  01e6 03            	dc.b	3
 538  01e7               _bCSCMtx_YUV2RGB_ITU601_16_235:
 539  01e7 00            	dc.b	0
 540  01e8 00            	dc.b	0
 541  01e9 00            	dc.b	0
 542  01ea 00            	dc.b	0
 543  01eb 08            	dc.b	8
 544  01ec 6b            	dc.b	107
 545  01ed 3a            	dc.b	58
 546  01ee 50            	dc.b	80
 547  01ef 3d            	dc.b	61
 548  01f0 00            	dc.b	0
 549  01f1 08            	dc.b	8
 550  01f2 f5            	dc.b	245
 551  01f3 0a            	dc.b	10
 552  01f4 02            	dc.b	2
 553  01f5 00            	dc.b	0
 554  01f6 00            	dc.b	0
 555  01f7 08            	dc.b	8
 556  01f8 fd            	dc.b	253
 557  01f9 3f            	dc.b	63
 558  01fa da            	dc.b	218
 559  01fb 0d            	dc.b	13
 560  01fc               _bCSCMtx_YUV2RGB_ITU601_0_255:
 561  01fc 04            	dc.b	4
 562  01fd 00            	dc.b	0
 563  01fe a7            	dc.b	167
 564  01ff 4f            	dc.b	79
 565  0200 09            	dc.b	9
 566  0201 81            	dc.b	129
 567  0202 39            	dc.b	57
 568  0203 dd            	dc.b	221
 569  0204 3c            	dc.b	60
 570  0205 4f            	dc.b	79
 571  0206 09            	dc.b	9
 572  0207 c4            	dc.b	196
 573  0208 0c            	dc.b	12
 574  0209 01            	dc.b	1
 575  020a 00            	dc.b	0
 576  020b 4f            	dc.b	79
 577  020c 09            	dc.b	9
 578  020d fd            	dc.b	253
 579  020e 3f            	dc.b	63
 580  020f 1f            	dc.b	31
 581  0210 10            	dc.b	16
 582  0211               _bCSCMtx_YUV2RGB_ITU709_16_235:
 583  0211 00            	dc.b	0
 584  0212 00            	dc.b	0
 585  0213 00            	dc.b	0
 586  0214 00            	dc.b	0
 587  0215 08            	dc.b	8
 588  0216 55            	dc.b	85
 589  0217 3c            	dc.b	60
 590  0218 88            	dc.b	136
 591  0219 3e            	dc.b	62
 592  021a 00            	dc.b	0
 593  021b 08            	dc.b	8
 594  021c 51            	dc.b	81
 595  021d 0c            	dc.b	12
 596  021e 00            	dc.b	0
 597  021f 00            	dc.b	0
 598  0220 00            	dc.b	0
 599  0221 08            	dc.b	8
 600  0222 00            	dc.b	0
 601  0223 00            	dc.b	0
 602  0224 84            	dc.b	132
 603  0225 0e            	dc.b	14
 604  0226               _bCSCMtx_YUV2RGB_ITU709_0_255:
 605  0226 04            	dc.b	4
 606  0227 00            	dc.b	0
 607  0228 a7            	dc.b	167
 608  0229 4f            	dc.b	79
 609  022a 09            	dc.b	9
 610  022b ba            	dc.b	186
 611  022c 3b            	dc.b	59
 612  022d 4b            	dc.b	75
 613  022e 3e            	dc.b	62
 614  022f 4f            	dc.b	79
 615  0230 09            	dc.b	9
 616  0231 57            	dc.b	87
 617  0232 0e            	dc.b	14
 618  0233 02            	dc.b	2
 619  0234 00            	dc.b	0
 620  0235 4f            	dc.b	79
 621  0236 09            	dc.b	9
 622  0237 fe            	dc.b	254
 623  0238 3f            	dc.b	63
 624  0239 e8            	dc.b	232
 625  023a 10            	dc.b	16
 626  023b               _Default_Edid_Block:
 627  023b 00            	dc.b	0
 628  023c ff            	dc.b	255
 629  023d ff            	dc.b	255
 630  023e ff            	dc.b	255
 631  023f ff            	dc.b	255
 632  0240 ff            	dc.b	255
 633  0241 ff            	dc.b	255
 634  0242 00            	dc.b	0
 635  0243 26            	dc.b	38
 636  0244 85            	dc.b	133
 637  0245 02            	dc.b	2
 638  0246 68            	dc.b	104
 639  0247 01            	dc.b	1
 640  0248 01            	dc.b	1
 641  0249 01            	dc.b	1
 642  024a 01            	dc.b	1
 643  024b 21            	dc.b	33
 644  024c 17            	dc.b	23
 645  024d 01            	dc.b	1
 646  024e 03            	dc.b	3
 647  024f 80            	dc.b	128
 648  0250 55            	dc.b	85
 649  0251 30            	dc.b	48
 650  0252 78            	dc.b	120
 651  0253 2a            	dc.b	42
 652  0254 63            	dc.b	99
 653  0255 bd            	dc.b	189
 654  0256 a1            	dc.b	161
 655  0257 54            	dc.b	84
 656  0258 52            	dc.b	82
 657  0259 9e            	dc.b	158
 658  025a 26            	dc.b	38
 659  025b 0c            	dc.b	12
 660  025c 47            	dc.b	71
 661  025d 4a            	dc.b	74
 662  025e 20            	dc.b	32
 663  025f 08            	dc.b	8
 664  0260 00            	dc.b	0
 665  0261 81            	dc.b	129
 666  0262 80            	dc.b	128
 667  0263 d1            	dc.b	209
 668  0264 c0            	dc.b	192
 669  0265 01            	dc.b	1
 670  0266 01            	dc.b	1
 671  0267 01            	dc.b	1
 672  0268 01            	dc.b	1
 673  0269 01            	dc.b	1
 674  026a 01            	dc.b	1
 675  026b 01            	dc.b	1
 676  026c 01            	dc.b	1
 677  026d 01            	dc.b	1
 678  026e 01            	dc.b	1
 679  026f 01            	dc.b	1
 680  0270 01            	dc.b	1
 681  0271 04            	dc.b	4
 682  0272 74            	dc.b	116
 683  0273 00            	dc.b	0
 684  0274 30            	dc.b	48
 685  0275 f2            	dc.b	242
 686  0276 70            	dc.b	112
 687  0277 5a            	dc.b	90
 688  0278 80            	dc.b	128
 689  0279 b0            	dc.b	176
 690  027a 58            	dc.b	88
 691  027b 8a            	dc.b	138
 692  027c 00            	dc.b	0
 693  027d a2            	dc.b	162
 694  027e 0b            	dc.b	11
 695  027f 32            	dc.b	50
 696  0280 00            	dc.b	0
 697  0281 00            	dc.b	0
 698  0282 1e            	dc.b	30
 699  0283 01            	dc.b	1
 700  0284 1d            	dc.b	29
 701  0285 00            	dc.b	0
 702  0286 72            	dc.b	114
 703  0287 51            	dc.b	81
 704  0288 d0            	dc.b	208
 705  0289 1e            	dc.b	30
 706  028a 20            	dc.b	32
 707  028b 6e            	dc.b	110
 708  028c 28            	dc.b	40
 709  028d 55            	dc.b	85
 710  028e 00            	dc.b	0
 711  028f c4            	dc.b	196
 712  0290 8e            	dc.b	142
 713  0291 21            	dc.b	33
 714  0292 00            	dc.b	0
 715  0293 00            	dc.b	0
 716  0294 1e            	dc.b	30
 717  0295 00            	dc.b	0
 718  0296 00            	dc.b	0
 719  0297 00            	dc.b	0
 720  0298 fd            	dc.b	253
 721  0299 00            	dc.b	0
 722  029a 18            	dc.b	24
 723  029b 4c            	dc.b	76
 724  029c 1e            	dc.b	30
 725  029d 53            	dc.b	83
 726  029e 1e            	dc.b	30
 727  029f 00            	dc.b	0
 728  02a0 0a            	dc.b	10
 729  02a1 20            	dc.b	32
 730  02a2 20            	dc.b	32
 731  02a3 20            	dc.b	32
 732  02a4 20            	dc.b	32
 733  02a5 20            	dc.b	32
 734  02a6 20            	dc.b	32
 735  02a7 00            	dc.b	0
 736  02a8 00            	dc.b	0
 737  02a9 00            	dc.b	0
 738  02aa fc            	dc.b	252
 739  02ab 00            	dc.b	0
 740  02ac 49            	dc.b	73
 741  02ad 54            	dc.b	84
 742  02ae 45            	dc.b	69
 743  02af 36            	dc.b	54
 744  02b0 38            	dc.b	56
 745  02b1 30            	dc.b	48
 746  02b2 32            	dc.b	50
 747  02b3 0a            	dc.b	10
 748  02b4 20            	dc.b	32
 749  02b5 20            	dc.b	32
 750  02b6 20            	dc.b	32
 751  02b7 20            	dc.b	32
 752  02b8 20            	dc.b	32
 753  02b9 01            	dc.b	1
 754  02ba 8b            	dc.b	139
 755  02bb 02            	dc.b	2
 756  02bc 03            	dc.b	3
 757  02bd 25            	dc.b	37
 758  02be f1            	dc.b	241
 759  02bf 43            	dc.b	67
 760  02c0 84            	dc.b	132
 761  02c1 10            	dc.b	16
 762  02c2 03            	dc.b	3
 763  02c3 23            	dc.b	35
 764  02c4 09            	dc.b	9
 765  02c5 07            	dc.b	7
 766  02c6 07            	dc.b	7
 767  02c7 83            	dc.b	131
 768  02c8 01            	dc.b	1
 769  02c9 00            	dc.b	0
 770  02ca 00            	dc.b	0
 771  02cb e2            	dc.b	226
 772  02cc 00            	dc.b	0
 773  02cd 0f            	dc.b	15
 774  02ce e3            	dc.b	227
 775  02cf 05            	dc.b	5
 776  02d0 03            	dc.b	3
 777  02d1 01            	dc.b	1
 778  02d2 6d            	dc.b	109
 779  02d3 03            	dc.b	3
 780  02d4 0c            	dc.b	12
 781  02d5 00            	dc.b	0
 782  02d6 10            	dc.b	16
 783  02d7 00            	dc.b	0
 784  02d8 38            	dc.b	56
 785  02d9 3c            	dc.b	60
 786  02da 20            	dc.b	32
 787  02db 00            	dc.b	0
 788  02dc 60            	dc.b	96
 789  02dd 03            	dc.b	3
 790  02de 02            	dc.b	2
 791  02df 01            	dc.b	1
 792  02e0 01            	dc.b	1
 793  02e1 1d            	dc.b	29
 794  02e2 00            	dc.b	0
 795  02e3 72            	dc.b	114
 796  02e4 51            	dc.b	81
 797  02e5 d0            	dc.b	208
 798  02e6 1e            	dc.b	30
 799  02e7 20            	dc.b	32
 800  02e8 6e            	dc.b	110
 801  02e9 28            	dc.b	40
 802  02ea 55            	dc.b	85
 803  02eb 00            	dc.b	0
 804  02ec a0            	dc.b	160
 805  02ed 5a            	dc.b	90
 806  02ee 00            	dc.b	0
 807  02ef 00            	dc.b	0
 808  02f0 00            	dc.b	0
 809  02f1 1e            	dc.b	30
 810  02f2 8c            	dc.b	140
 811  02f3 0a            	dc.b	10
 812  02f4 d0            	dc.b	208
 813  02f5 8a            	dc.b	138
 814  02f6 20            	dc.b	32
 815  02f7 e0            	dc.b	224
 816  02f8 2d            	dc.b	45
 817  02f9 10            	dc.b	16
 818  02fa 10            	dc.b	16
 819  02fb 3e            	dc.b	62
 820  02fc 96            	dc.b	150
 821  02fd 00            	dc.b	0
 822  02fe a0            	dc.b	160
 823  02ff 5a            	dc.b	90
 824  0300 00            	dc.b	0
 825  0301 00            	dc.b	0
 826  0302 00            	dc.b	0
 827  0303 18            	dc.b	24
 828  0304 f3            	dc.b	243
 829  0305 39            	dc.b	57
 830  0306 80            	dc.b	128
 831  0307 18            	dc.b	24
 832  0308 71            	dc.b	113
 833  0309 38            	dc.b	56
 834  030a 2d            	dc.b	45
 835  030b 40            	dc.b	64
 836  030c 58            	dc.b	88
 837  030d 2c            	dc.b	44
 838  030e 45            	dc.b	69
 839  030f 00            	dc.b	0
 840  0310 e0            	dc.b	224
 841  0311 0e            	dc.b	14
 842  0312 11            	dc.b	17
 843  0313 00            	dc.b	0
 844  0314 00            	dc.b	0
 845  0315 1e            	dc.b	30
 846  0316 00            	dc.b	0
 847  0317 00            	dc.b	0
 848  0318 00            	dc.b	0
 849  0319 00            	dc.b	0
 850  031a 00            	dc.b	0
 851  031b 00            	dc.b	0
 852  031c 00            	dc.b	0
 853  031d 00            	dc.b	0
 854  031e 00            	dc.b	0
 855  031f 00            	dc.b	0
 856  0320 00            	dc.b	0
 857  0321 00            	dc.b	0
 858  0322 00            	dc.b	0
 859  0323 00            	dc.b	0
 860  0324 00            	dc.b	0
 861  0325 00            	dc.b	0
 862  0326 00            	dc.b	0
 863  0327 00            	dc.b	0
 864  0328 00            	dc.b	0
 865  0329 00            	dc.b	0
 866  032a 00            	dc.b	0
 867  032b 00            	dc.b	0
 868  032c 00            	dc.b	0
 869  032d 00            	dc.b	0
 870  032e 00            	dc.b	0
 871  032f 00            	dc.b	0
 872  0330 00            	dc.b	0
 873  0331 00            	dc.b	0
 874  0332 00            	dc.b	0
 875  0333 00            	dc.b	0
 876  0334 00            	dc.b	0
 877  0335 00            	dc.b	0
 878  0336 00            	dc.b	0
 879  0337 00            	dc.b	0
 880  0338 00            	dc.b	0
 881  0339 00            	dc.b	0
 882  033a 15            	dc.b	21
 883                     	switch	.data
 884  0010               _VStateStr:
 885  0010 2dfe          	dc.w	L7
 886  0012 2de8          	dc.w	L11
 887  0014 2dd3          	dc.w	L31
 888  0016 2dc6          	dc.w	L51
 889  0018 2db6          	dc.w	L71
 890  001a 2da7          	dc.w	L12
 891  001c 2d93          	dc.w	L32
 892  001e 2d84          	dc.w	L52
 893  0020 2d72          	dc.w	L72
 894  0022 2d5d          	dc.w	L13
 895  0024 2d4e          	dc.w	L33
 896  0026 2d36          	dc.w	L53
 897  0028 2d26          	dc.w	L73
 898  002a 2d16          	dc.w	L14
 899  002c               _AStateStr:
 900  002c 2d06          	dc.w	L34
 901  002e 2cf2          	dc.w	L54
 902  0030 2ce0          	dc.w	L74
 903  0032 2ccc          	dc.w	L15
 904  0034 2cbd          	dc.w	L35
 905  0036 2cad          	dc.w	L55
 996                     ; 768 static SYS_STATUS EDID_RAM_Write(unsigned char offset,unsigned char byteno,unsigned char *p_data )
 996                     ; 769 {
 997                     	switch	.text
 998  0000               L75f_EDID_RAM_Write:
1000  0000 89            	pushw	x
1001  0001 88            	push	a
1002       00000001      OFST:	set	1
1005                     ; 771 	flag = i2c_write_byte(EDID_ADDR, offset, byteno, p_data, HDMI_DEV);
1007  0002 1e07          	ldw	x,(OFST+6,sp)
1008  0004 89            	pushw	x
1009  0005 7b05          	ld	a,(OFST+4,sp)
1010  0007 88            	push	a
1011  0008 7b05          	ld	a,(OFST+4,sp)
1012  000a 97            	ld	xl,a
1013  000b a6a0          	ld	a,#160
1014  000d 95            	ld	xh,a
1015  000e 8d000000      	callf	f_SWI2C_WriteBytes
1017  0012 5b03          	addw	sp,#3
1018  0014 6b01          	ld	(OFST+0,sp),a
1019                     ; 772 	return !flag;
1021  0016 0d01          	tnz	(OFST+0,sp)
1022  0018 2604          	jrne	L6
1023  001a a601          	ld	a,#1
1024  001c 2001          	jra	L01
1025  001e               L6:
1026  001e 4f            	clr	a
1027  001f               L01:
1030  001f 5b03          	addw	sp,#3
1031  0021 87            	retf
1070                     ; 775 static unsigned char EDID_RAM_Read(unsigned char offset)
1070                     ; 776 {
1071                     	switch	.text
1072  0022               L16f_EDID_RAM_Read:
1074  0022 88            	push	a
1075       00000001      OFST:	set	1
1078                     ; 778 	i2c_read_byte(EDID_ADDR, offset,1, &p_data, HDMI_DEV);
1080  0023 96            	ldw	x,sp
1081  0024 1c0001        	addw	x,#OFST+0
1082  0027 89            	pushw	x
1083  0028 4b01          	push	#1
1084  002a 97            	ld	xl,a
1085  002b a6a0          	ld	a,#160
1086  002d 95            	ld	xh,a
1087  002e 8d000000      	callf	f_SWI2C_ReadBytes
1089  0032 5b03          	addw	sp,#3
1090                     ; 779 	return p_data;
1092  0034 7b01          	ld	a,(OFST+0,sp)
1095  0036 5b01          	addw	sp,#1
1096  0038 87            	retf
1143                     ; 783 static unsigned char hdmirxrd( unsigned char RegAddr)
1143                     ; 784 {
1144                     	switch	.text
1145  0039               L36f_hdmirxrd:
1147  0039 88            	push	a
1148  003a 89            	pushw	x
1149       00000002      OFST:	set	2
1152                     ; 788 	FLAG= i2c_read_byte(HDMI_ADDR, RegAddr, 1, &mDataIn, HDMI_DEV);
1154  003b 96            	ldw	x,sp
1155  003c 1c0002        	addw	x,#OFST+0
1156  003f 89            	pushw	x
1157  0040 4b01          	push	#1
1158  0042 97            	ld	xl,a
1159  0043 a690          	ld	a,#144
1160  0045 95            	ld	xh,a
1161  0046 8d000000      	callf	f_SWI2C_ReadBytes
1163  004a 5b03          	addw	sp,#3
1164  004c 6b01          	ld	(OFST-1,sp),a
1165                     ; 789 	if(FLAG==0)
1167  004e 0d01          	tnz	(OFST-1,sp)
1168  0050 2612          	jrne	L154
1169                     ; 791 	MHLRX_DEBUG_PRINTF(printf("HDMI Read ERROR !!!"));
1171  0052 ae2c99        	ldw	x,#L354
1172  0055 8d000000      	callf	f_printf
1174                     ; 792 	MHLRX_DEBUG_PRINTF(printf("=====  Read Reg0x%x =  \r\n",RegAddr));
1176  0059 7b03          	ld	a,(OFST+1,sp)
1177  005b 88            	push	a
1178  005c ae2c7f        	ldw	x,#L554
1179  005f 8d000000      	callf	f_printf
1181  0063 84            	pop	a
1182  0064               L154:
1183                     ; 797 	return mDataIn;
1185  0064 7b02          	ld	a,(OFST+0,sp)
1188  0066 5b03          	addw	sp,#3
1189  0068 87            	retf
1236                     ; 800 static unsigned char hdmirxwr( unsigned char RegAddr,unsigned char DataIn)
1236                     ; 801 {
1237                     	switch	.text
1238  0069               L56f_hdmirxwr:
1240  0069 89            	pushw	x
1241  006a 88            	push	a
1242       00000001      OFST:	set	1
1245                     ; 806 	flag= i2c_write_byte(HDMI_ADDR, RegAddr, 1, &DataIn, HDMI_DEV);
1247  006b 96            	ldw	x,sp
1248  006c 1c0003        	addw	x,#OFST+2
1249  006f 89            	pushw	x
1250  0070 4b01          	push	#1
1251  0072 7b05          	ld	a,(OFST+4,sp)
1252  0074 97            	ld	xl,a
1253  0075 a690          	ld	a,#144
1254  0077 95            	ld	xh,a
1255  0078 8d000000      	callf	f_SWI2C_WriteBytes
1257  007c 5b03          	addw	sp,#3
1258  007e 6b01          	ld	(OFST+0,sp),a
1259                     ; 807 	if(flag==0)
1261  0080 0d01          	tnz	(OFST+0,sp)
1262  0082 2615          	jrne	L774
1263                     ; 810 	MHLRX_DEBUG_PRINTF(printf("HDMI I2C ERROR !!!"));
1265  0084 ae2c6c        	ldw	x,#L105
1266  0087 8d000000      	callf	f_printf
1268                     ; 811 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",RegAddr,DataIn));
1270  008b 7b03          	ld	a,(OFST+2,sp)
1271  008d 88            	push	a
1272  008e 7b03          	ld	a,(OFST+2,sp)
1273  0090 88            	push	a
1274  0091 ae2c4a        	ldw	x,#L305
1275  0094 8d000000      	callf	f_printf
1277  0098 85            	popw	x
1278  0099               L774:
1279                     ; 817 	return !flag;
1281  0099 0d01          	tnz	(OFST+0,sp)
1282  009b 2604          	jrne	L02
1283  009d a601          	ld	a,#1
1284  009f 2001          	jra	L22
1285  00a1               L02:
1286  00a1 4f            	clr	a
1287  00a2               L22:
1290  00a2 5b03          	addw	sp,#3
1291  00a4 87            	retf
1345                     ; 820 static unsigned char  hdmirxset( unsigned char  offset, unsigned char  mask, unsigned char  ucdata )
1345                     ; 821 {
1346                     	switch	.text
1347  00a5               L76f_hdmirxset:
1349  00a5 89            	pushw	x
1350  00a6 89            	pushw	x
1351       00000002      OFST:	set	2
1354                     ; 823 	temp = hdmirxrd(offset);
1356  00a7 9e            	ld	a,xh
1357  00a8 8d390039      	callf	L36f_hdmirxrd
1359  00ac 6b02          	ld	(OFST+0,sp),a
1360                     ; 824 	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
1362  00ae 7b04          	ld	a,(OFST+2,sp)
1363  00b0 1408          	and	a,(OFST+6,sp)
1364  00b2 6b01          	ld	(OFST-1,sp),a
1365  00b4 7b04          	ld	a,(OFST+2,sp)
1366  00b6 43            	cpl	a
1367  00b7 a4ff          	and	a,#255
1368  00b9 1402          	and	a,(OFST+0,sp)
1369  00bb 1b01          	add	a,(OFST-1,sp)
1370  00bd 6b02          	ld	(OFST+0,sp),a
1371                     ; 825 	return hdmirxwr(offset, temp);
1373  00bf 7b02          	ld	a,(OFST+0,sp)
1374  00c1 97            	ld	xl,a
1375  00c2 7b03          	ld	a,(OFST+1,sp)
1376  00c4 95            	ld	xh,a
1377  00c5 8d690069      	callf	L56f_hdmirxwr
1381  00c9 5b04          	addw	sp,#4
1382  00cb 87            	retf
1439                     ; 828 static void hdmirxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1439                     ; 829 {
1440                     	switch	.text
1441  00cc               L17f_hdmirxbwr:
1443  00cc 89            	pushw	x
1444  00cd 88            	push	a
1445       00000001      OFST:	set	1
1448                     ; 831 	if( byteno>0 )
1450  00ce 9f            	ld	a,xl
1451  00cf 4d            	tnz	a
1452  00d0 2714          	jreq	L355
1453                     ; 832 	flag= i2c_write_byte(HDMI_ADDR, offset, byteno, rddata, HDMI_DEV);
1455  00d2 1e07          	ldw	x,(OFST+6,sp)
1456  00d4 89            	pushw	x
1457  00d5 7b05          	ld	a,(OFST+4,sp)
1458  00d7 88            	push	a
1459  00d8 7b05          	ld	a,(OFST+4,sp)
1460  00da 97            	ld	xl,a
1461  00db a690          	ld	a,#144
1462  00dd 95            	ld	xh,a
1463  00de 8d000000      	callf	f_SWI2C_WriteBytes
1465  00e2 5b03          	addw	sp,#3
1466  00e4 6b01          	ld	(OFST+0,sp),a
1467  00e6               L355:
1468                     ; 833 	if(flag==0)
1470  00e6 0d01          	tnz	(OFST+0,sp)
1471  00e8 2616          	jrne	L555
1472                     ; 836 	MHLRX_DEBUG_PRINTF(printf("IT6802 I2C ERROR !!!"));
1474  00ea ae2c35        	ldw	x,#L755
1475  00ed 8d000000      	callf	f_printf
1477                     ; 837 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,rddata));
1479  00f1 1e07          	ldw	x,(OFST+6,sp)
1480  00f3 89            	pushw	x
1481  00f4 7b04          	ld	a,(OFST+3,sp)
1482  00f6 88            	push	a
1483  00f7 ae2c4a        	ldw	x,#L305
1484  00fa 8d000000      	callf	f_printf
1486  00fe 5b03          	addw	sp,#3
1487  0100               L555:
1488                     ; 843 }
1491  0100 5b03          	addw	sp,#3
1492  0102 87            	retf
1540                     ; 846 static unsigned char mhlrxrd( unsigned char offset )
1540                     ; 847 {
1541                     	switch	.text
1542  0103               L37f_mhlrxrd:
1544  0103 88            	push	a
1545  0104 89            	pushw	x
1546       00000002      OFST:	set	2
1549                     ; 850 	FLAG=i2c_read_byte(MHL_ADDR, offset, 1, &mDataIn, HDMI_DEV);
1551  0105 96            	ldw	x,sp
1552  0106 1c0002        	addw	x,#OFST+0
1553  0109 89            	pushw	x
1554  010a 4b01          	push	#1
1555  010c 97            	ld	xl,a
1556  010d a6e0          	ld	a,#224
1557  010f 95            	ld	xh,a
1558  0110 8d000000      	callf	f_SWI2C_ReadBytes
1560  0114 5b03          	addw	sp,#3
1561  0116 6b01          	ld	(OFST-1,sp),a
1562                     ; 851 	if(FLAG==0)
1564  0118 0d01          	tnz	(OFST-1,sp)
1565  011a 2619          	jrne	L106
1566                     ; 854 	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
1568  011c ae2c23        	ldw	x,#L306
1569  011f 8d000000      	callf	f_printf
1571                     ; 855 	MHLRX_DEBUG_PRINTF(printf("=====  read Reg0x%x=%x =====  \r\n",offset,mDataIn));
1573  0123 7b02          	ld	a,(OFST+0,sp)
1574  0125 88            	push	a
1575  0126 7b04          	ld	a,(OFST+2,sp)
1576  0128 88            	push	a
1577  0129 ae2c02        	ldw	x,#L506
1578  012c 8d000000      	callf	f_printf
1580  0130 85            	popw	x
1581                     ; 857 	SWI2C_ErrorProcess();
1583  0131 8d000000      	callf	f_SWI2C_ErrorProcess
1585  0135               L106:
1586                     ; 861 	return mDataIn;
1588  0135 7b02          	ld	a,(OFST+0,sp)
1591  0137 5b03          	addw	sp,#3
1592  0139 87            	retf
1640                     ; 864 static unsigned char mhlrxwr( unsigned char offset, unsigned char ucdata )
1640                     ; 865 {
1641                     	switch	.text
1642  013a               L57f_mhlrxwr:
1644  013a 89            	pushw	x
1645  013b 88            	push	a
1646       00000001      OFST:	set	1
1649                     ; 867 	flag= i2c_write_byte(MHL_ADDR, offset, 1, &ucdata, HDMI_DEV);
1651  013c 96            	ldw	x,sp
1652  013d 1c0003        	addw	x,#OFST+2
1653  0140 89            	pushw	x
1654  0141 4b01          	push	#1
1655  0143 7b05          	ld	a,(OFST+4,sp)
1656  0145 97            	ld	xl,a
1657  0146 a6e0          	ld	a,#224
1658  0148 95            	ld	xh,a
1659  0149 8d000000      	callf	f_SWI2C_WriteBytes
1661  014d 5b03          	addw	sp,#3
1662  014f 6b01          	ld	(OFST+0,sp),a
1663                     ; 868 	if(flag==0)
1665  0151 0d01          	tnz	(OFST+0,sp)
1666  0153 2619          	jrne	L726
1667                     ; 871 	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
1669  0155 ae2c23        	ldw	x,#L306
1670  0158 8d000000      	callf	f_printf
1672                     ; 872 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,ucdata));
1674  015c 7b03          	ld	a,(OFST+2,sp)
1675  015e 88            	push	a
1676  015f 7b03          	ld	a,(OFST+2,sp)
1677  0161 88            	push	a
1678  0162 ae2c4a        	ldw	x,#L305
1679  0165 8d000000      	callf	f_printf
1681  0169 85            	popw	x
1682                     ; 874 	SWI2C_ErrorProcess();
1684  016a 8d000000      	callf	f_SWI2C_ErrorProcess
1686  016e               L726:
1687                     ; 878 	return !flag;
1689  016e 0d01          	tnz	(OFST+0,sp)
1690  0170 2604          	jrne	L43
1691  0172 a601          	ld	a,#1
1692  0174 2001          	jra	L63
1693  0176               L43:
1694  0176 4f            	clr	a
1695  0177               L63:
1698  0177 5b03          	addw	sp,#3
1699  0179 87            	retf
1753                     ; 881 static unsigned char mhlrxset( unsigned char offset, unsigned char mask, unsigned char ucdata )
1753                     ; 882 {
1754                     	switch	.text
1755  017a               L77f_mhlrxset:
1757  017a 89            	pushw	x
1758  017b 89            	pushw	x
1759       00000002      OFST:	set	2
1762                     ; 884 	temp = mhlrxrd(offset);
1764  017c 9e            	ld	a,xh
1765  017d 8d030103      	callf	L37f_mhlrxrd
1767  0181 6b02          	ld	(OFST+0,sp),a
1768                     ; 885 	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
1770  0183 7b04          	ld	a,(OFST+2,sp)
1771  0185 1408          	and	a,(OFST+6,sp)
1772  0187 6b01          	ld	(OFST-1,sp),a
1773  0189 7b04          	ld	a,(OFST+2,sp)
1774  018b 43            	cpl	a
1775  018c a4ff          	and	a,#255
1776  018e 1402          	and	a,(OFST+0,sp)
1777  0190 1b01          	add	a,(OFST-1,sp)
1778  0192 6b02          	ld	(OFST+0,sp),a
1779                     ; 886 	return mhlrxwr(offset, temp);
1781  0194 7b02          	ld	a,(OFST+0,sp)
1782  0196 97            	ld	xl,a
1783  0197 7b03          	ld	a,(OFST+1,sp)
1784  0199 95            	ld	xh,a
1785  019a 8d3a013a      	callf	L57f_mhlrxwr
1789  019e 5b04          	addw	sp,#4
1790  01a0 87            	retf
1839                     ; 889 static void mhlrxbrd( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1839                     ; 890 {
1840                     	switch	.text
1841  01a1               L101f_mhlrxbrd:
1843  01a1 89            	pushw	x
1844       00000000      OFST:	set	0
1847                     ; 891 	if( byteno>0 )
1849  01a2 9f            	ld	a,xl
1850  01a3 4d            	tnz	a
1851  01a4 2712          	jreq	L576
1852                     ; 892 	i2c_read_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
1854  01a6 1e06          	ldw	x,(OFST+6,sp)
1855  01a8 89            	pushw	x
1856  01a9 7b04          	ld	a,(OFST+4,sp)
1857  01ab 88            	push	a
1858  01ac 7b04          	ld	a,(OFST+4,sp)
1859  01ae 97            	ld	xl,a
1860  01af a6e0          	ld	a,#224
1861  01b1 95            	ld	xh,a
1862  01b2 8d000000      	callf	f_SWI2C_ReadBytes
1864  01b6 5b03          	addw	sp,#3
1865  01b8               L576:
1866                     ; 893 }
1869  01b8 85            	popw	x
1870  01b9 87            	retf
1919                     ; 895 static void mhlrxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1919                     ; 896 {
1920                     	switch	.text
1921  01ba               L301f_mhlrxbwr:
1923  01ba 89            	pushw	x
1924       00000000      OFST:	set	0
1927                     ; 897 	if( byteno>0 )
1929  01bb 9f            	ld	a,xl
1930  01bc 4d            	tnz	a
1931  01bd 2712          	jreq	L127
1932                     ; 898 	i2c_write_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
1934  01bf 1e06          	ldw	x,(OFST+6,sp)
1935  01c1 89            	pushw	x
1936  01c2 7b04          	ld	a,(OFST+4,sp)
1937  01c4 88            	push	a
1938  01c5 7b04          	ld	a,(OFST+4,sp)
1939  01c7 97            	ld	xl,a
1940  01c8 a6e0          	ld	a,#224
1941  01ca 95            	ld	xh,a
1942  01cb 8d000000      	callf	f_SWI2C_WriteBytes
1944  01cf 5b03          	addw	sp,#3
1945  01d1               L127:
1946                     ; 899 }
1949  01d1 85            	popw	x
1950  01d2 87            	retf
2967                     ; 905 static struct it6802_dev_data* get_it6802_dev_data(void)
2967                     ; 906 {
2968                     	switch	.text
2969  01d3               L501f_get_it6802_dev_data:
2973                     ; 907 	return &it6802DEV;
2975  01d3 ae0031        	ldw	x,#_it6802DEV
2978  01d6 87            	retf
3050                     ; 911 static void hdimrx_write_init(struct IT6802_REG_INI _CODE *tdata)
3050                     ; 912 {
3051                     	switch	.text
3052  01d7               L701f_hdimrx_write_init:
3054  01d7 89            	pushw	x
3055  01d8 89            	pushw	x
3056       00000002      OFST:	set	2
3059                     ; 913 	int cnt = 0;
3061  01d9 5f            	clrw	x
3062  01da 1f01          	ldw	(OFST-1,sp),x
3064  01dc 203d          	jra	L1151
3065  01de               L5051:
3066                     ; 917 		hdmirxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
3068  01de 1e01          	ldw	x,(OFST-1,sp)
3069  01e0 90ae0003      	ldw	y,#3
3070  01e4 8d000000      	callf	d_imul
3072  01e8 72fb03        	addw	x,(OFST+1,sp)
3073  01eb e602          	ld	a,(2,x)
3074  01ed 88            	push	a
3075  01ee 1e02          	ldw	x,(OFST+0,sp)
3076  01f0 90ae0003      	ldw	y,#3
3077  01f4 8d000000      	callf	d_imul
3079  01f8 72fb04        	addw	x,(OFST+2,sp)
3080  01fb e601          	ld	a,(1,x)
3081  01fd 97            	ld	xl,a
3082  01fe 89            	pushw	x
3083  01ff 1e04          	ldw	x,(OFST+2,sp)
3084  0201 90ae0003      	ldw	y,#3
3085  0205 8d000000      	callf	d_imul
3087  0209 72fb06        	addw	x,(OFST+4,sp)
3088  020c f6            	ld	a,(x)
3089  020d 85            	popw	x
3090  020e 95            	ld	xh,a
3091  020f 8da500a5      	callf	L76f_hdmirxset
3093  0213 84            	pop	a
3094                     ; 918 		cnt++;
3096  0214 1e01          	ldw	x,(OFST-1,sp)
3097  0216 1c0001        	addw	x,#1
3098  0219 1f01          	ldw	(OFST-1,sp),x
3099  021b               L1151:
3100                     ; 914 	while(tdata[cnt].ucAddr != 0xFF)
3102  021b 1e01          	ldw	x,(OFST-1,sp)
3103  021d 90ae0003      	ldw	y,#3
3104  0221 8d000000      	callf	d_imul
3106  0225 72fb03        	addw	x,(OFST+1,sp)
3107  0228 f6            	ld	a,(x)
3108  0229 a1ff          	cp	a,#255
3109  022b 26b1          	jrne	L5051
3110                     ; 921 }
3113  022d 5b04          	addw	sp,#4
3114  022f 87            	retf
3158                     ; 923 static void mhlrx_write_init(struct IT6802_REG_INI _CODE *tdata)
3158                     ; 924 {
3159                     	switch	.text
3160  0230               L111f_mhlrx_write_init:
3162  0230 89            	pushw	x
3163  0231 89            	pushw	x
3164       00000002      OFST:	set	2
3167                     ; 925 	int cnt = 0;
3169  0232 5f            	clrw	x
3170  0233 1f01          	ldw	(OFST-1,sp),x
3172  0235 203d          	jra	L3451
3173  0237               L7351:
3174                     ; 929 		mhlrxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
3176  0237 1e01          	ldw	x,(OFST-1,sp)
3177  0239 90ae0003      	ldw	y,#3
3178  023d 8d000000      	callf	d_imul
3180  0241 72fb03        	addw	x,(OFST+1,sp)
3181  0244 e602          	ld	a,(2,x)
3182  0246 88            	push	a
3183  0247 1e02          	ldw	x,(OFST+0,sp)
3184  0249 90ae0003      	ldw	y,#3
3185  024d 8d000000      	callf	d_imul
3187  0251 72fb04        	addw	x,(OFST+2,sp)
3188  0254 e601          	ld	a,(1,x)
3189  0256 97            	ld	xl,a
3190  0257 89            	pushw	x
3191  0258 1e04          	ldw	x,(OFST+2,sp)
3192  025a 90ae0003      	ldw	y,#3
3193  025e 8d000000      	callf	d_imul
3195  0262 72fb06        	addw	x,(OFST+4,sp)
3196  0265 f6            	ld	a,(x)
3197  0266 85            	popw	x
3198  0267 95            	ld	xh,a
3199  0268 8d7a017a      	callf	L77f_mhlrxset
3201  026c 84            	pop	a
3202                     ; 930 		cnt++;
3204  026d 1e01          	ldw	x,(OFST-1,sp)
3205  026f 1c0001        	addw	x,#1
3206  0272 1f01          	ldw	(OFST-1,sp),x
3207  0274               L3451:
3208                     ; 926 	while(tdata[cnt].ucAddr != 0xFF)
3210  0274 1e01          	ldw	x,(OFST-1,sp)
3211  0276 90ae0003      	ldw	y,#3
3212  027a 8d000000      	callf	d_imul
3214  027e 72fb03        	addw	x,(OFST+1,sp)
3215  0281 f6            	ld	a,(x)
3216  0282 a1ff          	cp	a,#255
3217  0284 26b1          	jrne	L7351
3218                     ; 932 }
3221  0286 5b04          	addw	sp,#4
3222  0288 87            	retf
3258                     ; 940 static void hdmirx_Var_init(struct it6802_dev_data *it6802)
3258                     ; 941 {
3259                     	switch	.text
3260  0289               L311f_hdmirx_Var_init:
3264                     ; 945     it6802->m_ucSCDTOffCount=0;
3266  0289 6f14          	clr	(20,x)
3267                     ; 946     it6802->m_ucEccCount_P0=0;
3269  028b 6f15          	clr	(21,x)
3270                     ; 947     it6802->m_ucEccCount_P1=0;
3272  028d 6f16          	clr	(22,x)
3273                     ; 948     it6802->m_ucDeskew_P0=0;
3275  028f 6f17          	clr	(23,x)
3276                     ; 949     it6802->m_ucDeskew_P1=0;
3278  0291 6f18          	clr	(24,x)
3279                     ; 951     it6802->m_VState=VSTATE_Off;
3281  0293 7f            	clr	(x)
3282                     ; 952     it6802->m_AState=ASTATE_AudioOff;
3284  0294 6f01          	clr	(1,x)
3285                     ; 953     it6802->m_RxHDCPState=RxHDCP_PwrOff;
3287  0296 6f02          	clr	(2,x)
3288                     ; 955     it6802->m_SWResetTimeOut=0;
3290  0298 905f          	clrw	y
3291  029a ef0b          	ldw	(11,x),y
3292                     ; 956     it6802->m_VideoCountingTimer=0;
3294  029c 905f          	clrw	y
3295  029e ef0d          	ldw	(13,x),y
3296                     ; 957     it6802->m_AudioCountingTimer=0;
3298  02a0 905f          	clrw	y
3299  02a2 ef0f          	ldw	(15,x),y
3300                     ; 959     it6802->m_bVideoOnCountFlag=FALSE;
3302  02a4 e675          	ld	a,(117,x)
3303  02a6 a4fd          	and	a,#253
3304  02a8 e775          	ld	(117,x),a
3305                     ; 961     it6802->m_MuteAutoOff=FALSE;
3307  02aa e675          	ld	a,(117,x)
3308  02ac a4fb          	and	a,#251
3309  02ae e775          	ld	(117,x),a
3310                     ; 962     it6802->m_bUpHDMIMode=FALSE;
3312  02b0 e675          	ld	a,(117,x)
3313  02b2 a4f7          	and	a,#247
3314  02b4 e775          	ld	(117,x),a
3315                     ; 963     it6802->m_bUpHDCPMode=FALSE;
3317  02b6 e675          	ld	a,(117,x)
3318  02b8 a4ef          	and	a,#239
3319  02ba e775          	ld	(117,x),a
3320                     ; 964     it6802->m_NewAVIInfoFrameF=FALSE;
3322  02bc e675          	ld	a,(117,x)
3323  02be a4df          	and	a,#223
3324  02c0 e775          	ld	(117,x),a
3325                     ; 965     it6802->m_NewAUDInfoFrameF=FALSE;
3327  02c2 e675          	ld	a,(117,x)
3328  02c4 a4bf          	and	a,#191
3329  02c6 e775          	ld	(117,x),a
3330                     ; 966     it6802->m_HDCPRepeater=FALSE;
3332  02c8 e675          	ld	a,(117,x)
3333  02ca a47f          	and	a,#127
3334  02cc e775          	ld	(117,x),a
3335                     ; 968     it6802->m_bOutputVideoMode=HDMIRX_OUTPUT_VID_MODE ;
3337  02ce a640          	ld	a,#64
3338  02d0 e712          	ld	(18,x),a
3339                     ; 969     it6802->m_bRxAVmute=FALSE;
3341  02d2 e675          	ld	a,(117,x)
3342  02d4 a4fe          	and	a,#254
3343  02d6 e775          	ld	(117,x),a
3344                     ; 980 }
3347  02d8 87            	retf
3389                     ; 990 static void IT6802_Rst( struct it6802_dev_data *it6802 )
3389                     ; 991 {
3390                     	switch	.text
3391  02d9               L511f_IT6802_Rst:
3393  02d9 89            	pushw	x
3394       00000000      OFST:	set	0
3397                     ; 992 	hdmirx_Var_init(it6802);
3399  02da 8d890289      	callf	L311f_hdmirx_Var_init
3401                     ; 993 	RCPinitQ(it6802);
3403  02de 1e01          	ldw	x,(OFST+1,sp)
3404  02e0 8d4d284d      	callf	L323f_RCPinitQ
3406                     ; 994 	hdimrx_write_init(IT6802_HDMI_INIT_TABLE);
3408  02e4 ae0000        	ldw	x,#L3_IT6802_HDMI_INIT_TABLE
3409  02e7 8dd701d7      	callf	L701f_hdimrx_write_init
3411                     ; 995 	mhlrx_write_init(IT6802_MHL_INIT_TABLE);
3413  02eb ae00a5        	ldw	x,#L5_IT6802_MHL_INIT_TABLE
3414  02ee 8d300230      	callf	L111f_mhlrx_write_init
3416                     ; 996 }
3419  02f2 85            	popw	x
3420  02f3 87            	retf
3468                     ; 999 void IT6802_fsm_init(void)
3468                     ; 1000 {
3469                     	switch	.text
3470  02f4               f_IT6802_fsm_init:
3472  02f4 89            	pushw	x
3473       00000002      OFST:	set	2
3476                     ; 1001 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
3478  02f5 8dd301d3      	callf	L501f_get_it6802_dev_data
3480  02f9 1f01          	ldw	(OFST-1,sp),x
3481                     ; 1003 	MHLRX_DEBUG_PRINTF(printf("IT6802_fsm_init( ) \r\n"));
3483  02fb ae2bec        	ldw	x,#L7261
3484  02fe 8d000000      	callf	f_printf
3486                     ; 1004 	IT6802_Rst(it6802data);
3488  0302 1e01          	ldw	x,(OFST-1,sp)
3489  0304 8dd902d9      	callf	L511f_IT6802_Rst
3491                     ; 1007 	if( DeviceID==IT6802_CHIP) {
3493  0308 725d0005      	tnz	_DeviceID
3494  030c 2628          	jrne	L1361
3495                     ; 1008 		hdmirxset(0x77, 0x80, 0x00);
3497  030e 4b00          	push	#0
3498  0310 ae0080        	ldw	x,#128
3499  0313 a677          	ld	a,#119
3500  0315 95            	ld	xh,a
3501  0316 8da500a5      	callf	L76f_hdmirxset
3503  031a 84            	pop	a
3504                     ; 1009 		chgbank(1);
3506  031b ae0001        	ldw	x,#1
3507  031e 8d140514      	callf	L711f_chgbank
3509                     ; 1010 	    hdmirxset(0xC0, 0x80, 0x00);
3511  0322 4b00          	push	#0
3512  0324 ae0080        	ldw	x,#128
3513  0327 a6c0          	ld	a,#192
3514  0329 95            	ld	xh,a
3515  032a 8da500a5      	callf	L76f_hdmirxset
3517  032e 84            	pop	a
3518                     ; 1011 		chgbank(0);
3520  032f 5f            	clrw	x
3521  0330 8d140514      	callf	L711f_chgbank
3524  0334 2026          	jra	L3361
3525  0336               L1361:
3526                     ; 1015 		hdmirxset(0x77, 0x80, 0x80);
3528  0336 4b80          	push	#128
3529  0338 ae0080        	ldw	x,#128
3530  033b a677          	ld	a,#119
3531  033d 95            	ld	xh,a
3532  033e 8da500a5      	callf	L76f_hdmirxset
3534  0342 84            	pop	a
3535                     ; 1016 		chgbank(1);
3537  0343 ae0001        	ldw	x,#1
3538  0346 8d140514      	callf	L711f_chgbank
3540                     ; 1017 		hdmirxset(0xC0, 0x80, 0x80);
3542  034a 4b80          	push	#128
3543  034c ae0080        	ldw	x,#128
3544  034f a6c0          	ld	a,#192
3545  0351 95            	ld	xh,a
3546  0352 8da500a5      	callf	L76f_hdmirxset
3548  0356 84            	pop	a
3549                     ; 1018 		chgbank(0);
3551  0357 5f            	clrw	x
3552  0358 8d140514      	callf	L711f_chgbank
3554  035c               L3361:
3555                     ; 1022 	hdmirxwr(0x27, 0x1F);
3557  035c ae001f        	ldw	x,#31
3558  035f a627          	ld	a,#39
3559  0361 95            	ld	xh,a
3560  0362 8d690069      	callf	L56f_hdmirxwr
3562                     ; 1023 	hdmirxwr(0x28, 0x1F);
3564  0366 ae001f        	ldw	x,#31
3565  0369 a628          	ld	a,#40
3566  036b 95            	ld	xh,a
3567  036c 8d690069      	callf	L56f_hdmirxwr
3569                     ; 1024 	hdmirxwr(0x29, 0x1F);
3571  0370 ae001f        	ldw	x,#31
3572  0373 a629          	ld	a,#41
3573  0375 95            	ld	xh,a
3574  0376 8d690069      	callf	L56f_hdmirxwr
3576                     ; 1025 	hdmirxwr(0x3F, 0x1F);
3578  037a ae001f        	ldw	x,#31
3579  037d a63f          	ld	a,#63
3580  037f 95            	ld	xh,a
3581  0380 8d690069      	callf	L56f_hdmirxwr
3583                     ; 1026 	hdmirxwr(0x40, 0x1F);
3585  0384 ae001f        	ldw	x,#31
3586  0387 a640          	ld	a,#64
3587  0389 95            	ld	xh,a
3588  038a 8d690069      	callf	L56f_hdmirxwr
3590                     ; 1027 	hdmirxwr(0x41, 0x1F);
3592  038e ae001f        	ldw	x,#31
3593  0391 a641          	ld	a,#65
3594  0393 95            	ld	xh,a
3595  0394 8d690069      	callf	L56f_hdmirxwr
3597                     ; 1032 		chgbank(1);
3599  0398 ae0001        	ldw	x,#1
3600  039b 8d140514      	callf	L711f_chgbank
3602                     ; 1033 		hdmirxwr(0xBC, 0x06);
3604  039f ae0006        	ldw	x,#6
3605  03a2 a6bc          	ld	a,#188
3606  03a4 95            	ld	xh,a
3607  03a5 8d690069      	callf	L56f_hdmirxwr
3609                     ; 1034 		chgbank(0);
3611  03a9 5f            	clrw	x
3612  03aa 8d140514      	callf	L711f_chgbank
3614                     ; 1035 		hdmirxset(0x20, 0x40, 0x40);
3616  03ae 4b40          	push	#64
3617  03b0 ae0040        	ldw	x,#64
3618  03b3 a620          	ld	a,#32
3619  03b5 95            	ld	xh,a
3620  03b6 8da500a5      	callf	L76f_hdmirxset
3622  03ba 84            	pop	a
3623                     ; 1036 		hdmirxwr(0x22, 0x38);
3625  03bb ae0038        	ldw	x,#56
3626  03be a622          	ld	a,#34
3627  03c0 95            	ld	xh,a
3628  03c1 8d690069      	callf	L56f_hdmirxwr
3630                     ; 1037 		hdmirxwr(0x26, 0x80);
3632  03c5 ae0080        	ldw	x,#128
3633  03c8 a626          	ld	a,#38
3634  03ca 95            	ld	xh,a
3635  03cb 8d690069      	callf	L56f_hdmirxwr
3637                     ; 1042 		chgbank(1);
3639  03cf ae0001        	ldw	x,#1
3640  03d2 8d140514      	callf	L711f_chgbank
3642                     ; 1043 		hdmirxwr(0xBC, 0x06);
3644  03d6 ae0006        	ldw	x,#6
3645  03d9 a6bc          	ld	a,#188
3646  03db 95            	ld	xh,a
3647  03dc 8d690069      	callf	L56f_hdmirxwr
3649                     ; 1044 		chgbank(0);
3651  03e0 5f            	clrw	x
3652  03e1 8d140514      	callf	L711f_chgbank
3654                     ; 1045 		hdmirxset(0x38, 0x40, 0x40);
3656  03e5 4b40          	push	#64
3657  03e7 ae0040        	ldw	x,#64
3658  03ea a638          	ld	a,#56
3659  03ec 95            	ld	xh,a
3660  03ed 8da500a5      	callf	L76f_hdmirxset
3662  03f1 84            	pop	a
3663                     ; 1046 		hdmirxwr(0x3A, 0x38);
3665  03f2 ae0038        	ldw	x,#56
3666  03f5 a63a          	ld	a,#58
3667  03f7 95            	ld	xh,a
3668  03f8 8d690069      	callf	L56f_hdmirxwr
3670                     ; 1047 		hdmirxwr(0x3E, 0x80);
3672  03fc ae0080        	ldw	x,#128
3673  03ff a63e          	ld	a,#62
3674  0401 95            	ld	xh,a
3675  0402 8d690069      	callf	L56f_hdmirxwr
3677                     ; 1051 	hdmirxset(0x16, 0x08, 0x08); //enable P0 CLKD5 auto reset
3679  0406 4b08          	push	#8
3680  0408 ae0008        	ldw	x,#8
3681  040b a616          	ld	a,#22
3682  040d 95            	ld	xh,a
3683  040e 8da500a5      	callf	L76f_hdmirxset
3685  0412 84            	pop	a
3686                     ; 1053 	hdmirxset(0x1D, 0x08, 0x08); //enable P1 CLKD5 auto reset
3688  0413 4b08          	push	#8
3689  0415 ae0008        	ldw	x,#8
3690  0418 a61d          	ld	a,#29
3691  041a 95            	ld	xh,a
3692  041b 8da500a5      	callf	L76f_hdmirxset
3694  041f 84            	pop	a
3695                     ; 1056 	hdmirxwr(0x2B, 0x07);
3697  0420 ae0007        	ldw	x,#7
3698  0423 a62b          	ld	a,#43
3699  0425 95            	ld	xh,a
3700  0426 8d690069      	callf	L56f_hdmirxwr
3702                     ; 1058 	hdmirxwr(0x34, 0xE1);
3704  042a ae00e1        	ldw	x,#225
3705  042d a634          	ld	a,#52
3706  042f 95            	ld	xh,a
3707  0430 8d690069      	callf	L56f_hdmirxwr
3709                     ; 1059 	hdmirxset(0x35, 0x0C, DeltaNum<<2);
3711  0434 4b04          	push	#4
3712  0436 ae000c        	ldw	x,#12
3713  0439 a635          	ld	a,#53
3714  043b 95            	ld	xh,a
3715  043c 8da500a5      	callf	L76f_hdmirxset
3717  0440 84            	pop	a
3718                     ; 1062 	hdmirxwr(0x54, (1<<4)+RCLKFreqSel);
3720  0441 ae0011        	ldw	x,#17
3721  0444 a654          	ld	a,#84
3722  0446 95            	ld	xh,a
3723  0447 8d690069      	callf	L56f_hdmirxwr
3725                     ; 1063 	hdmirxwr(0x6A, GenPktRecType);
3727  044b ae0081        	ldw	x,#129
3728  044e a66a          	ld	a,#106
3729  0450 95            	ld	xh,a
3730  0451 8d690069      	callf	L56f_hdmirxwr
3732                     ; 1064 	hdmirxset(0x71, 0x08, 0x00); //disalbe ppcolmode
3734  0455 4b00          	push	#0
3735  0457 ae0008        	ldw	x,#8
3736  045a a671          	ld	a,#113
3737  045c 95            	ld	xh,a
3738  045d 8da500a5      	callf	L76f_hdmirxset
3740  0461 84            	pop	a
3741                     ; 1065 	hdmirxwr(0x74, 0xA0);
3743  0462 ae00a0        	ldw	x,#160
3744  0465 a674          	ld	a,#116
3745  0467 95            	ld	xh,a
3746  0468 8d690069      	callf	L56f_hdmirxwr
3748                     ; 1068 	hdmirxwr(0x37, 0x88);
3750  046c ae0088        	ldw	x,#136
3751  046f a637          	ld	a,#55
3752  0471 95            	ld	xh,a
3753  0472 8d690069      	callf	L56f_hdmirxwr
3755                     ; 1069 	hdmirxwr(0x4D, 0x88);
3757  0476 ae0088        	ldw	x,#136
3758  0479 a64d          	ld	a,#77
3759  047b 95            	ld	xh,a
3760  047c 8d690069      	callf	L56f_hdmirxwr
3762                     ; 1071     	chgbank(1);
3764  0480 ae0001        	ldw	x,#1
3765  0483 8d140514      	callf	L711f_chgbank
3767                     ; 1072 	hdmirxset(0xB5, 0x03, 0x03);
3769  0487 4b03          	push	#3
3770  0489 ae0003        	ldw	x,#3
3771  048c a6b5          	ld	a,#181
3772  048e 95            	ld	xh,a
3773  048f 8da500a5      	callf	L76f_hdmirxset
3775  0493 84            	pop	a
3776                     ; 1073 	chgbank(0);
3778  0494 5f            	clrw	x
3779  0495 8d140514      	callf	L711f_chgbank
3781                     ; 1077 		hdmirxset(0x73, 0x08, 0x08);
3783  0499 4b08          	push	#8
3784  049b ae0008        	ldw	x,#8
3785  049e a673          	ld	a,#115
3786  04a0 95            	ld	xh,a
3787  04a1 8da500a5      	callf	L76f_hdmirxset
3789  04a5 84            	pop	a
3790                     ; 1078 		hdmirxwr(0x90, 0x22);
3792  04a6 ae0022        	ldw	x,#34
3793  04a9 a690          	ld	a,#144
3794  04ab 95            	ld	xh,a
3795  04ac 8d690069      	callf	L56f_hdmirxwr
3797                     ; 1079 		delay1ms(1);
3799  04b0 ae0001        	ldw	x,#1
3800  04b3 8d000000      	callf	f_IR_DelayNMiliseconds
3802                     ; 1080 		hdmirxwr(0x90, 0x22);
3804  04b7 ae0022        	ldw	x,#34
3805  04ba a690          	ld	a,#144
3806  04bc 95            	ld	xh,a
3807  04bd 8d690069      	callf	L56f_hdmirxwr
3809                     ; 1081 		delay1ms(1);
3811  04c1 ae0001        	ldw	x,#1
3812  04c4 8d000000      	callf	f_IR_DelayNMiliseconds
3814                     ; 1082 		hdmirxwr(0x90, 0x22);
3816  04c8 ae0022        	ldw	x,#34
3817  04cb a690          	ld	a,#144
3818  04cd 95            	ld	xh,a
3819  04ce 8d690069      	callf	L56f_hdmirxwr
3821                     ; 1095 		hdmirxset(REG_RX_0C0, 0x40, 0x00);
3823  04d2 4b00          	push	#0
3824  04d4 ae0040        	ldw	x,#64
3825  04d7 a6c0          	ld	a,#192
3826  04d9 95            	ld	xh,a
3827  04da 8da500a5      	callf	L76f_hdmirxset
3829  04de 84            	pop	a
3830                     ; 1098 		hdmirxset(REG_RX_0C0, 0x03, 0x00);
3832  04df 4b00          	push	#0
3833  04e1 ae0003        	ldw	x,#3
3834  04e4 a6c0          	ld	a,#192
3835  04e6 95            	ld	xh,a
3836  04e7 8da500a5      	callf	L76f_hdmirxset
3838  04eb 84            	pop	a
3839                     ; 1099 		hdmirxset(REG_RX_087, 0x01, 0x01);
3841  04ec 4b01          	push	#1
3842  04ee ae0001        	ldw	x,#1
3843  04f1 a687          	ld	a,#135
3844  04f3 95            	ld	xh,a
3845  04f4 8da500a5      	callf	L76f_hdmirxset
3847  04f8 84            	pop	a
3848                     ; 1107 	mhlrxset(0x28, 0x09, CBUSFloatAdj<<3);
3850  04f9 4b00          	push	#0
3851  04fb ae0009        	ldw	x,#9
3852  04fe a628          	ld	a,#40
3853  0500 95            	ld	xh,a
3854  0501 8d7a017a      	callf	L77f_mhlrxset
3856  0505 84            	pop	a
3857                     ; 1112 	EDIDRAMInitial(&Default_Edid_Block[0]);
3859  0506 ae023b        	ldw	x,#_Default_Edid_Block
3860  0509 8d542454      	callf	L313f_EDIDRAMInitial
3862                     ; 1116 	it6802PortSelect(0);	// select port 0
3864  050d 4f            	clr	a
3865  050e 8da30ca3      	callf	f_it6802PortSelect
3867                     ; 1117 }
3870  0512 85            	popw	x
3871  0513 87            	retf
3903                     ; 1127 static void chgbank( int bank )
3903                     ; 1128 {
3904                     	switch	.text
3905  0514               L711f_chgbank:
3909                     ; 1129 	switch( bank ) {
3912                     ; 1142 	default :
3912                     ; 1143 		 break;
3913  0514 5d            	tnzw	x
3914  0515 270b          	jreq	L5361
3915  0517 5a            	decw	x
3916  0518 2717          	jreq	L7361
3917  051a 5a            	decw	x
3918  051b 2723          	jreq	L1461
3919  051d 5a            	decw	x
3920  051e 272f          	jreq	L3461
3921  0520 203a          	jra	L5661
3922  0522               L5361:
3923                     ; 1130 	case 0 :
3923                     ; 1131 		 hdmirxset(0x0F, 0x03, 0x00);
3925  0522 4b00          	push	#0
3926  0524 ae0003        	ldw	x,#3
3927  0527 a60f          	ld	a,#15
3928  0529 95            	ld	xh,a
3929  052a 8da500a5      	callf	L76f_hdmirxset
3931  052e 84            	pop	a
3932                     ; 1132 		 break;
3934  052f 202b          	jra	L5661
3935  0531               L7361:
3936                     ; 1133 	case 1 :
3936                     ; 1134 		 hdmirxset(0x0F, 0x03, 0x01);
3938  0531 4b01          	push	#1
3939  0533 ae0003        	ldw	x,#3
3940  0536 a60f          	ld	a,#15
3941  0538 95            	ld	xh,a
3942  0539 8da500a5      	callf	L76f_hdmirxset
3944  053d 84            	pop	a
3945                     ; 1135 		 break;
3947  053e 201c          	jra	L5661
3948  0540               L1461:
3949                     ; 1136 	case 2 :
3949                     ; 1137 		 hdmirxset(0x0F, 0x03, 0x02);
3951  0540 4b02          	push	#2
3952  0542 ae0003        	ldw	x,#3
3953  0545 a60f          	ld	a,#15
3954  0547 95            	ld	xh,a
3955  0548 8da500a5      	callf	L76f_hdmirxset
3957  054c 84            	pop	a
3958                     ; 1138 		 break;
3960  054d 200d          	jra	L5661
3961  054f               L3461:
3962                     ; 1139 	case 3:
3962                     ; 1140 		 hdmirxset(0x0F, 0x03, 0x03);
3964  054f 4b03          	push	#3
3965  0551 ae0003        	ldw	x,#3
3966  0554 a60f          	ld	a,#15
3967  0556 95            	ld	xh,a
3968  0557 8da500a5      	callf	L76f_hdmirxset
3970  055b 84            	pop	a
3971                     ; 1141 		 break;
3973  055c               L5461:
3974                     ; 1142 	default :
3974                     ; 1143 		 break;
3976  055c               L5661:
3977                     ; 1145 }
3980  055c 87            	retf
4031                     ; 1148 static unsigned char CheckSCDT(struct it6802_dev_data *it6802)
4031                     ; 1149 {
4032                     	switch	.text
4033  055d               L121f_CheckSCDT:
4035  055d 89            	pushw	x
4036  055e 89            	pushw	x
4037       00000002      OFST:	set	2
4040                     ; 1153 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4042  055f a651          	ld	a,#81
4043  0561 8d390039      	callf	L36f_hdmirxrd
4045  0565 a401          	and	a,#1
4046  0567 6b01          	ld	(OFST-1,sp),a
4047                     ; 1154 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS);
4049  0569 a60a          	ld	a,#10
4050  056b 8d390039      	callf	L36f_hdmirxrd
4052  056f 6b02          	ld	(OFST+0,sp),a
4053                     ; 1156 	if(ucPortSel == it6802->m_ucCurrentHDMIPort) {
4055  0571 1e03          	ldw	x,(OFST+1,sp)
4056  0573 e611          	ld	a,(17,x)
4057  0575 1101          	cp	a,(OFST-1,sp)
4058  0577 2612          	jrne	L3171
4059                     ; 1158 		if(sys_state_P0 & B_P0_SCDT)
4061  0579 7b02          	ld	a,(OFST+0,sp)
4062  057b a580          	bcp	a,#128
4063  057d 2708          	jreq	L5171
4064                     ; 1161 			it6802->m_ucSCDTOffCount=0;
4066  057f 1e03          	ldw	x,(OFST+1,sp)
4067  0581 6f14          	clr	(20,x)
4068                     ; 1162 			return TRUE;
4070  0583 a601          	ld	a,#1
4072  0585 2001          	jra	L66
4073  0587               L5171:
4074                     ; 1167 			return FALSE;
4076  0587 4f            	clr	a
4078  0588               L66:
4080  0588 5b04          	addw	sp,#4
4081  058a 87            	retf
4082  058b               L3171:
4083                     ; 1171 }
4085  058b 20fb          	jra	L66
4146                     ; 1174 static void WaitingForSCDT(struct it6802_dev_data *it6802)
4146                     ; 1175 {
4147                     	switch	.text
4148  058d               L321f_WaitingForSCDT:
4150  058d 89            	pushw	x
4151  058e 5203          	subw	sp,#3
4152       00000003      OFST:	set	3
4155                     ; 1180 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & (B_P0_SCDT|B_P0_PWR5V_DET|B_P0_RXCK_VALID);
4157  0590 a60a          	ld	a,#10
4158  0592 8d390039      	callf	L36f_hdmirxrd
4160  0596 a489          	and	a,#137
4161  0598 6b02          	ld	(OFST-1,sp),a
4162                     ; 1181 	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & (B_P1_SCDT|B_P1_PWR5V_DET|B_P1_RXCK_VALID);
4164  059a a60b          	ld	a,#11
4165  059c 8d390039      	callf	L36f_hdmirxrd
4167  05a0 a489          	and	a,#137
4168  05a2 6b01          	ld	(OFST-2,sp),a
4169                     ; 1182 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4171  05a4 a651          	ld	a,#81
4172  05a6 8d390039      	callf	L36f_hdmirxrd
4174  05aa a401          	and	a,#1
4175  05ac 6b03          	ld	(OFST+0,sp),a
4176                     ; 1184 	if(sys_state_P0 & B_P0_SCDT)
4178  05ae 7b02          	ld	a,(OFST-1,sp)
4179  05b0 a580          	bcp	a,#128
4180  05b2 270f          	jreq	L7471
4181                     ; 1186 		it6802->m_ucSCDTOffCount=0;
4183  05b4 1e04          	ldw	x,(OFST+1,sp)
4184  05b6 6f14          	clr	(20,x)
4185                     ; 1187 		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);	//2013-0520
4187  05b8 4b06          	push	#6
4188  05ba 1e05          	ldw	x,(OFST+2,sp)
4189  05bc 8d4a104a      	callf	L702f_IT6802SwitchVideoState
4191  05c0 84            	pop	a
4192                     ; 1188 		return;
4194  05c1 2077          	jra	L27
4195  05c3               L7471:
4196                     ; 1192 		if(ucPortSel == F_PORT_SEL_0) {
4198  05c3 0d03          	tnz	(OFST+0,sp)
4199  05c5 2614          	jrne	L3571
4200                     ; 1193 			if((sys_state_P0 & (B_P0_PWR5V_DET|B_P0_RXCK_VALID)) == (B_P0_PWR5V_DET|B_P0_RXCK_VALID))
4202  05c7 7b02          	ld	a,(OFST-1,sp)
4203  05c9 a409          	and	a,#9
4204  05cb a109          	cp	a,#9
4205  05cd 2606          	jrne	L5571
4206                     ; 1195 					it6802->m_ucSCDTOffCount++;
4208  05cf 1e04          	ldw	x,(OFST+1,sp)
4209  05d1 6c14          	inc	(20,x)
4211  05d3 2018          	jra	L1671
4212  05d5               L5571:
4213                     ; 1200 						it6802->m_ucSCDTOffCount=0;
4215  05d5 1e04          	ldw	x,(OFST+1,sp)
4216  05d7 6f14          	clr	(20,x)
4217  05d9 2012          	jra	L1671
4218  05db               L3571:
4219                     ; 1204 				if((sys_state_P1 & (B_P1_PWR5V_DET|B_P1_RXCK_VALID)) == (B_P1_PWR5V_DET|B_P1_RXCK_VALID))
4221  05db 7b01          	ld	a,(OFST-2,sp)
4222  05dd a409          	and	a,#9
4223  05df a109          	cp	a,#9
4224  05e1 2606          	jrne	L3671
4225                     ; 1206 					it6802->m_ucSCDTOffCount++;
4227  05e3 1e04          	ldw	x,(OFST+1,sp)
4228  05e5 6c14          	inc	(20,x)
4230  05e7 2004          	jra	L1671
4231  05e9               L3671:
4232                     ; 1212 						it6802->m_ucSCDTOffCount=0;
4234  05e9 1e04          	ldw	x,(OFST+1,sp)
4235  05eb 6f14          	clr	(20,x)
4236  05ed               L1671:
4237                     ; 1216 		if((it6802->m_ucSCDTOffCount)>SCDT_OFF_TIMEOUT)
4239  05ed 1e04          	ldw	x,(OFST+1,sp)
4240  05ef e614          	ld	a,(20,x)
4241  05f1 a166          	cp	a,#102
4242  05f3 2545          	jrult	L1571
4243                     ; 1218 			it6802->m_ucSCDTOffCount=0;
4245  05f5 1e04          	ldw	x,(OFST+1,sp)
4246  05f7 6f14          	clr	(20,x)
4247                     ; 1220 			MHLRX_DEBUG_PRINTF(printf("CDR reset for SCDT_OFF_TIMEOUT !!!\r\n"));
4249  05f9 ae2bc7        	ldw	x,#L1771
4250  05fc 8d000000      	callf	f_printf
4252                     ; 1222 			if(ucPortSel == F_PORT_SEL_0) {
4254  0600 0d03          	tnz	(OFST+0,sp)
4255  0602 261c          	jrne	L3771
4256                     ; 1223 				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
4258  0604 4b0c          	push	#12
4259  0606 ae000c        	ldw	x,#12
4260  0609 a611          	ld	a,#17
4261  060b 95            	ld	xh,a
4262  060c 8da500a5      	callf	L76f_hdmirxset
4264  0610 84            	pop	a
4265                     ; 1224 				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
4267  0611 4b00          	push	#0
4268  0613 ae000c        	ldw	x,#12
4269  0616 a611          	ld	a,#17
4270  0618 95            	ld	xh,a
4271  0619 8da500a5      	callf	L76f_hdmirxset
4273  061d 84            	pop	a
4275  061e 201a          	jra	L1571
4276  0620               L3771:
4277                     ; 1228 				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
4279  0620 4b0c          	push	#12
4280  0622 ae000c        	ldw	x,#12
4281  0625 a618          	ld	a,#24
4282  0627 95            	ld	xh,a
4283  0628 8da500a5      	callf	L76f_hdmirxset
4285  062c 84            	pop	a
4286                     ; 1229 				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
4288  062d 4b00          	push	#0
4289  062f ae000c        	ldw	x,#12
4290  0632 a618          	ld	a,#24
4291  0634 95            	ld	xh,a
4292  0635 8da500a5      	callf	L76f_hdmirxset
4294  0639 84            	pop	a
4295  063a               L1571:
4296                     ; 1234 }
4297  063a               L27:
4300  063a 5b05          	addw	sp,#5
4301  063c 87            	retf
4340                     ; 1236 static unsigned char CheckAVMute(void)
4340                     ; 1237 {
4341                     	switch	.text
4342  063d               L521f_CheckAVMute:
4344  063d 89            	pushw	x
4345       00000002      OFST:	set	2
4348                     ; 1242 	ucAVMute=hdmirxrd(REG_RX_0A8) & (B_P0_AVMUTE|B_P1_AVMUTE);
4350  063e a6a8          	ld	a,#168
4351  0640 8d390039      	callf	L36f_hdmirxrd
4353  0644 a411          	and	a,#17
4354  0646 6b01          	ld	(OFST-1,sp),a
4355                     ; 1243 	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;
4357  0648 a651          	ld	a,#81
4358  064a 8d390039      	callf	L36f_hdmirxrd
4360  064e a401          	and	a,#1
4361  0650 6b02          	ld	(OFST+0,sp),a
4362                     ; 1245 	if(((ucAVMute & B_P0_AVMUTE)&& (ucPortSel == F_PORT_SEL_0 ))||
4362                     ; 1246 	((ucAVMute & B_P1_AVMUTE)&& (ucPortSel == F_PORT_SEL_1 )))
4364  0652 7b01          	ld	a,(OFST-1,sp)
4365  0654 a501          	bcp	a,#1
4366  0656 2704          	jreq	L1202
4368  0658 0d02          	tnz	(OFST+0,sp)
4369  065a 270c          	jreq	L7102
4370  065c               L1202:
4372  065c 7b01          	ld	a,(OFST-1,sp)
4373  065e a510          	bcp	a,#16
4374  0660 270a          	jreq	L5102
4376  0662 7b02          	ld	a,(OFST+0,sp)
4377  0664 a101          	cp	a,#1
4378  0666 2604          	jrne	L5102
4379  0668               L7102:
4380                     ; 1248 		return TRUE;
4382  0668 a601          	ld	a,#1
4384  066a 2001          	jra	L67
4385  066c               L5102:
4386                     ; 1252 		return FALSE;
4388  066c 4f            	clr	a
4390  066d               L67:
4392  066d 85            	popw	x
4393  066e 87            	retf
4441                     ; 1259 static unsigned char CheckPlg5VPwr(unsigned char ucPortSel)
4441                     ; 1260 {
4442                     	switch	.text
4443  066f               L721f_CheckPlg5VPwr:
4445  066f 88            	push	a
4446       00000001      OFST:	set	1
4449                     ; 1264 	if(ucPortSel==0)
4451  0670 4d            	tnz	a
4452  0671 263c          	jrne	L5402
4453                     ; 1266 		sys_state_P0 = hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_PWR5V_DET;
4455  0673 a60a          	ld	a,#10
4456  0675 8d390039      	callf	L36f_hdmirxrd
4458  0679 a401          	and	a,#1
4459  067b 6b01          	ld	(OFST+0,sp),a
4460                     ; 1267 		if((sys_state_P0 & B_P0_PWR5V_DET))
4462  067d 7b01          	ld	a,(OFST+0,sp)
4463  067f a501          	bcp	a,#1
4464  0681 2728          	jreq	L7402
4465                     ; 1279 				 if((hdmirxrd(0x0A)&0x40)==0){
4467  0683 a60a          	ld	a,#10
4468  0685 8d390039      	callf	L36f_hdmirxrd
4470  0689 a540          	bcp	a,#64
4471  068b 2619          	jrne	L1502
4472                     ; 1280 					 chgbank(1);
4474  068d ae0001        	ldw	x,#1
4475  0690 8d140514      	callf	L711f_chgbank
4477                     ; 1281 					 hdmirxset(0xB0, 0x03, 0x03);
4479  0694 4b03          	push	#3
4480  0696 ae0003        	ldw	x,#3
4481  0699 a6b0          	ld	a,#176
4482  069b 95            	ld	xh,a
4483  069c 8da500a5      	callf	L76f_hdmirxset
4485  06a0 84            	pop	a
4486                     ; 1282 					 chgbank(0);
4488  06a1 5f            	clrw	x
4489  06a2 8d140514      	callf	L711f_chgbank
4491  06a6               L1502:
4492                     ; 1285 			return TRUE;
4494  06a6 a601          	ld	a,#1
4497  06a8 5b01          	addw	sp,#1
4498  06aa 87            	retf
4499  06ab               L7402:
4500                     ; 1289 			return FALSE;
4502  06ab 4f            	clr	a
4505  06ac 5b01          	addw	sp,#1
4506  06ae 87            	retf
4507  06af               L5402:
4508                     ; 1294 		sys_state_P1 = hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_PWR5V_DET;
4510  06af a60b          	ld	a,#11
4511  06b1 8d390039      	callf	L36f_hdmirxrd
4513  06b5 a401          	and	a,#1
4514  06b7 6b01          	ld	(OFST+0,sp),a
4515                     ; 1295 		if((sys_state_P1 & B_P1_PWR5V_DET))
4517  06b9 7b01          	ld	a,(OFST+0,sp)
4518  06bb a501          	bcp	a,#1
4519  06bd 2705          	jreq	L7502
4520                     ; 1297 			return TRUE;
4522  06bf a601          	ld	a,#1
4525  06c1 5b01          	addw	sp,#1
4526  06c3 87            	retf
4527  06c4               L7502:
4528                     ; 1301 			return FALSE;
4530  06c4 4f            	clr	a
4533  06c5 5b01          	addw	sp,#1
4534  06c7 87            	retf
4580                     ; 1308 static unsigned char IsHDMIMode(void)
4580                     ; 1309 {
4581                     	switch	.text
4582  06c8               L131f_IsHDMIMode:
4584  06c8 5203          	subw	sp,#3
4585       00000003      OFST:	set	3
4588                     ; 1315 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_HDMI_MODE;
4590  06ca a60a          	ld	a,#10
4591  06cc 8d390039      	callf	L36f_hdmirxrd
4593  06d0 a402          	and	a,#2
4594  06d2 6b01          	ld	(OFST-2,sp),a
4595                     ; 1316 	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_HDMI_MODE;
4597  06d4 a60b          	ld	a,#11
4598  06d6 8d390039      	callf	L36f_hdmirxrd
4600  06da a402          	and	a,#2
4601  06dc 6b02          	ld	(OFST-1,sp),a
4602                     ; 1317 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4604  06de a651          	ld	a,#81
4605  06e0 8d390039      	callf	L36f_hdmirxrd
4607  06e4 a401          	and	a,#1
4608  06e6 6b03          	ld	(OFST+0,sp),a
4609                     ; 1319 	if(((sys_state_P0 & B_P0_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_0 ))||
4609                     ; 1320 	((sys_state_P1 & B_P1_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_1 )))
4611  06e8 7b01          	ld	a,(OFST-2,sp)
4612  06ea a502          	bcp	a,#2
4613  06ec 2704          	jreq	L7012
4615  06ee 0d03          	tnz	(OFST+0,sp)
4616  06f0 270c          	jreq	L5012
4617  06f2               L7012:
4619  06f2 7b02          	ld	a,(OFST-1,sp)
4620  06f4 a502          	bcp	a,#2
4621  06f6 270a          	jreq	L3012
4623  06f8 7b03          	ld	a,(OFST+0,sp)
4624  06fa a101          	cp	a,#1
4625  06fc 2604          	jrne	L3012
4626  06fe               L5012:
4627                     ; 1322 		return TRUE;
4629  06fe a601          	ld	a,#1
4631  0700 2001          	jra	L401
4632  0702               L3012:
4633                     ; 1326 		return FALSE;
4635  0702 4f            	clr	a
4637  0703               L401:
4639  0703 5b03          	addw	sp,#3
4640  0705 87            	retf
4696                     ; 1332 static void SetVideoInputFormatWithInfoFrame(struct it6802_dev_data *it6802)
4696                     ; 1333 {
4697                     	switch	.text
4698  0706               L331f_SetVideoInputFormatWithInfoFrame:
4700  0706 89            	pushw	x
4701  0707 89            	pushw	x
4702       00000002      OFST:	set	2
4705                     ; 1335 	unsigned char bAVIColorModeIndicated=FALSE;
4707  0708 0f01          	clr	(OFST-1,sp)
4708                     ; 1338 	chgbank(2);
4710  070a ae0002        	ldw	x,#2
4711  070d 8d140514      	callf	L711f_chgbank
4713                     ; 1339 	i=hdmirxrd(REG_RX_215);	//REG_RX_AVI_DB1
4715  0711 a615          	ld	a,#21
4716  0713 8d390039      	callf	L36f_hdmirxrd
4718  0717 6b02          	ld	(OFST+0,sp),a
4719                     ; 1340 	chgbank(0);
4721  0719 5f            	clrw	x
4722  071a 8d140514      	callf	L711f_chgbank
4724                     ; 1341 	it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;
4726  071e 1e03          	ldw	x,(OFST+1,sp)
4727  0720 e613          	ld	a,(19,x)
4728  0722 a4fc          	and	a,#252
4729  0724 e713          	ld	(19,x),a
4730                     ; 1344 	switch((i>>O_AVI_COLOR_MODE)&M_AVI_COLOR_MASK)
4732  0726 7b02          	ld	a,(OFST+0,sp)
4733  0728 4e            	swap	a
4734  0729 44            	srl	a
4735  072a a407          	and	a,#7
4736  072c 5f            	clrw	x
4737  072d a403          	and	a,#3
4738  072f 5f            	clrw	x
4739  0730 5f            	clrw	x
4740  0731 97            	ld	xl,a
4742                     ; 1358 		default:
4742                     ; 1359 			return;
4743  0732 5d            	tnzw	x
4744  0733 272a          	jreq	L7112
4745  0735 5a            	decw	x
4746  0736 2716          	jreq	L5112
4747  0738 5a            	decw	x
4748  0739 2702          	jreq	L3112
4749  073b               L1212:
4752  073b 2055          	jra	L011
4753  073d               L3112:
4754                     ; 1346 		case B_AVI_COLOR_YUV444:
4754                     ; 1347 			HDMIRX_VIDEO_PRINTF(printf("input YUV444 mode "));
4756  073d ae2bb4        	ldw	x,#L3512
4757  0740 8d000000      	callf	f_printf
4759                     ; 1348 			it6802->m_bInputVideoMode |=F_MODE_YUV444;
4761  0744 1e03          	ldw	x,(OFST+1,sp)
4762  0746 e613          	ld	a,(19,x)
4763  0748 aa02          	or	a,#2
4764  074a e713          	ld	(19,x),a
4765                     ; 1349 			break;
4767  074c 201c          	jra	L1512
4768  074e               L5112:
4769                     ; 1350 		case B_AVI_COLOR_YUV422:
4769                     ; 1351 			HDMIRX_VIDEO_PRINTF(printf("input YUV422 mode "));
4771  074e ae2ba1        	ldw	x,#L5512
4772  0751 8d000000      	callf	f_printf
4774                     ; 1352 			it6802->m_bInputVideoMode |=F_MODE_YUV422;
4776  0755 1e03          	ldw	x,(OFST+1,sp)
4777  0757 e613          	ld	a,(19,x)
4778  0759 aa01          	or	a,#1
4779  075b e713          	ld	(19,x),a
4780                     ; 1353 			break;
4782  075d 200b          	jra	L1512
4783  075f               L7112:
4784                     ; 1354 		case B_AVI_COLOR_RGB24:
4784                     ; 1355 			HDMIRX_VIDEO_PRINTF(printf("input RGB24 mode "));
4786  075f ae2b8f        	ldw	x,#L7512
4787  0762 8d000000      	callf	f_printf
4789                     ; 1356 			it6802->m_bInputVideoMode |=F_MODE_RGB24;
4791  0766 1e03          	ldw	x,(OFST+1,sp)
4792  0768 e613          	ld	a,(19,x)
4793                     ; 1357 			break;
4795  076a               L1512:
4796                     ; 1363 	HDMIRX_DEBUG_PRINTF(printf("SetVideoInputFormatWithInfoFrame - RegAE=%x it6802->m_bInputVideoMode=%x\r\n",i,it6802->m_bInputVideoMode));
4798  076a 1e03          	ldw	x,(OFST+1,sp)
4799  076c e613          	ld	a,(19,x)
4800  076e 88            	push	a
4801  076f 7b03          	ld	a,(OFST+1,sp)
4802  0771 88            	push	a
4803  0772 ae2b44        	ldw	x,#L1612
4804  0775 8d000000      	callf	f_printf
4806  0779 85            	popw	x
4807                     ; 1364 	i=hdmirxrd(REG_RX_IN_CSC_CTRL);
4809  077a a671          	ld	a,#113
4810  077c 8d390039      	callf	L36f_hdmirxrd
4812  0780 6b02          	ld	(OFST+0,sp),a
4813                     ; 1365 	i &=~B_IN_FORCE_COLOR_MODE;
4815  0782 7b02          	ld	a,(OFST+0,sp)
4816  0784 a4fb          	and	a,#251
4817  0786 6b02          	ld	(OFST+0,sp),a
4818                     ; 1366 	mhlrxwr(REG_RX_IN_CSC_CTRL,i);
4820  0788 7b02          	ld	a,(OFST+0,sp)
4821  078a 97            	ld	xl,a
4822  078b a671          	ld	a,#113
4823  078d 95            	ld	xh,a
4824  078e 8d3a013a      	callf	L57f_mhlrxwr
4826                     ; 1367 }
4827  0792               L011:
4830  0792 5b04          	addw	sp,#4
4831  0794 87            	retf
4877                     ; 1370 static void SetColorimetryByInfoFrame(struct it6802_dev_data *it6802)
4877                     ; 1371 {
4878                     	switch	.text
4879  0795               L531f_SetColorimetryByInfoFrame:
4881  0795 89            	pushw	x
4882  0796 88            	push	a
4883       00000001      OFST:	set	1
4886                     ; 1377 	chgbank(2);
4888  0797 ae0002        	ldw	x,#2
4889  079a 8d140514      	callf	L711f_chgbank
4891                     ; 1378 	i=hdmirxrd(REG_RX_216);	//REG_RX_AVI_DB2
4893  079e a616          	ld	a,#22
4894  07a0 8d390039      	callf	L36f_hdmirxrd
4896  07a4 6b01          	ld	(OFST+0,sp),a
4897                     ; 1379 	chgbank(0);
4899  07a6 5f            	clrw	x
4900  07a7 8d140514      	callf	L711f_chgbank
4902                     ; 1380         i &=M_AVI_CLRMET_MASK<<O_AVI_CLRMET;
4904  07ab 7b01          	ld	a,(OFST+0,sp)
4905  07ad a4c0          	and	a,#192
4906  07af 6b01          	ld	(OFST+0,sp),a
4907                     ; 1382         if(i==(B_AVI_CLRMET_ITU601<<O_AVI_CLRMET))
4909  07b1 7b01          	ld	a,(OFST+0,sp)
4910  07b3 a140          	cp	a,#64
4911  07b5 260a          	jrne	L5022
4912                     ; 1384             it6802->m_bInputVideoMode &=~F_MODE_ITU709;
4914  07b7 1e02          	ldw	x,(OFST+1,sp)
4915  07b9 e613          	ld	a,(19,x)
4916  07bb a4ef          	and	a,#239
4917  07bd e713          	ld	(19,x),a
4919  07bf 200e          	jra	L7022
4920  07c1               L5022:
4921                     ; 1386         else if(i==(B_AVI_CLRMET_ITU709<<O_AVI_CLRMET))
4923  07c1 7b01          	ld	a,(OFST+0,sp)
4924  07c3 a180          	cp	a,#128
4925  07c5 2608          	jrne	L7022
4926                     ; 1388             it6802->m_bInputVideoMode |=F_MODE_ITU709;
4928  07c7 1e02          	ldw	x,(OFST+1,sp)
4929  07c9 e613          	ld	a,(19,x)
4930  07cb aa10          	or	a,#16
4931  07cd e713          	ld	(19,x),a
4932  07cf               L7022:
4933                     ; 1393 }
4936  07cf 5b03          	addw	sp,#3
4937  07d1 87            	retf
4974                     ; 1395 static void SetCSCBYPASS(struct it6802_dev_data *it6802)
4974                     ; 1396 {
4975                     	switch	.text
4976  07d2               L731f_SetCSCBYPASS:
4980                     ; 1398     it6802->m_bOutputVideoMode=it6802->m_bInputVideoMode;
4982  07d2 e613          	ld	a,(19,x)
4983  07d4 e712          	ld	(18,x),a
4984                     ; 1400     switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK) {
4986  07d6 e613          	ld	a,(19,x)
4987  07d8 a403          	and	a,#3
4989                     ; 1409 	break;
4990  07da 4d            	tnz	a
4991  07db 2708          	jreq	L3122
4992  07dd 4a            	dec	a
4993  07de 2714          	jreq	L5122
4994  07e0 4a            	dec	a
4995  07e1 2720          	jreq	L7122
4996  07e3 202b          	jra	L3422
4997  07e5               L3122:
4998                     ; 1401     case F_MODE_RGB24 :
4998                     ; 1402 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
5000  07e5 4b00          	push	#0
5001  07e7 ae0030        	ldw	x,#48
5002  07ea a665          	ld	a,#101
5003  07ec 95            	ld	xh,a
5004  07ed 8da500a5      	callf	L76f_hdmirxset
5006  07f1 84            	pop	a
5007                     ; 1403 	break;
5009  07f2 201c          	jra	L3422
5010  07f4               L5122:
5011                     ; 1404     case F_MODE_YUV422 :
5011                     ; 1405 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
5013  07f4 4b10          	push	#16
5014  07f6 ae0030        	ldw	x,#48
5015  07f9 a665          	ld	a,#101
5016  07fb 95            	ld	xh,a
5017  07fc 8da500a5      	callf	L76f_hdmirxset
5019  0800 84            	pop	a
5020                     ; 1406 	break;
5022  0801 200d          	jra	L3422
5023  0803               L7122:
5024                     ; 1407     case F_MODE_YUV444 :
5024                     ; 1408 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
5026  0803 4b20          	push	#32
5027  0805 ae0030        	ldw	x,#48
5028  0808 a665          	ld	a,#101
5029  080a 95            	ld	xh,a
5030  080b 8da500a5      	callf	L76f_hdmirxset
5032  080f 84            	pop	a
5033                     ; 1409 	break;
5035  0810               L3422:
5036                     ; 1412 }
5039  0810 87            	retf
5102                     ; 1414 static void SetColorSpaceConvert(struct it6802_dev_data *it6802)
5102                     ; 1415 {
5103                     	switch	.text
5104  0811               L141f_SetColorSpaceConvert:
5106  0811 89            	pushw	x
5107  0812 89            	pushw	x
5108       00000002      OFST:	set	2
5111                     ; 1418 	unsigned char filter = 0 ; // filter is for Video CTRL DN_FREE_GO, EN_DITHER, and ENUDFILT
5113  0813 0f01          	clr	(OFST-1,sp)
5114                     ; 1427 	HDMIRX_VIDEO_PRINTF(printf("\r\n!!! SetColorSpaceConvert( ) !!!\r\n"));
5116  0815 ae2b20        	ldw	x,#L1232
5117  0818 8d000000      	callf	f_printf
5119                     ; 1430     switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK)
5121  081c 1e03          	ldw	x,(OFST+1,sp)
5122  081e e612          	ld	a,(18,x)
5123  0820 a403          	and	a,#3
5125                     ; 1527 	    break ;
5126  0822 4d            	tnz	a
5127  0823 2604          	jrne	L021
5128  0825 acfe08fe      	jpf	L5622
5129  0829               L021:
5130  0829 4a            	dec	a
5131  082a 276e          	jreq	L5522
5132  082c 4a            	dec	a
5133  082d 2704          	jreq	L221
5134  082f ac530953      	jpf	L5232
5135  0833               L221:
5136                     ; 1433     case F_MODE_YUV444:
5136                     ; 1434          HDMIRX_VIDEO_PRINTF(printf("Output mode is YUV444\r\n"));
5138  0833 ae2b08        	ldw	x,#L7232
5139  0836 8d000000      	callf	f_printf
5141                     ; 1435 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5143  083a 1e03          	ldw	x,(OFST+1,sp)
5144  083c e613          	ld	a,(19,x)
5145  083e a403          	and	a,#3
5147                     ; 1458             break ;
5148  0840 4d            	tnz	a
5149  0841 2744          	jreq	L3522
5150  0843 4a            	dec	a
5151  0844 2714          	jreq	L1522
5152  0846 4a            	dec	a
5153  0847 2704          	jreq	L421
5154  0849 ac530953      	jpf	L5232
5155  084d               L421:
5156                     ; 1437 	    case F_MODE_YUV444:
5156                     ; 1438              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5158  084d ae2af1        	ldw	x,#L5332
5159  0850 8d000000      	callf	f_printf
5161                     ; 1439 	        csc = B_CSC_BYPASS ;
5163  0854 0f02          	clr	(OFST+0,sp)
5164                     ; 1440 	        break ;
5166  0856 ac530953      	jpf	L5232
5167  085a               L1522:
5168                     ; 1441 	    case F_MODE_YUV422:
5168                     ; 1442              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5170  085a ae2ada        	ldw	x,#L7332
5171  085d 8d000000      	callf	f_printf
5173                     ; 1443             csc = B_CSC_BYPASS ;
5175  0861 0f02          	clr	(OFST+0,sp)
5176                     ; 1444             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5178  0863 1e03          	ldw	x,(OFST+1,sp)
5179  0865 e612          	ld	a,(18,x)
5180  0867 a540          	bcp	a,#64
5181  0869 2706          	jreq	L1432
5182                     ; 1446                 filter |= B_RX_EN_UDFILTER ;
5184  086b 7b01          	ld	a,(OFST-1,sp)
5185  086d aa01          	or	a,#1
5186  086f 6b01          	ld	(OFST-1,sp),a
5187  0871               L1432:
5188                     ; 1449             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5190  0871 1e03          	ldw	x,(OFST+1,sp)
5191  0873 e612          	ld	a,(18,x)
5192  0875 a580          	bcp	a,#128
5193  0877 2604          	jrne	L621
5194  0879 ac530953      	jpf	L5232
5195  087d               L621:
5196                     ; 1451                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5198  087d 7b01          	ld	a,(OFST-1,sp)
5199  087f aa05          	or	a,#5
5200  0881 6b01          	ld	(OFST-1,sp),a
5201  0883 ac530953      	jpf	L5232
5202  0887               L3522:
5203                     ; 1455 	    case F_MODE_RGB24:
5203                     ; 1456              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5205  0887 ae2ac3        	ldw	x,#L5432
5206  088a 8d000000      	callf	f_printf
5208                     ; 1457             csc = B_CSC_RGB2YUV ;
5210  088e a601          	ld	a,#1
5211  0890 6b02          	ld	(OFST+0,sp),a
5212                     ; 1458             break ;
5214  0892 ac530953      	jpf	L5232
5215  0896               L3332:
5216                     ; 1460         break ;
5218  0896 ac530953      	jpf	L5232
5219  089a               L5522:
5220                     ; 1465     case F_MODE_YUV422:
5220                     ; 1466 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5222  089a 1e03          	ldw	x,(OFST+1,sp)
5223  089c e613          	ld	a,(19,x)
5224  089e a403          	and	a,#3
5226                     ; 1496 	    	break ;
5227  08a0 4d            	tnz	a
5228  08a1 273e          	jreq	L3622
5229  08a3 4a            	dec	a
5230  08a4 2722          	jreq	L1622
5231  08a6 4a            	dec	a
5232  08a7 2704          	jreq	L031
5233  08a9 ac530953      	jpf	L5232
5234  08ad               L031:
5235                     ; 1468 	    case F_MODE_YUV444:
5235                     ; 1469              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5237  08ad ae2af1        	ldw	x,#L5332
5238  08b0 8d000000      	callf	f_printf
5240                     ; 1470 	        if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)
5242  08b4 1e03          	ldw	x,(OFST+1,sp)
5243  08b6 e612          	ld	a,(18,x)
5244  08b8 a540          	bcp	a,#64
5245  08ba 2706          	jreq	L3532
5246                     ; 1472 	            filter |= B_RX_EN_UDFILTER ;
5248  08bc 7b01          	ld	a,(OFST-1,sp)
5249  08be aa01          	or	a,#1
5250  08c0 6b01          	ld	(OFST-1,sp),a
5251  08c2               L3532:
5252                     ; 1474 	        csc = B_CSC_BYPASS ;
5254  08c2 0f02          	clr	(OFST+0,sp)
5255                     ; 1475 	        break ;
5257  08c4 ac530953      	jpf	L5232
5258  08c8               L1622:
5259                     ; 1476 	    case F_MODE_YUV422:
5259                     ; 1477              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5261  08c8 ae2ada        	ldw	x,#L7332
5262  08cb 8d000000      	callf	f_printf
5264                     ; 1478             csc = B_CSC_BYPASS ;
5266  08cf 0f02          	clr	(OFST+0,sp)
5267                     ; 1484             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5269  08d1 1e03          	ldw	x,(OFST+1,sp)
5270  08d3 e612          	ld	a,(18,x)
5271  08d5 a580          	bcp	a,#128
5272  08d7 277a          	jreq	L5232
5273                     ; 1486                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5275  08d9 7b01          	ld	a,(OFST-1,sp)
5276  08db aa05          	or	a,#5
5277  08dd 6b01          	ld	(OFST-1,sp),a
5278  08df 2072          	jra	L5232
5279  08e1               L3622:
5280                     ; 1489 	    case F_MODE_RGB24:
5280                     ; 1490              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5282  08e1 ae2ac3        	ldw	x,#L5432
5283  08e4 8d000000      	callf	f_printf
5285                     ; 1491             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5287  08e8 1e03          	ldw	x,(OFST+1,sp)
5288  08ea e612          	ld	a,(18,x)
5289  08ec a540          	bcp	a,#64
5290  08ee 2706          	jreq	L7532
5291                     ; 1493                 filter |= B_RX_EN_UDFILTER ;
5293  08f0 7b01          	ld	a,(OFST-1,sp)
5294  08f2 aa01          	or	a,#1
5295  08f4 6b01          	ld	(OFST-1,sp),a
5296  08f6               L7532:
5297                     ; 1495             csc = B_CSC_RGB2YUV ;
5299  08f6 a601          	ld	a,#1
5300  08f8 6b02          	ld	(OFST+0,sp),a
5301                     ; 1496 	    	break ;
5303  08fa 2057          	jra	L5232
5304  08fc               L1532:
5305                     ; 1498 	    break ;
5307  08fc 2055          	jra	L5232
5308  08fe               L5622:
5309                     ; 1502     case F_MODE_RGB24:
5309                     ; 1503          HDMIRX_VIDEO_PRINTF(printf("Output mode is RGB24\r\n"));
5311  08fe ae2aac        	ldw	x,#L1632
5312  0901 8d000000      	callf	f_printf
5314                     ; 1504 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5316  0905 1e03          	ldw	x,(OFST+1,sp)
5317  0907 e613          	ld	a,(19,x)
5318  0909 a403          	and	a,#3
5320                     ; 1525 	    	break ;
5321  090b 4d            	tnz	a
5322  090c 273c          	jreq	L3722
5323  090e 4a            	dec	a
5324  090f 2710          	jreq	L1722
5325  0911 4a            	dec	a
5326  0912 263f          	jrne	L5232
5327                     ; 1506 	    case F_MODE_YUV444:
5327                     ; 1507              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5329  0914 ae2af1        	ldw	x,#L5332
5330  0917 8d000000      	callf	f_printf
5332                     ; 1508 	        csc = B_CSC_YUV2RGB ;
5334  091b a603          	ld	a,#3
5335  091d 6b02          	ld	(OFST+0,sp),a
5336                     ; 1509 	        break ;
5338  091f 2032          	jra	L5232
5339  0921               L1722:
5340                     ; 1510 	    case F_MODE_YUV422:
5340                     ; 1511              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5342  0921 ae2ada        	ldw	x,#L7332
5343  0924 8d000000      	callf	f_printf
5345                     ; 1512             csc = B_CSC_YUV2RGB ;
5347  0928 a603          	ld	a,#3
5348  092a 6b02          	ld	(OFST+0,sp),a
5349                     ; 1513             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5351  092c 1e03          	ldw	x,(OFST+1,sp)
5352  092e e612          	ld	a,(18,x)
5353  0930 a540          	bcp	a,#64
5354  0932 2706          	jreq	L7632
5355                     ; 1515                 filter |= B_RX_EN_UDFILTER ;
5357  0934 7b01          	ld	a,(OFST-1,sp)
5358  0936 aa01          	or	a,#1
5359  0938 6b01          	ld	(OFST-1,sp),a
5360  093a               L7632:
5361                     ; 1517             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5363  093a 1e03          	ldw	x,(OFST+1,sp)
5364  093c e612          	ld	a,(18,x)
5365  093e a580          	bcp	a,#128
5366  0940 2711          	jreq	L5232
5367                     ; 1519                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5369  0942 7b01          	ld	a,(OFST-1,sp)
5370  0944 aa05          	or	a,#5
5371  0946 6b01          	ld	(OFST-1,sp),a
5372  0948 2009          	jra	L5232
5373  094a               L3722:
5374                     ; 1522 	    case F_MODE_RGB24:
5374                     ; 1523              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5376  094a ae2ac3        	ldw	x,#L5432
5377  094d 8d000000      	callf	f_printf
5379                     ; 1524             csc = B_CSC_BYPASS ;
5381  0951 0f02          	clr	(OFST+0,sp)
5382                     ; 1525 	    	break ;
5384  0953               L5632:
5385                     ; 1527 	    break ;
5387  0953               L5232:
5388                     ; 1534     if(csc == B_CSC_RGB2YUV)
5390  0953 7b02          	ld	a,(OFST+0,sp)
5391  0955 a101          	cp	a,#1
5392  0957 2704          	jreq	L231
5393  0959 acfd09fd      	jpf	L3732
5394  095d               L231:
5395                     ; 1537         if(it6802->m_bInputVideoMode & F_MODE_ITU709)
5397  095d 1e03          	ldw	x,(OFST+1,sp)
5398  095f e613          	ld	a,(19,x)
5399  0961 a510          	bcp	a,#16
5400  0963 274d          	jreq	L5732
5401                     ; 1539             HDMIRX_VIDEO_PRINTF(printf("ITU709 "));
5403  0965 ae2aa4        	ldw	x,#L7732
5404  0968 8d000000      	callf	f_printf
5406                     ; 1541             if(it6802->m_bInputVideoMode & F_MODE_16_235)
5408  096c 1e03          	ldw	x,(OFST+1,sp)
5409  096e e613          	ld	a,(19,x)
5410  0970 a520          	bcp	a,#32
5411  0972 271f          	jreq	L1042
5412                     ; 1543                 HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
5414  0974 ae2a9a        	ldw	x,#L3042
5415  0977 8d000000      	callf	f_printf
5417                     ; 1544 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5419  097b ae0001        	ldw	x,#1
5420  097e 8d140514      	callf	L711f_chgbank
5422                     ; 1545                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_16_235),bCSCMtx_RGB2YUV_ITU709_16_235);
5424  0982 ae01bd        	ldw	x,#_bCSCMtx_RGB2YUV_ITU709_16_235
5425  0985 89            	pushw	x
5426  0986 ae0015        	ldw	x,#21
5427  0989 a670          	ld	a,#112
5428  098b 95            	ld	xh,a
5429  098c 8dcc00cc      	callf	L17f_hdmirxbwr
5431  0990 85            	popw	x
5433  0991 206a          	jra	L3732
5434  0993               L1042:
5435                     ; 1549                 HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
5437  0993 ae2a91        	ldw	x,#L7042
5438  0996 8d000000      	callf	f_printf
5440                     ; 1550 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5442  099a ae0001        	ldw	x,#1
5443  099d 8d140514      	callf	L711f_chgbank
5445                     ; 1551                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_0_255),bCSCMtx_RGB2YUV_ITU709_0_255);
5447  09a1 ae01d2        	ldw	x,#_bCSCMtx_RGB2YUV_ITU709_0_255
5448  09a4 89            	pushw	x
5449  09a5 ae0015        	ldw	x,#21
5450  09a8 a670          	ld	a,#112
5451  09aa 95            	ld	xh,a
5452  09ab 8dcc00cc      	callf	L17f_hdmirxbwr
5454  09af 85            	popw	x
5455  09b0 204b          	jra	L3732
5456  09b2               L5732:
5457                     ; 1556             HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
5459  09b2 ae2a89        	ldw	x,#L3142
5460  09b5 8d000000      	callf	f_printf
5462                     ; 1557             if(it6802->m_bInputVideoMode & F_MODE_16_235)
5464  09b9 1e03          	ldw	x,(OFST+1,sp)
5465  09bb e613          	ld	a,(19,x)
5466  09bd a520          	bcp	a,#32
5467  09bf 271f          	jreq	L5142
5468                     ; 1559 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5470  09c1 ae0001        	ldw	x,#1
5471  09c4 8d140514      	callf	L711f_chgbank
5473                     ; 1560                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_16_235),bCSCMtx_RGB2YUV_ITU601_16_235);
5475  09c8 ae0193        	ldw	x,#_bCSCMtx_RGB2YUV_ITU601_16_235
5476  09cb 89            	pushw	x
5477  09cc ae0015        	ldw	x,#21
5478  09cf a670          	ld	a,#112
5479  09d1 95            	ld	xh,a
5480  09d2 8dcc00cc      	callf	L17f_hdmirxbwr
5482  09d6 85            	popw	x
5483                     ; 1561                 HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
5485  09d7 ae2a9a        	ldw	x,#L3042
5486  09da 8d000000      	callf	f_printf
5489  09de 201d          	jra	L3732
5490  09e0               L5142:
5491                     ; 1565 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5493  09e0 ae0001        	ldw	x,#1
5494  09e3 8d140514      	callf	L711f_chgbank
5496                     ; 1566                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_0_255),bCSCMtx_RGB2YUV_ITU601_0_255);
5498  09e7 ae01a8        	ldw	x,#_bCSCMtx_RGB2YUV_ITU601_0_255
5499  09ea 89            	pushw	x
5500  09eb ae0015        	ldw	x,#21
5501  09ee a670          	ld	a,#112
5502  09f0 95            	ld	xh,a
5503  09f1 8dcc00cc      	callf	L17f_hdmirxbwr
5505  09f5 85            	popw	x
5506                     ; 1567                 HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
5508  09f6 ae2a91        	ldw	x,#L7042
5509  09f9 8d000000      	callf	f_printf
5511  09fd               L3732:
5512                     ; 1573 	if(csc == B_CSC_YUV2RGB)
5514  09fd 7b02          	ld	a,(OFST+0,sp)
5515  09ff a103          	cp	a,#3
5516  0a01 2704          	jreq	L431
5517  0a03 acae0aae      	jpf	L1242
5518  0a07               L431:
5519                     ; 1575         HDMIRX_VIDEO_PRINTF(printf("CSC = YUV2RGB "));
5521  0a07 ae2a7a        	ldw	x,#L3242
5522  0a0a 8d000000      	callf	f_printf
5524                     ; 1576         if(it6802->m_bInputVideoMode & F_MODE_ITU709)
5526  0a0e 1e03          	ldw	x,(OFST+1,sp)
5527  0a10 e613          	ld	a,(19,x)
5528  0a12 a510          	bcp	a,#16
5529  0a14 274d          	jreq	L5242
5530                     ; 1578             HDMIRX_VIDEO_PRINTF(printf("ITU709 "));
5532  0a16 ae2aa4        	ldw	x,#L7732
5533  0a19 8d000000      	callf	f_printf
5535                     ; 1579             if(it6802->m_bOutputVideoMode & F_MODE_16_235)
5537  0a1d 1e03          	ldw	x,(OFST+1,sp)
5538  0a1f e612          	ld	a,(18,x)
5539  0a21 a520          	bcp	a,#32
5540  0a23 271f          	jreq	L7242
5541                     ; 1581                 HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
5543  0a25 ae2a71        	ldw	x,#L1342
5544  0a28 8d000000      	callf	f_printf
5546                     ; 1582 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5548  0a2c ae0001        	ldw	x,#1
5549  0a2f 8d140514      	callf	L711f_chgbank
5551                     ; 1583                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_16_235),bCSCMtx_YUV2RGB_ITU709_16_235);
5553  0a33 ae0211        	ldw	x,#_bCSCMtx_YUV2RGB_ITU709_16_235
5554  0a36 89            	pushw	x
5555  0a37 ae0015        	ldw	x,#21
5556  0a3a a670          	ld	a,#112
5557  0a3c 95            	ld	xh,a
5558  0a3d 8dcc00cc      	callf	L17f_hdmirxbwr
5560  0a41 85            	popw	x
5562  0a42 206a          	jra	L1242
5563  0a44               L7242:
5564                     ; 1587                 HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
5566  0a44 ae2a69        	ldw	x,#L5342
5567  0a47 8d000000      	callf	f_printf
5569                     ; 1588 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5571  0a4b ae0001        	ldw	x,#1
5572  0a4e 8d140514      	callf	L711f_chgbank
5574                     ; 1589                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_0_255),bCSCMtx_YUV2RGB_ITU709_0_255);
5576  0a52 ae0226        	ldw	x,#_bCSCMtx_YUV2RGB_ITU709_0_255
5577  0a55 89            	pushw	x
5578  0a56 ae0015        	ldw	x,#21
5579  0a59 a670          	ld	a,#112
5580  0a5b 95            	ld	xh,a
5581  0a5c 8dcc00cc      	callf	L17f_hdmirxbwr
5583  0a60 85            	popw	x
5584  0a61 204b          	jra	L1242
5585  0a63               L5242:
5586                     ; 1594             HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
5588  0a63 ae2a89        	ldw	x,#L3142
5589  0a66 8d000000      	callf	f_printf
5591                     ; 1595             if(it6802->m_bOutputVideoMode & F_MODE_16_235)
5593  0a6a 1e03          	ldw	x,(OFST+1,sp)
5594  0a6c e612          	ld	a,(18,x)
5595  0a6e a520          	bcp	a,#32
5596  0a70 271f          	jreq	L1442
5597                     ; 1597                 HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
5599  0a72 ae2a71        	ldw	x,#L1342
5600  0a75 8d000000      	callf	f_printf
5602                     ; 1598 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5604  0a79 ae0001        	ldw	x,#1
5605  0a7c 8d140514      	callf	L711f_chgbank
5607                     ; 1599                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_16_235),bCSCMtx_YUV2RGB_ITU601_16_235);
5609  0a80 ae01e7        	ldw	x,#_bCSCMtx_YUV2RGB_ITU601_16_235
5610  0a83 89            	pushw	x
5611  0a84 ae0015        	ldw	x,#21
5612  0a87 a670          	ld	a,#112
5613  0a89 95            	ld	xh,a
5614  0a8a 8dcc00cc      	callf	L17f_hdmirxbwr
5616  0a8e 85            	popw	x
5618  0a8f 201d          	jra	L1242
5619  0a91               L1442:
5620                     ; 1603                 HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
5622  0a91 ae2a69        	ldw	x,#L5342
5623  0a94 8d000000      	callf	f_printf
5625                     ; 1604 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5627  0a98 ae0001        	ldw	x,#1
5628  0a9b 8d140514      	callf	L711f_chgbank
5630                     ; 1605                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_0_255),bCSCMtx_YUV2RGB_ITU601_0_255);
5632  0a9f ae01fc        	ldw	x,#_bCSCMtx_YUV2RGB_ITU601_0_255
5633  0aa2 89            	pushw	x
5634  0aa3 ae0015        	ldw	x,#21
5635  0aa6 a670          	ld	a,#112
5636  0aa8 95            	ld	xh,a
5637  0aa9 8dcc00cc      	callf	L17f_hdmirxbwr
5639  0aad 85            	popw	x
5640  0aae               L1242:
5641                     ; 1615 	chgbank(0);
5643  0aae 5f            	clrw	x
5644  0aaf 8d140514      	callf	L711f_chgbank
5646                     ; 1616     	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_CSC_SEL_MASK),csc);
5648  0ab3 7b02          	ld	a,(OFST+0,sp)
5649  0ab5 88            	push	a
5650  0ab6 ae0003        	ldw	x,#3
5651  0ab9 a665          	ld	a,#101
5652  0abb 95            	ld	xh,a
5653  0abc 8da500a5      	callf	L76f_hdmirxset
5655  0ac0 84            	pop	a
5656                     ; 1619 	hdmirxset(REG_RX_VIDEO_CTRL1,(B_RX_DNFREE_GO|B_RX_EN_DITHER|B_RX_EN_UDFILTER),filter);
5658  0ac1 7b01          	ld	a,(OFST-1,sp)
5659  0ac3 88            	push	a
5660  0ac4 ae0007        	ldw	x,#7
5661  0ac7 a667          	ld	a,#103
5662  0ac9 95            	ld	xh,a
5663  0aca 8da500a5      	callf	L76f_hdmirxset
5665  0ace 84            	pop	a
5666                     ; 1621 }
5669  0acf 5b04          	addw	sp,#4
5670  0ad1 87            	retf
5712                     ; 1624 static void SetNewInfoVideoOutput(struct it6802_dev_data *it6802)
5712                     ; 1625 {
5713                     	switch	.text
5714  0ad2               L341f_SetNewInfoVideoOutput:
5716  0ad2 89            	pushw	x
5717       00000000      OFST:	set	0
5720                     ; 1627 	MHLRX_DEBUG_PRINTF(printf("SetNewInfoVideoOutput() \r\n"));
5722  0ad3 ae2a4e        	ldw	x,#L5642
5723  0ad6 8d000000      	callf	f_printf
5725                     ; 1629 	SetVideoInputFormatWithInfoFrame(it6802);
5727  0ada 1e01          	ldw	x,(OFST+1,sp)
5728  0adc 8d060706      	callf	L331f_SetVideoInputFormatWithInfoFrame
5730                     ; 1630 	SetColorimetryByInfoFrame(it6802);
5732  0ae0 1e01          	ldw	x,(OFST+1,sp)
5733  0ae2 8d950795      	callf	L531f_SetColorimetryByInfoFrame
5735                     ; 1631 	SetColorSpaceConvert(it6802);
5737  0ae6 1e01          	ldw	x,(OFST+1,sp)
5738  0ae8 8d110811      	callf	L141f_SetColorSpaceConvert
5740                     ; 1633 	SetVideoOutputColorFormat(it6802);	//2013-0502
5742  0aec 1e01          	ldw	x,(OFST+1,sp)
5743  0aee 8d680c68      	callf	L551f_SetVideoOutputColorFormat
5745                     ; 1634 }
5748  0af2 85            	popw	x
5749  0af3 87            	retf
5802                     ; 1637 static void SetVideoInputFormatWithoutInfoFrame(struct it6802_dev_data *it6802,unsigned char bInMode)
5802                     ; 1638 {
5803                     	switch	.text
5804  0af4               L541f_SetVideoInputFormatWithoutInfoFrame:
5806  0af4 89            	pushw	x
5807  0af5 88            	push	a
5808       00000001      OFST:	set	1
5811                     ; 1641     i=hdmirxrd(REG_RX_IN_CSC_CTRL);
5813  0af6 a671          	ld	a,#113
5814  0af8 8d390039      	callf	L36f_hdmirxrd
5816  0afc 6b01          	ld	(OFST+0,sp),a
5817                     ; 1642     i |=B_IN_FORCE_COLOR_MODE;
5819  0afe 7b01          	ld	a,(OFST+0,sp)
5820  0b00 aa04          	or	a,#4
5821  0b02 6b01          	ld	(OFST+0,sp),a
5822                     ; 1644     i &=(~M_INPUT_COLOR_MASK);
5824  0b04 7b01          	ld	a,(OFST+0,sp)
5825  0b06 a4fc          	and	a,#252
5826  0b08 6b01          	ld	(OFST+0,sp),a
5827                     ; 1645     it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;
5829  0b0a 1e02          	ldw	x,(OFST+1,sp)
5830  0b0c e613          	ld	a,(19,x)
5831  0b0e a4fc          	and	a,#252
5832  0b10 e713          	ld	(19,x),a
5833                     ; 1647     switch(bInMode)
5835  0b12 7b07          	ld	a,(OFST+6,sp)
5837                     ; 1661     default:
5837                     ; 1662         return;
5838  0b14 4d            	tnz	a
5839  0b15 2728          	jreq	L3742
5840  0b17 4a            	dec	a
5841  0b18 2715          	jreq	L1742
5842  0b1a 4a            	dec	a
5843  0b1b 2702          	jreq	L7642
5844  0b1d               L5742:
5847  0b1d 202e          	jra	L241
5848  0b1f               L7642:
5849                     ; 1649     case F_MODE_YUV444:
5849                     ; 1650 	i |=B_INPUT_YUV444;
5851  0b1f 7b01          	ld	a,(OFST+0,sp)
5852  0b21 aa02          	or	a,#2
5853  0b23 6b01          	ld	(OFST+0,sp),a
5854                     ; 1651 	it6802->m_bInputVideoMode |=F_MODE_YUV444;
5856  0b25 1e02          	ldw	x,(OFST+1,sp)
5857  0b27 e613          	ld	a,(19,x)
5858  0b29 aa02          	or	a,#2
5859  0b2b e713          	ld	(19,x),a
5860                     ; 1652 	break;
5862  0b2d 2014          	jra	L5252
5863  0b2f               L1742:
5864                     ; 1653     case F_MODE_YUV422:
5864                     ; 1654 	i |=B_INPUT_YUV422;
5866  0b2f 7b01          	ld	a,(OFST+0,sp)
5867  0b31 aa01          	or	a,#1
5868  0b33 6b01          	ld	(OFST+0,sp),a
5869                     ; 1655         it6802->m_bInputVideoMode |=F_MODE_YUV422;
5871  0b35 1e02          	ldw	x,(OFST+1,sp)
5872  0b37 e613          	ld	a,(19,x)
5873  0b39 aa01          	or	a,#1
5874  0b3b e713          	ld	(19,x),a
5875                     ; 1656         break;
5877  0b3d 2004          	jra	L5252
5878  0b3f               L3742:
5879                     ; 1657     case F_MODE_RGB24:
5879                     ; 1658 	i |=B_INPUT_RGB24;
5881                     ; 1659         it6802->m_bInputVideoMode |=F_MODE_RGB24;
5883  0b3f 1e02          	ldw	x,(OFST+1,sp)
5884  0b41 e613          	ld	a,(19,x)
5885                     ; 1660         break;
5887  0b43               L5252:
5888                     ; 1664     mhlrxwr(REG_RX_IN_CSC_CTRL,i);
5890  0b43 7b01          	ld	a,(OFST+0,sp)
5891  0b45 97            	ld	xl,a
5892  0b46 a671          	ld	a,#113
5893  0b48 95            	ld	xh,a
5894  0b49 8d3a013a      	callf	L57f_mhlrxwr
5896                     ; 1666 }
5897  0b4d               L241:
5900  0b4d 5b03          	addw	sp,#3
5901  0b4f 87            	retf
5947                     ; 1668 static void SetColorimetryByMode(struct it6802_dev_data *it6802)
5947                     ; 1669 {
5948                     	switch	.text
5949  0b50               L741f_SetColorimetryByMode:
5951  0b50 89            	pushw	x
5952  0b51 88            	push	a
5953       00000001      OFST:	set	1
5956                     ; 1671     RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);
5958  0b52 a69a          	ld	a,#154
5959  0b54 8d390039      	callf	L36f_hdmirxrd
5961  0b58 6b01          	ld	(OFST+0,sp),a
5962                     ; 1673    MHLRX_DEBUG_PRINTF(printf(" SetColorimetryByMode() REG_RX_PIXCLK_SPEED=%x \r\n", RxClkXCNT));
5964  0b5a 7b01          	ld	a,(OFST+0,sp)
5965  0b5c 88            	push	a
5966  0b5d ae2a1c        	ldw	x,#L1552
5967  0b60 8d000000      	callf	f_printf
5969  0b64 84            	pop	a
5970                     ; 1675     it6802->m_bInputVideoMode &=~F_MODE_ITU709;
5972  0b65 1e02          	ldw	x,(OFST+1,sp)
5973  0b67 e613          	ld	a,(19,x)
5974  0b69 a4ef          	and	a,#239
5975  0b6b e713          	ld	(19,x),a
5976                     ; 1677      if(RxClkXCNT <0x34)
5978  0b6d 7b01          	ld	a,(OFST+0,sp)
5979  0b6f a134          	cp	a,#52
5980  0b71 240a          	jruge	L3552
5981                     ; 1680         it6802->m_bInputVideoMode |=F_MODE_ITU709;
5983  0b73 1e02          	ldw	x,(OFST+1,sp)
5984  0b75 e613          	ld	a,(19,x)
5985  0b77 aa10          	or	a,#16
5986  0b79 e713          	ld	(19,x),a
5988  0b7b 2008          	jra	L5552
5989  0b7d               L3552:
5990                     ; 1685         it6802->m_bInputVideoMode &=~F_MODE_ITU709;
5992  0b7d 1e02          	ldw	x,(OFST+1,sp)
5993  0b7f e613          	ld	a,(19,x)
5994  0b81 a4ef          	and	a,#239
5995  0b83 e713          	ld	(19,x),a
5996  0b85               L5552:
5997                     ; 1688 }
6000  0b85 5b03          	addw	sp,#3
6001  0b87 87            	retf
6042                     ; 1690 static void SetDVIVideoOutput(struct it6802_dev_data *it6802)
6042                     ; 1691 {
6043                     	switch	.text
6044  0b88               L151f_SetDVIVideoOutput:
6046  0b88 89            	pushw	x
6047       00000000      OFST:	set	0
6050                     ; 1692 	MHLRX_DEBUG_PRINTF(printf("SetDVIVideoOutput() \r\n"));
6052  0b89 ae2a05        	ldw	x,#L7752
6053  0b8c 8d000000      	callf	f_printf
6055                     ; 1694 	SetVideoInputFormatWithoutInfoFrame(it6802,F_MODE_RGB24);
6057  0b90 4b00          	push	#0
6058  0b92 1e02          	ldw	x,(OFST+2,sp)
6059  0b94 8df40af4      	callf	L541f_SetVideoInputFormatWithoutInfoFrame
6061  0b98 84            	pop	a
6062                     ; 1695 	SetColorimetryByMode(it6802);
6064  0b99 1e01          	ldw	x,(OFST+1,sp)
6065  0b9b 8d500b50      	callf	L741f_SetColorimetryByMode
6067                     ; 1696 	SetColorSpaceConvert(it6802);
6069  0b9f 1e01          	ldw	x,(OFST+1,sp)
6070  0ba1 8d110811      	callf	L141f_SetColorSpaceConvert
6072                     ; 1698 	SetVideoOutputColorFormat(it6802);	//2013-0502
6074  0ba5 1e01          	ldw	x,(OFST+1,sp)
6075  0ba7 8d680c68      	callf	L551f_SetVideoOutputColorFormat
6077                     ; 1699 }
6080  0bab 85            	popw	x
6081  0bac 87            	retf
6130                     ; 1704 static void IT6802VideoOutputConfigure(struct it6802_dev_data *it6802)
6130                     ; 1705 {
6131                     	switch	.text
6132  0bad               L351f_IT6802VideoOutputConfigure:
6134  0bad 89            	pushw	x
6135  0bae 88            	push	a
6136       00000001      OFST:	set	1
6139                     ; 1709 	it6802->m_bOutputVideoMode = HDMIRX_OUTPUT_VID_MODE ;
6141  0baf a640          	ld	a,#64
6142  0bb1 e712          	ld	(18,x),a
6143                     ; 1711 	it6802->m_bUpHDMIMode =IsHDMIMode();
6145  0bb3 8dc806c8      	callf	L131f_IsHDMIMode
6147  0bb7 1e02          	ldw	x,(OFST+1,sp)
6148  0bb9 48            	sll	a
6149  0bba 48            	sll	a
6150  0bbb 48            	sll	a
6151  0bbc e875          	xor	a,(117,x)
6152  0bbe a408          	and	a,#8
6153  0bc0 e875          	xor	a,(117,x)
6154  0bc2 e775          	ld	(117,x),a
6155                     ; 1712 	if(it6802->m_bUpHDMIMode==FALSE)
6157  0bc4 1e02          	ldw	x,(OFST+1,sp)
6158  0bc6 e675          	ld	a,(117,x)
6159  0bc8 a508          	bcp	a,#8
6160  0bca 2608          	jrne	L1362
6161                     ; 1714 	SetDVIVideoOutput(it6802);
6163  0bcc 1e02          	ldw	x,(OFST+1,sp)
6164  0bce 8d880b88      	callf	L151f_SetDVIVideoOutput
6167  0bd2 2006          	jra	L3362
6168  0bd4               L1362:
6169                     ; 1718 	SetNewInfoVideoOutput(it6802);
6171  0bd4 1e02          	ldw	x,(OFST+1,sp)
6172  0bd6 8dd20ad2      	callf	L341f_SetNewInfoVideoOutput
6174  0bda               L3362:
6175                     ; 1720 	it6802->m_NewAVIInfoFrameF=FALSE;
6177  0bda 1e02          	ldw	x,(OFST+1,sp)
6178  0bdc e675          	ld	a,(117,x)
6179  0bde a4df          	and	a,#223
6180  0be0 e775          	ld	(117,x),a
6181                     ; 1724 	it6802->GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
6183  0be2 a699          	ld	a,#153
6184  0be4 8d390039      	callf	L36f_hdmirxrd
6186  0be8 a4f0          	and	a,#240
6187  0bea 4e            	swap	a
6188  0beb a40f          	and	a,#15
6189  0bed 1e02          	ldw	x,(OFST+1,sp)
6190  0bef e736          	ld	(54,x),a
6191                     ; 1725 	switch( it6802->GCP_CD ) {
6193  0bf1 1e02          	ldw	x,(OFST+1,sp)
6194  0bf3 e636          	ld	a,(54,x)
6196                     ; 1737 	break;
6197  0bf5 a005          	sub	a,#5
6198  0bf7 2712          	jreq	L1062
6199  0bf9 4a            	dec	a
6200  0bfa 271e          	jreq	L3062
6201  0bfc               L5062:
6202                     ; 1734 	default :
6202                     ; 1735 	//printf( "\r\n Output ColorDepth = 24 bits per pixel\r\n");
6202                     ; 1736 	hdmirxset(0x65, 0x0C, 0x00);
6204  0bfc 4b00          	push	#0
6205  0bfe ae000c        	ldw	x,#12
6206  0c01 a665          	ld	a,#101
6207  0c03 95            	ld	xh,a
6208  0c04 8da500a5      	callf	L76f_hdmirxset
6210  0c08 84            	pop	a
6211                     ; 1737 	break;
6213  0c09 201c          	jra	L7362
6214  0c0b               L1062:
6215                     ; 1726 	case 5 :
6215                     ; 1727 	//printf( "\r\n Output ColorDepth = 30 bits per pixel\r\n");
6215                     ; 1728 	hdmirxset(0x65, 0x0C, 0x04);
6217  0c0b 4b04          	push	#4
6218  0c0d ae000c        	ldw	x,#12
6219  0c10 a665          	ld	a,#101
6220  0c12 95            	ld	xh,a
6221  0c13 8da500a5      	callf	L76f_hdmirxset
6223  0c17 84            	pop	a
6224                     ; 1729 	break;
6226  0c18 200d          	jra	L7362
6227  0c1a               L3062:
6228                     ; 1730 	case 6 :
6228                     ; 1731 	//printf( "\r\n Output ColorDepth = 36 bits per pixel\r\n");
6228                     ; 1732 	hdmirxset(0x65, 0x0C, 0x08);
6230  0c1a 4b08          	push	#8
6231  0c1c ae000c        	ldw	x,#12
6232  0c1f a665          	ld	a,#101
6233  0c21 95            	ld	xh,a
6234  0c22 8da500a5      	callf	L76f_hdmirxset
6236  0c26 84            	pop	a
6237                     ; 1733 	break;
6239  0c27               L7362:
6240                     ; 1743 	RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);
6242  0c27 a69a          	ld	a,#154
6243  0c29 8d390039      	callf	L36f_hdmirxrd
6245  0c2d 6b01          	ld	(OFST+0,sp),a
6246                     ; 1744 	if(RxClkXCNT <0x12)	// 1600x1200@60Hz 165MHz = 0x13 ~ 0x14
6248  0c2f 7b01          	ld	a,(OFST+0,sp)
6249  0c31 a112          	cp	a,#18
6250  0c33 2408          	jruge	L1462
6251                     ; 1747 	it6802->pixelMode = DUAL_PIXEL;
6253  0c35 1e02          	ldw	x,(OFST+1,sp)
6254  0c37 a601          	ld	a,#1
6255  0c39 e735          	ld	(53,x),a
6257  0c3b 2004          	jra	L3462
6258  0c3d               L1462:
6259                     ; 1754 	it6802->pixelMode = SINGLE_PIXEL;
6261  0c3d 1e02          	ldw	x,(OFST+1,sp)
6262  0c3f 6f35          	clr	(53,x)
6263  0c41               L3462:
6264                     ; 1757 	if(it6802->pixelMode == DUAL_PIXEL)
6266  0c41 1e02          	ldw	x,(OFST+1,sp)
6267  0c43 e635          	ld	a,(53,x)
6268  0c45 a101          	cp	a,#1
6269  0c47 260f          	jrne	L5462
6270                     ; 1759 	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),(B_HALF_CLK|B_OUT_DDR));		// for output Dual Pixel mode
6272  0c49 4b30          	push	#48
6273  0c4b ae0030        	ldw	x,#48
6274  0c4e a651          	ld	a,#81
6275  0c50 95            	ld	xh,a
6276  0c51 8da500a5      	callf	L76f_hdmirxset
6278  0c55 84            	pop	a
6280  0c56 200d          	jra	L7462
6281  0c58               L5462:
6282                     ; 1764 	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),0x00);	// for output  single Pixel mode
6284  0c58 4b00          	push	#0
6285  0c5a ae0030        	ldw	x,#48
6286  0c5d a651          	ld	a,#81
6287  0c5f 95            	ld	xh,a
6288  0c60 8da500a5      	callf	L76f_hdmirxset
6290  0c64 84            	pop	a
6291  0c65               L7462:
6292                     ; 1768 }
6295  0c65 5b03          	addw	sp,#3
6296  0c67 87            	retf
6334                     ; 1771 static void SetVideoOutputColorFormat(struct it6802_dev_data *it6802)
6334                     ; 1772 {
6335                     	switch	.text
6336  0c68               L551f_SetVideoOutputColorFormat:
6340                     ; 1773 	switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK) {
6342  0c68 e612          	ld	a,(18,x)
6343  0c6a a403          	and	a,#3
6345                     ; 1782 			break;
6346  0c6c 4d            	tnz	a
6347  0c6d 2708          	jreq	L1562
6348  0c6f 4a            	dec	a
6349  0c70 2714          	jreq	L3562
6350  0c72 4a            	dec	a
6351  0c73 2720          	jreq	L5562
6352  0c75 202b          	jra	L1072
6353  0c77               L1562:
6354                     ; 1774 		case F_MODE_RGB24 :
6354                     ; 1775 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
6356  0c77 4b00          	push	#0
6357  0c79 ae0030        	ldw	x,#48
6358  0c7c a665          	ld	a,#101
6359  0c7e 95            	ld	xh,a
6360  0c7f 8da500a5      	callf	L76f_hdmirxset
6362  0c83 84            	pop	a
6363                     ; 1776 			break;
6365  0c84 201c          	jra	L1072
6366  0c86               L3562:
6367                     ; 1777 		case F_MODE_YUV422 :
6367                     ; 1778 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
6369  0c86 4b10          	push	#16
6370  0c88 ae0030        	ldw	x,#48
6371  0c8b a665          	ld	a,#101
6372  0c8d 95            	ld	xh,a
6373  0c8e 8da500a5      	callf	L76f_hdmirxset
6375  0c92 84            	pop	a
6376                     ; 1779 			break;
6378  0c93 200d          	jra	L1072
6379  0c95               L5562:
6380                     ; 1780 		case F_MODE_YUV444 :
6380                     ; 1781 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
6382  0c95 4b20          	push	#32
6383  0c97 ae0030        	ldw	x,#48
6384  0c9a a665          	ld	a,#101
6385  0c9c 95            	ld	xh,a
6386  0c9d 8da500a5      	callf	L76f_hdmirxset
6388  0ca1 84            	pop	a
6389                     ; 1782 			break;
6391  0ca2               L1072:
6392                     ; 1784 }
6395  0ca2 87            	retf
6441                     ; 1786 void it6802PortSelect(unsigned char ucPortSel)
6441                     ; 1787 {
6442                     	switch	.text
6443  0ca3               f_it6802PortSelect:
6445  0ca3 89            	pushw	x
6446       00000002      OFST:	set	2
6449                     ; 1788 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
6451  0ca4 8dd301d3      	callf	L501f_get_it6802_dev_data
6453  0ca8 1f01          	ldw	(OFST-1,sp),x
6454                     ; 1798 	hdmirxset(REG_RX_051, B_PORT_SEL, F_PORT_SEL_0); //select port 0
6456  0caa 4b00          	push	#0
6457  0cac ae0001        	ldw	x,#1
6458  0caf a651          	ld	a,#81
6459  0cb1 95            	ld	xh,a
6460  0cb2 8da500a5      	callf	L76f_hdmirxset
6462  0cb6 84            	pop	a
6463                     ; 1799 	it6802data->m_ucCurrentHDMIPort = F_PORT_SEL_0;
6465  0cb7 1e01          	ldw	x,(OFST-1,sp)
6466  0cb9 6f11          	clr	(17,x)
6467                     ; 1802 	IT6802SwitchVideoState(it6802data,VSTATE_SyncWait);
6469  0cbb 4b04          	push	#4
6470  0cbd 1e02          	ldw	x,(OFST+0,sp)
6471  0cbf 8d4a104a      	callf	L702f_IT6802SwitchVideoState
6473  0cc3 84            	pop	a
6474                     ; 1804 }
6477  0cc4 85            	popw	x
6478  0cc5 87            	retf
6501                     ; 1813 static void aud_fiforst( void )
6501                     ; 1814 {
6502                     	switch	.text
6503  0cc6               L751f_aud_fiforst:
6507                     ; 1815 	hdmirxset(REG_RX_010, 0x02, 0x02);
6509  0cc6 4b02          	push	#2
6510  0cc8 ae0002        	ldw	x,#2
6511  0ccb a610          	ld	a,#16
6512  0ccd 95            	ld	xh,a
6513  0cce 8da500a5      	callf	L76f_hdmirxset
6515  0cd2 84            	pop	a
6516                     ; 1816 	hdmirxset(REG_RX_010, 0x02, 0x00);
6518  0cd3 4b00          	push	#0
6519  0cd5 ae0002        	ldw	x,#2
6520  0cd8 a610          	ld	a,#16
6521  0cda 95            	ld	xh,a
6522  0cdb 8da500a5      	callf	L76f_hdmirxset
6524  0cdf 84            	pop	a
6525                     ; 1817 }
6528  0ce0 87            	retf
6561                     ; 1820 static void IT6802AudioOutputEnable(unsigned char bEnable)
6561                     ; 1821 {
6562                     	switch	.text
6563  0ce1               L161f_IT6802AudioOutputEnable:
6567                     ; 1822 	if(bEnable==TRUE)
6569  0ce1 a101          	cp	a,#1
6570  0ce3 260f          	jrne	L1572
6571                     ; 1824 		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),0x00);
6573  0ce5 4b00          	push	#0
6574  0ce7 ae001f        	ldw	x,#31
6575  0cea a652          	ld	a,#82
6576  0cec 95            	ld	xh,a
6577  0ced 8da500a5      	callf	L76f_hdmirxset
6579  0cf1 84            	pop	a
6581  0cf2 200d          	jra	L3572
6582  0cf4               L1572:
6583                     ; 1828 		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),(B_TriI2SIO|B_TriSPDIF));
6585  0cf4 4b1f          	push	#31
6586  0cf6 ae001f        	ldw	x,#31
6587  0cf9 a652          	ld	a,#82
6588  0cfb 95            	ld	xh,a
6589  0cfc 8da500a5      	callf	L76f_hdmirxset
6591  0d00 84            	pop	a
6592  0d01               L3572:
6593                     ; 1830 }
6596  0d01 87            	retf
6619                     ; 1834 static void hdmirx_ResetAudio(void)
6619                     ; 1835 {
6620                     	switch	.text
6621  0d02               L361f_hdmirx_ResetAudio:
6625                     ; 1836 	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,B_AUDRST);
6627  0d02 4b02          	push	#2
6628  0d04 ae0002        	ldw	x,#2
6629  0d07 a610          	ld	a,#16
6630  0d09 95            	ld	xh,a
6631  0d0a 8da500a5      	callf	L76f_hdmirxset
6633  0d0e 84            	pop	a
6634                     ; 1837 	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,0x00);
6636  0d0f 4b00          	push	#0
6637  0d11 ae0002        	ldw	x,#2
6638  0d14 a610          	ld	a,#16
6639  0d16 95            	ld	xh,a
6640  0d17 8da500a5      	callf	L76f_hdmirxset
6642  0d1b 84            	pop	a
6643                     ; 1838 }
6646  0d1c 87            	retf
6670                     ; 1841 static void hdmirx_SetHWMuteClrMode(void)
6670                     ; 1842 {
6671                     	switch	.text
6672  0d1d               L561f_hdmirx_SetHWMuteClrMode:
6676                     ; 1843     hdmirxset(REG_RX_HWMuteCtrl,(B_HWAudMuteClrMode),(B_HWAudMuteClrMode));
6678  0d1d 4b20          	push	#32
6679  0d1f ae0020        	ldw	x,#32
6680  0d22 a67d          	ld	a,#125
6681  0d24 95            	ld	xh,a
6682  0d25 8da500a5      	callf	L76f_hdmirxset
6684  0d29 84            	pop	a
6685                     ; 1844 }
6688  0d2a 87            	retf
6712                     ; 1846 static void hdmirx_SetHWMuteClr(void)
6712                     ; 1847 {
6713                     	switch	.text
6714  0d2b               L761f_hdmirx_SetHWMuteClr:
6718                     ; 1848     hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),(B_HWMuteClr));
6720  0d2b 4b10          	push	#16
6721  0d2d ae0010        	ldw	x,#16
6722  0d30 a67d          	ld	a,#125
6723  0d32 95            	ld	xh,a
6724  0d33 8da500a5      	callf	L76f_hdmirxset
6726  0d37 84            	pop	a
6727                     ; 1849 }
6730  0d38 87            	retf
6754                     ; 1851 static void hdmirx_ClearHWMuteClr(void)
6754                     ; 1852 {
6755                     	switch	.text
6756  0d39               L171f_hdmirx_ClearHWMuteClr:
6760                     ; 1853     hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),0);
6762  0d39 4b00          	push	#0
6763  0d3b ae0010        	ldw	x,#16
6764  0d3e a67d          	ld	a,#125
6765  0d40 95            	ld	xh,a
6766  0d41 8da500a5      	callf	L76f_hdmirxset
6768  0d45 84            	pop	a
6769                     ; 1854 }
6772  0d46 87            	retf
6817                     ; 1859 static void getHDMIRXInputAudio(AUDIO_CAPS *pAudioCaps)
6817                     ; 1860 {
6818                     	switch	.text
6819  0d47               L371f_getHDMIRXInputAudio:
6821  0d47 89            	pushw	x
6822  0d48 88            	push	a
6823       00000001      OFST:	set	1
6826                     ; 1864     uc = hdmirxrd(REG_RX_0AE);	// REG_RX_AUD_CHSTAT3
6828  0d49 a6ae          	ld	a,#174
6829  0d4b 8d390039      	callf	L36f_hdmirxrd
6831  0d4f 6b01          	ld	(OFST+0,sp),a
6832                     ; 1865     pAudioCaps->SampleFreq = uc & M_FS;
6834  0d51 7b01          	ld	a,(OFST+0,sp)
6835  0d53 a40f          	and	a,#15
6836  0d55 1e02          	ldw	x,(OFST+1,sp)
6837  0d57 e702          	ld	(2,x),a
6838                     ; 1867     uc = hdmirxrd(REG_RX_0AA);	//REG_RX_AUDIO_CH_STAT
6840  0d59 a6aa          	ld	a,#170
6841  0d5b 8d390039      	callf	L36f_hdmirxrd
6843  0d5f 6b01          	ld	(OFST+0,sp),a
6844                     ; 1868     pAudioCaps->AudioFlag = uc & 0xF0;
6846  0d61 7b01          	ld	a,(OFST+0,sp)
6847  0d63 a4f0          	and	a,#240
6848  0d65 1e02          	ldw	x,(OFST+1,sp)
6849  0d67 f7            	ld	(x),a
6850                     ; 1869     pAudioCaps->AudSrcEnable=uc&M_AUDIO_CH;
6852  0d68 7b01          	ld	a,(OFST+0,sp)
6853  0d6a a40f          	and	a,#15
6854  0d6c 1e02          	ldw	x,(OFST+1,sp)
6855  0d6e e701          	ld	(1,x),a
6856                     ; 1870     pAudioCaps->AudSrcEnable|=hdmirxrd(REG_RX_0AA)&M_AUDIO_CH;
6858  0d70 a6aa          	ld	a,#170
6859  0d72 8d390039      	callf	L36f_hdmirxrd
6861  0d76 a40f          	and	a,#15
6862  0d78 1e02          	ldw	x,(OFST+1,sp)
6863  0d7a ea01          	or	a,(1,x)
6864  0d7c e701          	ld	(1,x),a
6865                     ; 1872     if( (uc & (B_HBRAUDIO|B_DSDAUDIO)) == 0)
6867  0d7e 7b01          	ld	a,(OFST+0,sp)
6868  0d80 a560          	bcp	a,#96
6869  0d82 2614          	jrne	L7303
6870                     ; 1874         uc = hdmirxrd(REG_RX_0AB);	//REG_RX_AUD_CHSTAT0
6872  0d84 a6ab          	ld	a,#171
6873  0d86 8d390039      	callf	L36f_hdmirxrd
6875  0d8a 6b01          	ld	(OFST+0,sp),a
6876                     ; 1876         if( (uc & B_NLPCM ) == 0 )
6878  0d8c 7b01          	ld	a,(OFST+0,sp)
6879  0d8e a501          	bcp	a,#1
6880  0d90 2606          	jrne	L7303
6881                     ; 1878             pAudioCaps->AudioFlag |= B_CAP_LPCM;
6883  0d92 1e02          	ldw	x,(OFST+1,sp)
6884  0d94 f6            	ld	a,(x)
6885  0d95 aa01          	or	a,#1
6886  0d97 f7            	ld	(x),a
6887  0d98               L7303:
6888                     ; 1882 }
6891  0d98 5b03          	addw	sp,#3
6892  0d9a 87            	retf
6945                     ; 1887 static void IT6802SwitchAudioState(struct it6802_dev_data *it6802,Audio_State_Type state)
6945                     ; 1888 {
6946                     	switch	.text
6947  0d9b               L571f_IT6802SwitchAudioState:
6949  0d9b 89            	pushw	x
6950       00000000      OFST:	set	0
6953                     ; 1891 	if( it6802->m_AState == state )
6955  0d9c e601          	ld	a,(1,x)
6956  0d9e 1106          	cp	a,(OFST+6,sp)
6957  0da0 2604ac230e23  	jreq	L671
6958                     ; 1893 	    return ;
6960                     ; 1896 	HDMIRX_AUDIO_PRINTF(printf(AStateStr[(unsigned char)state]));
6962  0da6 7b06          	ld	a,(OFST+6,sp)
6963  0da8 5f            	clrw	x
6964  0da9 97            	ld	xl,a
6965  0daa 58            	sllw	x
6966  0dab de002c        	ldw	x,(_AStateStr,x)
6967  0dae 8d000000      	callf	f_printf
6969                     ; 1897 	HDMIRX_AUDIO_PRINTF(printf("+++ \r\n"));
6971  0db2 ae29fe        	ldw	x,#L1013
6972  0db5 8d000000      	callf	f_printf
6974                     ; 1899 	it6802->m_AState=state;
6976  0db9 7b06          	ld	a,(OFST+6,sp)
6977  0dbb 1e01          	ldw	x,(OFST+1,sp)
6978  0dbd e701          	ld	(1,x),a
6979                     ; 1902 	switch(it6802->m_AState)
6981  0dbf 1e01          	ldw	x,(OFST+1,sp)
6982  0dc1 e601          	ld	a,(1,x)
6984                     ; 1928     	break;
6985  0dc3 4d            	tnz	a
6986  0dc4 270c          	jreq	L3403
6987  0dc6 4a            	dec	a
6988  0dc7 271d          	jreq	L5403
6989  0dc9 a002          	sub	a,#2
6990  0dcb 2720          	jreq	L7403
6991  0dcd 4a            	dec	a
6992  0dce 272f          	jreq	L1503
6993  0dd0 2051          	jra	L5013
6994  0dd2               L3403:
6995                     ; 1904 	case ASTATE_AudioOff:
6995                     ; 1905 		hdmirxset(REG_RX_RST_CTRL, B_AUDRST, B_AUDRST);
6997  0dd2 4b02          	push	#2
6998  0dd4 ae0002        	ldw	x,#2
6999  0dd7 a610          	ld	a,#16
7000  0dd9 95            	ld	xh,a
7001  0dda 8da500a5      	callf	L76f_hdmirxset
7003  0dde 84            	pop	a
7004                     ; 1906 		IT6802AudioOutputEnable(OFF);
7006  0ddf 4f            	clr	a
7007  0de0 8de10ce1      	callf	L161f_IT6802AudioOutputEnable
7009                     ; 1908 		break;
7011  0de4 203d          	jra	L5013
7012  0de6               L5403:
7013                     ; 1909 	case ASTATE_RequestAudio:
7013                     ; 1910 		IT6802AudioOutputEnable(OFF);
7015  0de6 4f            	clr	a
7016  0de7 8de10ce1      	callf	L161f_IT6802AudioOutputEnable
7018                     ; 1912 	    break;
7020  0deb 2036          	jra	L5013
7021  0ded               L7403:
7022                     ; 1914 	case ASTATE_WaitForReady:
7022                     ; 1915 		hdmirx_SetHWMuteClr();
7024  0ded 8d2b0d2b      	callf	L761f_hdmirx_SetHWMuteClr
7026                     ; 1916 		hdmirx_ClearHWMuteClr();
7028  0df1 8d390d39      	callf	L171f_hdmirx_ClearHWMuteClr
7030                     ; 1917 		it6802->m_AudioCountingTimer = AUDIO_READY_TIMEOUT;
7032  0df5 1e01          	ldw	x,(OFST+1,sp)
7033  0df7 90ae0015      	ldw	y,#21
7034  0dfb ef0f          	ldw	(15,x),y
7035                     ; 1918 	    break;
7037  0dfd 2024          	jra	L5013
7038  0dff               L1503:
7039                     ; 1920 	case ASTATE_AudioOn:
7039                     ; 1921 
7039                     ; 1922 		IT6802AudioOutputEnable(ON);
7041  0dff a601          	ld	a,#1
7042  0e01 8de10ce1      	callf	L161f_IT6802AudioOutputEnable
7044                     ; 1924 		HDMIRX_AUDIO_PRINTF(printf("Cat6023 Audio--> Audio flag=%02X,Ch No=%02X,Fs=%02X ... \r\n",
7044                     ; 1925                         		(int)it6802->m_RxAudioCaps.AudioFlag,
7044                     ; 1926                         		(int)it6802->m_RxAudioCaps.AudSrcEnable,
7044                     ; 1927                         		(int)it6802->m_RxAudioCaps.SampleFreq));
7046  0e05 1e01          	ldw	x,(OFST+1,sp)
7047  0e07 e605          	ld	a,(5,x)
7048  0e09 5f            	clrw	x
7049  0e0a 97            	ld	xl,a
7050  0e0b 89            	pushw	x
7051  0e0c 1e03          	ldw	x,(OFST+3,sp)
7052  0e0e e604          	ld	a,(4,x)
7053  0e10 5f            	clrw	x
7054  0e11 97            	ld	xl,a
7055  0e12 89            	pushw	x
7056  0e13 1e05          	ldw	x,(OFST+5,sp)
7057  0e15 e603          	ld	a,(3,x)
7058  0e17 5f            	clrw	x
7059  0e18 97            	ld	xl,a
7060  0e19 89            	pushw	x
7061  0e1a ae29c3        	ldw	x,#L7013
7062  0e1d 8d000000      	callf	f_printf
7064  0e21 5b06          	addw	sp,#6
7065                     ; 1928     	break;
7067  0e23               L5013:
7068                     ; 1930 }
7069  0e23               L671:
7072  0e23 85            	popw	x
7073  0e24 87            	retf
7125                     ; 1932 static void IT6802AudioHandler(struct it6802_dev_data *it6802)
7125                     ; 1933 {
7126                     	switch	.text
7127  0e25               L771f_IT6802AudioHandler:
7129  0e25 89            	pushw	x
7130  0e26 5208          	subw	sp,#8
7131       00000008      OFST:	set	8
7134                     ; 1936    if(it6802->m_AudioCountingTimer > MS_LOOP)
7136  0e28 9093          	ldw	y,x
7137  0e2a 90ee0f        	ldw	y,(15,y)
7138  0e2d 90a30033      	cpw	y,#51
7139  0e31 250c          	jrult	L3413
7140                     ; 1938    it6802->m_AudioCountingTimer -= MS_LOOP;
7142  0e33 9093          	ldw	y,x
7143  0e35 ee0f          	ldw	x,(15,x)
7144  0e37 1d0032        	subw	x,#50
7145  0e3a 90ef0f        	ldw	(15,y),x
7147  0e3d 2006          	jra	L5413
7148  0e3f               L3413:
7149                     ; 1942    it6802->m_AudioCountingTimer = 0;
7151  0e3f 1e09          	ldw	x,(OFST+1,sp)
7152  0e41 905f          	clrw	y
7153  0e43 ef0f          	ldw	(15,x),y
7154  0e45               L5413:
7155                     ; 1946    if(it6802->m_RxHDCPState==RxHDCP_ModeCheck)
7157  0e45 1e09          	ldw	x,(OFST+1,sp)
7158  0e47 e602          	ld	a,(2,x)
7159  0e49 a101          	cp	a,#1
7160  0e4b 2604          	jrne	L402
7161  0e4d ac310f31      	jpf	L202
7162  0e51               L402:
7163                     ; 1947    	return;
7165                     ; 1949     switch(it6802->m_AState)
7167  0e51 1e09          	ldw	x,(OFST+1,sp)
7168  0e53 e601          	ld	a,(1,x)
7170                     ; 2017         break;
7171  0e55 4a            	dec	a
7172  0e56 2713          	jreq	L1113
7173  0e58 a002          	sub	a,#2
7174  0e5a 2604ace50ee5  	jreq	L3113
7175  0e60 4a            	dec	a
7176  0e61 2604          	jrne	L602
7177  0e63 acf80ef8      	jpf	L5113
7178  0e67               L602:
7179  0e67 ac310f31      	jpf	L3513
7180  0e6b               L1113:
7181                     ; 1951     case ASTATE_RequestAudio:
7181                     ; 1952 
7181                     ; 1953         getHDMIRXInputAudio(&(it6802->m_RxAudioCaps));
7183  0e6b 1e09          	ldw	x,(OFST+1,sp)
7184  0e6d 1c0003        	addw	x,#3
7185  0e70 8d470d47      	callf	L371f_getHDMIRXInputAudio
7187                     ; 1955         if(it6802->m_RxAudioCaps.AudioFlag & B_CAP_AUDIO_ON)
7189  0e74 1e09          	ldw	x,(OFST+1,sp)
7190  0e76 e603          	ld	a,(3,x)
7191  0e78 a580          	bcp	a,#128
7192  0e7a 2604          	jrne	L012
7193  0e7c ac310f31      	jpf	L3513
7194  0e80               L012:
7195                     ; 1958 		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_256FS);
7197  0e80 4b10          	push	#16
7198  0e82 ae0070        	ldw	x,#112
7199  0e85 a654          	ld	a,#84
7200  0e87 95            	ld	xh,a
7201  0e88 8da500a5      	callf	L76f_hdmirxset
7203  0e8c 84            	pop	a
7204                     ; 1960             if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_HBR_AUDIO)
7206  0e8d 1e09          	ldw	x,(OFST+1,sp)
7207  0e8f e603          	ld	a,(3,x)
7208  0e91 a540          	bcp	a,#64
7209  0e93 271e          	jreq	L7513
7210                     ; 1962 		HDMIRX_AUDIO_PRINTF(printf("+++++++++++ B_CAP_HBR_AUDIO +++++++++++++++++\r\n"));
7212  0e95 ae2993        	ldw	x,#L1613
7213  0e98 8d000000      	callf	f_printf
7215                     ; 1964 		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_128FS);	// MCLK = 128fs only for HBR audio
7217  0e9c 4b00          	push	#0
7218  0e9e ae0070        	ldw	x,#112
7219  0ea1 a654          	ld	a,#84
7220  0ea3 95            	ld	xh,a
7221  0ea4 8da500a5      	callf	L76f_hdmirxset
7223  0ea8 84            	pop	a
7224                     ; 1966 		hdmirx_SetHWMuteClrMode();
7226  0ea9 8d1d0d1d      	callf	L561f_hdmirx_SetHWMuteClrMode
7228                     ; 1967 		hdmirx_ResetAudio();
7230  0ead 8d020d02      	callf	L361f_hdmirx_ResetAudio
7233  0eb1 2027          	jra	L3613
7234  0eb3               L7513:
7235                     ; 1969             else if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_DSD_AUDIO )
7237  0eb3 1e09          	ldw	x,(OFST+1,sp)
7238  0eb5 e603          	ld	a,(3,x)
7239  0eb7 a520          	bcp	a,#32
7240  0eb9 270a          	jreq	L5613
7241                     ; 1972                 hdmirx_SetHWMuteClrMode();
7243  0ebb 8d1d0d1d      	callf	L561f_hdmirx_SetHWMuteClrMode
7245                     ; 1973                 hdmirx_ResetAudio();
7247  0ebf 8d020d02      	callf	L361f_hdmirx_ResetAudio
7250  0ec3 2015          	jra	L3613
7251  0ec5               L5613:
7252                     ; 1978 		hdmirxset(REG_RX_HWMuteCtrl,B_HWMuteClr,0x00);
7254  0ec5 4b00          	push	#0
7255  0ec7 ae0010        	ldw	x,#16
7256  0eca a67d          	ld	a,#125
7257  0ecc 95            	ld	xh,a
7258  0ecd 8da500a5      	callf	L76f_hdmirxset
7260  0ed1 84            	pop	a
7261                     ; 1979 		hdmirx_SetHWMuteClrMode();
7263  0ed2 8d1d0d1d      	callf	L561f_hdmirx_SetHWMuteClrMode
7265                     ; 1980 		hdmirx_ResetAudio();
7267  0ed6 8d020d02      	callf	L361f_hdmirx_ResetAudio
7269  0eda               L3613:
7270                     ; 1984             IT6802SwitchAudioState(it6802,ASTATE_WaitForReady);
7272  0eda 4b03          	push	#3
7273  0edc 1e0a          	ldw	x,(OFST+2,sp)
7274  0ede 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
7276  0ee2 84            	pop	a
7277  0ee3 204c          	jra	L3513
7278  0ee5               L3113:
7279                     ; 1989     case ASTATE_WaitForReady:
7279                     ; 1990 
7279                     ; 1991 	//if(AudioTimeOutCheck(AUDIO_READY_TIMEOUT))
7279                     ; 1992 	if(it6802->m_AudioCountingTimer==0)
7281  0ee5 1e09          	ldw	x,(OFST+1,sp)
7282  0ee7 e610          	ld	a,(16,x)
7283  0ee9 ea0f          	or	a,(15,x)
7284  0eeb 2644          	jrne	L3513
7285                     ; 1994             IT6802SwitchAudioState(it6802,ASTATE_AudioOn);
7287  0eed 4b04          	push	#4
7288  0eef 1e0a          	ldw	x,(OFST+2,sp)
7289  0ef1 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
7291  0ef5 84            	pop	a
7292  0ef6 2039          	jra	L3513
7293  0ef8               L5113:
7294                     ; 1998     case ASTATE_AudioOn:
7294                     ; 1999 	//if(AudioTimeOutCheck(AUDIO_MONITOR_TIMEOUT)==TRUE)
7294                     ; 2000 	if(it6802->m_AudioCountingTimer==0)
7296  0ef8 1e09          	ldw	x,(OFST+1,sp)
7297  0efa e610          	ld	a,(16,x)
7298  0efc ea0f          	or	a,(15,x)
7299  0efe 2631          	jrne	L3513
7300                     ; 2005 		it6802->m_AudioCountingTimer = AUDIO_MONITOR_TIMEOUT;
7302  0f00 1e09          	ldw	x,(OFST+1,sp)
7303  0f02 90ae0097      	ldw	y,#151
7304  0f06 ef0f          	ldw	(15,x),y
7305                     ; 2007 		getHDMIRXInputAudio(&CurAudioCaps);
7307  0f08 96            	ldw	x,sp
7308  0f09 1c0001        	addw	x,#OFST-7
7309  0f0c 8d470d47      	callf	L371f_getHDMIRXInputAudio
7311                     ; 2009 	        if(it6802->m_RxAudioCaps.AudioFlag != CurAudioCaps.AudioFlag
7311                     ; 2010 	           || it6802->m_RxAudioCaps.AudSrcEnable != CurAudioCaps.AudSrcEnable
7311                     ; 2011 	           || it6802->m_RxAudioCaps.SampleFreq != CurAudioCaps.SampleFreq)
7313  0f10 1e09          	ldw	x,(OFST+1,sp)
7314  0f12 e603          	ld	a,(3,x)
7315  0f14 1101          	cp	a,(OFST-7,sp)
7316  0f16 2610          	jrne	L7713
7318  0f18 1e09          	ldw	x,(OFST+1,sp)
7319  0f1a e604          	ld	a,(4,x)
7320  0f1c 1102          	cp	a,(OFST-6,sp)
7321  0f1e 2608          	jrne	L7713
7323  0f20 1e09          	ldw	x,(OFST+1,sp)
7324  0f22 e605          	ld	a,(5,x)
7325  0f24 1103          	cp	a,(OFST-5,sp)
7326  0f26 2709          	jreq	L3513
7327  0f28               L7713:
7328                     ; 2014 			IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
7330  0f28 4b01          	push	#1
7331  0f2a 1e0a          	ldw	x,(OFST+2,sp)
7332  0f2c 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
7334  0f30 84            	pop	a
7335  0f31               L3513:
7336                     ; 2019 }
7337  0f31               L202:
7340  0f31 5b0a          	addw	sp,#10
7341  0f33 87            	retf
7376                     ; 2029 static void IT6802_AFE_Rst( void )
7376                     ; 2030 {
7377                     	switch	.text
7378  0f34               L102f_IT6802_AFE_Rst:
7380  0f34 88            	push	a
7381       00000001      OFST:	set	1
7384                     ; 2033 	chgbank(0);
7386  0f35 5f            	clrw	x
7387  0f36 8d140514      	callf	L711f_chgbank
7389                     ; 2034 	Reg51h = hdmirxrd(0x51);
7391  0f3a a651          	ld	a,#81
7392  0f3c 8d390039      	callf	L36f_hdmirxrd
7394  0f40 6b01          	ld	(OFST+0,sp),a
7395                     ; 2035 	if( Reg51h&0x01 ) {
7397  0f42 7b01          	ld	a,(OFST+0,sp)
7398  0f44 a501          	bcp	a,#1
7399  0f46 2723          	jreq	L7123
7400                     ; 2036 		hdmirxset(0x11, 0x0C, 0x0C);
7402  0f48 4b0c          	push	#12
7403  0f4a ae000c        	ldw	x,#12
7404  0f4d a611          	ld	a,#17
7405  0f4f 95            	ld	xh,a
7406  0f50 8da500a5      	callf	L76f_hdmirxset
7408  0f54 84            	pop	a
7409                     ; 2037 		delay1ms(1);
7411  0f55 ae0001        	ldw	x,#1
7412  0f58 8d000000      	callf	f_IR_DelayNMiliseconds
7414                     ; 2038 		hdmirxset(0x11, 0x0C, 0x00);
7416  0f5c 4b00          	push	#0
7417  0f5e ae000c        	ldw	x,#12
7418  0f61 a611          	ld	a,#17
7419  0f63 95            	ld	xh,a
7420  0f64 8da500a5      	callf	L76f_hdmirxset
7422  0f68 84            	pop	a
7424  0f69 2021          	jra	L1223
7425  0f6b               L7123:
7426                     ; 2041 		hdmirxset(0x18, 0x0C, 0x0C);
7428  0f6b 4b0c          	push	#12
7429  0f6d ae000c        	ldw	x,#12
7430  0f70 a618          	ld	a,#24
7431  0f72 95            	ld	xh,a
7432  0f73 8da500a5      	callf	L76f_hdmirxset
7434  0f77 84            	pop	a
7435                     ; 2042 		delay1ms(1);
7437  0f78 ae0001        	ldw	x,#1
7438  0f7b 8d000000      	callf	f_IR_DelayNMiliseconds
7440                     ; 2043 		hdmirxset(0x18, 0x0C, 0x00);
7442  0f7f 4b00          	push	#0
7443  0f81 ae000c        	ldw	x,#12
7444  0f84 a618          	ld	a,#24
7445  0f86 95            	ld	xh,a
7446  0f87 8da500a5      	callf	L76f_hdmirxset
7448  0f8b 84            	pop	a
7449  0f8c               L1223:
7450                     ; 2045 }
7453  0f8c 84            	pop	a
7454  0f8d 87            	retf
7500                     ; 2047 static void IT6802_SetVideoMute(struct it6802_dev_data *it6802,unsigned char bMute)
7500                     ; 2048 {
7501                     	switch	.text
7502  0f8e               L302f_IT6802_SetVideoMute:
7504  0f8e 89            	pushw	x
7505       00000000      OFST:	set	0
7508                     ; 2050     if(bMute)
7510  0f8f 0d06          	tnz	(OFST+6,sp)
7511  0f91 2729          	jreq	L5423
7512                     ; 2053 	hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
7514  0f93 4bc0          	push	#192
7515  0f95 ae00c0        	ldw	x,#192
7516  0f98 a653          	ld	a,#83
7517  0f9a 95            	ld	xh,a
7518  0f9b 8da500a5      	callf	L76f_hdmirxset
7520  0f9f 84            	pop	a
7521                     ; 2054 	hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
7523  0fa0 4b20          	push	#32
7524  0fa2 ae0020        	ldw	x,#32
7525  0fa5 a652          	ld	a,#82
7526  0fa7 95            	ld	xh,a
7527  0fa8 8da500a5      	callf	L76f_hdmirxset
7529  0fac 84            	pop	a
7530                     ; 2055 	hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output
7532  0fad 4b00          	push	#0
7533  0faf ae000e        	ldw	x,#14
7534  0fb2 a653          	ld	a,#83
7535  0fb4 95            	ld	xh,a
7536  0fb5 8da500a5      	callf	L76f_hdmirxset
7538  0fb9 84            	pop	a
7540  0fba 206c          	jra	L7423
7541  0fbc               L5423:
7542                     ; 2059         if(it6802->m_VState == VSTATE_VideoOn)
7544  0fbc 1e01          	ldw	x,(OFST+1,sp)
7545  0fbe f6            	ld	a,(x)
7546  0fbf a10a          	cp	a,#10
7547  0fc1 2665          	jrne	L7423
7548                     ; 2062 		hdmirxset(REG_RX_053,(B_TriSYNC),(0x00));								//Reg53[0] = 0;                 // for enable video sync
7550  0fc3 4b00          	push	#0
7551  0fc5 ae0001        	ldw	x,#1
7552  0fc8 a653          	ld	a,#83
7553  0fca 95            	ld	xh,a
7554  0fcb 8da500a5      	callf	L76f_hdmirxset
7556  0fcf 84            	pop	a
7557                     ; 2063 		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[3:1] = 000;         // 0 for enable video io data output
7559  0fd0 4b00          	push	#0
7560  0fd2 ae000e        	ldw	x,#14
7561  0fd5 a653          	ld	a,#83
7562  0fd7 95            	ld	xh,a
7563  0fd8 8da500a5      	callf	L76f_hdmirxset
7565  0fdc 84            	pop	a
7566                     ; 2065             if(CheckAVMute()==TRUE)
7568  0fdd 8d3d063d      	callf	L521f_CheckAVMute
7570  0fe1 a101          	cp	a,#1
7571  0fe3 260f          	jrne	L3523
7572                     ; 2067 		hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
7574  0fe5 4b20          	push	#32
7575  0fe7 ae0020        	ldw	x,#32
7576  0fea a652          	ld	a,#82
7577  0fec 95            	ld	xh,a
7578  0fed 8da500a5      	callf	L76f_hdmirxset
7580  0ff1 84            	pop	a
7582  0ff2 2034          	jra	L7423
7583  0ff4               L3523:
7584                     ; 2072 		hdmirxset(REG_RX_053,(B_TriVDIO),(B_TriVDIO));							//Reg53[2:0] = 111;         // 1 for enable tri-state of video io data
7586  0ff4 4b0e          	push	#14
7587  0ff6 ae000e        	ldw	x,#14
7588  0ff9 a653          	ld	a,#83
7589  0ffb 95            	ld	xh,a
7590  0ffc 8da500a5      	callf	L76f_hdmirxset
7592  1000 84            	pop	a
7593                     ; 2073 		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output
7595  1001 4b00          	push	#0
7596  1003 ae000e        	ldw	x,#14
7597  1006 a653          	ld	a,#83
7598  1008 95            	ld	xh,a
7599  1009 8da500a5      	callf	L76f_hdmirxset
7601  100d 84            	pop	a
7602                     ; 2075 		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
7604  100e 4bc0          	push	#192
7605  1010 ae00c0        	ldw	x,#192
7606  1013 a653          	ld	a,#83
7607  1015 95            	ld	xh,a
7608  1016 8da500a5      	callf	L76f_hdmirxset
7610  101a 84            	pop	a
7611                     ; 2076 		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VIOSel));				//Reg53[7][5] = 01    // for disable B_VDIO_GATTING
7613  101b 4b40          	push	#64
7614  101d ae00c0        	ldw	x,#192
7615  1020 a653          	ld	a,#83
7616  1022 95            	ld	xh,a
7617  1023 8da500a5      	callf	L76f_hdmirxset
7619  1027 84            	pop	a
7620  1028               L7423:
7621                     ; 2083 }
7624  1028 85            	popw	x
7625  1029 87            	retf
7658                     ; 2111 static void IT6802VideoOutputEnable(unsigned char bEnableOutput)
7658                     ; 2112 {
7659                     	switch	.text
7660  102a               L502f_IT6802VideoOutputEnable:
7664                     ; 2113 	if(bEnableOutput)
7666  102a 4d            	tnz	a
7667  102b 270f          	jreq	L3723
7668                     ; 2116 		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(0x00));
7670  102d 4b00          	push	#0
7671  102f ae000f        	ldw	x,#15
7672  1032 a653          	ld	a,#83
7673  1034 95            	ld	xh,a
7674  1035 8da500a5      	callf	L76f_hdmirxset
7676  1039 84            	pop	a
7678  103a 200d          	jra	L5723
7679  103c               L3723:
7680                     ; 2122 		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(B_TriSYNC|B_TriVDIO));
7682  103c 4b0f          	push	#15
7683  103e ae000f        	ldw	x,#15
7684  1041 a653          	ld	a,#83
7685  1043 95            	ld	xh,a
7686  1044 8da500a5      	callf	L76f_hdmirxset
7688  1048 84            	pop	a
7689  1049               L5723:
7690                     ; 2124 }
7693  1049 87            	retf
7749                     ; 2128 static void IT6802SwitchVideoState(struct it6802_dev_data *it6802,Video_State_Type  eNewVState)
7749                     ; 2129 {
7750                     	switch	.text
7751  104a               L702f_IT6802SwitchVideoState:
7753  104a 89            	pushw	x
7754       00000000      OFST:	set	0
7757                     ; 2131 	if(it6802->m_VState==eNewVState)
7759  104b f6            	ld	a,(x)
7760  104c 1106          	cp	a,(OFST+6,sp)
7761  104e 2604acd110d1  	jreq	L222
7762                     ; 2132 		return;
7764                     ; 2134 	HDMIRX_VIDEO_PRINTF(printf(VStateStr[(unsigned char)eNewVState]));
7766  1054 7b06          	ld	a,(OFST+6,sp)
7767  1056 5f            	clrw	x
7768  1057 97            	ld	xl,a
7769  1058 58            	sllw	x
7770  1059 de0010        	ldw	x,(_VStateStr,x)
7771  105c 8d000000      	callf	f_printf
7773                     ; 2135 	HDMIRX_VIDEO_PRINTF(printf("+++ \r\n"));
7775  1060 ae29fe        	ldw	x,#L1013
7776  1063 8d000000      	callf	f_printf
7778                     ; 2138 	it6802->m_VState=eNewVState;
7780  1067 7b06          	ld	a,(OFST+6,sp)
7781  1069 1e01          	ldw	x,(OFST+1,sp)
7782  106b f7            	ld	(x),a
7783                     ; 2141 	switch(it6802->m_VState)
7785  106c 1e01          	ldw	x,(OFST+1,sp)
7786  106e f6            	ld	a,(x)
7788                     ; 2196 			break;
7789  106f a004          	sub	a,#4
7790  1071 2712          	jreq	L1033
7791  1073 4a            	dec	a
7792  1074 2709          	jreq	L7723
7793  1076 4a            	dec	a
7794  1077 2727          	jreq	L3033
7795  1079 a004          	sub	a,#4
7796  107b 272d          	jreq	L5033
7797  107d 2052          	jra	L7333
7798  107f               L7723:
7799                     ; 2145 				IT6802_AFE_Rst();
7801  107f 8d340f34      	callf	L102f_IT6802_AFE_Rst
7803                     ; 2147 			break;
7805  1083 204c          	jra	L7333
7806  1085               L1033:
7807                     ; 2152 				IT6802VideoOutputEnable(FALSE);
7809  1085 4f            	clr	a
7810  1086 8d2a102a      	callf	L502f_IT6802VideoOutputEnable
7812                     ; 2153 				it6802->m_NewAVIInfoFrameF=FALSE;
7814  108a 1e01          	ldw	x,(OFST+1,sp)
7815  108c e675          	ld	a,(117,x)
7816  108e a4df          	and	a,#223
7817  1090 e775          	ld	(117,x),a
7818                     ; 2154 				it6802->m_ucDeskew_P0=0;
7820  1092 1e01          	ldw	x,(OFST+1,sp)
7821  1094 6f17          	clr	(23,x)
7822                     ; 2155 				it6802->m_ucDeskew_P1=0;
7824  1096 1e01          	ldw	x,(OFST+1,sp)
7825  1098 6f18          	clr	(24,x)
7826                     ; 2156 				it6802->m_ucSCDTOffCount=0;
7828  109a 1e01          	ldw	x,(OFST+1,sp)
7829  109c 6f14          	clr	(20,x)
7830                     ; 2164 			break;
7832  109e 2031          	jra	L7333
7833  10a0               L3033:
7834                     ; 2171 				it6802->m_VideoCountingTimer = VSATE_CONFIRM_SCDT_COUNT;
7836  10a0 1e01          	ldw	x,(OFST+1,sp)
7837  10a2 90ae0065      	ldw	y,#101
7838  10a6 ef0d          	ldw	(13,x),y
7839                     ; 2178 			break;
7841  10a8 2027          	jra	L7333
7842  10aa               L5033:
7843                     ; 2181 				IT6802VideoOutputConfigure(it6802);
7845  10aa 1e01          	ldw	x,(OFST+1,sp)
7846  10ac 8dad0bad      	callf	L351f_IT6802VideoOutputConfigure
7848                     ; 2182 				IT6802VideoOutputEnable(TRUE);
7850  10b0 a601          	ld	a,#1
7851  10b2 8d2a102a      	callf	L502f_IT6802VideoOutputEnable
7853                     ; 2183 				IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
7855  10b6 4b01          	push	#1
7856  10b8 1e02          	ldw	x,(OFST+2,sp)
7857  10ba 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
7859  10be 84            	pop	a
7860                     ; 2185 				get_vid_info();
7862  10bf 8db634b6      	callf	f_get_vid_info
7864                     ; 2186 				show_vid_info();
7866  10c3 8d1d361d      	callf	f_show_vid_info
7868                     ; 2188 				hdmirxwr(0x84, 0x8F);	//2011/06/17 xxxxx, for enable Rx Chip count
7870  10c7 ae008f        	ldw	x,#143
7871  10ca a684          	ld	a,#132
7872  10cc 95            	ld	xh,a
7873  10cd 8d690069      	callf	L56f_hdmirxwr
7875                     ; 2196 			break;
7877  10d1               L7333:
7878                     ; 2199 }
7879  10d1               L222:
7882  10d1 85            	popw	x
7883  10d2 87            	retf
7925                     ; 2202 static void IT6802VideoHandler(struct it6802_dev_data *it6802)
7925                     ; 2203 {
7926                     	switch	.text
7927  10d3               L112f_IT6802VideoHandler:
7929  10d3 89            	pushw	x
7930       00000000      OFST:	set	0
7933                     ; 2206 	if(it6802->m_VideoCountingTimer > MS_LOOP)
7935  10d4 9093          	ldw	y,x
7936  10d6 90ee0d        	ldw	y,(13,y)
7937  10d9 90a30033      	cpw	y,#51
7938  10dd 250c          	jrult	L7633
7939                     ; 2208 	it6802->m_VideoCountingTimer -= MS_LOOP;
7941  10df 9093          	ldw	y,x
7942  10e1 ee0d          	ldw	x,(13,x)
7943  10e3 1d0032        	subw	x,#50
7944  10e6 90ef0d        	ldw	(13,y),x
7946  10e9 2006          	jra	L1733
7947  10eb               L7633:
7948                     ; 2212 	it6802->m_VideoCountingTimer = 0;
7950  10eb 1e01          	ldw	x,(OFST+1,sp)
7951  10ed 905f          	clrw	y
7952  10ef ef0d          	ldw	(13,x),y
7953  10f1               L1733:
7954                     ; 2217 	switch(it6802->m_VState)
7956  10f1 1e01          	ldw	x,(OFST+1,sp)
7957  10f3 f6            	ld	a,(x)
7959                     ; 2272 			break;
7960  10f4 a004          	sub	a,#4
7961  10f6 270a          	jreq	L1433
7962  10f8 a002          	sub	a,#2
7963  10fa 270e          	jreq	L3433
7964  10fc a004          	sub	a,#4
7965  10fe 271d          	jreq	L5433
7966  1100 2053          	jra	L5733
7967  1102               L1433:
7968                     ; 2224 				WaitingForSCDT(it6802);
7970  1102 1e01          	ldw	x,(OFST+1,sp)
7971  1104 8d8d058d      	callf	L321f_WaitingForSCDT
7973                     ; 2234 			break;
7975  1108 204b          	jra	L5733
7976  110a               L3433:
7977                     ; 2238 			        if(it6802->m_VideoCountingTimer == 0)
7979  110a 1e01          	ldw	x,(OFST+1,sp)
7980  110c e60e          	ld	a,(14,x)
7981  110e ea0d          	or	a,(13,x)
7982  1110 2643          	jrne	L5733
7983                     ; 2240 						IT6802SwitchVideoState(it6802,VSTATE_VideoOn);
7985  1112 4b0a          	push	#10
7986  1114 1e02          	ldw	x,(OFST+2,sp)
7987  1116 8d4a104a      	callf	L702f_IT6802SwitchVideoState
7989  111a 84            	pop	a
7990  111b 2038          	jra	L5733
7991  111d               L5433:
7992                     ; 2246 				if(it6802->m_NewAVIInfoFrameF==TRUE)
7994  111d 1e01          	ldw	x,(OFST+1,sp)
7995  111f e675          	ld	a,(117,x)
7996  1121 a520          	bcp	a,#32
7997  1123 2716          	jreq	L1043
7998                     ; 2248 					if(it6802->m_RxHDCPState != RxHDCP_ModeCheck)
8000  1125 1e01          	ldw	x,(OFST+1,sp)
8001  1127 e602          	ld	a,(2,x)
8002  1129 a101          	cp	a,#1
8003  112b 270e          	jreq	L1043
8004                     ; 2250 						IT6802VideoOutputConfigure(it6802);
8006  112d 1e01          	ldw	x,(OFST+1,sp)
8007  112f 8dad0bad      	callf	L351f_IT6802VideoOutputConfigure
8009                     ; 2251 						it6802->m_NewAVIInfoFrameF=FALSE;
8011  1133 1e01          	ldw	x,(OFST+1,sp)
8012  1135 e675          	ld	a,(117,x)
8013  1137 a4df          	and	a,#223
8014  1139 e775          	ld	(117,x),a
8015  113b               L1043:
8016                     ; 2256 				if(hdmirxrd(REG_RX_053)&B_VDGatting)
8018  113b a653          	ld	a,#83
8019  113d 8d390039      	callf	L36f_hdmirxrd
8021  1141 a580          	bcp	a,#128
8022  1143 2710          	jreq	L5733
8023                     ; 2258 			            if(CheckAVMute()==FALSE)
8025  1145 8d3d063d      	callf	L521f_CheckAVMute
8027  1149 4d            	tnz	a
8028  114a 2609          	jrne	L5733
8029                     ; 2260 						IT6802_SetVideoMute(it6802,OFF);
8031  114c 4b00          	push	#0
8032  114e 1e02          	ldw	x,(OFST+2,sp)
8033  1150 8d8e0f8e      	callf	L302f_IT6802_SetVideoMute
8035  1154 84            	pop	a
8036  1155               L5733:
8037                     ; 2274 }
8040  1155 85            	popw	x
8041  1156 87            	retf
8096                     ; 2283 static void hdmirx_INT_5V_Pwr_Chg(struct it6802_dev_data *it6802,unsigned char ucport)
8096                     ; 2284 {
8097                     	switch	.text
8098  1157               L312f_hdmirx_INT_5V_Pwr_Chg:
8100  1157 89            	pushw	x
8101  1158 88            	push	a
8102       00000001      OFST:	set	1
8105                     ; 2287 	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;
8107  1159 a651          	ld	a,#81
8108  115b 8d390039      	callf	L36f_hdmirxrd
8110  115f a401          	and	a,#1
8111  1161 6b01          	ld	(OFST+0,sp),a
8112                     ; 2289 	if(ucPortSel == ucport)
8114  1163 7b01          	ld	a,(OFST+0,sp)
8115  1165 1107          	cp	a,(OFST+6,sp)
8116  1167 262b          	jrne	L5343
8117                     ; 2291 		if(CheckPlg5VPwr(ucport)){
8119  1169 7b07          	ld	a,(OFST+6,sp)
8120  116b 8d6f066f      	callf	L721f_CheckPlg5VPwr
8122  116f 4d            	tnz	a
8123  1170 2712          	jreq	L7343
8124                     ; 2292 			MHLRX_DEBUG_PRINTF(printf("#### Power 5V ON ####\r\n"));
8126  1172 ae297b        	ldw	x,#L1443
8127  1175 8d000000      	callf	f_printf
8129                     ; 2293 			IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
8131  1179 4b04          	push	#4
8132  117b 1e03          	ldw	x,(OFST+2,sp)
8133  117d 8d4a104a      	callf	L702f_IT6802SwitchVideoState
8135  1181 84            	pop	a
8137  1182 2010          	jra	L5343
8138  1184               L7343:
8139                     ; 2296 			MHLRX_DEBUG_PRINTF(printf("#### Power 5V OFF ####\r\n"));
8141  1184 ae2962        	ldw	x,#L5443
8142  1187 8d000000      	callf	f_printf
8144                     ; 2297 			IT6802SwitchVideoState(it6802,VSTATE_SWReset);
8146  118b 4b05          	push	#5
8147  118d 1e03          	ldw	x,(OFST+2,sp)
8148  118f 8d4a104a      	callf	L702f_IT6802SwitchVideoState
8150  1193 84            	pop	a
8151  1194               L5343:
8152                     ; 2301 }
8155  1194 5b03          	addw	sp,#3
8156  1196 87            	retf
8194                     ; 2304 static void hdmirx_INT_P0_ECC(struct it6802_dev_data *it6802)
8194                     ; 2305 {
8195                     	switch	.text
8196  1197               L512f_hdmirx_INT_P0_ECC:
8200                     ; 2306 	if((it6802->m_ucEccCount_P0++) > ECC_TIMEOUT)
8202  1197 e615          	ld	a,(21,x)
8203  1199 6c15          	inc	(21,x)
8204  119b a12a          	cp	a,#42
8205  119d 2523          	jrult	L7643
8206                     ; 2308 		it6802->m_ucEccCount_P0=0;
8208  119f 6f15          	clr	(21,x)
8209                     ; 2310 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 ECC_TIMEOUT !!!\r\n"));
8211  11a1 ae293c        	ldw	x,#L1743
8212  11a4 8d000000      	callf	f_printf
8214                     ; 2312 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
8216  11a8 4b0c          	push	#12
8217  11aa ae000c        	ldw	x,#12
8218  11ad a611          	ld	a,#17
8219  11af 95            	ld	xh,a
8220  11b0 8da500a5      	callf	L76f_hdmirxset
8222  11b4 84            	pop	a
8223                     ; 2313 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
8225  11b5 4b00          	push	#0
8226  11b7 ae000c        	ldw	x,#12
8227  11ba a611          	ld	a,#17
8228  11bc 95            	ld	xh,a
8229  11bd 8da500a5      	callf	L76f_hdmirxset
8231  11c1 84            	pop	a
8232  11c2               L7643:
8233                     ; 2316 }
8236  11c2 87            	retf
8274                     ; 2319 static void hdmirx_INT_P1_ECC(struct it6802_dev_data *it6802)
8274                     ; 2320 {
8275                     	switch	.text
8276  11c3               L712f_hdmirx_INT_P1_ECC:
8280                     ; 2321 	if((it6802->m_ucEccCount_P1++) > ECC_TIMEOUT)
8282  11c3 e616          	ld	a,(22,x)
8283  11c5 6c16          	inc	(22,x)
8284  11c7 a12a          	cp	a,#42
8285  11c9 2523          	jrult	L3153
8286                     ; 2323 		it6802->m_ucEccCount_P1=0;
8288  11cb 6f16          	clr	(22,x)
8289                     ; 2325 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 ECC_TIMEOUT !!!\r\n"));
8291  11cd ae2916        	ldw	x,#L5153
8292  11d0 8d000000      	callf	f_printf
8294                     ; 2327 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
8296  11d4 4b0c          	push	#12
8297  11d6 ae000c        	ldw	x,#12
8298  11d9 a618          	ld	a,#24
8299  11db 95            	ld	xh,a
8300  11dc 8da500a5      	callf	L76f_hdmirxset
8302  11e0 84            	pop	a
8303                     ; 2328 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
8305  11e1 4b00          	push	#0
8306  11e3 ae000c        	ldw	x,#12
8307  11e6 a618          	ld	a,#24
8308  11e8 95            	ld	xh,a
8309  11e9 8da500a5      	callf	L76f_hdmirxset
8311  11ed 84            	pop	a
8312  11ee               L3153:
8313                     ; 2330 }
8316  11ee 87            	retf
8355                     ; 2333 static void hdmirx_INT_P0_Deskew(struct it6802_dev_data *it6802)
8355                     ; 2334 {
8356                     	switch	.text
8357  11ef               L122f_hdmirx_INT_P0_Deskew:
8361                     ; 2335 	if((it6802->m_ucDeskew_P0++) > DESKEW_TIMEOUT)
8363  11ef e617          	ld	a,(23,x)
8364  11f1 6c17          	inc	(23,x)
8365  11f3 a12a          	cp	a,#42
8366  11f5 2523          	jrult	L7353
8367                     ; 2337 		it6802->m_ucDeskew_P0=0;
8369  11f7 6f17          	clr	(23,x)
8370                     ; 2339 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 DESKEW_TIMEOUT !!!\r\n"));
8372  11f9 ae28ed        	ldw	x,#L1453
8373  11fc 8d000000      	callf	f_printf
8375                     ; 2341 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
8377  1200 4b0c          	push	#12
8378  1202 ae000c        	ldw	x,#12
8379  1205 a611          	ld	a,#17
8380  1207 95            	ld	xh,a
8381  1208 8da500a5      	callf	L76f_hdmirxset
8383  120c 84            	pop	a
8384                     ; 2342 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
8386  120d 4b00          	push	#0
8387  120f ae000c        	ldw	x,#12
8388  1212 a611          	ld	a,#17
8389  1214 95            	ld	xh,a
8390  1215 8da500a5      	callf	L76f_hdmirxset
8392  1219 84            	pop	a
8393  121a               L7353:
8394                     ; 2345 }
8397  121a 87            	retf
8436                     ; 2348 static void hdmirx_INT_P1_Deskew(struct it6802_dev_data *it6802)
8436                     ; 2349 {
8437                     	switch	.text
8438  121b               L322f_hdmirx_INT_P1_Deskew:
8442                     ; 2350 	if((it6802->m_ucDeskew_P1++) > DESKEW_TIMEOUT)
8444  121b e618          	ld	a,(24,x)
8445  121d 6c18          	inc	(24,x)
8446  121f a12a          	cp	a,#42
8447  1221 2523          	jrult	L3653
8448                     ; 2352 		it6802->m_ucDeskew_P1=0;
8450  1223 6f18          	clr	(24,x)
8451                     ; 2354 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 DESKEW_TIMEOUT !!!\r\n"));
8453  1225 ae28c4        	ldw	x,#L5653
8454  1228 8d000000      	callf	f_printf
8456                     ; 2356 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
8458  122c 4b0c          	push	#12
8459  122e ae000c        	ldw	x,#12
8460  1231 a618          	ld	a,#24
8461  1233 95            	ld	xh,a
8462  1234 8da500a5      	callf	L76f_hdmirxset
8464  1238 84            	pop	a
8465                     ; 2357 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
8467  1239 4b00          	push	#0
8468  123b ae000c        	ldw	x,#12
8469  123e a618          	ld	a,#24
8470  1240 95            	ld	xh,a
8471  1241 8da500a5      	callf	L76f_hdmirxset
8473  1245 84            	pop	a
8474  1246               L3653:
8475                     ; 2360 }
8478  1246 87            	retf
8519                     ; 2364 static void hdmirx_INT_HDMIMode_Chg(struct it6802_dev_data *it6802)
8519                     ; 2365 {
8520                     	switch	.text
8521  1247               L522f_hdmirx_INT_HDMIMode_Chg:
8523  1247 89            	pushw	x
8524       00000000      OFST:	set	0
8527                     ; 2366 	if(IsHDMIMode()){
8529  1248 8dc806c8      	callf	L131f_IsHDMIMode
8531  124c 4d            	tnz	a
8532  124d 2721          	jreq	L7063
8533                     ; 2367 	    	if(it6802->m_VState==VSTATE_VideoOn)
8535  124f 1e01          	ldw	x,(OFST+1,sp)
8536  1251 f6            	ld	a,(x)
8537  1252 a10a          	cp	a,#10
8538  1254 2609          	jrne	L1163
8539                     ; 2369 			    IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
8541  1256 4b01          	push	#1
8542  1258 1e02          	ldw	x,(OFST+2,sp)
8543  125a 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
8545  125e 84            	pop	a
8546  125f               L1163:
8547                     ; 2371 		it6802->m_bUpHDMIMode = TRUE ;
8549  125f 1e01          	ldw	x,(OFST+1,sp)
8550  1261 e675          	ld	a,(117,x)
8551  1263 aa08          	or	a,#8
8552  1265 e775          	ld	(117,x),a
8553                     ; 2372 		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : HDMI ####\r\n"));
8555  1267 ae28a3        	ldw	x,#L3163
8556  126a 8d000000      	callf	f_printf
8559  126e 202d          	jra	L5163
8560  1270               L7063:
8561                     ; 2376 		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
8563  1270 4b00          	push	#0
8564  1272 1e02          	ldw	x,(OFST+2,sp)
8565  1274 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
8567  1278 84            	pop	a
8568                     ; 2377 		it6802->m_NewAVIInfoFrameF=FALSE;
8570  1279 1e01          	ldw	x,(OFST+1,sp)
8571  127b e675          	ld	a,(117,x)
8572  127d a4df          	and	a,#223
8573  127f e775          	ld	(117,x),a
8574                     ; 2378 	    	if(it6802->m_VState==VSTATE_VideoOn)
8576  1281 1e01          	ldw	x,(OFST+1,sp)
8577  1283 f6            	ld	a,(x)
8578  1284 a10a          	cp	a,#10
8579  1286 2606          	jrne	L7163
8580                     ; 2380 	    		SetDVIVideoOutput(it6802);
8582  1288 1e01          	ldw	x,(OFST+1,sp)
8583  128a 8d880b88      	callf	L151f_SetDVIVideoOutput
8585  128e               L7163:
8586                     ; 2382 		it6802->m_bUpHDMIMode = FALSE ;
8588  128e 1e01          	ldw	x,(OFST+1,sp)
8589  1290 e675          	ld	a,(117,x)
8590  1292 a4f7          	and	a,#247
8591  1294 e775          	ld	(117,x),a
8592                     ; 2383 		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : DVI ####\r\n"));
8594  1296 ae2883        	ldw	x,#L1263
8595  1299 8d000000      	callf	f_printf
8597  129d               L5163:
8598                     ; 2385 }
8601  129d 85            	popw	x
8602  129e 87            	retf
8643                     ; 2388 static void hdmirx_INT_SCDT_Chg(struct it6802_dev_data *it6802)
8643                     ; 2389 {
8644                     	switch	.text
8645  129f               L722f_hdmirx_INT_SCDT_Chg:
8647  129f 89            	pushw	x
8648       00000000      OFST:	set	0
8651                     ; 2390 	if(CheckSCDT(it6802) == TRUE){
8653  12a0 8d5d055d      	callf	L121f_CheckSCDT
8655  12a4 a101          	cp	a,#1
8656  12a6 2612          	jrne	L3463
8657                     ; 2391 		MHLRX_DEBUG_PRINTF(printf("#### SCDT ON ####\r\n"));
8659  12a8 ae286f        	ldw	x,#L5463
8660  12ab 8d000000      	callf	f_printf
8662                     ; 2392 		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);
8664  12af 4b06          	push	#6
8665  12b1 1e02          	ldw	x,(OFST+2,sp)
8666  12b3 8d4a104a      	callf	L702f_IT6802SwitchVideoState
8668  12b7 84            	pop	a
8670  12b8 2019          	jra	L7463
8671  12ba               L3463:
8672                     ; 2395 		MHLRX_DEBUG_PRINTF(printf("#### SCDT OFF ####\r\n"));
8674  12ba ae285a        	ldw	x,#L1563
8675  12bd 8d000000      	callf	f_printf
8677                     ; 2396 		IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
8679  12c1 4b04          	push	#4
8680  12c3 1e02          	ldw	x,(OFST+2,sp)
8681  12c5 8d4a104a      	callf	L702f_IT6802SwitchVideoState
8683  12c9 84            	pop	a
8684                     ; 2397 		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
8686  12ca 4b00          	push	#0
8687  12cc 1e02          	ldw	x,(OFST+2,sp)
8688  12ce 8d9b0d9b      	callf	L571f_IT6802SwitchAudioState
8690  12d2 84            	pop	a
8691  12d3               L7463:
8692                     ; 2399 }
8695  12d3 85            	popw	x
8696  12d4 87            	retf
8905                     ; 2408 static void hdcpsts( void )
8905                     ; 2409 {
8906                     	switch	.text
8907  12d5               L132f_hdcpsts:
8909  12d5 5224          	subw	sp,#36
8910       00000024      OFST:	set	36
8913                     ; 2415     chgbank(2);
8915  12d7 ae0002        	ldw	x,#2
8916  12da 8d140514      	callf	L711f_chgbank
8918                     ; 2417 	BKSV1 = hdmirxrd(0x9F);
8920  12de a69f          	ld	a,#159
8921  12e0 8d390039      	callf	L36f_hdmirxrd
8923  12e4 5f            	clrw	x
8924  12e5 97            	ld	xl,a
8925  12e6 1f0b          	ldw	(OFST-25,sp),x
8926                     ; 2418 	BKSV2 = hdmirxrd(0xA0);
8928  12e8 a6a0          	ld	a,#160
8929  12ea 8d390039      	callf	L36f_hdmirxrd
8931  12ee 5f            	clrw	x
8932  12ef 97            	ld	xl,a
8933  12f0 1f0d          	ldw	(OFST-23,sp),x
8934                     ; 2419 	BKSV3 = hdmirxrd(0xA1);
8936  12f2 a6a1          	ld	a,#161
8937  12f4 8d390039      	callf	L36f_hdmirxrd
8939  12f8 5f            	clrw	x
8940  12f9 97            	ld	xl,a
8941  12fa 1f0f          	ldw	(OFST-21,sp),x
8942                     ; 2420 	BKSV4 = hdmirxrd(0xA2);
8944  12fc a6a2          	ld	a,#162
8945  12fe 8d390039      	callf	L36f_hdmirxrd
8947  1302 5f            	clrw	x
8948  1303 97            	ld	xl,a
8949  1304 1f11          	ldw	(OFST-19,sp),x
8950                     ; 2421 	BKSV5 = hdmirxrd(0xA3);
8952  1306 a6a3          	ld	a,#163
8953  1308 8d390039      	callf	L36f_hdmirxrd
8955  130c 5f            	clrw	x
8956  130d 97            	ld	xl,a
8957  130e 1f13          	ldw	(OFST-17,sp),x
8958                     ; 2423 	AKSV1 = hdmirxrd(0x9A);
8960  1310 a69a          	ld	a,#154
8961  1312 8d390039      	callf	L36f_hdmirxrd
8963  1316 5f            	clrw	x
8964  1317 97            	ld	xl,a
8965  1318 1f01          	ldw	(OFST-35,sp),x
8966                     ; 2424 	AKSV2 = hdmirxrd(0x9B);
8968  131a a69b          	ld	a,#155
8969  131c 8d390039      	callf	L36f_hdmirxrd
8971  1320 5f            	clrw	x
8972  1321 97            	ld	xl,a
8973  1322 1f03          	ldw	(OFST-33,sp),x
8974                     ; 2425 	AKSV3 = hdmirxrd(0x9C);
8976  1324 a69c          	ld	a,#156
8977  1326 8d390039      	callf	L36f_hdmirxrd
8979  132a 5f            	clrw	x
8980  132b 97            	ld	xl,a
8981  132c 1f05          	ldw	(OFST-31,sp),x
8982                     ; 2426 	AKSV4 = hdmirxrd(0x9D);
8984  132e a69d          	ld	a,#157
8985  1330 8d390039      	callf	L36f_hdmirxrd
8987  1334 5f            	clrw	x
8988  1335 97            	ld	xl,a
8989  1336 1f07          	ldw	(OFST-29,sp),x
8990                     ; 2427 	AKSV5 = hdmirxrd(0x9E);
8992  1338 a69e          	ld	a,#158
8993  133a 8d390039      	callf	L36f_hdmirxrd
8995  133e 5f            	clrw	x
8996  133f 97            	ld	xl,a
8997  1340 1f09          	ldw	(OFST-27,sp),x
8998                     ; 2429 	BMi1 = hdmirxrd(0xA4);
9000  1342 a6a4          	ld	a,#164
9001  1344 8d390039      	callf	L36f_hdmirxrd
9003  1348 5f            	clrw	x
9004  1349 97            	ld	xl,a
9005  134a 1f15          	ldw	(OFST-15,sp),x
9006                     ; 2430 	BMi2 = hdmirxrd(0xA5);
9008  134c a6a5          	ld	a,#165
9009  134e 8d390039      	callf	L36f_hdmirxrd
9011  1352 5f            	clrw	x
9012  1353 97            	ld	xl,a
9013  1354 1f17          	ldw	(OFST-13,sp),x
9014                     ; 2431 	BMi3 = hdmirxrd(0xA6);
9016  1356 a6a6          	ld	a,#166
9017  1358 8d390039      	callf	L36f_hdmirxrd
9019  135c 5f            	clrw	x
9020  135d 97            	ld	xl,a
9021  135e 1f19          	ldw	(OFST-11,sp),x
9022                     ; 2432 	BMi4 = hdmirxrd(0xA7);
9024  1360 a6a7          	ld	a,#167
9025  1362 8d390039      	callf	L36f_hdmirxrd
9027  1366 5f            	clrw	x
9028  1367 97            	ld	xl,a
9029  1368 1f1b          	ldw	(OFST-9,sp),x
9030                     ; 2433 	BMi5 = hdmirxrd(0xA8);
9032  136a a6a8          	ld	a,#168
9033  136c 8d390039      	callf	L36f_hdmirxrd
9035  1370 5f            	clrw	x
9036  1371 97            	ld	xl,a
9037  1372 1f1d          	ldw	(OFST-7,sp),x
9038                     ; 2434 	BMi6 = hdmirxrd(0xA9);
9040  1374 a6a9          	ld	a,#169
9041  1376 8d390039      	callf	L36f_hdmirxrd
9043  137a 5f            	clrw	x
9044  137b 97            	ld	xl,a
9045  137c 1f1f          	ldw	(OFST-5,sp),x
9046                     ; 2435 	BMi7 = hdmirxrd(0xAA);
9048  137e a6aa          	ld	a,#170
9049  1380 8d390039      	callf	L36f_hdmirxrd
9051  1384 5f            	clrw	x
9052  1385 97            	ld	xl,a
9053  1386 1f21          	ldw	(OFST-3,sp),x
9054                     ; 2436 	BMi8 = hdmirxrd(0xAB);
9056  1388 a6ab          	ld	a,#171
9057  138a 8d390039      	callf	L36f_hdmirxrd
9059  138e 5f            	clrw	x
9060  138f 97            	ld	xl,a
9061  1390 1f23          	ldw	(OFST-1,sp),x
9062                     ; 2438 	Mi1 = (~BMi1)&0xFF;
9064  1392 1e15          	ldw	x,(OFST-15,sp)
9065  1394 53            	cplw	x
9066  1395 01            	rrwa	x,a
9067  1396 a4ff          	and	a,#255
9068  1398 5f            	clrw	x
9069  1399 02            	rlwa	x,a
9070  139a 1f15          	ldw	(OFST-15,sp),x
9071  139c 01            	rrwa	x,a
9072                     ; 2439 	Mi2 = (~BMi2)&0xFF;
9074  139d 1e17          	ldw	x,(OFST-13,sp)
9075  139f 53            	cplw	x
9076  13a0 01            	rrwa	x,a
9077  13a1 a4ff          	and	a,#255
9078  13a3 5f            	clrw	x
9079  13a4 02            	rlwa	x,a
9080  13a5 1f17          	ldw	(OFST-13,sp),x
9081  13a7 01            	rrwa	x,a
9082                     ; 2440 	Mi3 = (~BMi3)&0xFF;
9084  13a8 1e19          	ldw	x,(OFST-11,sp)
9085  13aa 53            	cplw	x
9086  13ab 01            	rrwa	x,a
9087  13ac a4ff          	and	a,#255
9088  13ae 5f            	clrw	x
9089  13af 02            	rlwa	x,a
9090  13b0 1f19          	ldw	(OFST-11,sp),x
9091  13b2 01            	rrwa	x,a
9092                     ; 2441 	Mi4 = (~BMi4)&0xFF;
9094  13b3 1e1b          	ldw	x,(OFST-9,sp)
9095  13b5 53            	cplw	x
9096  13b6 01            	rrwa	x,a
9097  13b7 a4ff          	and	a,#255
9098  13b9 5f            	clrw	x
9099  13ba 02            	rlwa	x,a
9100  13bb 1f1b          	ldw	(OFST-9,sp),x
9101  13bd 01            	rrwa	x,a
9102                     ; 2442 	Mi5 = (~BMi5)&0xFF;
9104  13be 1e1d          	ldw	x,(OFST-7,sp)
9105  13c0 53            	cplw	x
9106  13c1 01            	rrwa	x,a
9107  13c2 a4ff          	and	a,#255
9108  13c4 5f            	clrw	x
9109  13c5 02            	rlwa	x,a
9110  13c6 1f1d          	ldw	(OFST-7,sp),x
9111  13c8 01            	rrwa	x,a
9112                     ; 2443 	Mi6 = (~BMi6)&0xFF;
9114  13c9 1e1f          	ldw	x,(OFST-5,sp)
9115  13cb 53            	cplw	x
9116  13cc 01            	rrwa	x,a
9117  13cd a4ff          	and	a,#255
9118  13cf 5f            	clrw	x
9119  13d0 02            	rlwa	x,a
9120  13d1 1f1f          	ldw	(OFST-5,sp),x
9121  13d3 01            	rrwa	x,a
9122                     ; 2444 	Mi7 = (~BMi7)&0xFF;
9124  13d4 1e21          	ldw	x,(OFST-3,sp)
9125  13d6 53            	cplw	x
9126  13d7 01            	rrwa	x,a
9127  13d8 a4ff          	and	a,#255
9128  13da 5f            	clrw	x
9129  13db 02            	rlwa	x,a
9130  13dc 1f21          	ldw	(OFST-3,sp),x
9131  13de 01            	rrwa	x,a
9132                     ; 2445 	Mi8 = (~BMi8)&0xFF;
9134  13df 1e23          	ldw	x,(OFST-1,sp)
9135  13e1 53            	cplw	x
9136  13e2 01            	rrwa	x,a
9137  13e3 a4ff          	and	a,#255
9138  13e5 5f            	clrw	x
9139  13e6 02            	rlwa	x,a
9140  13e7 1f23          	ldw	(OFST-1,sp),x
9141  13e9 01            	rrwa	x,a
9142                     ; 2447 	MHLRX_DEBUG_PRINTF(printf("AKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", AKSV5>>4, AKSV5&0x0F,
9142                     ; 2448 		                                       AKSV4>>4, AKSV4&0x0F,
9142                     ; 2449 											   AKSV3>>4, AKSV3&0x0F,
9142                     ; 2450 											   AKSV2>>4, AKSV2&0x0F,
9142                     ; 2451 											   AKSV1>>4, AKSV1&0x0F));
9144  13ea 7b02          	ld	a,(OFST-34,sp)
9145  13ec 5f            	clrw	x
9146  13ed 4d            	tnz	a
9147  13ee 2a01          	jrpl	L642
9148  13f0 53            	cplw	x
9149  13f1               L642:
9150  13f1 a40f          	and	a,#15
9151  13f3 5f            	clrw	x
9152  13f4 02            	rlwa	x,a
9153  13f5 89            	pushw	x
9154  13f6 01            	rrwa	x,a
9155  13f7 1e03          	ldw	x,(OFST-33,sp)
9156  13f9 57            	sraw	x
9157  13fa 57            	sraw	x
9158  13fb 57            	sraw	x
9159  13fc 57            	sraw	x
9160  13fd 89            	pushw	x
9161  13fe 7b08          	ld	a,(OFST-28,sp)
9162  1400 5f            	clrw	x
9163  1401 4d            	tnz	a
9164  1402 2a01          	jrpl	L052
9165  1404 53            	cplw	x
9166  1405               L052:
9167  1405 a40f          	and	a,#15
9168  1407 5f            	clrw	x
9169  1408 02            	rlwa	x,a
9170  1409 89            	pushw	x
9171  140a 01            	rrwa	x,a
9172  140b 1e09          	ldw	x,(OFST-27,sp)
9173  140d 57            	sraw	x
9174  140e 57            	sraw	x
9175  140f 57            	sraw	x
9176  1410 57            	sraw	x
9177  1411 89            	pushw	x
9178  1412 7b0e          	ld	a,(OFST-22,sp)
9179  1414 5f            	clrw	x
9180  1415 4d            	tnz	a
9181  1416 2a01          	jrpl	L252
9182  1418 53            	cplw	x
9183  1419               L252:
9184  1419 a40f          	and	a,#15
9185  141b 5f            	clrw	x
9186  141c 02            	rlwa	x,a
9187  141d 89            	pushw	x
9188  141e 01            	rrwa	x,a
9189  141f 1e0f          	ldw	x,(OFST-21,sp)
9190  1421 57            	sraw	x
9191  1422 57            	sraw	x
9192  1423 57            	sraw	x
9193  1424 57            	sraw	x
9194  1425 89            	pushw	x
9195  1426 7b14          	ld	a,(OFST-16,sp)
9196  1428 5f            	clrw	x
9197  1429 4d            	tnz	a
9198  142a 2a01          	jrpl	L452
9199  142c 53            	cplw	x
9200  142d               L452:
9201  142d a40f          	and	a,#15
9202  142f 5f            	clrw	x
9203  1430 02            	rlwa	x,a
9204  1431 89            	pushw	x
9205  1432 01            	rrwa	x,a
9206  1433 1e15          	ldw	x,(OFST-15,sp)
9207  1435 57            	sraw	x
9208  1436 57            	sraw	x
9209  1437 57            	sraw	x
9210  1438 57            	sraw	x
9211  1439 89            	pushw	x
9212  143a 7b1a          	ld	a,(OFST-10,sp)
9213  143c 5f            	clrw	x
9214  143d 4d            	tnz	a
9215  143e 2a01          	jrpl	L652
9216  1440 53            	cplw	x
9217  1441               L652:
9218  1441 a40f          	and	a,#15
9219  1443 5f            	clrw	x
9220  1444 02            	rlwa	x,a
9221  1445 89            	pushw	x
9222  1446 01            	rrwa	x,a
9223  1447 1e1b          	ldw	x,(OFST-9,sp)
9224  1449 57            	sraw	x
9225  144a 57            	sraw	x
9226  144b 57            	sraw	x
9227  144c 57            	sraw	x
9228  144d 89            	pushw	x
9229  144e ae2839        	ldw	x,#L1573
9230  1451 8d000000      	callf	f_printf
9232  1455 5b14          	addw	sp,#20
9233                     ; 2453 	MHLRX_DEBUG_PRINTF(printf("BKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", BKSV5>>4, BKSV5&0x0F,
9233                     ; 2454 		                                       BKSV4>>4, BKSV4&0x0F,
9233                     ; 2455 											   BKSV3>>4, BKSV3&0x0F,
9233                     ; 2456 											   BKSV2>>4, BKSV2&0x0F,
9233                     ; 2457 											   BKSV1>>4, BKSV1&0x0F));
9235  1457 7b0c          	ld	a,(OFST-24,sp)
9236  1459 5f            	clrw	x
9237  145a 4d            	tnz	a
9238  145b 2a01          	jrpl	L062
9239  145d 53            	cplw	x
9240  145e               L062:
9241  145e a40f          	and	a,#15
9242  1460 5f            	clrw	x
9243  1461 02            	rlwa	x,a
9244  1462 89            	pushw	x
9245  1463 01            	rrwa	x,a
9246  1464 1e0d          	ldw	x,(OFST-23,sp)
9247  1466 57            	sraw	x
9248  1467 57            	sraw	x
9249  1468 57            	sraw	x
9250  1469 57            	sraw	x
9251  146a 89            	pushw	x
9252  146b 7b12          	ld	a,(OFST-18,sp)
9253  146d 5f            	clrw	x
9254  146e 4d            	tnz	a
9255  146f 2a01          	jrpl	L262
9256  1471 53            	cplw	x
9257  1472               L262:
9258  1472 a40f          	and	a,#15
9259  1474 5f            	clrw	x
9260  1475 02            	rlwa	x,a
9261  1476 89            	pushw	x
9262  1477 01            	rrwa	x,a
9263  1478 1e13          	ldw	x,(OFST-17,sp)
9264  147a 57            	sraw	x
9265  147b 57            	sraw	x
9266  147c 57            	sraw	x
9267  147d 57            	sraw	x
9268  147e 89            	pushw	x
9269  147f 7b18          	ld	a,(OFST-12,sp)
9270  1481 5f            	clrw	x
9271  1482 4d            	tnz	a
9272  1483 2a01          	jrpl	L462
9273  1485 53            	cplw	x
9274  1486               L462:
9275  1486 a40f          	and	a,#15
9276  1488 5f            	clrw	x
9277  1489 02            	rlwa	x,a
9278  148a 89            	pushw	x
9279  148b 01            	rrwa	x,a
9280  148c 1e19          	ldw	x,(OFST-11,sp)
9281  148e 57            	sraw	x
9282  148f 57            	sraw	x
9283  1490 57            	sraw	x
9284  1491 57            	sraw	x
9285  1492 89            	pushw	x
9286  1493 7b1e          	ld	a,(OFST-6,sp)
9287  1495 5f            	clrw	x
9288  1496 4d            	tnz	a
9289  1497 2a01          	jrpl	L662
9290  1499 53            	cplw	x
9291  149a               L662:
9292  149a a40f          	and	a,#15
9293  149c 5f            	clrw	x
9294  149d 02            	rlwa	x,a
9295  149e 89            	pushw	x
9296  149f 01            	rrwa	x,a
9297  14a0 1e1f          	ldw	x,(OFST-5,sp)
9298  14a2 57            	sraw	x
9299  14a3 57            	sraw	x
9300  14a4 57            	sraw	x
9301  14a5 57            	sraw	x
9302  14a6 89            	pushw	x
9303  14a7 7b24          	ld	a,(OFST+0,sp)
9304  14a9 5f            	clrw	x
9305  14aa 4d            	tnz	a
9306  14ab 2a01          	jrpl	L072
9307  14ad 53            	cplw	x
9308  14ae               L072:
9309  14ae a40f          	and	a,#15
9310  14b0 5f            	clrw	x
9311  14b1 02            	rlwa	x,a
9312  14b2 89            	pushw	x
9313  14b3 01            	rrwa	x,a
9314  14b4 1e25          	ldw	x,(OFST+1,sp)
9315  14b6 57            	sraw	x
9316  14b7 57            	sraw	x
9317  14b8 57            	sraw	x
9318  14b9 57            	sraw	x
9319  14ba 89            	pushw	x
9320  14bb ae2818        	ldw	x,#L3573
9321  14be 8d000000      	callf	f_printf
9323  14c2 5b14          	addw	sp,#20
9324                     ; 2459 	MHLRX_DEBUG_PRINTF(printf("M0   = 0x%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X \r\n", Mi8>>4, Mi8&0x0F,
9324                     ; 2460 		                                                   Mi7>>4, Mi7&0x0F,
9324                     ; 2461 														   Mi6>>4, Mi6&0x0F,
9324                     ; 2462 														   Mi5>>4, Mi5&0x0F,
9324                     ; 2463 														   Mi4>>4, Mi4&0x0F,
9324                     ; 2464 														   Mi3>>4, Mi3&0x0F,
9324                     ; 2465 														   Mi2>>4, Mi2&0x0F,
9324                     ; 2466 														   Mi1>>4, Mi1&0x0F));
9326  14c4 7b16          	ld	a,(OFST-14,sp)
9327  14c6 5f            	clrw	x
9328  14c7 4d            	tnz	a
9329  14c8 2a01          	jrpl	L272
9330  14ca 53            	cplw	x
9331  14cb               L272:
9332  14cb a40f          	and	a,#15
9333  14cd 5f            	clrw	x
9334  14ce 02            	rlwa	x,a
9335  14cf 89            	pushw	x
9336  14d0 01            	rrwa	x,a
9337  14d1 1e17          	ldw	x,(OFST-13,sp)
9338  14d3 57            	sraw	x
9339  14d4 57            	sraw	x
9340  14d5 57            	sraw	x
9341  14d6 57            	sraw	x
9342  14d7 89            	pushw	x
9343  14d8 7b1c          	ld	a,(OFST-8,sp)
9344  14da 5f            	clrw	x
9345  14db 4d            	tnz	a
9346  14dc 2a01          	jrpl	L472
9347  14de 53            	cplw	x
9348  14df               L472:
9349  14df a40f          	and	a,#15
9350  14e1 5f            	clrw	x
9351  14e2 02            	rlwa	x,a
9352  14e3 89            	pushw	x
9353  14e4 01            	rrwa	x,a
9354  14e5 1e1d          	ldw	x,(OFST-7,sp)
9355  14e7 57            	sraw	x
9356  14e8 57            	sraw	x
9357  14e9 57            	sraw	x
9358  14ea 57            	sraw	x
9359  14eb 89            	pushw	x
9360  14ec 7b22          	ld	a,(OFST-2,sp)
9361  14ee 5f            	clrw	x
9362  14ef 4d            	tnz	a
9363  14f0 2a01          	jrpl	L672
9364  14f2 53            	cplw	x
9365  14f3               L672:
9366  14f3 a40f          	and	a,#15
9367  14f5 5f            	clrw	x
9368  14f6 02            	rlwa	x,a
9369  14f7 89            	pushw	x
9370  14f8 01            	rrwa	x,a
9371  14f9 1e23          	ldw	x,(OFST-1,sp)
9372  14fb 57            	sraw	x
9373  14fc 57            	sraw	x
9374  14fd 57            	sraw	x
9375  14fe 57            	sraw	x
9376  14ff 89            	pushw	x
9377  1500 7b28          	ld	a,(OFST+4,sp)
9378  1502 5f            	clrw	x
9379  1503 4d            	tnz	a
9380  1504 2a01          	jrpl	L003
9381  1506 53            	cplw	x
9382  1507               L003:
9383  1507 a40f          	and	a,#15
9384  1509 5f            	clrw	x
9385  150a 02            	rlwa	x,a
9386  150b 89            	pushw	x
9387  150c 01            	rrwa	x,a
9388  150d 1e29          	ldw	x,(OFST+5,sp)
9389  150f 57            	sraw	x
9390  1510 57            	sraw	x
9391  1511 57            	sraw	x
9392  1512 57            	sraw	x
9393  1513 89            	pushw	x
9394  1514 7b2e          	ld	a,(OFST+10,sp)
9395  1516 5f            	clrw	x
9396  1517 4d            	tnz	a
9397  1518 2a01          	jrpl	L203
9398  151a 53            	cplw	x
9399  151b               L203:
9400  151b a40f          	and	a,#15
9401  151d 5f            	clrw	x
9402  151e 02            	rlwa	x,a
9403  151f 89            	pushw	x
9404  1520 01            	rrwa	x,a
9405  1521 1e2f          	ldw	x,(OFST+11,sp)
9406  1523 57            	sraw	x
9407  1524 57            	sraw	x
9408  1525 57            	sraw	x
9409  1526 57            	sraw	x
9410  1527 89            	pushw	x
9411  1528 7b34          	ld	a,(OFST+16,sp)
9412  152a 5f            	clrw	x
9413  152b 4d            	tnz	a
9414  152c 2a01          	jrpl	L403
9415  152e 53            	cplw	x
9416  152f               L403:
9417  152f a40f          	and	a,#15
9418  1531 5f            	clrw	x
9419  1532 02            	rlwa	x,a
9420  1533 89            	pushw	x
9421  1534 01            	rrwa	x,a
9422  1535 1e35          	ldw	x,(OFST+17,sp)
9423  1537 57            	sraw	x
9424  1538 57            	sraw	x
9425  1539 57            	sraw	x
9426  153a 57            	sraw	x
9427  153b 89            	pushw	x
9428  153c 7b3a          	ld	a,(OFST+22,sp)
9429  153e 5f            	clrw	x
9430  153f 4d            	tnz	a
9431  1540 2a01          	jrpl	L603
9432  1542 53            	cplw	x
9433  1543               L603:
9434  1543 a40f          	and	a,#15
9435  1545 5f            	clrw	x
9436  1546 02            	rlwa	x,a
9437  1547 89            	pushw	x
9438  1548 01            	rrwa	x,a
9439  1549 1e3b          	ldw	x,(OFST+23,sp)
9440  154b 57            	sraw	x
9441  154c 57            	sraw	x
9442  154d 57            	sraw	x
9443  154e 57            	sraw	x
9444  154f 89            	pushw	x
9445  1550 7b40          	ld	a,(OFST+28,sp)
9446  1552 5f            	clrw	x
9447  1553 4d            	tnz	a
9448  1554 2a01          	jrpl	L013
9449  1556 53            	cplw	x
9450  1557               L013:
9451  1557 a40f          	and	a,#15
9452  1559 5f            	clrw	x
9453  155a 02            	rlwa	x,a
9454  155b 89            	pushw	x
9455  155c 01            	rrwa	x,a
9456  155d 1e41          	ldw	x,(OFST+29,sp)
9457  155f 57            	sraw	x
9458  1560 57            	sraw	x
9459  1561 57            	sraw	x
9460  1562 57            	sraw	x
9461  1563 89            	pushw	x
9462  1564 ae27eb        	ldw	x,#L5573
9463  1567 8d000000      	callf	f_printf
9465  156b 5b20          	addw	sp,#32
9466                     ; 2467 	chgbank(0);
9468  156d 5f            	clrw	x
9469  156e 8d140514      	callf	L711f_chgbank
9471                     ; 2468 }
9474  1572 5b24          	addw	sp,#36
9475  1574 87            	retf
9514                     ; 2483 static void parse_rcpkey( unsigned char rcpkey )
9514                     ; 2484 {
9515                     	switch	.text
9516  1575               L332f_parse_rcpkey:
9518  1575 88            	push	a
9519  1576 88            	push	a
9520       00000001      OFST:	set	1
9523                     ; 2487      suppkey = TRUE;
9525  1577 a601          	ld	a,#1
9526  1579 6b01          	ld	(OFST+0,sp),a
9527                     ; 2489      MHLRX_DEBUG_PRINTF(printf("KeyCode=%x ==>", rcpkey&0x7F));
9529  157b 7b02          	ld	a,(OFST+1,sp)
9530  157d 5f            	clrw	x
9531  157e a47f          	and	a,#127
9532  1580 5f            	clrw	x
9533  1581 02            	rlwa	x,a
9534  1582 89            	pushw	x
9535  1583 01            	rrwa	x,a
9536  1584 ae27dc        	ldw	x,#L1024
9537  1587 8d000000      	callf	f_printf
9539  158b 85            	popw	x
9540                     ; 2491      switch( rcpkey&0x7F ) {
9542  158c 7b02          	ld	a,(OFST+1,sp)
9543  158e a47f          	and	a,#127
9545                     ; 2564      default  : MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved RCP sub-command code !!!\r\n")); suppkey = FALSE;
9546  1590 a020          	sub	a,#32
9547  1592 a15f          	cp	a,#95
9548  1594 2504ac5c165c  	jruge	L613
9549  159a 8d000000      	callf	d_jctab
9551  159e               L023:
9552  159e 019f          	dc.w	L3104-L023
9553  15a0 01aa          	dc.w	L5104-L023
9554  15a2 01b5          	dc.w	L7104-L023
9555  15a4 01c0          	dc.w	L1204-L023
9556  15a6 01cb          	dc.w	L3204-L023
9557  15a8 01d6          	dc.w	L5204-L023
9558  15aa 01e1          	dc.w	L7204-L023
9559  15ac 01ec          	dc.w	L1304-L023
9560  15ae 01f7          	dc.w	L3304-L023
9561  15b0 0202          	dc.w	L5304-L023
9562  15b2 020d          	dc.w	L7304-L023
9563  15b4 0218          	dc.w	L1404-L023
9564  15b6 0223          	dc.w	L3404-L023
9565  15b8 03b6          	dc.w	L1614-L023
9566  15ba 03b6          	dc.w	L1614-L023
9567  15bc 03b6          	dc.w	L1614-L023
9568  15be 022e          	dc.w	L5404-L023
9569  15c0 0239          	dc.w	L7404-L023
9570  15c2 0244          	dc.w	L1504-L023
9571  15c4 024f          	dc.w	L3504-L023
9572  15c6 025a          	dc.w	L5504-L023
9573  15c8 0265          	dc.w	L7504-L023
9574  15ca 0270          	dc.w	L1604-L023
9575  15cc 027b          	dc.w	L3604-L023
9576  15ce 0286          	dc.w	L5604-L023
9577  15d0 03b6          	dc.w	L1614-L023
9578  15d2 03b6          	dc.w	L1614-L023
9579  15d4 03b6          	dc.w	L1614-L023
9580  15d6 03b6          	dc.w	L1614-L023
9581  15d8 03b6          	dc.w	L1614-L023
9582  15da 03b6          	dc.w	L1614-L023
9583  15dc 03b6          	dc.w	L1614-L023
9584  15de 03b6          	dc.w	L1614-L023
9585  15e0 0291          	dc.w	L7604-L023
9586  15e2 029c          	dc.w	L1704-L023
9587  15e4 02a7          	dc.w	L3704-L023
9588  15e6 02b2          	dc.w	L5704-L023
9589  15e8 02bd          	dc.w	L7704-L023
9590  15ea 02c8          	dc.w	L1014-L023
9591  15ec 02d3          	dc.w	L3014-L023
9592  15ee 02de          	dc.w	L5014-L023
9593  15f0 02e9          	dc.w	L7014-L023
9594  15f2 02f4          	dc.w	L1114-L023
9595  15f4 02ff          	dc.w	L3114-L023
9596  15f6 030a          	dc.w	L5114-L023
9597  15f8 03b6          	dc.w	L1614-L023
9598  15fa 03b6          	dc.w	L1614-L023
9599  15fc 03b6          	dc.w	L1614-L023
9600  15fe 0315          	dc.w	L7114-L023
9601  1600 0320          	dc.w	L1214-L023
9602  1602 03b6          	dc.w	L1614-L023
9603  1604 03b6          	dc.w	L1614-L023
9604  1606 03b6          	dc.w	L1614-L023
9605  1608 03b6          	dc.w	L1614-L023
9606  160a 03b6          	dc.w	L1614-L023
9607  160c 03b6          	dc.w	L1614-L023
9608  160e 03b6          	dc.w	L1614-L023
9609  1610 03b6          	dc.w	L1614-L023
9610  1612 03b6          	dc.w	L1614-L023
9611  1614 03b6          	dc.w	L1614-L023
9612  1616 03b6          	dc.w	L1614-L023
9613  1618 03b6          	dc.w	L1614-L023
9614  161a 03b6          	dc.w	L1614-L023
9615  161c 03b6          	dc.w	L1614-L023
9616  161e 032b          	dc.w	L3214-L023
9617  1620 0336          	dc.w	L5214-L023
9618  1622 0341          	dc.w	L7214-L023
9619  1624 034a          	dc.w	L1314-L023
9620  1626 0353          	dc.w	L3314-L023
9621  1628 035c          	dc.w	L5314-L023
9622  162a 0365          	dc.w	L7314-L023
9623  162c 036e          	dc.w	L1414-L023
9624  162e 0377          	dc.w	L3414-L023
9625  1630 03b6          	dc.w	L1614-L023
9626  1632 03b6          	dc.w	L1614-L023
9627  1634 03b6          	dc.w	L1614-L023
9628  1636 03b6          	dc.w	L1614-L023
9629  1638 03b6          	dc.w	L1614-L023
9630  163a 03b6          	dc.w	L1614-L023
9631  163c 03b6          	dc.w	L1614-L023
9632  163e 03b6          	dc.w	L1614-L023
9633  1640 0380          	dc.w	L5414-L023
9634  1642 0389          	dc.w	L7414-L023
9635  1644 0392          	dc.w	L1514-L023
9636  1646 039b          	dc.w	L3514-L023
9637  1648 03a4          	dc.w	L5514-L023
9638  164a 03b6          	dc.w	L1614-L023
9639  164c 03b6          	dc.w	L1614-L023
9640  164e 03b6          	dc.w	L1614-L023
9641  1650 03b6          	dc.w	L1614-L023
9642  1652 03b6          	dc.w	L1614-L023
9643  1654 03b6          	dc.w	L1614-L023
9644  1656 03b6          	dc.w	L1614-L023
9645  1658 03b6          	dc.w	L1614-L023
9646  165a 03ad          	dc.w	L7514-L023
9647  165c               L613:
9648  165c a0e0          	sub	a,#-32
9649  165e 2743          	jreq	L7573
9650  1660 4a            	dec	a
9651  1661 274b          	jreq	L1673
9652  1663 4a            	dec	a
9653  1664 2753          	jreq	L3673
9654  1666 4a            	dec	a
9655  1667 275b          	jreq	L5673
9656  1669 4a            	dec	a
9657  166a 2763          	jreq	L7673
9658  166c 4a            	dec	a
9659  166d 276b          	jreq	L1773
9660  166f 4a            	dec	a
9661  1670 2773          	jreq	L3773
9662  1672 4a            	dec	a
9663  1673 277b          	jreq	L5773
9664  1675 4a            	dec	a
9665  1676 2604acfb16fb  	jreq	L7773
9666  167c 4a            	dec	a
9667  167d 2604ac061706  	jreq	L1004
9668  1683 4a            	dec	a
9669  1684 2604ac111711  	jreq	L3004
9670  168a 4a            	dec	a
9671  168b 2604          	jrne	L223
9672  168d ac1c171c      	jpf	L5004
9673  1691               L223:
9674  1691 4a            	dec	a
9675  1692 2604          	jrne	L423
9676  1694 ac271727      	jpf	L7004
9677  1698               L423:
9678  1698 4a            	dec	a
9679  1699 2604          	jrne	L623
9680  169b ac321732      	jpf	L1104
9681  169f               L623:
9682  169f ac541954      	jpf	L1614
9683  16a3               L7573:
9684                     ; 2492      case 0x00: MHLRX_DEBUG_PRINTF(printf("Select")); break;
9686  16a3 ae27d5        	ldw	x,#L7024
9687  16a6 8d000000      	callf	f_printf
9691  16aa ac5d195d      	jpf	L5024
9692  16ae               L1673:
9693                     ; 2493      case 0x01: MHLRX_DEBUG_PRINTF(printf("Up")); break;
9695  16ae ae27d2        	ldw	x,#L1124
9696  16b1 8d000000      	callf	f_printf
9700  16b5 ac5d195d      	jpf	L5024
9701  16b9               L3673:
9702                     ; 2494      case 0x02: MHLRX_DEBUG_PRINTF(printf("Down")); break;
9704  16b9 ae27cd        	ldw	x,#L3124
9705  16bc 8d000000      	callf	f_printf
9709  16c0 ac5d195d      	jpf	L5024
9710  16c4               L5673:
9711                     ; 2495      case 0x03: MHLRX_DEBUG_PRINTF(printf("Left")); break;
9713  16c4 ae27c8        	ldw	x,#L5124
9714  16c7 8d000000      	callf	f_printf
9718  16cb ac5d195d      	jpf	L5024
9719  16cf               L7673:
9720                     ; 2496      case 0x04: MHLRX_DEBUG_PRINTF(printf("Right")); break;
9722  16cf ae27c2        	ldw	x,#L7124
9723  16d2 8d000000      	callf	f_printf
9727  16d6 ac5d195d      	jpf	L5024
9728  16da               L1773:
9729                     ; 2497      case 0x05: MHLRX_DEBUG_PRINTF(printf("Right-Up")); break;
9731  16da ae27b9        	ldw	x,#L1224
9732  16dd 8d000000      	callf	f_printf
9736  16e1 ac5d195d      	jpf	L5024
9737  16e5               L3773:
9738                     ; 2498      case 0x06: MHLRX_DEBUG_PRINTF(printf("Right-Down")); break;
9740  16e5 ae27ae        	ldw	x,#L3224
9741  16e8 8d000000      	callf	f_printf
9745  16ec ac5d195d      	jpf	L5024
9746  16f0               L5773:
9747                     ; 2499      case 0x07: MHLRX_DEBUG_PRINTF(printf("Left-Up")); break;
9749  16f0 ae27a6        	ldw	x,#L5224
9750  16f3 8d000000      	callf	f_printf
9754  16f7 ac5d195d      	jpf	L5024
9755  16fb               L7773:
9756                     ; 2500      case 0x08: MHLRX_DEBUG_PRINTF(printf("Left-Down")); break;
9758  16fb ae279c        	ldw	x,#L7224
9759  16fe 8d000000      	callf	f_printf
9763  1702 ac5d195d      	jpf	L5024
9764  1706               L1004:
9765                     ; 2501      case 0x09: MHLRX_DEBUG_PRINTF(printf("Root Menu")); break;
9767  1706 ae2792        	ldw	x,#L1324
9768  1709 8d000000      	callf	f_printf
9772  170d ac5d195d      	jpf	L5024
9773  1711               L3004:
9774                     ; 2502      case 0x0A: MHLRX_DEBUG_PRINTF(printf("Setup Menu")); break;
9776  1711 ae2787        	ldw	x,#L3324
9777  1714 8d000000      	callf	f_printf
9781  1718 ac5d195d      	jpf	L5024
9782  171c               L5004:
9783                     ; 2503      case 0x0B: MHLRX_DEBUG_PRINTF(printf("Contents Menu")); break;
9785  171c ae2779        	ldw	x,#L5324
9786  171f 8d000000      	callf	f_printf
9790  1723 ac5d195d      	jpf	L5024
9791  1727               L7004:
9792                     ; 2504      case 0x0C: MHLRX_DEBUG_PRINTF(printf("Favorite Menu")); break;
9794  1727 ae276b        	ldw	x,#L7324
9795  172a 8d000000      	callf	f_printf
9799  172e ac5d195d      	jpf	L5024
9800  1732               L1104:
9801                     ; 2505      case 0x0D: MHLRX_DEBUG_PRINTF(printf("Exit")); break;
9803  1732 ae2766        	ldw	x,#L1424
9804  1735 8d000000      	callf	f_printf
9808  1739 ac5d195d      	jpf	L5024
9809  173d               L3104:
9810                     ; 2507      case 0x20: MHLRX_DEBUG_PRINTF(printf("Numeric 0")); break;
9812  173d ae275c        	ldw	x,#L3424
9813  1740 8d000000      	callf	f_printf
9817  1744 ac5d195d      	jpf	L5024
9818  1748               L5104:
9819                     ; 2508      case 0x21: MHLRX_DEBUG_PRINTF(printf("Numeric 1")); break;
9821  1748 ae2752        	ldw	x,#L5424
9822  174b 8d000000      	callf	f_printf
9826  174f ac5d195d      	jpf	L5024
9827  1753               L7104:
9828                     ; 2509      case 0x22: MHLRX_DEBUG_PRINTF(printf("Numeric 2")); break;
9830  1753 ae2748        	ldw	x,#L7424
9831  1756 8d000000      	callf	f_printf
9835  175a ac5d195d      	jpf	L5024
9836  175e               L1204:
9837                     ; 2510      case 0x23: MHLRX_DEBUG_PRINTF(printf("Numeric 3")); break;
9839  175e ae273e        	ldw	x,#L1524
9840  1761 8d000000      	callf	f_printf
9844  1765 ac5d195d      	jpf	L5024
9845  1769               L3204:
9846                     ; 2511      case 0x24: MHLRX_DEBUG_PRINTF(printf("Numeric 4")); break;
9848  1769 ae2734        	ldw	x,#L3524
9849  176c 8d000000      	callf	f_printf
9853  1770 ac5d195d      	jpf	L5024
9854  1774               L5204:
9855                     ; 2512      case 0x25: MHLRX_DEBUG_PRINTF(printf("Numeric 5")); break;
9857  1774 ae272a        	ldw	x,#L5524
9858  1777 8d000000      	callf	f_printf
9862  177b ac5d195d      	jpf	L5024
9863  177f               L7204:
9864                     ; 2513      case 0x26: MHLRX_DEBUG_PRINTF(printf("Numeric 6")); break;
9866  177f ae2720        	ldw	x,#L7524
9867  1782 8d000000      	callf	f_printf
9871  1786 ac5d195d      	jpf	L5024
9872  178a               L1304:
9873                     ; 2514      case 0x27: MHLRX_DEBUG_PRINTF(printf("Numeric 7")); break;
9875  178a ae2716        	ldw	x,#L1624
9876  178d 8d000000      	callf	f_printf
9880  1791 ac5d195d      	jpf	L5024
9881  1795               L3304:
9882                     ; 2515      case 0x28: MHLRX_DEBUG_PRINTF(printf("Numeric 8")); break;
9884  1795 ae270c        	ldw	x,#L3624
9885  1798 8d000000      	callf	f_printf
9889  179c ac5d195d      	jpf	L5024
9890  17a0               L5304:
9891                     ; 2516      case 0x29: MHLRX_DEBUG_PRINTF(printf("Numeric 9")); break;
9893  17a0 ae2702        	ldw	x,#L5624
9894  17a3 8d000000      	callf	f_printf
9898  17a7 ac5d195d      	jpf	L5024
9899  17ab               L7304:
9900                     ; 2517      case 0x2A: MHLRX_DEBUG_PRINTF(printf("Dot")); break;
9902  17ab ae26fe        	ldw	x,#L7624
9903  17ae 8d000000      	callf	f_printf
9907  17b2 ac5d195d      	jpf	L5024
9908  17b6               L1404:
9909                     ; 2518      case 0x2B: MHLRX_DEBUG_PRINTF(printf("Enter")); break;
9911  17b6 ae26f8        	ldw	x,#L1724
9912  17b9 8d000000      	callf	f_printf
9916  17bd ac5d195d      	jpf	L5024
9917  17c1               L3404:
9918                     ; 2519      case 0x2C: MHLRX_DEBUG_PRINTF(printf("Clear")); break;
9920  17c1 ae26f2        	ldw	x,#L3724
9921  17c4 8d000000      	callf	f_printf
9925  17c8 ac5d195d      	jpf	L5024
9926  17cc               L5404:
9927                     ; 2521      case 0x30: MHLRX_DEBUG_PRINTF(printf("Channel Up")); break;
9929  17cc ae26e7        	ldw	x,#L5724
9930  17cf 8d000000      	callf	f_printf
9934  17d3 ac5d195d      	jpf	L5024
9935  17d7               L7404:
9936                     ; 2522      case 0x31: MHLRX_DEBUG_PRINTF(printf("Channel Down")); break;
9938  17d7 ae26da        	ldw	x,#L7724
9939  17da 8d000000      	callf	f_printf
9943  17de ac5d195d      	jpf	L5024
9944  17e2               L1504:
9945                     ; 2523      case 0x32: MHLRX_DEBUG_PRINTF(printf("Previous Channel")); break;
9947  17e2 ae26c9        	ldw	x,#L1034
9948  17e5 8d000000      	callf	f_printf
9952  17e9 ac5d195d      	jpf	L5024
9953  17ed               L3504:
9954                     ; 2524      case 0x33: MHLRX_DEBUG_PRINTF(printf("Sound Select")); break;
9956  17ed ae26bc        	ldw	x,#L3034
9957  17f0 8d000000      	callf	f_printf
9961  17f4 ac5d195d      	jpf	L5024
9962  17f8               L5504:
9963                     ; 2525      case 0x34: MHLRX_DEBUG_PRINTF(printf("Input Select")); break;
9965  17f8 ae26af        	ldw	x,#L5034
9966  17fb 8d000000      	callf	f_printf
9970  17ff ac5d195d      	jpf	L5024
9971  1803               L7504:
9972                     ; 2526      case 0x35: MHLRX_DEBUG_PRINTF(printf("Show Information")); break;
9974  1803 ae269e        	ldw	x,#L7034
9975  1806 8d000000      	callf	f_printf
9979  180a ac5d195d      	jpf	L5024
9980  180e               L1604:
9981                     ; 2527      case 0x36: MHLRX_DEBUG_PRINTF(printf("Help")); break;
9983  180e ae2699        	ldw	x,#L1134
9984  1811 8d000000      	callf	f_printf
9988  1815 ac5d195d      	jpf	L5024
9989  1819               L3604:
9990                     ; 2528      case 0x37: MHLRX_DEBUG_PRINTF(printf("Page Up")); break;
9992  1819 ae2691        	ldw	x,#L3134
9993  181c 8d000000      	callf	f_printf
9997  1820 ac5d195d      	jpf	L5024
9998  1824               L5604:
9999                     ; 2529      case 0x38: MHLRX_DEBUG_PRINTF(printf("Page Down")); break;
10001  1824 ae2687        	ldw	x,#L5134
10002  1827 8d000000      	callf	f_printf
10006  182b ac5d195d      	jpf	L5024
10007  182f               L7604:
10008                     ; 2531      case 0x41: MHLRX_DEBUG_PRINTF(printf("Volume Up")); break;
10010  182f ae267d        	ldw	x,#L7134
10011  1832 8d000000      	callf	f_printf
10015  1836 ac5d195d      	jpf	L5024
10016  183a               L1704:
10017                     ; 2532      case 0x42: MHLRX_DEBUG_PRINTF(printf("Volume Down")); break;
10019  183a ae2671        	ldw	x,#L1234
10020  183d 8d000000      	callf	f_printf
10024  1841 ac5d195d      	jpf	L5024
10025  1845               L3704:
10026                     ; 2533      case 0x43: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
10028  1845 ae266c        	ldw	x,#L3234
10029  1848 8d000000      	callf	f_printf
10033  184c ac5d195d      	jpf	L5024
10034  1850               L5704:
10035                     ; 2534      case 0x44: MHLRX_DEBUG_PRINTF(printf("Play")); break;
10037  1850 ae2667        	ldw	x,#L5234
10038  1853 8d000000      	callf	f_printf
10042  1857 ac5d195d      	jpf	L5024
10043  185b               L7704:
10044                     ; 2535      case 0x45: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
10046  185b ae2662        	ldw	x,#L7234
10047  185e 8d000000      	callf	f_printf
10051  1862 ac5d195d      	jpf	L5024
10052  1866               L1014:
10053                     ; 2536      case 0x46: MHLRX_DEBUG_PRINTF(printf("Pause")); break;
10055  1866 ae265c        	ldw	x,#L1334
10056  1869 8d000000      	callf	f_printf
10060  186d ac5d195d      	jpf	L5024
10061  1871               L3014:
10062                     ; 2537      case 0x47: MHLRX_DEBUG_PRINTF(printf("Record")); break;
10064  1871 ae2655        	ldw	x,#L3334
10065  1874 8d000000      	callf	f_printf
10069  1878 ac5d195d      	jpf	L5024
10070  187c               L5014:
10071                     ; 2538      case 0x48: MHLRX_DEBUG_PRINTF(printf("Rewind")); break;
10073  187c ae264e        	ldw	x,#L5334
10074  187f 8d000000      	callf	f_printf
10078  1883 ac5d195d      	jpf	L5024
10079  1887               L7014:
10080                     ; 2539      case 0x49: MHLRX_DEBUG_PRINTF(printf("Fast Forward")); break;
10082  1887 ae2641        	ldw	x,#L7334
10083  188a 8d000000      	callf	f_printf
10087  188e ac5d195d      	jpf	L5024
10088  1892               L1114:
10089                     ; 2540      case 0x4A: MHLRX_DEBUG_PRINTF(printf("Eject")); break;
10091  1892 ae263b        	ldw	x,#L1434
10092  1895 8d000000      	callf	f_printf
10096  1899 ac5d195d      	jpf	L5024
10097  189d               L3114:
10098                     ; 2541      case 0x4B: MHLRX_DEBUG_PRINTF(printf("Forward")); break;
10100  189d ae2633        	ldw	x,#L3434
10101  18a0 8d000000      	callf	f_printf
10105  18a4 ac5d195d      	jpf	L5024
10106  18a8               L5114:
10107                     ; 2542      case 0x4C: MHLRX_DEBUG_PRINTF(printf("Backward")); break;
10109  18a8 ae262a        	ldw	x,#L5434
10110  18ab 8d000000      	callf	f_printf
10114  18af ac5d195d      	jpf	L5024
10115  18b3               L7114:
10116                     ; 2544      case 0x50: MHLRX_DEBUG_PRINTF(printf("Angle")); break;
10118  18b3 ae2624        	ldw	x,#L7434
10119  18b6 8d000000      	callf	f_printf
10123  18ba ac5d195d      	jpf	L5024
10124  18be               L1214:
10125                     ; 2545      case 0x51: MHLRX_DEBUG_PRINTF(printf("Subpicture")); break;
10127  18be ae2619        	ldw	x,#L1534
10128  18c1 8d000000      	callf	f_printf
10132  18c5 ac5d195d      	jpf	L5024
10133  18c9               L3214:
10134                     ; 2547      case 0x60: MHLRX_DEBUG_PRINTF(printf("Play_Function")); break;
10136  18c9 ae260b        	ldw	x,#L3534
10137  18cc 8d000000      	callf	f_printf
10141  18d0 ac5d195d      	jpf	L5024
10142  18d4               L5214:
10143                     ; 2548      case 0x61: MHLRX_DEBUG_PRINTF(printf("Pause_Play_Function")); break;
10145  18d4 ae25f7        	ldw	x,#L5534
10146  18d7 8d000000      	callf	f_printf
10150  18db ac5d195d      	jra	L5024
10151  18df               L7214:
10152                     ; 2549      case 0x62: MHLRX_DEBUG_PRINTF(printf("Record_Function")); break;
10154  18df ae25e7        	ldw	x,#L7534
10155  18e2 8d000000      	callf	f_printf
10159  18e6 2075          	jra	L5024
10160  18e8               L1314:
10161                     ; 2550      case 0x63: MHLRX_DEBUG_PRINTF(printf("Pause_Record_Function")); break;
10163  18e8 ae25d1        	ldw	x,#L1634
10164  18eb 8d000000      	callf	f_printf
10168  18ef 206c          	jra	L5024
10169  18f1               L3314:
10170                     ; 2551      case 0x64: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
10172  18f1 ae2662        	ldw	x,#L7234
10173  18f4 8d000000      	callf	f_printf
10177  18f8 2063          	jra	L5024
10178  18fa               L5314:
10179                     ; 2552      case 0x65: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
10181  18fa ae266c        	ldw	x,#L3234
10182  18fd 8d000000      	callf	f_printf
10186  1901 205a          	jra	L5024
10187  1903               L7314:
10188                     ; 2553      case 0x66: MHLRX_DEBUG_PRINTF(printf("Restore_Volume_Function")); break;
10190  1903 ae25b9        	ldw	x,#L3634
10191  1906 8d000000      	callf	f_printf
10195  190a 2051          	jra	L5024
10196  190c               L1414:
10197                     ; 2554      case 0x67: MHLRX_DEBUG_PRINTF(printf("Tune_Function")); break;
10199  190c ae25ab        	ldw	x,#L5634
10200  190f 8d000000      	callf	f_printf
10204  1913 2048          	jra	L5024
10205  1915               L3414:
10206                     ; 2555      case 0x68: MHLRX_DEBUG_PRINTF(printf("Select_Media_Function")); break;
10208  1915 ae2595        	ldw	x,#L7634
10209  1918 8d000000      	callf	f_printf
10213  191c 203f          	jra	L5024
10214  191e               L5414:
10215                     ; 2557      case 0x71: MHLRX_DEBUG_PRINTF(printf("F1 (Blue)")); break;
10217  191e ae258b        	ldw	x,#L1734
10218  1921 8d000000      	callf	f_printf
10222  1925 2036          	jra	L5024
10223  1927               L7414:
10224                     ; 2558      case 0x72: MHLRX_DEBUG_PRINTF(printf("F2 (Red)")); break;
10226  1927 ae2582        	ldw	x,#L3734
10227  192a 8d000000      	callf	f_printf
10231  192e 202d          	jra	L5024
10232  1930               L1514:
10233                     ; 2559      case 0x73: MHLRX_DEBUG_PRINTF(printf("F3 (Green)")); break;
10235  1930 ae2577        	ldw	x,#L5734
10236  1933 8d000000      	callf	f_printf
10240  1937 2024          	jra	L5024
10241  1939               L3514:
10242                     ; 2560      case 0x74: MHLRX_DEBUG_PRINTF(printf("F4 (Yellow)")); break;
10244  1939 ae256b        	ldw	x,#L7734
10245  193c 8d000000      	callf	f_printf
10249  1940 201b          	jra	L5024
10250  1942               L5514:
10251                     ; 2561      case 0x75: MHLRX_DEBUG_PRINTF(printf("F5")); break;
10253  1942 ae2568        	ldw	x,#L1044
10254  1945 8d000000      	callf	f_printf
10258  1949 2012          	jra	L5024
10259  194b               L7514:
10260                     ; 2562      case 0x7E: MHLRX_DEBUG_PRINTF(printf("Vendor_Specific")); break;
10262  194b ae2558        	ldw	x,#L3044
10263  194e 8d000000      	callf	f_printf
10267  1952 2009          	jra	L5024
10268  1954               L1614:
10269                     ; 2564      default  : MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved RCP sub-command code !!!\r\n")); suppkey = FALSE;
10271  1954 ae252d        	ldw	x,#L5044
10272  1957 8d000000      	callf	f_printf
10276  195b 0f01          	clr	(OFST+0,sp)
10277  195d               L5024:
10278                     ; 2567      if( suppkey ) {
10280  195d 0d01          	tnz	(OFST+0,sp)
10281  195f 2716          	jreq	L7044
10282                     ; 2568          if( rcpkey&0x80 )
10284  1961 7b02          	ld	a,(OFST+1,sp)
10285  1963 a580          	bcp	a,#128
10286  1965 2709          	jreq	L1144
10287                     ; 2569              MHLRX_DEBUG_PRINTF(printf(" Key Release\r\n"));
10289  1967 ae251e        	ldw	x,#L3144
10290  196a 8d000000      	callf	f_printf
10293  196e 2007          	jra	L7044
10294  1970               L1144:
10295                     ; 2571              MHLRX_DEBUG_PRINTF(printf(" Key Press\r\n"));
10297  1970 ae2511        	ldw	x,#L7144
10298  1973 8d000000      	callf	f_printf
10300  1977               L7044:
10301                     ; 2573 }
10304  1977 85            	popw	x
10305  1978 87            	retf
10346                     ; 2581 static void mhl_parse_RCPkey(struct it6802_dev_data *it6802)
10346                     ; 2582 {
10347                     	switch	.text
10348  1979               L532f_mhl_parse_RCPkey:
10350  1979 89            	pushw	x
10351       00000000      OFST:	set	0
10354                     ; 2583 	parse_rcpkey( it6802->rxmsgdata[1]);
10356  197a e64b          	ld	a,(75,x)
10357  197c 8d751575      	callf	L332f_parse_rcpkey
10359                     ; 2585 	if( SuppRCPCode[it6802->rxmsgdata[1]] ){
10361  1980 1e01          	ldw	x,(OFST+1,sp)
10362  1982 e64b          	ld	a,(75,x)
10363  1984 5f            	clrw	x
10364  1985 97            	ld	xl,a
10365  1986 724d0113      	tnz	(_SuppRCPCode,x)
10366  198a 271b          	jreq	L1444
10367                     ; 2587 		it6802->txmsgdata[0] = MSG_RCPK;
10369  198c 1e01          	ldw	x,(OFST+1,sp)
10370  198e a611          	ld	a,#17
10371  1990 e748          	ld	(72,x),a
10372                     ; 2588 		it6802->txmsgdata[1] = it6802->rxmsgdata[1];
10374  1992 1e01          	ldw	x,(OFST+1,sp)
10375  1994 e64b          	ld	a,(75,x)
10376  1996 e749          	ld	(73,x),a
10377                     ; 2589 		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPK with action code = 0x%02X\r\n", it6802->txmsgdata[1]));
10379  1998 1e01          	ldw	x,(OFST+1,sp)
10380  199a e649          	ld	a,(73,x)
10381  199c 88            	push	a
10382  199d ae24e9        	ldw	x,#L3444
10383  19a0 8d000000      	callf	f_printf
10385  19a4 84            	pop	a
10387  19a5 2019          	jra	L5444
10388  19a7               L1444:
10389                     ; 2595 		it6802->txmsgdata[0] = MSG_RCPE;
10391  19a7 1e01          	ldw	x,(OFST+1,sp)
10392  19a9 a612          	ld	a,#18
10393  19ab e748          	ld	(72,x),a
10394                     ; 2596 		it6802->txmsgdata[1] = 0x01;
10396  19ad 1e01          	ldw	x,(OFST+1,sp)
10397  19af a601          	ld	a,#1
10398  19b1 e749          	ld	(73,x),a
10399                     ; 2598 		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPE with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10401  19b3 1e01          	ldw	x,(OFST+1,sp)
10402  19b5 e649          	ld	a,(73,x)
10403  19b7 88            	push	a
10404  19b8 ae24c1        	ldw	x,#L7444
10405  19bb 8d000000      	callf	f_printf
10407  19bf 84            	pop	a
10408  19c0               L5444:
10409                     ; 2601 	cbus_send_mscmsg(it6802);
10411  19c0 1e01          	ldw	x,(OFST+1,sp)
10412  19c2 8d361c36      	callf	L352f_cbus_send_mscmsg
10414                     ; 2602 	SwitchRCPResult(it6802,RCP_Result_Finish);
10416  19c6 4b04          	push	#4
10417  19c8 1e02          	ldw	x,(OFST+2,sp)
10418  19ca 8d172917      	callf	L723f_SwitchRCPResult
10420  19ce 84            	pop	a
10421                     ; 2604 }
10424  19cf 85            	popw	x
10425  19d0 87            	retf
10465                     ; 2609 static void mhl_parse_RAPkey(struct it6802_dev_data *it6802)
10465                     ; 2610 {
10466                     	switch	.text
10467  19d1               L732f_mhl_parse_RAPkey:
10469  19d1 89            	pushw	x
10470       00000000      OFST:	set	0
10473                     ; 2613 	it6802->txmsgdata[0] = MSG_RAPK;
10475  19d2 a621          	ld	a,#33
10476  19d4 e748          	ld	(72,x),a
10477                     ; 2615 	if( SuppRAPCode[it6802->rxmsgdata[1]]) {
10479  19d6 e64b          	ld	a,(75,x)
10480  19d8 5f            	clrw	x
10481  19d9 97            	ld	xl,a
10482  19da 724d00f3      	tnz	(_SuppRAPCode,x)
10483  19de 2706          	jreq	L1054
10484                     ; 2616 		it6802->txmsgdata[1] = 0x00;
10486  19e0 1e01          	ldw	x,(OFST+1,sp)
10487  19e2 6f49          	clr	(73,x)
10489  19e4 2006          	jra	L3054
10490  19e6               L1054:
10491                     ; 2619 		it6802->txmsgdata[1] = 0x02;
10493  19e6 1e01          	ldw	x,(OFST+1,sp)
10494  19e8 a602          	ld	a,#2
10495  19ea e749          	ld	(73,x),a
10496  19ec               L3054:
10497                     ; 2622 	switch( it6802->rxmsgdata[1] ) {
10499  19ec 1e01          	ldw	x,(OFST+1,sp)
10500  19ee e64b          	ld	a,(75,x)
10502                     ; 2638 		MHL_MSC_DEBUG_PRINTF(printf("Send a RAPK with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10503  19f0 4d            	tnz	a
10504  19f1 2729          	jreq	L1544
10505  19f3 a010          	sub	a,#16
10506  19f5 272e          	jreq	L3544
10507  19f7 4a            	dec	a
10508  19f8 2741          	jreq	L5544
10509  19fa               L7544:
10510                     ; 2634 		default  :
10510                     ; 2635 
10510                     ; 2636 		it6802->txmsgdata[1] = 0x01;
10512  19fa 1e01          	ldw	x,(OFST+1,sp)
10513  19fc a601          	ld	a,#1
10514  19fe e749          	ld	(73,x),a
10515                     ; 2637 		MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP action code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10517  1a00 1e01          	ldw	x,(OFST+1,sp)
10518  1a02 e64b          	ld	a,(75,x)
10519  1a04 88            	push	a
10520  1a05 ae2453        	ldw	x,#L7154
10521  1a08 8d000000      	callf	f_printf
10523  1a0c 84            	pop	a
10524                     ; 2638 		MHL_MSC_DEBUG_PRINTF(printf("Send a RAPK with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10526  1a0d 1e01          	ldw	x,(OFST+1,sp)
10527  1a0f e649          	ld	a,(73,x)
10528  1a11 88            	push	a
10529  1a12 ae242b        	ldw	x,#L1254
10530  1a15 8d000000      	callf	f_printf
10532  1a19 84            	pop	a
10533  1a1a 2033          	jra	L7054
10534  1a1c               L1544:
10535                     ; 2623 		case 0x00:
10535                     ; 2624 			MHL_MSC_DEBUG_PRINTF(printf("Poll\r\n"));
10537  1a1c ae24ba        	ldw	x,#L1154
10538  1a1f 8d000000      	callf	f_printf
10540                     ; 2625 			break;
10542  1a23 202a          	jra	L7054
10543  1a25               L3544:
10544                     ; 2626 		case 0x10:
10544                     ; 2627 			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_ON state\r\n"));
10546  1a25 ae249d        	ldw	x,#L3154
10547  1a28 8d000000      	callf	f_printf
10549                     ; 2628 			hdmirxset(0x61, 0x10, 0x00);
10551  1a2c 4b00          	push	#0
10552  1a2e ae0010        	ldw	x,#16
10553  1a31 a661          	ld	a,#97
10554  1a33 95            	ld	xh,a
10555  1a34 8da500a5      	callf	L76f_hdmirxset
10557  1a38 84            	pop	a
10558                     ; 2629 			break;
10560  1a39 2014          	jra	L7054
10561  1a3b               L5544:
10562                     ; 2630 		case 0x11:
10562                     ; 2631 			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_OFF state\r\n"));
10564  1a3b ae247f        	ldw	x,#L5154
10565  1a3e 8d000000      	callf	f_printf
10567                     ; 2632 			hdmirxset(0x61, 0x10, 0x10);
10569  1a42 4b10          	push	#16
10570  1a44 ae0010        	ldw	x,#16
10571  1a47 a661          	ld	a,#97
10572  1a49 95            	ld	xh,a
10573  1a4a 8da500a5      	callf	L76f_hdmirxset
10575  1a4e 84            	pop	a
10576                     ; 2633 			break;
10578  1a4f               L7054:
10579                     ; 2641 	cbus_send_mscmsg(it6802);
10581  1a4f 1e01          	ldw	x,(OFST+1,sp)
10582  1a51 8d361c36      	callf	L352f_cbus_send_mscmsg
10584                     ; 2642 }
10587  1a55 85            	popw	x
10588  1a56 87            	retf
10631                     ; 2683 static void mhl_read_mscmsg( struct it6802_dev_data *it6802 )
10631                     ; 2684 {
10632                     	switch	.text
10633  1a57               L542f_mhl_read_mscmsg:
10635  1a57 89            	pushw	x
10636       00000000      OFST:	set	0
10639                     ; 2688 	it6802->rxmsgdata[0] = mhlrxrd(0x60);
10641  1a58 a660          	ld	a,#96
10642  1a5a 8d030103      	callf	L37f_mhlrxrd
10644  1a5e 1e01          	ldw	x,(OFST+1,sp)
10645  1a60 e74a          	ld	(74,x),a
10646                     ; 2689 	it6802->rxmsgdata[1] = mhlrxrd(0x61);
10648  1a62 a661          	ld	a,#97
10649  1a64 8d030103      	callf	L37f_mhlrxrd
10651  1a68 1e01          	ldw	x,(OFST+1,sp)
10652  1a6a e74b          	ld	(75,x),a
10653                     ; 2691     switch( it6802->rxmsgdata[0] ) {
10655  1a6c 1e01          	ldw	x,(OFST+1,sp)
10656  1a6e e64a          	ld	a,(74,x)
10658                     ; 2759 			SwitchRCPResult(it6802,RCP_Result_Finish);
10659  1a70 a002          	sub	a,#2
10660  1a72 2751          	jreq	L3254
10661  1a74 a00e          	sub	a,#14
10662  1a76 2604ac011b01  	jreq	L3354
10663  1a7c 4a            	dec	a
10664  1a7d 2604ac0b1b0b  	jreq	L5354
10665  1a83 4a            	dec	a
10666  1a84 2604          	jrne	L053
10667  1a86 ac271b27      	jpf	L7354
10668  1a8a               L053:
10669  1a8a a00e          	sub	a,#14
10670  1a8c 2604          	jrne	L253
10671  1a8e ac611b61      	jpf	L1554
10672  1a92               L253:
10673  1a92 4a            	dec	a
10674  1a93 2604          	jrne	L453
10675  1a95 ac691b69      	jpf	L3554
10676  1a99               L453:
10677  1a99               L7654:
10678                     ; 2754 		default :
10678                     ; 2755 			MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG sub-command code 0x%02X !!!\r\n", it6802->rxmsgdata[0]));
10680  1a99 1e01          	ldw	x,(OFST+1,sp)
10681  1a9b e64a          	ld	a,(74,x)
10682  1a9d 88            	push	a
10683  1a9e ae2298        	ldw	x,#L1664
10684  1aa1 8d000000      	callf	f_printf
10686  1aa5 84            	pop	a
10687                     ; 2756 			it6802->txmsgdata[0] = MSG_MSGE;
10689  1aa6 1e01          	ldw	x,(OFST+1,sp)
10690  1aa8 a602          	ld	a,#2
10691  1aaa e748          	ld	(72,x),a
10692                     ; 2757 			it6802->txmsgdata[1] = 0x01;
10694  1aac 1e01          	ldw	x,(OFST+1,sp)
10695  1aae a601          	ld	a,#1
10696  1ab0 e749          	ld	(73,x),a
10697                     ; 2758 			cbus_send_mscmsg(it6802);
10699  1ab2 1e01          	ldw	x,(OFST+1,sp)
10700  1ab4 8d361c36      	callf	L352f_cbus_send_mscmsg
10702                     ; 2759 			SwitchRCPResult(it6802,RCP_Result_Finish);
10704  1ab8 4b04          	push	#4
10705  1aba 1e02          	ldw	x,(OFST+2,sp)
10706  1abc 8d172917      	callf	L723f_SwitchRCPResult
10708  1ac0 84            	pop	a
10709  1ac1 acb11bb1      	jpf	L3164
10710  1ac5               L3254:
10711                     ; 2692 		case MSG_MSGE :
10711                     ; 2693 			MHL_MSC_DEBUG_PRINTF(printf("RX MSGE => "));
10713  1ac5 ae241f        	ldw	x,#L5164
10714  1ac8 8d000000      	callf	f_printf
10716                     ; 2694 			switch( it6802->rxmsgdata[1] ) {
10718  1acc 1e01          	ldw	x,(OFST+1,sp)
10719  1ace e64b          	ld	a,(75,x)
10721                     ; 2701 				default  :
10721                     ; 2702 					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10722  1ad0 4d            	tnz	a
10723  1ad1 2714          	jreq	L5254
10724  1ad3 4a            	dec	a
10725  1ad4 271c          	jreq	L7254
10726  1ad6               L1354:
10729  1ad6 1e01          	ldw	x,(OFST+1,sp)
10730  1ad8 e64b          	ld	a,(75,x)
10731  1ada 88            	push	a
10732  1adb ae23be        	ldw	x,#L7264
10733  1ade 8d000000      	callf	f_printf
10735  1ae2 84            	pop	a
10736  1ae3 acb11bb1      	jpf	L3164
10737  1ae7               L5254:
10738                     ; 2695 				case 0x00:
10738                     ; 2696 					MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n"));
10740  1ae7 ae2414        	ldw	x,#L3264
10741  1aea 8d000000      	callf	f_printf
10743                     ; 2697 					break;
10745  1aee acb11bb1      	jpf	L3164
10746  1af2               L7254:
10747                     ; 2698 				case 0x01:
10747                     ; 2699 					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Invalid sub-command code !!!\r\n"));
10749  1af2 ae23ee        	ldw	x,#L5264
10750  1af5 8d000000      	callf	f_printf
10752                     ; 2700 					break;
10754  1af9 acb11bb1      	jpf	L3164
10755  1afd               L1264:
10756                     ; 2704 			 break;
10758  1afd acb11bb1      	jpf	L3164
10759  1b01               L3354:
10760                     ; 2706 		case MSG_RCP  :
10760                     ; 2707 			mhl_parse_RCPkey(it6802);
10762  1b01 1e01          	ldw	x,(OFST+1,sp)
10763  1b03 8d791979      	callf	L532f_mhl_parse_RCPkey
10765                     ; 2708 			break;
10767  1b07 acb11bb1      	jpf	L3164
10768  1b0b               L5354:
10769                     ; 2709 		case MSG_RCPK :
10769                     ; 2710 			 MHL_MSC_DEBUG_PRINTF(printf("RX RCPK  => "));
10771  1b0b ae23b1        	ldw	x,#L1364
10772  1b0e 8d000000      	callf	f_printf
10774                     ; 2711 			parse_rcpkey( it6802->rxmsgdata[1]);
10776  1b12 1e01          	ldw	x,(OFST+1,sp)
10777  1b14 e64b          	ld	a,(75,x)
10778  1b16 8d751575      	callf	L332f_parse_rcpkey
10780                     ; 2712 			SwitchRCPResult(it6802,RCP_Result_Finish);
10782  1b1a 4b04          	push	#4
10783  1b1c 1e02          	ldw	x,(OFST+2,sp)
10784  1b1e 8d172917      	callf	L723f_SwitchRCPResult
10786  1b22 84            	pop	a
10787                     ; 2713 			 break;
10789  1b23 acb11bb1      	jpf	L3164
10790  1b27               L7354:
10791                     ; 2714 		case MSG_RCPE :
10791                     ; 2715 			 switch( it6802->rxmsgdata[1] ){
10793  1b27 1e01          	ldw	x,(OFST+1,sp)
10794  1b29 e64b          	ld	a,(75,x)
10796                     ; 2719 				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RCP status code !!!\r\n"));
10797  1b2b 4d            	tnz	a
10798  1b2c 270f          	jreq	L1454
10799  1b2e 4a            	dec	a
10800  1b2f 2715          	jreq	L3454
10801  1b31 4a            	dec	a
10802  1b32 271b          	jreq	L5454
10803  1b34               L7454:
10806  1b34 ae2351        	ldw	x,#L3464
10807  1b37 8d000000      	callf	f_printf
10809  1b3b 2019          	jra	L5364
10810  1b3d               L1454:
10811                     ; 2716 				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
10813  1b3d ae2414        	ldw	x,#L3264
10814  1b40 8d000000      	callf	f_printf
10818  1b44 2010          	jra	L5364
10819  1b46               L3454:
10820                     ; 2717 				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Ineffective RCP Key Code !!!\r\n")); break;
10822  1b46 ae238b        	ldw	x,#L7364
10823  1b49 8d000000      	callf	f_printf
10827  1b4d 2007          	jra	L5364
10828  1b4f               L5454:
10829                     ; 2718 				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
10831  1b4f ae2376        	ldw	x,#L1464
10832  1b52 8d000000      	callf	f_printf
10836  1b56               L5364:
10837                     ; 2721 			SwitchRCPResult(it6802,RCP_Result_Finish);
10839  1b56 4b04          	push	#4
10840  1b58 1e02          	ldw	x,(OFST+2,sp)
10841  1b5a 8d172917      	callf	L723f_SwitchRCPResult
10843  1b5e 84            	pop	a
10844                     ; 2723 			 break;
10846  1b5f 2050          	jra	L3164
10847  1b61               L1554:
10848                     ; 2726 		case MSG_RAP  :
10848                     ; 2727 			mhl_parse_RAPkey(it6802);
10850  1b61 1e01          	ldw	x,(OFST+1,sp)
10851  1b63 8dd119d1      	callf	L732f_mhl_parse_RAPkey
10853                     ; 2728 			break;
10855  1b67 2048          	jra	L3164
10856  1b69               L3554:
10857                     ; 2729 		case MSG_RAPK :
10857                     ; 2730 			 MHL_MSC_DEBUG_PRINTF(printf("RX RAPK  => "));
10859  1b69 ae2344        	ldw	x,#L5464
10860  1b6c 8d000000      	callf	f_printf
10862                     ; 2731 			 switch( it6802->rxmsgdata[1] ) {
10864  1b70 1e01          	ldw	x,(OFST+1,sp)
10865  1b72 e64b          	ld	a,(75,x)
10867                     ; 2736 				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10868  1b74 4d            	tnz	a
10869  1b75 2718          	jreq	L5554
10870  1b77 4a            	dec	a
10871  1b78 271e          	jreq	L7554
10872  1b7a 4a            	dec	a
10873  1b7b 2724          	jreq	L1654
10874  1b7d 4a            	dec	a
10875  1b7e 272a          	jreq	L3654
10876  1b80               L5654:
10879  1b80 1e01          	ldw	x,(OFST+1,sp)
10880  1b82 e64b          	ld	a,(75,x)
10881  1b84 88            	push	a
10882  1b85 ae22cd        	ldw	x,#L7564
10883  1b88 8d000000      	callf	f_printf
10885  1b8c 84            	pop	a
10886  1b8d 2022          	jra	L3164
10887  1b8f               L5554:
10888                     ; 2732 				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
10890  1b8f ae2414        	ldw	x,#L3264
10891  1b92 8d000000      	callf	f_printf
10895  1b96 2019          	jra	L3164
10896  1b98               L7554:
10897                     ; 2733 				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unrecognized Action Code !!!\r\n")); break;
10899  1b98 ae231e        	ldw	x,#L3564
10900  1b9b 8d000000      	callf	f_printf
10904  1b9f 2010          	jra	L3164
10905  1ba1               L1654:
10906                     ; 2734 				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unsupported Action Code !!!\r\n")); break;
10908  1ba1 ae22f9        	ldw	x,#L5564
10909  1ba4 8d000000      	callf	f_printf
10913  1ba8 2007          	jra	L3164
10914  1baa               L3654:
10915                     ; 2735 				case 0x03: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
10917  1baa ae2376        	ldw	x,#L1464
10918  1bad 8d000000      	callf	f_printf
10922  1bb1               L1564:
10923                     ; 2738 			break;
10925  1bb1               L3164:
10926                     ; 2761 }
10929  1bb1 85            	popw	x
10930  1bb2 87            	retf
10970                     ; 2769 static int mscwait( void )
10970                     ; 2770 {
10971                     	switch	.text
10972  1bb3               L742f_mscwait:
10974  1bb3 5203          	subw	sp,#3
10975       00000003      OFST:	set	3
10978                     ; 2774      cbuswaitcnt = 0;
10980  1bb5 5f            	clrw	x
10981  1bb6 1f02          	ldw	(OFST-1,sp),x
10982  1bb8               L1074:
10983                     ; 2776          cbuswaitcnt++;
10985  1bb8 1e02          	ldw	x,(OFST-1,sp)
10986  1bba 1c0001        	addw	x,#1
10987  1bbd 1f02          	ldw	(OFST-1,sp),x
10988                     ; 2777 	delay1ms(CBUSWAITTIME);
10990  1bbf ae000a        	ldw	x,#10
10991  1bc2 8d000000      	callf	f_IR_DelayNMiliseconds
10993                     ; 2779      } while( (mhlrxrd(0x1C)&0x02)==0x02 && cbuswaitcnt<CBUSWAITNUM   );
10995  1bc6 a61c          	ld	a,#28
10996  1bc8 8d030103      	callf	L37f_mhlrxrd
10998  1bcc a402          	and	a,#2
10999  1bce a102          	cp	a,#2
11000  1bd0 2608          	jrne	L7074
11002  1bd2 9c            	rvf
11003  1bd3 1e02          	ldw	x,(OFST-1,sp)
11004  1bd5 a3000a        	cpw	x,#10
11005  1bd8 2fde          	jrslt	L1074
11006  1bda               L7074:
11007                     ; 2782      MHL05 = mhlrxrd(0x05);
11009  1bda a605          	ld	a,#5
11010  1bdc 8d030103      	callf	L37f_mhlrxrd
11012  1be0 6b01          	ld	(OFST-2,sp),a
11013                     ; 2783      if( (cbuswaitcnt==CBUSWAITNUM) || MHL05&0x02 ) {
11015  1be2 1e02          	ldw	x,(OFST-1,sp)
11016  1be4 a3000a        	cpw	x,#10
11017  1be7 2706          	jreq	L3174
11019  1be9 7b01          	ld	a,(OFST-2,sp)
11020  1beb a502          	bcp	a,#2
11021  1bed 2705          	jreq	L1174
11022  1bef               L3174:
11023                     ; 2784  	return FAIL;
11025  1bef aeffff        	ldw	x,#65535
11027  1bf2 2001          	jra	L063
11028  1bf4               L1174:
11029                     ; 2787          return SUCCESS;
11031  1bf4 5f            	clrw	x
11033  1bf5               L063:
11035  1bf5 5b03          	addw	sp,#3
11036  1bf7 87            	retf
11098                     ; 2798 static int mscfire( int offset, int wdata )
11098                     ; 2799 {
11099                     	switch	.text
11100  1bf8               L152f_mscfire:
11102  1bf8 89            	pushw	x
11103  1bf9 5206          	subw	sp,#6
11104       00000006      OFST:	set	6
11107                     ; 2800 	int  fwmodeflag = FALSE;
11109                     ; 2801 	int  wrburstflag = FALSE;
11111                     ; 2806 	if( offset==0x51)
11113  1bfb a30051        	cpw	x,#81
11114  1bfe 260e          	jrne	L3474
11115                     ; 2808 		if(wdata==0x80 )
11117  1c00 1e0c          	ldw	x,(OFST+6,sp)
11118  1c02 a30080        	cpw	x,#128
11119  1c05 2600          	jrne	L5474
11120                     ; 2809 			fwmodeflag  = TRUE;
11122  1c07               L5474:
11123                     ; 2810 		if(wdata==0x01 )
11125  1c07 1e0c          	ldw	x,(OFST+6,sp)
11126  1c09 a30001        	cpw	x,#1
11127  1c0c 2600          	jrne	L3474
11128                     ; 2811 			wrburstflag = TRUE;
11130  1c0e               L3474:
11131                     ; 2815 	mhlrxwr((unsigned char)offset, (unsigned char)wdata);
11133  1c0e 7b0d          	ld	a,(OFST+7,sp)
11134  1c10 97            	ld	xl,a
11135  1c11 7b08          	ld	a,(OFST+2,sp)
11136  1c13 95            	ld	xh,a
11137  1c14 8d3a013a      	callf	L57f_mhlrxwr
11139                     ; 2817 	mscreqsts = mscwait();
11141  1c18 8db31bb3      	callf	L742f_mscwait
11143  1c1c 1f05          	ldw	(OFST-1,sp),x
11144                     ; 2818 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-MSC FIRE() %ld  \r\n",(int) mscreqsts));
11146  1c1e 1e05          	ldw	x,(OFST-1,sp)
11147  1c20 89            	pushw	x
11148  1c21 ae227e        	ldw	x,#L1574
11149  1c24 8d000000      	callf	f_printf
11151  1c28 85            	popw	x
11152                     ; 2820 	return (mscreqsts==SUCCESS)?SUCCESS:FAIL;
11154  1c29 1e05          	ldw	x,(OFST-1,sp)
11155  1c2b 2603          	jrne	L463
11156  1c2d 5f            	clrw	x
11157  1c2e 2003          	jra	L663
11158  1c30               L463:
11159  1c30 aeffff        	ldw	x,#65535
11160  1c33               L663:
11163  1c33 5b08          	addw	sp,#8
11164  1c35 87            	retf
11202                     ; 2825 static void cbus_send_mscmsg( struct it6802_dev_data *it6802 )
11202                     ; 2826 {
11203                     	switch	.text
11204  1c36               L352f_cbus_send_mscmsg:
11206  1c36 89            	pushw	x
11207       00000000      OFST:	set	0
11210                     ; 2827 	mhlrxwr(0x54, it6802->txmsgdata[0]);
11212  1c37 e648          	ld	a,(72,x)
11213  1c39 97            	ld	xl,a
11214  1c3a a654          	ld	a,#84
11215  1c3c 95            	ld	xh,a
11216  1c3d 8d3a013a      	callf	L57f_mhlrxwr
11218                     ; 2828 	mhlrxwr(0x55, it6802->txmsgdata[1]);
11220  1c41 1e01          	ldw	x,(OFST+1,sp)
11221  1c43 e649          	ld	a,(73,x)
11222  1c45 97            	ld	xl,a
11223  1c46 a655          	ld	a,#85
11224  1c48 95            	ld	xh,a
11225  1c49 8d3a013a      	callf	L57f_mhlrxwr
11227                     ; 2829 	mscfire(0x51, 0x02);
11229  1c4d ae0002        	ldw	x,#2
11230  1c50 89            	pushw	x
11231  1c51 ae0051        	ldw	x,#81
11232  1c54 8df81bf8      	callf	L152f_mscfire
11234  1c58 85            	popw	x
11235                     ; 2830 }
11238  1c59 85            	popw	x
11239  1c5a 87            	retf
11274                     ; 2838 static void parse_devcap(unsigned char *devcap )
11274                     ; 2839 {
11275                     	switch	.text
11276  1c5b               L552f_parse_devcap:
11278  1c5b 89            	pushw	x
11279       00000000      OFST:	set	0
11282                     ; 2840     MHLRX_DEBUG_PRINTF(printf("\r\nParsing Device Capability Register ...\r\n"));
11284  1c5c ae2253        	ldw	x,#L3205
11285  1c5f 8d000000      	callf	f_printf
11287                     ; 2841     MHLRX_DEBUG_PRINTF(printf("DEV_STATE=%02bX\r\n", devcap[0]));
11289  1c63 1e01          	ldw	x,(OFST+1,sp)
11290  1c65 f6            	ld	a,(x)
11291  1c66 88            	push	a
11292  1c67 ae2241        	ldw	x,#L5205
11293  1c6a 8d000000      	callf	f_printf
11295  1c6e 84            	pop	a
11296                     ; 2843     MHLRX_DEBUG_PRINTF(printf("MHL_VER_MAJOR/MINOR=%02bX\r\n", devcap[1]));
11298  1c6f 1e01          	ldw	x,(OFST+1,sp)
11299  1c71 e601          	ld	a,(1,x)
11300  1c73 88            	push	a
11301  1c74 ae2225        	ldw	x,#L7205
11302  1c77 8d000000      	callf	f_printf
11304  1c7b 84            	pop	a
11305                     ; 2845     MHLRX_DEBUG_PRINTF(printf("DEV_TYPE="));
11307  1c7c ae221b        	ldw	x,#L1305
11308  1c7f 8d000000      	callf	f_printf
11310                     ; 2846     switch(devcap[2]&0x0F){
11312  1c83 1e01          	ldw	x,(OFST+1,sp)
11313  1c85 e602          	ld	a,(2,x)
11314  1c87 a40f          	and	a,#15
11316                     ; 2851         default: MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved for future use !!! ")); break;
11317  1c89 4d            	tnz	a
11318  1c8a 2712          	jreq	L3774
11319  1c8c 4a            	dec	a
11320  1c8d 2718          	jreq	L5774
11321  1c8f 4a            	dec	a
11322  1c90 271e          	jreq	L7774
11323  1c92 4a            	dec	a
11324  1c93 2724          	jreq	L1005
11325  1c95               L3005:
11328  1c95 ae218a        	ldw	x,#L7405
11329  1c98 8d000000      	callf	f_printf
11333  1c9c 2022          	jra	L5305
11334  1c9e               L3774:
11335                     ; 2847         case 0: MHLRX_DEBUG_PRINTF(printf("ERROR: DEV_TYPE at least one bit must be set !!!\r\n")); break;
11337  1c9e ae21e8        	ldw	x,#L7305
11338  1ca1 8d000000      	callf	f_printf
11342  1ca5 2019          	jra	L5305
11343  1ca7               L5774:
11344                     ; 2848         case 1: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Sink, ")); break;
11346  1ca7 ae21d6        	ldw	x,#L1405
11347  1caa 8d000000      	callf	f_printf
11351  1cae 2010          	jra	L5305
11352  1cb0               L7774:
11353                     ; 2849         case 2: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Source, ")); break;
11355  1cb0 ae21c2        	ldw	x,#L3405
11356  1cb3 8d000000      	callf	f_printf
11360  1cb7 2007          	jra	L5305
11361  1cb9               L1005:
11362                     ; 2850         case 3: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Dongle, ")); break;
11364  1cb9 ae21ae        	ldw	x,#L5405
11365  1cbc 8d000000      	callf	f_printf
11369  1cc0               L5305:
11370                     ; 2853     MHLRX_DEBUG_PRINTF(printf("POW = %02bX\r\n", (devcap[2]&0x10)>>4));
11372  1cc0 1e01          	ldw	x,(OFST+1,sp)
11373  1cc2 e602          	ld	a,(2,x)
11374  1cc4 a410          	and	a,#16
11375  1cc6 4e            	swap	a
11376  1cc7 a40f          	and	a,#15
11377  1cc9 5f            	clrw	x
11378  1cca 97            	ld	xl,a
11379  1ccb 89            	pushw	x
11380  1ccc ae217c        	ldw	x,#L1505
11381  1ccf 8d000000      	callf	f_printf
11383  1cd3 85            	popw	x
11384                     ; 2854     MHLRX_DEBUG_PRINTF(printf("PLIM = %02bX\r\n", (devcap[2]&0x60)>>5));
11386  1cd4 1e01          	ldw	x,(OFST+1,sp)
11387  1cd6 e602          	ld	a,(2,x)
11388  1cd8 a460          	and	a,#96
11389  1cda 4e            	swap	a
11390  1cdb 44            	srl	a
11391  1cdc a407          	and	a,#7
11392  1cde 5f            	clrw	x
11393  1cdf 97            	ld	xl,a
11394  1ce0 89            	pushw	x
11395  1ce1 ae216d        	ldw	x,#L3505
11396  1ce4 8d000000      	callf	f_printf
11398  1ce8 85            	popw	x
11399                     ; 2856     MHLRX_DEBUG_PRINTF(printf("ADOPTER_ID_H=0x%02bX, ADOPTER_ID_L=0x%02bX\r\n", devcap[3], devcap[4]));
11401  1ce9 1e01          	ldw	x,(OFST+1,sp)
11402  1ceb e604          	ld	a,(4,x)
11403  1ced 88            	push	a
11404  1cee 1e02          	ldw	x,(OFST+2,sp)
11405  1cf0 e603          	ld	a,(3,x)
11406  1cf2 88            	push	a
11407  1cf3 ae2140        	ldw	x,#L5505
11408  1cf6 8d000000      	callf	f_printf
11410  1cfa 85            	popw	x
11411                     ; 2858     MHLRX_DEBUG_PRINTF(printf("VID_LINK_MODE:\r\n"));
11413  1cfb ae212f        	ldw	x,#L7505
11414  1cfe 8d000000      	callf	f_printf
11416                     ; 2859     MHLRX_DEBUG_PRINTF(printf("    SUPP_RGB444   = %02bX\r\n", (devcap[5]&0x01)>>0));
11418  1d02 1e01          	ldw	x,(OFST+1,sp)
11419  1d04 e605          	ld	a,(5,x)
11420  1d06 5f            	clrw	x
11421  1d07 a401          	and	a,#1
11422  1d09 5f            	clrw	x
11423  1d0a 02            	rlwa	x,a
11424  1d0b 89            	pushw	x
11425  1d0c 01            	rrwa	x,a
11426  1d0d ae2113        	ldw	x,#L1605
11427  1d10 8d000000      	callf	f_printf
11429  1d14 85            	popw	x
11430                     ; 2860     MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR444 = %02bX\r\n", (devcap[5]&0x02)>>1));
11432  1d15 1e01          	ldw	x,(OFST+1,sp)
11433  1d17 e605          	ld	a,(5,x)
11434  1d19 a402          	and	a,#2
11435  1d1b 44            	srl	a
11436  1d1c 5f            	clrw	x
11437  1d1d 97            	ld	xl,a
11438  1d1e 89            	pushw	x
11439  1d1f ae20f7        	ldw	x,#L3605
11440  1d22 8d000000      	callf	f_printf
11442  1d26 85            	popw	x
11443                     ; 2861     MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR422 = %02bX\r\n", (devcap[5]&0x04)>>2));
11445  1d27 1e01          	ldw	x,(OFST+1,sp)
11446  1d29 e605          	ld	a,(5,x)
11447  1d2b a404          	and	a,#4
11448  1d2d 44            	srl	a
11449  1d2e 44            	srl	a
11450  1d2f 5f            	clrw	x
11451  1d30 97            	ld	xl,a
11452  1d31 89            	pushw	x
11453  1d32 ae20db        	ldw	x,#L5605
11454  1d35 8d000000      	callf	f_printf
11456  1d39 85            	popw	x
11457                     ; 2862     MHLRX_DEBUG_PRINTF(printf("    SUPP_PPIXEL   = %02bX\r\n", (devcap[5]&0x08)>>3));
11459  1d3a 1e01          	ldw	x,(OFST+1,sp)
11460  1d3c e605          	ld	a,(5,x)
11461  1d3e a408          	and	a,#8
11462  1d40 44            	srl	a
11463  1d41 44            	srl	a
11464  1d42 44            	srl	a
11465  1d43 5f            	clrw	x
11466  1d44 97            	ld	xl,a
11467  1d45 89            	pushw	x
11468  1d46 ae20bf        	ldw	x,#L7605
11469  1d49 8d000000      	callf	f_printf
11471  1d4d 85            	popw	x
11472                     ; 2863     MHLRX_DEBUG_PRINTF(printf("    SUPP_ISLANDS  = %02bX\r\n", (devcap[5]&0x10)>>4));
11474  1d4e 1e01          	ldw	x,(OFST+1,sp)
11475  1d50 e605          	ld	a,(5,x)
11476  1d52 a410          	and	a,#16
11477  1d54 4e            	swap	a
11478  1d55 a40f          	and	a,#15
11479  1d57 5f            	clrw	x
11480  1d58 97            	ld	xl,a
11481  1d59 89            	pushw	x
11482  1d5a ae20a3        	ldw	x,#L1705
11483  1d5d 8d000000      	callf	f_printf
11485  1d61 85            	popw	x
11486                     ; 2864     MHLRX_DEBUG_PRINTF(printf("    SUPP_VGA      = %02bX\r\n", (devcap[5]&0x20)>>5));
11488  1d62 1e01          	ldw	x,(OFST+1,sp)
11489  1d64 e605          	ld	a,(5,x)
11490  1d66 a420          	and	a,#32
11491  1d68 4e            	swap	a
11492  1d69 44            	srl	a
11493  1d6a a407          	and	a,#7
11494  1d6c 5f            	clrw	x
11495  1d6d 97            	ld	xl,a
11496  1d6e 89            	pushw	x
11497  1d6f ae2087        	ldw	x,#L3705
11498  1d72 8d000000      	callf	f_printf
11500  1d76 85            	popw	x
11501                     ; 2866     MHLRX_DEBUG_PRINTF(printf("AUD_LINK_MODE:\r\n"));
11503  1d77 ae2076        	ldw	x,#L5705
11504  1d7a 8d000000      	callf	f_printf
11506                     ; 2867     MHLRX_DEBUG_PRINTF(printf("    SUPP_2CH  = %02bX\r\n", (devcap[6]&0x01)>>0));
11508  1d7e 1e01          	ldw	x,(OFST+1,sp)
11509  1d80 e606          	ld	a,(6,x)
11510  1d82 5f            	clrw	x
11511  1d83 a401          	and	a,#1
11512  1d85 5f            	clrw	x
11513  1d86 02            	rlwa	x,a
11514  1d87 89            	pushw	x
11515  1d88 01            	rrwa	x,a
11516  1d89 ae205e        	ldw	x,#L7705
11517  1d8c 8d000000      	callf	f_printf
11519  1d90 85            	popw	x
11520                     ; 2868     MHLRX_DEBUG_PRINTF(printf("    SUPP_8CH  = %02bX\r\n", (devcap[6]&0x02)>>1));
11522  1d91 1e01          	ldw	x,(OFST+1,sp)
11523  1d93 e606          	ld	a,(6,x)
11524  1d95 a402          	and	a,#2
11525  1d97 44            	srl	a
11526  1d98 5f            	clrw	x
11527  1d99 97            	ld	xl,a
11528  1d9a 89            	pushw	x
11529  1d9b ae2046        	ldw	x,#L1015
11530  1d9e 8d000000      	callf	f_printf
11532  1da2 85            	popw	x
11533                     ; 2870     if( devcap[7]&0x80 ) {
11535  1da3 1e01          	ldw	x,(OFST+1,sp)
11536  1da5 e607          	ld	a,(7,x)
11537  1da7 a580          	bcp	a,#128
11538  1da9 2755          	jreq	L3015
11539                     ; 2871         MHLRX_DEBUG_PRINTF(printf("VIDEO_TYPE: \r\n"));
11541  1dab ae2037        	ldw	x,#L5015
11542  1dae 8d000000      	callf	f_printf
11544                     ; 2872         MHLRX_DEBUG_PRINTF(printf("    VT_GRAPHICS = %02bX\r\n", (devcap[7]&0x01)>>0));
11546  1db2 1e01          	ldw	x,(OFST+1,sp)
11547  1db4 e607          	ld	a,(7,x)
11548  1db6 5f            	clrw	x
11549  1db7 a401          	and	a,#1
11550  1db9 5f            	clrw	x
11551  1dba 02            	rlwa	x,a
11552  1dbb 89            	pushw	x
11553  1dbc 01            	rrwa	x,a
11554  1dbd ae201d        	ldw	x,#L7015
11555  1dc0 8d000000      	callf	f_printf
11557  1dc4 85            	popw	x
11558                     ; 2873         MHLRX_DEBUG_PRINTF(printf("    VT_PHOTO    = %02bX\r\n", (devcap[7]&0x02)>>1));
11560  1dc5 1e01          	ldw	x,(OFST+1,sp)
11561  1dc7 e607          	ld	a,(7,x)
11562  1dc9 a402          	and	a,#2
11563  1dcb 44            	srl	a
11564  1dcc 5f            	clrw	x
11565  1dcd 97            	ld	xl,a
11566  1dce 89            	pushw	x
11567  1dcf ae2003        	ldw	x,#L1115
11568  1dd2 8d000000      	callf	f_printf
11570  1dd6 85            	popw	x
11571                     ; 2874         MHLRX_DEBUG_PRINTF(printf("    VT_CINEMA   = %02bX\r\n", (devcap[7]&0x04)>>2));
11573  1dd7 1e01          	ldw	x,(OFST+1,sp)
11574  1dd9 e607          	ld	a,(7,x)
11575  1ddb a404          	and	a,#4
11576  1ddd 44            	srl	a
11577  1dde 44            	srl	a
11578  1ddf 5f            	clrw	x
11579  1de0 97            	ld	xl,a
11580  1de1 89            	pushw	x
11581  1de2 ae1fe9        	ldw	x,#L3115
11582  1de5 8d000000      	callf	f_printf
11584  1de9 85            	popw	x
11585                     ; 2875         MHLRX_DEBUG_PRINTF(printf("    VT_GAME     = %02bX\r\n", (devcap[7]&0x08)>>3));
11587  1dea 1e01          	ldw	x,(OFST+1,sp)
11588  1dec e607          	ld	a,(7,x)
11589  1dee a408          	and	a,#8
11590  1df0 44            	srl	a
11591  1df1 44            	srl	a
11592  1df2 44            	srl	a
11593  1df3 5f            	clrw	x
11594  1df4 97            	ld	xl,a
11595  1df5 89            	pushw	x
11596  1df6 ae1fcf        	ldw	x,#L5115
11597  1df9 8d000000      	callf	f_printf
11599  1dfd 85            	popw	x
11601  1dfe 2007          	jra	L7115
11602  1e00               L3015:
11603                     ; 2878         MHLRX_DEBUG_PRINTF(printf("Not Support VIDEO_TYPE !!!\r\n"));
11605  1e00 ae1fb2        	ldw	x,#L1215
11606  1e03 8d000000      	callf	f_printf
11608  1e07               L7115:
11609                     ; 2880     MHLRX_DEBUG_PRINTF(printf("LOG_DEV_MAP:\r\n"));
11611  1e07 ae1fa3        	ldw	x,#L3215
11612  1e0a 8d000000      	callf	f_printf
11614                     ; 2881     MHLRX_DEBUG_PRINTF(printf("    LD_DISPLAY  = %02bX\r\n", (devcap[8]&0x01)>>0));
11616  1e0e 1e01          	ldw	x,(OFST+1,sp)
11617  1e10 e608          	ld	a,(8,x)
11618  1e12 5f            	clrw	x
11619  1e13 a401          	and	a,#1
11620  1e15 5f            	clrw	x
11621  1e16 02            	rlwa	x,a
11622  1e17 89            	pushw	x
11623  1e18 01            	rrwa	x,a
11624  1e19 ae1f89        	ldw	x,#L5215
11625  1e1c 8d000000      	callf	f_printf
11627  1e20 85            	popw	x
11628                     ; 2882     MHLRX_DEBUG_PRINTF(printf("    LD_VIDEO    = %02bX\r\n", (devcap[8]&0x02)>>1));
11630  1e21 1e01          	ldw	x,(OFST+1,sp)
11631  1e23 e608          	ld	a,(8,x)
11632  1e25 a402          	and	a,#2
11633  1e27 44            	srl	a
11634  1e28 5f            	clrw	x
11635  1e29 97            	ld	xl,a
11636  1e2a 89            	pushw	x
11637  1e2b ae1f6f        	ldw	x,#L7215
11638  1e2e 8d000000      	callf	f_printf
11640  1e32 85            	popw	x
11641                     ; 2883     MHLRX_DEBUG_PRINTF(printf("    LD_AUDIO    = %02bX\r\n", (devcap[8]&0x04)>>2));
11643  1e33 1e01          	ldw	x,(OFST+1,sp)
11644  1e35 e608          	ld	a,(8,x)
11645  1e37 a404          	and	a,#4
11646  1e39 44            	srl	a
11647  1e3a 44            	srl	a
11648  1e3b 5f            	clrw	x
11649  1e3c 97            	ld	xl,a
11650  1e3d 89            	pushw	x
11651  1e3e ae1f55        	ldw	x,#L1315
11652  1e41 8d000000      	callf	f_printf
11654  1e45 85            	popw	x
11655                     ; 2884     MHLRX_DEBUG_PRINTF(printf("    LD_MEDIA    = %02bX\r\n", (devcap[8]&0x08)>>3));
11657  1e46 1e01          	ldw	x,(OFST+1,sp)
11658  1e48 e608          	ld	a,(8,x)
11659  1e4a a408          	and	a,#8
11660  1e4c 44            	srl	a
11661  1e4d 44            	srl	a
11662  1e4e 44            	srl	a
11663  1e4f 5f            	clrw	x
11664  1e50 97            	ld	xl,a
11665  1e51 89            	pushw	x
11666  1e52 ae1f3b        	ldw	x,#L3315
11667  1e55 8d000000      	callf	f_printf
11669  1e59 85            	popw	x
11670                     ; 2885     MHLRX_DEBUG_PRINTF(printf("    LD_TUNER    = %02bX\r\n", (devcap[8]&0x10)>>4));
11672  1e5a 1e01          	ldw	x,(OFST+1,sp)
11673  1e5c e608          	ld	a,(8,x)
11674  1e5e a410          	and	a,#16
11675  1e60 4e            	swap	a
11676  1e61 a40f          	and	a,#15
11677  1e63 5f            	clrw	x
11678  1e64 97            	ld	xl,a
11679  1e65 89            	pushw	x
11680  1e66 ae1f21        	ldw	x,#L5315
11681  1e69 8d000000      	callf	f_printf
11683  1e6d 85            	popw	x
11684                     ; 2886     MHLRX_DEBUG_PRINTF(printf("    LD_RECORD   = %02bX\r\n", (devcap[8]&0x20)>>5));
11686  1e6e 1e01          	ldw	x,(OFST+1,sp)
11687  1e70 e608          	ld	a,(8,x)
11688  1e72 a420          	and	a,#32
11689  1e74 4e            	swap	a
11690  1e75 44            	srl	a
11691  1e76 a407          	and	a,#7
11692  1e78 5f            	clrw	x
11693  1e79 97            	ld	xl,a
11694  1e7a 89            	pushw	x
11695  1e7b ae1f07        	ldw	x,#L7315
11696  1e7e 8d000000      	callf	f_printf
11698  1e82 85            	popw	x
11699                     ; 2887     MHLRX_DEBUG_PRINTF(printf("    LD_SPEAKER  = %02bX\r\n", (devcap[8]&0x40)>>6));
11701  1e83 1e01          	ldw	x,(OFST+1,sp)
11702  1e85 e608          	ld	a,(8,x)
11703  1e87 a440          	and	a,#64
11704  1e89 4e            	swap	a
11705  1e8a 44            	srl	a
11706  1e8b 44            	srl	a
11707  1e8c a403          	and	a,#3
11708  1e8e 5f            	clrw	x
11709  1e8f 97            	ld	xl,a
11710  1e90 89            	pushw	x
11711  1e91 ae1eed        	ldw	x,#L1415
11712  1e94 8d000000      	callf	f_printf
11714  1e98 85            	popw	x
11715                     ; 2888     MHLRX_DEBUG_PRINTF(printf("    LD_GUI      = %02bX\r\n", (devcap[8]&0x80)>>7));
11717  1e99 1e01          	ldw	x,(OFST+1,sp)
11718  1e9b e608          	ld	a,(8,x)
11719  1e9d a480          	and	a,#128
11720  1e9f 49            	rlc	a
11721  1ea0 4f            	clr	a
11722  1ea1 49            	rlc	a
11723  1ea2 5f            	clrw	x
11724  1ea3 97            	ld	xl,a
11725  1ea4 89            	pushw	x
11726  1ea5 ae1ed3        	ldw	x,#L3415
11727  1ea8 8d000000      	callf	f_printf
11729  1eac 85            	popw	x
11730                     ; 2890     MHLRX_DEBUG_PRINTF(printf("BANDWIDTH = %XMHz\r\n", devcap[9]*5));
11732  1ead 1e01          	ldw	x,(OFST+1,sp)
11733  1eaf e609          	ld	a,(9,x)
11734  1eb1 97            	ld	xl,a
11735  1eb2 a605          	ld	a,#5
11736  1eb4 42            	mul	x,a
11737  1eb5 89            	pushw	x
11738  1eb6 ae1ebf        	ldw	x,#L5415
11739  1eb9 8d000000      	callf	f_printf
11741  1ebd 85            	popw	x
11742                     ; 2892     MHLRX_DEBUG_PRINTF(printf("FEATURE_FLAG:\r\n"));
11744  1ebe ae1eaf        	ldw	x,#L7415
11745  1ec1 8d000000      	callf	f_printf
11747                     ; 2893     MHLRX_DEBUG_PRINTF(printf("         RCP_SUPPORT = %02bX\r\n", (devcap[10]&0x01)>>0));
11749  1ec5 1e01          	ldw	x,(OFST+1,sp)
11750  1ec7 e60a          	ld	a,(10,x)
11751  1ec9 5f            	clrw	x
11752  1eca a401          	and	a,#1
11753  1ecc 5f            	clrw	x
11754  1ecd 02            	rlwa	x,a
11755  1ece 89            	pushw	x
11756  1ecf 01            	rrwa	x,a
11757  1ed0 ae1e90        	ldw	x,#L1515
11758  1ed3 8d000000      	callf	f_printf
11760  1ed7 85            	popw	x
11761                     ; 2894     MHLRX_DEBUG_PRINTF(printf("         RAP_SUPPORT = %02bX\r\n", (devcap[10]&0x02)>>1));
11763  1ed8 1e01          	ldw	x,(OFST+1,sp)
11764  1eda e60a          	ld	a,(10,x)
11765  1edc a402          	and	a,#2
11766  1ede 44            	srl	a
11767  1edf 5f            	clrw	x
11768  1ee0 97            	ld	xl,a
11769  1ee1 89            	pushw	x
11770  1ee2 ae1e71        	ldw	x,#L3515
11771  1ee5 8d000000      	callf	f_printf
11773  1ee9 85            	popw	x
11774                     ; 2895     MHLRX_DEBUG_PRINTF(printf("         SP_SUPPORT  = %02bX\r\n", (devcap[10]&0x04)>>2));
11776  1eea 1e01          	ldw	x,(OFST+1,sp)
11777  1eec e60a          	ld	a,(10,x)
11778  1eee a404          	and	a,#4
11779  1ef0 44            	srl	a
11780  1ef1 44            	srl	a
11781  1ef2 5f            	clrw	x
11782  1ef3 97            	ld	xl,a
11783  1ef4 89            	pushw	x
11784  1ef5 ae1e52        	ldw	x,#L5515
11785  1ef8 8d000000      	callf	f_printf
11787  1efc 85            	popw	x
11788                     ; 2896     MHLRX_DEBUG_PRINTF(printf("    UCP_SEND_SUPPORT = %02bX\r\n", (devcap[10]&0x08)>>3));
11790  1efd 1e01          	ldw	x,(OFST+1,sp)
11791  1eff e60a          	ld	a,(10,x)
11792  1f01 a408          	and	a,#8
11793  1f03 44            	srl	a
11794  1f04 44            	srl	a
11795  1f05 44            	srl	a
11796  1f06 5f            	clrw	x
11797  1f07 97            	ld	xl,a
11798  1f08 89            	pushw	x
11799  1f09 ae1e33        	ldw	x,#L7515
11800  1f0c 8d000000      	callf	f_printf
11802  1f10 85            	popw	x
11803                     ; 2897     MHLRX_DEBUG_PRINTF(printf("    UCP_RECV_SUPPORT = %02bX\r\n", (devcap[10]&0x10)>>4));
11805  1f11 1e01          	ldw	x,(OFST+1,sp)
11806  1f13 e60a          	ld	a,(10,x)
11807  1f15 a410          	and	a,#16
11808  1f17 4e            	swap	a
11809  1f18 a40f          	and	a,#15
11810  1f1a 5f            	clrw	x
11811  1f1b 97            	ld	xl,a
11812  1f1c 89            	pushw	x
11813  1f1d ae1e14        	ldw	x,#L1615
11814  1f20 8d000000      	callf	f_printf
11816  1f24 85            	popw	x
11817                     ; 2899     MHLRX_DEBUG_PRINTF(printf("DEVICE_ID_H=0x%02bX, DEVICE_ID_L=0x%02bX\r\n", devcap[11], devcap[12]));
11819  1f25 1e01          	ldw	x,(OFST+1,sp)
11820  1f27 e60c          	ld	a,(12,x)
11821  1f29 88            	push	a
11822  1f2a 1e02          	ldw	x,(OFST+2,sp)
11823  1f2c e60b          	ld	a,(11,x)
11824  1f2e 88            	push	a
11825  1f2f ae1de9        	ldw	x,#L3615
11826  1f32 8d000000      	callf	f_printf
11828  1f36 85            	popw	x
11829                     ; 2901     if( devcap[10]&0x04 )
11831  1f37 1e01          	ldw	x,(OFST+1,sp)
11832  1f39 e60a          	ld	a,(10,x)
11833  1f3b a504          	bcp	a,#4
11834  1f3d 270d          	jreq	L5615
11835                     ; 2902         MHLRX_DEBUG_PRINTF(printf("SCRATCHPAD_SIZE = %02bX Bytes\r\n", devcap[13]));
11837  1f3f 1e01          	ldw	x,(OFST+1,sp)
11838  1f41 e60d          	ld	a,(13,x)
11839  1f43 88            	push	a
11840  1f44 ae1dc9        	ldw	x,#L7615
11841  1f47 8d000000      	callf	f_printf
11843  1f4b 84            	pop	a
11844  1f4c               L5615:
11845                     ; 2904     MHLRX_DEBUG_PRINTF(printf("INT_SIZE  = %02bX Bytes\r\n", (devcap[14]&0x0F)+1));
11847  1f4c 1e01          	ldw	x,(OFST+1,sp)
11848  1f4e e60e          	ld	a,(14,x)
11849  1f50 a40f          	and	a,#15
11850  1f52 5f            	clrw	x
11851  1f53 97            	ld	xl,a
11852  1f54 5c            	incw	x
11853  1f55 89            	pushw	x
11854  1f56 ae1daf        	ldw	x,#L1715
11855  1f59 8d000000      	callf	f_printf
11857  1f5d 85            	popw	x
11858                     ; 2905     MHLRX_DEBUG_PRINTF(printf("STAT_SIZE = %02bX Bytes\r\n", ((devcap[14]&0xF0)>>4)+1));
11860  1f5e 1e01          	ldw	x,(OFST+1,sp)
11861  1f60 e60e          	ld	a,(14,x)
11862  1f62 a4f0          	and	a,#240
11863  1f64 4e            	swap	a
11864  1f65 a40f          	and	a,#15
11865  1f67 5f            	clrw	x
11866  1f68 97            	ld	xl,a
11867  1f69 5c            	incw	x
11868  1f6a 89            	pushw	x
11869  1f6b ae1d95        	ldw	x,#L3715
11870  1f6e 8d000000      	callf	f_printf
11872  1f72 85            	popw	x
11873                     ; 2907 }
11876  1f73 85            	popw	x
11877  1f74 87            	retf
11925                     ; 2915 static int read_devcap_hw( struct it6802_dev_data *it6802 )
11925                     ; 2916 {
11926                     	switch	.text
11927  1f75               L752f_read_devcap_hw:
11929  1f75 89            	pushw	x
11930  1f76 88            	push	a
11931       00000001      OFST:	set	1
11934                     ; 2919 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-\r\nRead Device Capability Start ...\r\n"));
11936  1f77 ae1d69        	ldw	x,#L7125
11937  1f7a 8d000000      	callf	f_printf
11939                     ; 2921 	for(offset=0; offset<0x10; offset++) {
11941  1f7e 0f01          	clr	(OFST+0,sp)
11942  1f80               L1225:
11943                     ; 2923 		mhlrxwr(0x54, offset);
11945  1f80 7b01          	ld	a,(OFST+0,sp)
11946  1f82 97            	ld	xl,a
11947  1f83 a654          	ld	a,#84
11948  1f85 95            	ld	xh,a
11949  1f86 8d3a013a      	callf	L57f_mhlrxwr
11951                     ; 2925 		if( mscfire(0x50, 0x40) == SUCCESS )
11953  1f8a ae0040        	ldw	x,#64
11954  1f8d 89            	pushw	x
11955  1f8e ae0050        	ldw	x,#80
11956  1f91 8df81bf8      	callf	L152f_mscfire
11958  1f95 5b02          	addw	sp,#2
11959  1f97 a30000        	cpw	x,#0
11960  1f9a 264e          	jrne	L7225
11961                     ; 2926 			it6802->Mhl_devcap[offset] = mhlrxrd(0x56);
11963  1f9c 7b02          	ld	a,(OFST+1,sp)
11964  1f9e 97            	ld	xl,a
11965  1f9f 7b03          	ld	a,(OFST+2,sp)
11966  1fa1 1b01          	add	a,(OFST+0,sp)
11967  1fa3 2401          	jrnc	L673
11968  1fa5 5c            	incw	x
11969  1fa6               L673:
11970  1fa6 02            	rlwa	x,a
11971  1fa7 89            	pushw	x
11972  1fa8 a656          	ld	a,#86
11973  1faa 8d030103      	callf	L37f_mhlrxrd
11975  1fae 85            	popw	x
11976  1faf e738          	ld	(56,x),a
11978                     ; 2931 		IT6802_MHL_DEBUG_PRINTF(printf("IT6802-DevCap[%X]=%X\r\n", (int)offset, (int)it6802->Mhl_devcap[offset]));
11980  1fb1 7b02          	ld	a,(OFST+1,sp)
11981  1fb3 97            	ld	xl,a
11982  1fb4 7b03          	ld	a,(OFST+2,sp)
11983  1fb6 1b01          	add	a,(OFST+0,sp)
11984  1fb8 2401          	jrnc	L004
11985  1fba 5c            	incw	x
11986  1fbb               L004:
11987  1fbb 02            	rlwa	x,a
11988  1fbc e638          	ld	a,(56,x)
11989  1fbe 5f            	clrw	x
11990  1fbf 97            	ld	xl,a
11991  1fc0 89            	pushw	x
11992  1fc1 7b03          	ld	a,(OFST+2,sp)
11993  1fc3 5f            	clrw	x
11994  1fc4 97            	ld	xl,a
11995  1fc5 89            	pushw	x
11996  1fc6 ae1d52        	ldw	x,#L3325
11997  1fc9 8d000000      	callf	f_printf
11999  1fcd 5b04          	addw	sp,#4
12000                     ; 2921 	for(offset=0; offset<0x10; offset++) {
12002  1fcf 0c01          	inc	(OFST+0,sp)
12005  1fd1 7b01          	ld	a,(OFST+0,sp)
12006  1fd3 a110          	cp	a,#16
12007  1fd5 25a9          	jrult	L1225
12008                     ; 2934 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-Read Device Capability End...\r\n"));
12010  1fd7 ae1d2b        	ldw	x,#L5325
12011  1fda 8d000000      	callf	f_printf
12013                     ; 2936 	parse_devcap(&it6802->Mhl_devcap[0]);
12015  1fde 1e02          	ldw	x,(OFST+1,sp)
12016  1fe0 1c0038        	addw	x,#56
12017  1fe3 8d5b1c5b      	callf	L552f_parse_devcap
12019                     ; 2938 	return 0;
12021  1fe7 5f            	clrw	x
12023  1fe8 2003          	jra	L204
12024  1fea               L7225:
12025                     ; 2928 			return -1;
12027  1fea aeffff        	ldw	x,#65535
12029  1fed               L204:
12031  1fed 5b03          	addw	sp,#3
12032  1fef 87            	retf
12072                     ; 2943 static void set_mhlint( unsigned char offset, unsigned char field )
12072                     ; 2944 {
12073                     	switch	.text
12074  1ff0               L162f_set_mhlint:
12076  1ff0 89            	pushw	x
12077       00000000      OFST:	set	0
12080                     ; 2945     mhlrxwr(0x54, offset);
12082  1ff1 9e            	ld	a,xh
12083  1ff2 97            	ld	xl,a
12084  1ff3 a654          	ld	a,#84
12085  1ff5 95            	ld	xh,a
12086  1ff6 8d3a013a      	callf	L57f_mhlrxwr
12088                     ; 2946     mhlrxwr(0x55, field);
12090  1ffa 7b02          	ld	a,(OFST+2,sp)
12091  1ffc 97            	ld	xl,a
12092  1ffd a655          	ld	a,#85
12093  1fff 95            	ld	xh,a
12094  2000 8d3a013a      	callf	L57f_mhlrxwr
12096                     ; 2947     mscfire(0x50, 0x80);
12098  2004 ae0080        	ldw	x,#128
12099  2007 89            	pushw	x
12100  2008 ae0050        	ldw	x,#80
12101  200b 8df81bf8      	callf	L152f_mscfire
12103  200f 85            	popw	x
12104                     ; 2948 }
12107  2010 85            	popw	x
12108  2011 87            	retf
12148                     ; 2950 static void set_mhlsts( unsigned char offset, unsigned char status )
12148                     ; 2951 {
12149                     	switch	.text
12150  2012               L362f_set_mhlsts:
12152  2012 89            	pushw	x
12153       00000000      OFST:	set	0
12156                     ; 2952     mhlrxwr(0x54, offset);
12158  2013 9e            	ld	a,xh
12159  2014 97            	ld	xl,a
12160  2015 a654          	ld	a,#84
12161  2017 95            	ld	xh,a
12162  2018 8d3a013a      	callf	L57f_mhlrxwr
12164                     ; 2953     mhlrxwr(0x55, status);
12166  201c 7b02          	ld	a,(OFST+2,sp)
12167  201e 97            	ld	xl,a
12168  201f a655          	ld	a,#85
12169  2021 95            	ld	xh,a
12170  2022 8d3a013a      	callf	L57f_mhlrxwr
12172                     ; 2954     mscfire(0x50, 0x80);
12174  2026 ae0080        	ldw	x,#128
12175  2029 89            	pushw	x
12176  202a ae0050        	ldw	x,#80
12177  202d 8df81bf8      	callf	L152f_mscfire
12179  2031 85            	popw	x
12180                     ; 2955 }
12183  2032 85            	popw	x
12184  2033 87            	retf
12237                     ; 2957 static void write_burst(struct it6802_dev_data *it6802, int offset, int byteno )
12237                     ; 2958 {
12238                     	switch	.text
12239  2034               L562f_write_burst:
12241  2034 89            	pushw	x
12242       00000000      OFST:	set	0
12245                     ; 2959     set_wrburst_data(it6802, offset, byteno);
12247  2035 1e08          	ldw	x,(OFST+8,sp)
12248  2037 89            	pushw	x
12249  2038 1e08          	ldw	x,(OFST+8,sp)
12250  203a 89            	pushw	x
12251  203b 1e05          	ldw	x,(OFST+5,sp)
12252  203d 8d5d205d      	callf	L762f_set_wrburst_data
12254  2041 5b04          	addw	sp,#4
12255                     ; 2962     mscfire(0x51, 0x01);        // fire WRITE_BURST
12257  2043 ae0001        	ldw	x,#1
12258  2046 89            	pushw	x
12259  2047 ae0051        	ldw	x,#81
12260  204a 8df81bf8      	callf	L152f_mscfire
12262  204e 85            	popw	x
12263                     ; 2964     mhlrxset(0x00, 0x80, EnCBusDbgMode<<7);  // Restore setting
12265  204f 4b00          	push	#0
12266  2051 ae0080        	ldw	x,#128
12267  2054 4f            	clr	a
12268  2055 95            	ld	xh,a
12269  2056 8d7a017a      	callf	L77f_mhlrxset
12271  205a 84            	pop	a
12272                     ; 2965 }
12275  205b 85            	popw	x
12276  205c 87            	retf
12336                     ; 2967 static void set_wrburst_data(struct it6802_dev_data *it6802, int offset, int byteno )
12336                     ; 2968 {
12337                     	switch	.text
12338  205d               L762f_set_wrburst_data:
12340  205d 89            	pushw	x
12341  205e 89            	pushw	x
12342       00000002      OFST:	set	2
12345                     ; 2971     if( byteno<=2 || (offset+byteno)>16 ) {
12347  205f 9c            	rvf
12348  2060 1e0a          	ldw	x,(OFST+8,sp)
12349  2062 a30003        	cpw	x,#3
12350  2065 2f0b          	jrslt	L7435
12352  2067 9c            	rvf
12353  2068 1e08          	ldw	x,(OFST+6,sp)
12354  206a 72fb0a        	addw	x,(OFST+8,sp)
12355  206d a30011        	cpw	x,#17
12356  2070 2f09          	jrslt	L5435
12357  2072               L7435:
12358                     ; 2972         MHLRX_DEBUG_PRINTF(printf("ERROR: Set Burst Write Data Fail !!!\r\n"));
12360  2072 ae1d04        	ldw	x,#L1535
12361  2075 8d000000      	callf	f_printf
12363                     ; 2973         return;
12365  2079 203c          	jra	L414
12366  207b               L5435:
12367                     ; 2977     mhlrxwr(0x54, 0x40+offset);
12369  207b 7b09          	ld	a,(OFST+7,sp)
12370  207d ab40          	add	a,#64
12371  207f 97            	ld	xl,a
12372  2080 a654          	ld	a,#84
12373  2082 95            	ld	xh,a
12374  2083 8d3a013a      	callf	L57f_mhlrxwr
12376                     ; 2980         mhlrxset(0x00, 0x80, 0x00); // Disable CBUS Debug Mode when using Burst Write
12378  2087 4b00          	push	#0
12379  2089 ae0080        	ldw	x,#128
12380  208c 4f            	clr	a
12381  208d 95            	ld	xh,a
12382  208e 8d7a017a      	callf	L77f_mhlrxset
12384  2092 84            	pop	a
12385                     ; 2984             i = 2;
12387  2093 ae0002        	ldw	x,#2
12388  2096 1f01          	ldw	(OFST-1,sp),x
12390  2098 2016          	jra	L7535
12391  209a               L3535:
12392                     ; 2989             mhlrxwr(0x59, it6802->txscrpad[i]);
12394  209a 1e03          	ldw	x,(OFST+1,sp)
12395  209c 72fb01        	addw	x,(OFST-1,sp)
12396  209f e64c          	ld	a,(76,x)
12397  20a1 97            	ld	xl,a
12398  20a2 a659          	ld	a,#89
12399  20a4 95            	ld	xh,a
12400  20a5 8d3a013a      	callf	L57f_mhlrxwr
12402                     ; 2988 		for(; i<byteno; i++)
12404  20a9 1e01          	ldw	x,(OFST-1,sp)
12405  20ab 1c0001        	addw	x,#1
12406  20ae 1f01          	ldw	(OFST-1,sp),x
12407  20b0               L7535:
12410  20b0 9c            	rvf
12411  20b1 1e01          	ldw	x,(OFST-1,sp)
12412  20b3 130a          	cpw	x,(OFST+8,sp)
12413  20b5 2fe3          	jrslt	L3535
12414                     ; 2994 }
12415  20b7               L414:
12418  20b7 5b04          	addw	sp,#4
12419  20b9 87            	retf
12463                     ; 3000 static void v3d_burst1st(struct it6802_dev_data *it6802)
12463                     ; 3001 {
12464                     	switch	.text
12465  20ba               L172f_v3d_burst1st:
12467  20ba 89            	pushw	x
12468       00000000      OFST:	set	0
12471                     ; 3002      it6802->txscrpad[0]  = 0x00;
12473  20bb 6f4c          	clr	(76,x)
12474                     ; 3003 	 it6802->txscrpad[1]  = 0x11;
12476  20bd a611          	ld	a,#17
12477  20bf e74d          	ld	(77,x),a
12478                     ; 3004 	 it6802->txscrpad[2]  = 0xC1;
12480  20c1 a6c1          	ld	a,#193
12481  20c3 e74e          	ld	(78,x),a
12482                     ; 3005 	 it6802->txscrpad[3]  = 0x05;
12484  20c5 a605          	ld	a,#5
12485  20c7 e74f          	ld	(79,x),a
12486                     ; 3006 	 it6802->txscrpad[4]  = 0x01;
12488  20c9 a601          	ld	a,#1
12489  20cb e750          	ld	(80,x),a
12490                     ; 3007 	 it6802->txscrpad[5]  = 0x05;
12492  20cd a605          	ld	a,#5
12493  20cf e751          	ld	(81,x),a
12494                     ; 3008 	 it6802->txscrpad[6]  = 0x00;
12496  20d1 6f52          	clr	(82,x)
12497                     ; 3009 	 it6802->txscrpad[7]  = 0x07;
12499  20d3 a607          	ld	a,#7
12500  20d5 e753          	ld	(83,x),a
12501                     ; 3010 	 it6802->txscrpad[8]  = 0x00;
12503  20d7 6f54          	clr	(84,x)
12504                     ; 3011 	 it6802->txscrpad[9]  = 0x07;
12506  20d9 a607          	ld	a,#7
12507  20db e755          	ld	(85,x),a
12508                     ; 3012 	 it6802->txscrpad[10] = 0x00;
12510  20dd 6f56          	clr	(86,x)
12511                     ; 3013 	 it6802->txscrpad[11] = 0x07;
12513  20df a607          	ld	a,#7
12514  20e1 e757          	ld	(87,x),a
12515                     ; 3014 	 it6802->txscrpad[12] = 0x00;
12517  20e3 6f58          	clr	(88,x)
12518                     ; 3015 	 it6802->txscrpad[13] = 0x07;
12520  20e5 a607          	ld	a,#7
12521  20e7 e759          	ld	(89,x),a
12522                     ; 3016 	 it6802->txscrpad[14] = 0x00;
12524  20e9 6f5a          	clr	(90,x)
12525                     ; 3017 	 it6802->txscrpad[15] = 0x07;
12527  20eb a607          	ld	a,#7
12528  20ed e75b          	ld	(91,x),a
12529                     ; 3019 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12531  20ef e64c          	ld	a,(76,x)
12532  20f1 97            	ld	xl,a
12533  20f2 a65e          	ld	a,#94
12534  20f4 95            	ld	xh,a
12535  20f5 8d3a013a      	callf	L57f_mhlrxwr
12537                     ; 3020 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12539  20f9 1e01          	ldw	x,(OFST+1,sp)
12540  20fb e64d          	ld	a,(77,x)
12541  20fd 97            	ld	xl,a
12542  20fe a65f          	ld	a,#95
12543  2100 95            	ld	xh,a
12544  2101 8d3a013a      	callf	L57f_mhlrxwr
12546                     ; 3021 	 wrburstoff = 0;
12548  2105 725f0030      	clr	_wrburstoff
12549                     ; 3022 	 wrburstnum = 16;
12551  2109 3510002f      	mov	_wrburstnum,#16
12552                     ; 3023 	 write_burst(it6802,wrburstoff, wrburstnum);
12554  210d ae0010        	ldw	x,#16
12555  2110 89            	pushw	x
12556  2111 5f            	clrw	x
12557  2112 89            	pushw	x
12558  2113 1e05          	ldw	x,(OFST+5,sp)
12559  2115 8d342034      	callf	L562f_write_burst
12561  2119 5b04          	addw	sp,#4
12562                     ; 3024 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12564  211b c60001        	ld	a,_TxWrBstSeq
12565  211e 97            	ld	xl,a
12566  211f 725c0001      	inc	_TxWrBstSeq
12567  2123 9f            	ld	a,xl
12568  2124 88            	push	a
12569  2125 ae1cde        	ldw	x,#L3045
12570  2128 8d000000      	callf	f_printf
12572  212c 84            	pop	a
12573                     ; 3025 	 set_mhlint(MHLInt00B, DSCR_CHG);
12575  212d ae0002        	ldw	x,#2
12576  2130 a620          	ld	a,#32
12577  2132 95            	ld	xh,a
12578  2133 8df01ff0      	callf	L162f_set_mhlint
12580                     ; 3026 	V3D_EntryCnt++;
12582  2137 725c0000      	inc	_V3D_EntryCnt
12583                     ; 3027 	 set_mhlint(MHLInt00B, REQ_WRT);
12585  213b ae0004        	ldw	x,#4
12586  213e a620          	ld	a,#32
12587  2140 95            	ld	xh,a
12588  2141 8df01ff0      	callf	L162f_set_mhlint
12590                     ; 3028 }
12593  2145 85            	popw	x
12594  2146 87            	retf
12638                     ; 3030 static void v3d_burst2nd(struct it6802_dev_data *it6802)
12638                     ; 3031 {
12639                     	switch	.text
12640  2147               L372f_v3d_burst2nd:
12642  2147 89            	pushw	x
12643       00000000      OFST:	set	0
12646                     ; 3032 	 it6802->txscrpad[0]  = 0x00;
12648  2148 6f4c          	clr	(76,x)
12649                     ; 3033 	 it6802->txscrpad[1]  = 0x10;
12651  214a a610          	ld	a,#16
12652  214c e74d          	ld	(77,x),a
12653                     ; 3034 	 it6802->txscrpad[2]  = 0xB8;
12655  214e a6b8          	ld	a,#184
12656  2150 e74e          	ld	(78,x),a
12657                     ; 3035 	 it6802->txscrpad[3]  = 0x0F;
12659  2152 a60f          	ld	a,#15
12660  2154 e74f          	ld	(79,x),a
12661                     ; 3036 	 it6802->txscrpad[4]  = 0x01;
12663  2156 a601          	ld	a,#1
12664  2158 e750          	ld	(80,x),a
12665                     ; 3037 	 it6802->txscrpad[5]  = 0x05;
12667  215a a605          	ld	a,#5
12668  215c e751          	ld	(81,x),a
12669                     ; 3038 	 it6802->txscrpad[6]  = 0x00;
12671  215e 6f52          	clr	(82,x)
12672                     ; 3039 	 it6802->txscrpad[7]  = 0x07;
12674  2160 a607          	ld	a,#7
12675  2162 e753          	ld	(83,x),a
12676                     ; 3040 	 it6802->txscrpad[8]  = 0x00;
12678  2164 6f54          	clr	(84,x)
12679                     ; 3041 	 it6802->txscrpad[9]  = 0x07;
12681  2166 a607          	ld	a,#7
12682  2168 e755          	ld	(85,x),a
12683                     ; 3042 	 it6802->txscrpad[10] = 0x00;
12685  216a 6f56          	clr	(86,x)
12686                     ; 3043 	 it6802->txscrpad[11] = 0x07;
12688  216c a607          	ld	a,#7
12689  216e e757          	ld	(87,x),a
12690                     ; 3044 	 it6802->txscrpad[12] = 0x00;
12692  2170 6f58          	clr	(88,x)
12693                     ; 3045 	 it6802->txscrpad[13] = 0x07;
12695  2172 a607          	ld	a,#7
12696  2174 e759          	ld	(89,x),a
12697                     ; 3046 	 it6802->txscrpad[14] = 0x00;
12699  2176 6f5a          	clr	(90,x)
12700                     ; 3047 	 it6802->txscrpad[15] = 0x07;
12702  2178 a607          	ld	a,#7
12703  217a e75b          	ld	(91,x),a
12704                     ; 3049 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12706  217c e64c          	ld	a,(76,x)
12707  217e 97            	ld	xl,a
12708  217f a65e          	ld	a,#94
12709  2181 95            	ld	xh,a
12710  2182 8d3a013a      	callf	L57f_mhlrxwr
12712                     ; 3050 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12714  2186 1e01          	ldw	x,(OFST+1,sp)
12715  2188 e64d          	ld	a,(77,x)
12716  218a 97            	ld	xl,a
12717  218b a65f          	ld	a,#95
12718  218d 95            	ld	xh,a
12719  218e 8d3a013a      	callf	L57f_mhlrxwr
12721                     ; 3051 	 wrburstoff = 0;
12723  2192 725f0030      	clr	_wrburstoff
12724                     ; 3052 	 wrburstnum = 16;
12726  2196 3510002f      	mov	_wrburstnum,#16
12727                     ; 3053 	 write_burst(it6802,wrburstoff, wrburstnum);
12729  219a ae0010        	ldw	x,#16
12730  219d 89            	pushw	x
12731  219e 5f            	clrw	x
12732  219f 89            	pushw	x
12733  21a0 1e05          	ldw	x,(OFST+5,sp)
12734  21a2 8d342034      	callf	L562f_write_burst
12736  21a6 5b04          	addw	sp,#4
12737                     ; 3054 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12739  21a8 c60001        	ld	a,_TxWrBstSeq
12740  21ab 97            	ld	xl,a
12741  21ac 725c0001      	inc	_TxWrBstSeq
12742  21b0 9f            	ld	a,xl
12743  21b1 88            	push	a
12744  21b2 ae1cde        	ldw	x,#L3045
12745  21b5 8d000000      	callf	f_printf
12747  21b9 84            	pop	a
12748                     ; 3055 	 set_mhlint(MHLInt00B, DSCR_CHG);
12750  21ba ae0002        	ldw	x,#2
12751  21bd a620          	ld	a,#32
12752  21bf 95            	ld	xh,a
12753  21c0 8df01ff0      	callf	L162f_set_mhlint
12755                     ; 3056 	V3D_EntryCnt++;
12757  21c4 725c0000      	inc	_V3D_EntryCnt
12758                     ; 3057 	 set_mhlint(MHLInt00B, REQ_WRT);
12760  21c8 ae0004        	ldw	x,#4
12761  21cb a620          	ld	a,#32
12762  21cd 95            	ld	xh,a
12763  21ce 8df01ff0      	callf	L162f_set_mhlint
12765                     ; 3058 }
12768  21d2 85            	popw	x
12769  21d3 87            	retf
12813                     ; 3060 static void v3d_burst3rd(struct it6802_dev_data *it6802)
12813                     ; 3061 {
12814                     	switch	.text
12815  21d4               L572f_v3d_burst3rd:
12817  21d4 89            	pushw	x
12818       00000000      OFST:	set	0
12821                     ; 3062 	 it6802->txscrpad[0]  = 0x00;
12823  21d5 6f4c          	clr	(76,x)
12824                     ; 3063 	 it6802->txscrpad[1]  = 0x10;
12826  21d7 a610          	ld	a,#16
12827  21d9 e74d          	ld	(77,x),a
12828                     ; 3064 	 it6802->txscrpad[2]  = 0xB7;
12830  21db a6b7          	ld	a,#183
12831  21dd e74e          	ld	(78,x),a
12832                     ; 3065 	 it6802->txscrpad[3]  = 0x0F;
12834  21df a60f          	ld	a,#15
12835  21e1 e74f          	ld	(79,x),a
12836                     ; 3066 	 it6802->txscrpad[4]  = 0x02;
12838  21e3 a602          	ld	a,#2
12839  21e5 e750          	ld	(80,x),a
12840                     ; 3067 	 it6802->txscrpad[5]  = 0x05;
12842  21e7 a605          	ld	a,#5
12843  21e9 e751          	ld	(81,x),a
12844                     ; 3068 	 it6802->txscrpad[6]  = 0x00;
12846  21eb 6f52          	clr	(82,x)
12847                     ; 3069 	 it6802->txscrpad[7]  = 0x07;
12849  21ed a607          	ld	a,#7
12850  21ef e753          	ld	(83,x),a
12851                     ; 3070 	 it6802->txscrpad[8]  = 0x00;
12853  21f1 6f54          	clr	(84,x)
12854                     ; 3071 	 it6802->txscrpad[9]  = 0x07;
12856  21f3 a607          	ld	a,#7
12857  21f5 e755          	ld	(85,x),a
12858                     ; 3072 	 it6802->txscrpad[10] = 0x00;
12860  21f7 6f56          	clr	(86,x)
12861                     ; 3073 	 it6802->txscrpad[11] = 0x07;
12863  21f9 a607          	ld	a,#7
12864  21fb e757          	ld	(87,x),a
12865                     ; 3074 	 it6802->txscrpad[12] = 0x00;
12867  21fd 6f58          	clr	(88,x)
12868                     ; 3075 	 it6802->txscrpad[13] = 0x07;
12870  21ff a607          	ld	a,#7
12871  2201 e759          	ld	(89,x),a
12872                     ; 3076 	 it6802->txscrpad[14] = 0x00;
12874  2203 6f5a          	clr	(90,x)
12875                     ; 3077 	 it6802->txscrpad[15] = 0x07;
12877  2205 a607          	ld	a,#7
12878  2207 e75b          	ld	(91,x),a
12879                     ; 3079 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12881  2209 e64c          	ld	a,(76,x)
12882  220b 97            	ld	xl,a
12883  220c a65e          	ld	a,#94
12884  220e 95            	ld	xh,a
12885  220f 8d3a013a      	callf	L57f_mhlrxwr
12887                     ; 3080 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12889  2213 1e01          	ldw	x,(OFST+1,sp)
12890  2215 e64d          	ld	a,(77,x)
12891  2217 97            	ld	xl,a
12892  2218 a65f          	ld	a,#95
12893  221a 95            	ld	xh,a
12894  221b 8d3a013a      	callf	L57f_mhlrxwr
12896                     ; 3081 	 wrburstoff = 0;
12898  221f 725f0030      	clr	_wrburstoff
12899                     ; 3082 	 wrburstnum = 16;
12901  2223 3510002f      	mov	_wrburstnum,#16
12902                     ; 3083 	 write_burst(it6802,wrburstoff, wrburstnum);
12904  2227 ae0010        	ldw	x,#16
12905  222a 89            	pushw	x
12906  222b 5f            	clrw	x
12907  222c 89            	pushw	x
12908  222d 1e05          	ldw	x,(OFST+5,sp)
12909  222f 8d342034      	callf	L562f_write_burst
12911  2233 5b04          	addw	sp,#4
12912                     ; 3084 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12914  2235 c60001        	ld	a,_TxWrBstSeq
12915  2238 97            	ld	xl,a
12916  2239 725c0001      	inc	_TxWrBstSeq
12917  223d 9f            	ld	a,xl
12918  223e 88            	push	a
12919  223f ae1cde        	ldw	x,#L3045
12920  2242 8d000000      	callf	f_printf
12922  2246 84            	pop	a
12923                     ; 3085 	 set_mhlint(MHLInt00B, DSCR_CHG);
12925  2247 ae0002        	ldw	x,#2
12926  224a a620          	ld	a,#32
12927  224c 95            	ld	xh,a
12928  224d 8df01ff0      	callf	L162f_set_mhlint
12930                     ; 3086 	V3D_EntryCnt++;
12932  2251 725c0000      	inc	_V3D_EntryCnt
12933                     ; 3087 	 set_mhlint(MHLInt00B, REQ_WRT);
12935  2255 ae0004        	ldw	x,#4
12936  2258 a620          	ld	a,#32
12937  225a 95            	ld	xh,a
12938  225b 8df01ff0      	callf	L162f_set_mhlint
12940                     ; 3088 }
12943  225f 85            	popw	x
12944  2260 87            	retf
12988                     ; 3090 static void v3d_burst4th(struct it6802_dev_data *it6802)
12988                     ; 3091 {
12989                     	switch	.text
12990  2261               L772f_v3d_burst4th:
12992  2261 89            	pushw	x
12993       00000000      OFST:	set	0
12996                     ; 3092 	 it6802->txscrpad[0]  = 0x00;
12998  2262 6f4c          	clr	(76,x)
12999                     ; 3093 	 it6802->txscrpad[1]  = 0x10;
13001  2264 a610          	ld	a,#16
13002  2266 e74d          	ld	(77,x),a
13003                     ; 3094 	 it6802->txscrpad[2]  = 0xB6;
13005  2268 a6b6          	ld	a,#182
13006  226a e74e          	ld	(78,x),a
13007                     ; 3095 	 it6802->txscrpad[3]  = 0x0F;
13009  226c a60f          	ld	a,#15
13010  226e e74f          	ld	(79,x),a
13011                     ; 3096 	 it6802->txscrpad[4]  = 0x03;
13013  2270 a603          	ld	a,#3
13014  2272 e750          	ld	(80,x),a
13015                     ; 3097 	 it6802->txscrpad[5]  = 0x05;
13017  2274 a605          	ld	a,#5
13018  2276 e751          	ld	(81,x),a
13019                     ; 3098 	 it6802->txscrpad[6]  = 0x00;
13021  2278 6f52          	clr	(82,x)
13022                     ; 3099 	 it6802->txscrpad[7]  = 0x07;
13024  227a a607          	ld	a,#7
13025  227c e753          	ld	(83,x),a
13026                     ; 3100 	 it6802->txscrpad[8]  = 0x00;
13028  227e 6f54          	clr	(84,x)
13029                     ; 3101 	 it6802->txscrpad[9]  = 0x07;
13031  2280 a607          	ld	a,#7
13032  2282 e755          	ld	(85,x),a
13033                     ; 3102 	 it6802->txscrpad[10] = 0x00;
13035  2284 6f56          	clr	(86,x)
13036                     ; 3103 	 it6802->txscrpad[11] = 0x07;
13038  2286 a607          	ld	a,#7
13039  2288 e757          	ld	(87,x),a
13040                     ; 3104 	 it6802->txscrpad[12] = 0x00;
13042  228a 6f58          	clr	(88,x)
13043                     ; 3105 	 it6802->txscrpad[13] = 0x07;
13045  228c a607          	ld	a,#7
13046  228e e759          	ld	(89,x),a
13047                     ; 3106 	 it6802->txscrpad[14] = 0x00;
13049  2290 6f5a          	clr	(90,x)
13050                     ; 3107 	 it6802->txscrpad[15] = 0x07;
13052  2292 a607          	ld	a,#7
13053  2294 e75b          	ld	(91,x),a
13054                     ; 3109 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13056  2296 e64c          	ld	a,(76,x)
13057  2298 97            	ld	xl,a
13058  2299 a65e          	ld	a,#94
13059  229b 95            	ld	xh,a
13060  229c 8d3a013a      	callf	L57f_mhlrxwr
13062                     ; 3110 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13064  22a0 1e01          	ldw	x,(OFST+1,sp)
13065  22a2 e64d          	ld	a,(77,x)
13066  22a4 97            	ld	xl,a
13067  22a5 a65f          	ld	a,#95
13068  22a7 95            	ld	xh,a
13069  22a8 8d3a013a      	callf	L57f_mhlrxwr
13071                     ; 3111 	 wrburstoff = 0;
13073  22ac 725f0030      	clr	_wrburstoff
13074                     ; 3112 	 wrburstnum = 16;
13076  22b0 3510002f      	mov	_wrburstnum,#16
13077                     ; 3113 	 write_burst(it6802,wrburstoff, wrburstnum);
13079  22b4 ae0010        	ldw	x,#16
13080  22b7 89            	pushw	x
13081  22b8 5f            	clrw	x
13082  22b9 89            	pushw	x
13083  22ba 1e05          	ldw	x,(OFST+5,sp)
13084  22bc 8d342034      	callf	L562f_write_burst
13086  22c0 5b04          	addw	sp,#4
13087                     ; 3114 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13089  22c2 c60001        	ld	a,_TxWrBstSeq
13090  22c5 97            	ld	xl,a
13091  22c6 725c0001      	inc	_TxWrBstSeq
13092  22ca 9f            	ld	a,xl
13093  22cb 88            	push	a
13094  22cc ae1cde        	ldw	x,#L3045
13095  22cf 8d000000      	callf	f_printf
13097  22d3 84            	pop	a
13098                     ; 3115 	 set_mhlint(MHLInt00B, DSCR_CHG);
13100  22d4 ae0002        	ldw	x,#2
13101  22d7 a620          	ld	a,#32
13102  22d9 95            	ld	xh,a
13103  22da 8df01ff0      	callf	L162f_set_mhlint
13105                     ; 3116 	V3D_EntryCnt++;
13107  22de 725c0000      	inc	_V3D_EntryCnt
13108                     ; 3117 }
13111  22e2 85            	popw	x
13112  22e3 87            	retf
13156                     ; 3119 static void v3d_unsupport1st(struct it6802_dev_data *it6802)
13156                     ; 3120 {
13157                     	switch	.text
13158  22e4               L103f_v3d_unsupport1st:
13160  22e4 89            	pushw	x
13161       00000000      OFST:	set	0
13164                     ; 3121 	 it6802->txscrpad[0]  = 0x00;
13166  22e5 6f4c          	clr	(76,x)
13167                     ; 3122 	 it6802->txscrpad[1]  = 0x02;
13169  22e7 a602          	ld	a,#2
13170  22e9 e74d          	ld	(77,x),a
13171                     ; 3123 	 it6802->txscrpad[2]  = 0xFE;
13173  22eb a6fe          	ld	a,#254
13174  22ed e74e          	ld	(78,x),a
13175                     ; 3124 	 it6802->txscrpad[3]  = 0x00;
13177  22ef 6f4f          	clr	(79,x)
13178                     ; 3126 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13180  22f1 e64c          	ld	a,(76,x)
13181  22f3 97            	ld	xl,a
13182  22f4 a65e          	ld	a,#94
13183  22f6 95            	ld	xh,a
13184  22f7 8d3a013a      	callf	L57f_mhlrxwr
13186                     ; 3127 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13188  22fb 1e01          	ldw	x,(OFST+1,sp)
13189  22fd e64d          	ld	a,(77,x)
13190  22ff 97            	ld	xl,a
13191  2300 a65f          	ld	a,#95
13192  2302 95            	ld	xh,a
13193  2303 8d3a013a      	callf	L57f_mhlrxwr
13195                     ; 3128 	 wrburstoff = 0;
13197  2307 725f0030      	clr	_wrburstoff
13198                     ; 3129 	 wrburstnum = 4;
13200  230b 3504002f      	mov	_wrburstnum,#4
13201                     ; 3130 	 write_burst(it6802,wrburstoff, wrburstnum);
13203  230f ae0004        	ldw	x,#4
13204  2312 89            	pushw	x
13205  2313 5f            	clrw	x
13206  2314 89            	pushw	x
13207  2315 1e05          	ldw	x,(OFST+5,sp)
13208  2317 8d342034      	callf	L562f_write_burst
13210  231b 5b04          	addw	sp,#4
13211                     ; 3132 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13213  231d c60001        	ld	a,_TxWrBstSeq
13214  2320 97            	ld	xl,a
13215  2321 725c0001      	inc	_TxWrBstSeq
13216  2325 9f            	ld	a,xl
13217  2326 88            	push	a
13218  2327 ae1cde        	ldw	x,#L3045
13219  232a 8d000000      	callf	f_printf
13221  232e 84            	pop	a
13222                     ; 3133 	 set_mhlint(MHLInt00B, DSCR_CHG);
13224  232f ae0002        	ldw	x,#2
13225  2332 a620          	ld	a,#32
13226  2334 95            	ld	xh,a
13227  2335 8df01ff0      	callf	L162f_set_mhlint
13229                     ; 3134 	V3D_EntryCnt++;
13231  2339 725c0000      	inc	_V3D_EntryCnt
13232                     ; 3135  	 set_mhlint(MHLInt00B, REQ_WRT);
13234  233d ae0004        	ldw	x,#4
13235  2340 a620          	ld	a,#32
13236  2342 95            	ld	xh,a
13237  2343 8df01ff0      	callf	L162f_set_mhlint
13239                     ; 3136 }
13242  2347 85            	popw	x
13243  2348 87            	retf
13287                     ; 3138 static void v3d_unsupport2nd(struct it6802_dev_data *it6802)
13287                     ; 3139 {
13288                     	switch	.text
13289  2349               L303f_v3d_unsupport2nd:
13291  2349 89            	pushw	x
13292       00000000      OFST:	set	0
13295                     ; 3140 	 it6802->txscrpad[0]  = 0x00;
13297  234a 6f4c          	clr	(76,x)
13298                     ; 3141 	 it6802->txscrpad[1]  = 0x03;
13300  234c a603          	ld	a,#3
13301  234e e74d          	ld	(77,x),a
13302                     ; 3142 	 it6802->txscrpad[2]  = 0xFD;
13304  2350 a6fd          	ld	a,#253
13305  2352 e74e          	ld	(78,x),a
13306                     ; 3143 	 it6802->txscrpad[3]  = 0x00;
13308  2354 6f4f          	clr	(79,x)
13309                     ; 3145 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13311  2356 e64c          	ld	a,(76,x)
13312  2358 97            	ld	xl,a
13313  2359 a65e          	ld	a,#94
13314  235b 95            	ld	xh,a
13315  235c 8d3a013a      	callf	L57f_mhlrxwr
13317                     ; 3146 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13319  2360 1e01          	ldw	x,(OFST+1,sp)
13320  2362 e64d          	ld	a,(77,x)
13321  2364 97            	ld	xl,a
13322  2365 a65f          	ld	a,#95
13323  2367 95            	ld	xh,a
13324  2368 8d3a013a      	callf	L57f_mhlrxwr
13326                     ; 3147 	 wrburstoff = 0;
13328  236c 725f0030      	clr	_wrburstoff
13329                     ; 3148 	 wrburstnum = 4;
13331  2370 3504002f      	mov	_wrburstnum,#4
13332                     ; 3149 	 write_burst(it6802,wrburstoff, wrburstnum);
13334  2374 ae0004        	ldw	x,#4
13335  2377 89            	pushw	x
13336  2378 5f            	clrw	x
13337  2379 89            	pushw	x
13338  237a 1e05          	ldw	x,(OFST+5,sp)
13339  237c 8d342034      	callf	L562f_write_burst
13341  2380 5b04          	addw	sp,#4
13342                     ; 3150 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13344  2382 c60001        	ld	a,_TxWrBstSeq
13345  2385 97            	ld	xl,a
13346  2386 725c0001      	inc	_TxWrBstSeq
13347  238a 9f            	ld	a,xl
13348  238b 88            	push	a
13349  238c ae1cde        	ldw	x,#L3045
13350  238f 8d000000      	callf	f_printf
13352  2393 84            	pop	a
13353                     ; 3151 	 set_mhlint(MHLInt00B, DSCR_CHG);
13355  2394 ae0002        	ldw	x,#2
13356  2397 a620          	ld	a,#32
13357  2399 95            	ld	xh,a
13358  239a 8df01ff0      	callf	L162f_set_mhlint
13360                     ; 3152 	V3D_EntryCnt++;
13362  239e 725c0000      	inc	_V3D_EntryCnt
13363                     ; 3153 }
13366  23a2 85            	popw	x
13367  23a3 87            	retf
13431                     ; 3165 static unsigned char UpdateEDIDRAM(unsigned char *pEDID,unsigned char BlockNUM)
13431                     ; 3166 {
13432                     	switch	.text
13433  23a4               L503f_UpdateEDIDRAM:
13435  23a4 89            	pushw	x
13436  23a5 5203          	subw	sp,#3
13437       00000003      OFST:	set	3
13440                     ; 3167 	unsigned char  i,offset,sum =0;
13442  23a7 0f01          	clr	(OFST-2,sp)
13443                     ; 3169 	if ( BlockNUM == 0x02 )
13445  23a9 7b09          	ld	a,(OFST+6,sp)
13446  23ab a102          	cp	a,#2
13447  23ad 2606          	jrne	L3555
13448                     ; 3170 		offset = 0x00+128*0x01;
13450  23af a680          	ld	a,#128
13451  23b1 6b03          	ld	(OFST+0,sp),a
13453  23b3 2009          	jra	L5555
13454  23b5               L3555:
13455                     ; 3172 		offset = 0x00+128*BlockNUM;
13457  23b5 7b09          	ld	a,(OFST+6,sp)
13458  23b7 97            	ld	xl,a
13459  23b8 a680          	ld	a,#128
13460  23ba 42            	mul	x,a
13461  23bb 9f            	ld	a,xl
13462  23bc 6b03          	ld	(OFST+0,sp),a
13463  23be               L5555:
13464                     ; 3174 	MHLRX_DEBUG_PRINTF(printf("block No =%x offset = %x \r\n",BlockNUM,offset));
13466  23be 7b03          	ld	a,(OFST+0,sp)
13467  23c0 88            	push	a
13468  23c1 7b0a          	ld	a,(OFST+7,sp)
13469  23c3 88            	push	a
13470  23c4 ae1cc2        	ldw	x,#L7555
13471  23c7 8d000000      	callf	f_printf
13473  23cb 85            	popw	x
13474                     ; 3177 	for(i=0;i<0x7F;i++)
13476  23cc 0f02          	clr	(OFST-1,sp)
13477  23ce               L1655:
13478                     ; 3179 		EDID_RAM_Write(offset,1 ,(pEDID+offset));
13480  23ce 7b04          	ld	a,(OFST+1,sp)
13481  23d0 97            	ld	xl,a
13482  23d1 7b05          	ld	a,(OFST+2,sp)
13483  23d3 1b03          	add	a,(OFST+0,sp)
13484  23d5 2401          	jrnc	L434
13485  23d7 5c            	incw	x
13486  23d8               L434:
13487  23d8 02            	rlwa	x,a
13488  23d9 89            	pushw	x
13489  23da 01            	rrwa	x,a
13490  23db ae0001        	ldw	x,#1
13491  23de 7b05          	ld	a,(OFST+2,sp)
13492  23e0 95            	ld	xh,a
13493  23e1 8d000000      	callf	L75f_EDID_RAM_Write
13495  23e5 85            	popw	x
13496                     ; 3181 		sum += *(pEDID+offset);
13498  23e6 7b04          	ld	a,(OFST+1,sp)
13499  23e8 97            	ld	xl,a
13500  23e9 7b05          	ld	a,(OFST+2,sp)
13501  23eb 1b03          	add	a,(OFST+0,sp)
13502  23ed 2401          	jrnc	L634
13503  23ef 5c            	incw	x
13504  23f0               L634:
13505  23f0 02            	rlwa	x,a
13506  23f1 7b01          	ld	a,(OFST-2,sp)
13507  23f3 fb            	add	a,(x)
13508  23f4 6b01          	ld	(OFST-2,sp),a
13509                     ; 3182 		offset ++;
13511  23f6 0c03          	inc	(OFST+0,sp)
13512                     ; 3177 	for(i=0;i<0x7F;i++)
13514  23f8 0c02          	inc	(OFST-1,sp)
13517  23fa 7b02          	ld	a,(OFST-1,sp)
13518  23fc a17f          	cp	a,#127
13519  23fe 25ce          	jrult	L1655
13520                     ; 3185 	sum = 0x00- sum;
13522  2400 0001          	neg	(OFST-2,sp)
13523                     ; 3187 	return 	sum;
13525  2402 7b01          	ld	a,(OFST-2,sp)
13528  2404 5b05          	addw	sp,#5
13529  2406 87            	retf
13555                     ; 3190 static void EnableEDIDupdata(void)
13555                     ; 3191 {
13556                     	switch	.text
13557  2407               L703f_EnableEDIDupdata:
13561                     ; 3192 	MHLRX_DEBUG_PRINTF(printf("EnableEDIDupdata() \r\n"));
13563  2407 ae1cac        	ldw	x,#L7755
13564  240a 8d000000      	callf	f_printf
13566                     ; 3194 	HDMI_HotPlug(0);	//clear port 1 HPD=0 for Enable EDID update
13568  240e 4f            	clr	a
13569  240f 8d000000      	callf	f_HDMI_HotPlug
13571                     ; 3196 	chgbank(1);
13573  2413 ae0001        	ldw	x,#1
13574  2416 8d140514      	callf	L711f_chgbank
13576                     ; 3197 	hdmirxset(REG_RX_1B0, 0x03, 0x01); //clear port 0 HPD=1 for EDID update
13578  241a 4b01          	push	#1
13579  241c ae0003        	ldw	x,#3
13580  241f a6b0          	ld	a,#176
13581  2421 95            	ld	xh,a
13582  2422 8da500a5      	callf	L76f_hdmirxset
13584  2426 84            	pop	a
13585                     ; 3198 	chgbank(0);
13587  2427 5f            	clrw	x
13588  2428 8d140514      	callf	L711f_chgbank
13590                     ; 3199 }
13593  242c 87            	retf
13619                     ; 3201 static void DisableEDIDupdata(void)
13619                     ; 3202 {
13620                     	switch	.text
13621  242d               L113f_DisableEDIDupdata:
13625                     ; 3203 	MHLRX_DEBUG_PRINTF(printf("DisableEDIDupdata() \r\n"));
13627  242d ae1c95        	ldw	x,#L1165
13628  2430 8d000000      	callf	f_printf
13630                     ; 3205 	HDMI_HotPlug(1);	//set port 1 HPD=1
13632  2434 a601          	ld	a,#1
13633  2436 8d000000      	callf	f_HDMI_HotPlug
13635                     ; 3207 	chgbank(1);
13637  243a ae0001        	ldw	x,#1
13638  243d 8d140514      	callf	L711f_chgbank
13640                     ; 3208 	hdmirxset(REG_RX_1B0, 0x03, 0x03); //set port 0 HPD=1
13642  2441 4b03          	push	#3
13643  2443 ae0003        	ldw	x,#3
13644  2446 a6b0          	ld	a,#176
13645  2448 95            	ld	xh,a
13646  2449 8da500a5      	callf	L76f_hdmirxset
13648  244d 84            	pop	a
13649                     ; 3209 	chgbank(0);
13651  244e 5f            	clrw	x
13652  244f 8d140514      	callf	L711f_chgbank
13654                     ; 3211 }
13657  2453 87            	retf
13727                     ; 3214 static void EDIDRAMInitial(unsigned char *pIT6802EDID)
13727                     ; 3215 {
13728                     	switch	.text
13729  2454               L313f_EDIDRAMInitial:
13731  2454 89            	pushw	x
13732  2455 5203          	subw	sp,#3
13733       00000003      OFST:	set	3
13736                     ; 3222 	u8_VSDB_Addr=0;
13738                     ; 3224 	EnableEDIDupdata();
13740  2457 8d072407      	callf	L703f_EnableEDIDupdata
13742                     ; 3226 	for(BlockNo=0;BlockNo<2;BlockNo++){
13744  245b 0f02          	clr	(OFST-1,sp)
13745  245d               L1465:
13746                     ; 3228 		MHLRX_DEBUG_PRINTF(printf("IT6802 EDIDRAMInitial = %x\r\n", BlockNo));
13748  245d 7b02          	ld	a,(OFST-1,sp)
13749  245f 88            	push	a
13750  2460 ae1c78        	ldw	x,#L7465
13751  2463 8d000000      	callf	f_printf
13753  2467 84            	pop	a
13754                     ; 3230 		if(BlockNo==0)
13756  2468 0d02          	tnz	(OFST-1,sp)
13757  246a 262d          	jrne	L1565
13758                     ; 3232 			Block0_CheckSum =  UpdateEDIDRAM(pIT6802EDID,0);
13760  246c 4b00          	push	#0
13761  246e 1e05          	ldw	x,(OFST+2,sp)
13762  2470 8da423a4      	callf	L503f_UpdateEDIDRAM
13764  2474 5b01          	addw	sp,#1
13765  2476 6b03          	ld	(OFST+0,sp),a
13766                     ; 3233 			hdmirxwr(REG_RX_0C4,Block0_CheckSum);		//Port 0 Bank 0 CheckSum
13768  2478 7b03          	ld	a,(OFST+0,sp)
13769  247a 97            	ld	xl,a
13770  247b a6c4          	ld	a,#196
13771  247d 95            	ld	xh,a
13772  247e 8d690069      	callf	L56f_hdmirxwr
13774                     ; 3234 			hdmirxwr(REG_RX_0C8,Block0_CheckSum);		//Port 1 Bank 0 CheckSum
13776  2482 7b03          	ld	a,(OFST+0,sp)
13777  2484 97            	ld	xl,a
13778  2485 a6c8          	ld	a,#200
13779  2487 95            	ld	xh,a
13780  2488 8d690069      	callf	L56f_hdmirxwr
13782                     ; 3236 			MHLRX_DEBUG_PRINTF(printf(" Block0_CheckSum = %x\r\n", Block0_CheckSum));
13784  248c 7b03          	ld	a,(OFST+0,sp)
13785  248e 88            	push	a
13786  248f ae1c60        	ldw	x,#L3565
13787  2492 8d000000      	callf	f_printf
13789  2496 84            	pop	a
13791  2497 205f          	jra	L5565
13792  2499               L1565:
13793                     ; 3240 			Block1_CheckSum =  UpdateEDIDRAM(pIT6802EDID,1);
13795  2499 4b01          	push	#1
13796  249b 1e05          	ldw	x,(OFST+2,sp)
13797  249d 8da423a4      	callf	L503f_UpdateEDIDRAM
13799  24a1 5b01          	addw	sp,#1
13800  24a3 6b01          	ld	(OFST-2,sp),a
13801                     ; 3241 			MHLRX_DEBUG_PRINTF(printf(" Block1_CheckSum = %x\r\n", Block1_CheckSum));
13803  24a5 7b01          	ld	a,(OFST-2,sp)
13804  24a7 88            	push	a
13805  24a8 ae1c48        	ldw	x,#L7565
13806  24ab 8d000000      	callf	f_printf
13808  24af 84            	pop	a
13809                     ; 3242 			u8_VSDB_Addr=Find_Phyaddress_Location(pIT6802EDID,1);
13811  24b0 4b01          	push	#1
13812  24b2 1e05          	ldw	x,(OFST+2,sp)
13813  24b4 8d0b250b      	callf	L513f_Find_Phyaddress_Location
13815  24b8 5b01          	addw	sp,#1
13816  24ba 6b03          	ld	(OFST+0,sp),a
13817                     ; 3244 			MHLRX_DEBUG_PRINTF(printf("u8_VSDB_Addr = %x\r\n", u8_VSDB_Addr));
13819  24bc 7b03          	ld	a,(OFST+0,sp)
13820  24be 88            	push	a
13821  24bf ae1c34        	ldw	x,#L1665
13822  24c2 8d000000      	callf	f_printf
13824  24c6 84            	pop	a
13825                     ; 3245 			PhyAdrSet();
13827  24c7 8db226b2      	callf	L123f_PhyAdrSet
13829                     ; 3247 			if(u8_VSDB_Addr!=0)
13831  24cb 0d03          	tnz	(OFST+0,sp)
13832  24cd 2729          	jreq	L5565
13833                     ; 3250 				UpdateEDIDReg(u8_VSDB_Addr, pIT6802EDID[u8_VSDB_Addr],pIT6802EDID[u8_VSDB_Addr+1], Block1_CheckSum);
13835  24cf 7b01          	ld	a,(OFST-2,sp)
13836  24d1 88            	push	a
13837  24d2 7b04          	ld	a,(OFST+1,sp)
13838  24d4 5f            	clrw	x
13839  24d5 97            	ld	xl,a
13840  24d6 72fb05        	addw	x,(OFST+2,sp)
13841  24d9 e601          	ld	a,(1,x)
13842  24db 88            	push	a
13843  24dc 7b06          	ld	a,(OFST+3,sp)
13844  24de 97            	ld	xl,a
13845  24df 7b07          	ld	a,(OFST+4,sp)
13846  24e1 1b05          	add	a,(OFST+2,sp)
13847  24e3 2401          	jrnc	L644
13848  24e5 5c            	incw	x
13849  24e6               L644:
13850  24e6 02            	rlwa	x,a
13851  24e7 f6            	ld	a,(x)
13852  24e8 97            	ld	xl,a
13853  24e9 7b05          	ld	a,(OFST+2,sp)
13854  24eb 95            	ld	xh,a
13855  24ec 8d082608      	callf	L713f_UpdateEDIDReg
13857  24f0 85            	popw	x
13858                     ; 3251 				MHLRX_DEBUG_PRINTF(printf("EDID Parsing OK\r\n"));
13860  24f1 ae1c22        	ldw	x,#L5665
13861  24f4 8d000000      	callf	f_printf
13863  24f8               L5565:
13864                     ; 3226 	for(BlockNo=0;BlockNo<2;BlockNo++){
13866  24f8 0c02          	inc	(OFST-1,sp)
13869  24fa 7b02          	ld	a,(OFST-1,sp)
13870  24fc a102          	cp	a,#2
13871  24fe 2404          	jruge	L054
13872  2500 ac5d245d      	jpf	L1465
13873  2504               L054:
13874                     ; 3256 	DisableEDIDupdata();
13876  2504 8d2d242d      	callf	L113f_DisableEDIDupdata
13878                     ; 3257 }
13881  2508 5b05          	addw	sp,#5
13882  250a 87            	retf
13967                     ; 3260 static unsigned char Find_Phyaddress_Location(unsigned char *pEDID,unsigned char Block_Number)
13967                     ; 3261 {
13968                     	switch	.text
13969  250b               L513f_Find_Phyaddress_Location:
13971  250b 89            	pushw	x
13972  250c 5207          	subw	sp,#7
13973       00000007      OFST:	set	7
13976                     ; 3267 	if ( Block_Number == 0x02 )
13978  250e 7b0d          	ld	a,(OFST+6,sp)
13979  2510 a102          	cp	a,#2
13980  2512 2606          	jrne	L3275
13981                     ; 3268 		AddStart = 0x00+128*0x01;
13983  2514 a680          	ld	a,#128
13984  2516 6b06          	ld	(OFST-1,sp),a
13986  2518 2009          	jra	L5275
13987  251a               L3275:
13988                     ; 3270 		AddStart = 0x00+128*Block_Number;
13990  251a 7b0d          	ld	a,(OFST+6,sp)
13991  251c 97            	ld	xl,a
13992  251d a680          	ld	a,#128
13993  251f 42            	mul	x,a
13994  2520 9f            	ld	a,xl
13995  2521 6b06          	ld	(OFST-1,sp),a
13996  2523               L5275:
13997                     ; 3272 	if((*(pEDID+AddStart))!=0x2 || (*(pEDID+AddStart+1))!=0x3)
13999  2523 7b08          	ld	a,(OFST+1,sp)
14000  2525 97            	ld	xl,a
14001  2526 7b09          	ld	a,(OFST+2,sp)
14002  2528 1b06          	add	a,(OFST-1,sp)
14003  252a 2401          	jrnc	L454
14004  252c 5c            	incw	x
14005  252d               L454:
14006  252d 02            	rlwa	x,a
14007  252e f6            	ld	a,(x)
14008  252f a102          	cp	a,#2
14009  2531 2611          	jrne	L1375
14011  2533 7b08          	ld	a,(OFST+1,sp)
14012  2535 97            	ld	xl,a
14013  2536 7b09          	ld	a,(OFST+2,sp)
14014  2538 1b06          	add	a,(OFST-1,sp)
14015  253a 2401          	jrnc	L654
14016  253c 5c            	incw	x
14017  253d               L654:
14018  253d 02            	rlwa	x,a
14019  253e e601          	ld	a,(1,x)
14020  2540 a103          	cp	a,#3
14021  2542 2705          	jreq	L7275
14022  2544               L1375:
14023                     ; 3273 		return 0;
14025  2544 4f            	clr	a
14027  2545 ace425e4      	jpf	L205
14028  2549               L7275:
14029                     ; 3274 	End = (*(pEDID+AddStart+2));
14031  2549 7b08          	ld	a,(OFST+1,sp)
14032  254b 97            	ld	xl,a
14033  254c 7b09          	ld	a,(OFST+2,sp)
14034  254e 1b06          	add	a,(OFST-1,sp)
14035  2550 2401          	jrnc	L064
14036  2552 5c            	incw	x
14037  2553               L064:
14038  2553 02            	rlwa	x,a
14039  2554 e602          	ld	a,(2,x)
14040  2556 6b03          	ld	(OFST-4,sp),a
14041                     ; 3275 	u8_VSDB_Addr=0;
14043                     ; 3276 	for(offset=(AddStart+0x04);offset<(AddStart+End); )
14045  2558 7b06          	ld	a,(OFST-1,sp)
14046  255a ab04          	add	a,#4
14047  255c 6b07          	ld	(OFST+0,sp),a
14049  255e aced25ed      	jpf	L7375
14050  2562               L3375:
14051                     ; 3281 		tag=(*(pEDID+offset))>>5;
14053  2562 7b08          	ld	a,(OFST+1,sp)
14054  2564 97            	ld	xl,a
14055  2565 7b09          	ld	a,(OFST+2,sp)
14056  2567 1b07          	add	a,(OFST+0,sp)
14057  2569 2401          	jrnc	L264
14058  256b 5c            	incw	x
14059  256c               L264:
14060  256c 02            	rlwa	x,a
14061  256d f6            	ld	a,(x)
14062  256e 4e            	swap	a
14063  256f 44            	srl	a
14064  2570 a407          	and	a,#7
14065  2572 6b04          	ld	(OFST-3,sp),a
14066                     ; 3282 		count=(*(pEDID+offset)) & 0x1f;
14068  2574 7b08          	ld	a,(OFST+1,sp)
14069  2576 97            	ld	xl,a
14070  2577 7b09          	ld	a,(OFST+2,sp)
14071  2579 1b07          	add	a,(OFST+0,sp)
14072  257b 2401          	jrnc	L464
14073  257d 5c            	incw	x
14074  257e               L464:
14075  257e 02            	rlwa	x,a
14076  257f f6            	ld	a,(x)
14077  2580 a41f          	and	a,#31
14078  2582 6b05          	ld	(OFST-2,sp),a
14079                     ; 3283 		offset++;
14081  2584 0c07          	inc	(OFST+0,sp)
14082                     ; 3284         if(tag==0x03)
14084  2586 7b04          	ld	a,(OFST-3,sp)
14085  2588 a103          	cp	a,#3
14086  258a 265b          	jrne	L3475
14087                     ; 3289 			if(	(*(pEDID+offset  ))==0x03 &&
14087                     ; 3290 				(*(pEDID+offset+1))==0x0C &&
14087                     ; 3291 				(*(pEDID+offset+2))==0x0    )
14089  258c 7b08          	ld	a,(OFST+1,sp)
14090  258e 97            	ld	xl,a
14091  258f 7b09          	ld	a,(OFST+2,sp)
14092  2591 1b07          	add	a,(OFST+0,sp)
14093  2593 2401          	jrnc	L664
14094  2595 5c            	incw	x
14095  2596               L664:
14096  2596 02            	rlwa	x,a
14097  2597 f6            	ld	a,(x)
14098  2598 a103          	cp	a,#3
14099  259a 264b          	jrne	L3475
14101  259c 7b08          	ld	a,(OFST+1,sp)
14102  259e 97            	ld	xl,a
14103  259f 7b09          	ld	a,(OFST+2,sp)
14104  25a1 1b07          	add	a,(OFST+0,sp)
14105  25a3 2401          	jrnc	L074
14106  25a5 5c            	incw	x
14107  25a6               L074:
14108  25a6 02            	rlwa	x,a
14109  25a7 e601          	ld	a,(1,x)
14110  25a9 a10c          	cp	a,#12
14111  25ab 263a          	jrne	L3475
14113  25ad 7b08          	ld	a,(OFST+1,sp)
14114  25af 97            	ld	xl,a
14115  25b0 7b09          	ld	a,(OFST+2,sp)
14116  25b2 1b07          	add	a,(OFST+0,sp)
14117  25b4 2401          	jrnc	L274
14118  25b6 5c            	incw	x
14119  25b7               L274:
14120  25b7 02            	rlwa	x,a
14121  25b8 6d02          	tnz	(2,x)
14122  25ba 262b          	jrne	L3475
14123                     ; 3293 				u8_VSDB_Addr=offset+3;
14125  25bc 7b07          	ld	a,(OFST+0,sp)
14126  25be ab03          	add	a,#3
14127  25c0 6b06          	ld	(OFST-1,sp),a
14128                     ; 3294 				txphyadr[0]=(*(pEDID+offset+3));
14130  25c2 7b08          	ld	a,(OFST+1,sp)
14131  25c4 97            	ld	xl,a
14132  25c5 7b09          	ld	a,(OFST+2,sp)
14133  25c7 1b07          	add	a,(OFST+0,sp)
14134  25c9 2401          	jrnc	L474
14135  25cb 5c            	incw	x
14136  25cc               L474:
14137  25cc 02            	rlwa	x,a
14138  25cd e603          	ld	a,(3,x)
14139  25cf c7000e        	ld	_txphyadr,a
14140                     ; 3295 				txphyadr[1]=(*(pEDID+offset+4));
14142  25d2 7b08          	ld	a,(OFST+1,sp)
14143  25d4 97            	ld	xl,a
14144  25d5 7b09          	ld	a,(OFST+2,sp)
14145  25d7 1b07          	add	a,(OFST+0,sp)
14146  25d9 2401          	jrnc	L674
14147  25db 5c            	incw	x
14148  25dc               L674:
14149  25dc 02            	rlwa	x,a
14150  25dd e604          	ld	a,(4,x)
14151  25df c7000f        	ld	_txphyadr+1,a
14152                     ; 3300 				return u8_VSDB_Addr;
14154  25e2 7b06          	ld	a,(OFST-1,sp)
14156  25e4               L205:
14158  25e4 5b09          	addw	sp,#9
14159  25e6 87            	retf
14160  25e7               L3475:
14161                     ; 3303 		offset=offset+count;
14163  25e7 7b07          	ld	a,(OFST+0,sp)
14164  25e9 1b05          	add	a,(OFST-2,sp)
14165  25eb 6b07          	ld	(OFST+0,sp),a
14166  25ed               L7375:
14167                     ; 3276 	for(offset=(AddStart+0x04);offset<(AddStart+End); )
14169  25ed 9c            	rvf
14170  25ee 7b07          	ld	a,(OFST+0,sp)
14171  25f0 5f            	clrw	x
14172  25f1 97            	ld	xl,a
14173  25f2 1f01          	ldw	(OFST-6,sp),x
14174  25f4 7b06          	ld	a,(OFST-1,sp)
14175  25f6 5f            	clrw	x
14176  25f7 1b03          	add	a,(OFST-4,sp)
14177  25f9 2401          	jrnc	L005
14178  25fb 5c            	incw	x
14179  25fc               L005:
14180  25fc 02            	rlwa	x,a
14181  25fd 1301          	cpw	x,(OFST-6,sp)
14182  25ff 2d04          	jrsle	L405
14183  2601 ac622562      	jpf	L3375
14184  2605               L405:
14185                     ; 3305     return 0;
14187  2605 4f            	clr	a
14189  2606 20dc          	jra	L205
14285                     ; 3310 static void UpdateEDIDReg(unsigned char u8_VSDB_Addr, unsigned char CEC_AB, unsigned char CEC_CD, unsigned char Block1_CheckSum)
14285                     ; 3311 {
14286                     	switch	.text
14287  2608               L713f_UpdateEDIDReg:
14289  2608 89            	pushw	x
14290  2609 5206          	subw	sp,#6
14291       00000006      OFST:	set	6
14294                     ; 3316 	A_Addr_AB=rxphyadr[0][0];
14296  260b c60005        	ld	a,_rxphyadr
14297  260e 6b03          	ld	(OFST-3,sp),a
14298                     ; 3317 	A_Addr_CD=rxphyadr[0][1];
14300  2610 c60006        	ld	a,_rxphyadr+1
14301  2613 6b04          	ld	(OFST-2,sp),a
14302                     ; 3319 	B_Addr_AB=rxphyadr[1][0];
14304  2615 c60007        	ld	a,_rxphyadr+2
14305  2618 6b05          	ld	(OFST-1,sp),a
14306                     ; 3320 	B_Addr_CD=rxphyadr[1][1];
14308  261a c60008        	ld	a,_rxphyadr+3
14309  261d 6b06          	ld	(OFST+0,sp),a
14310                     ; 3323 	A_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -A_Addr_AB-A_Addr_CD)%0x100;
14312  261f 7b0d          	ld	a,(OFST+7,sp)
14313  2621 5f            	clrw	x
14314  2622 1b08          	add	a,(OFST+2,sp)
14315  2624 2401          	jrnc	L015
14316  2626 5c            	incw	x
14317  2627               L015:
14318  2627 1b0c          	add	a,(OFST+6,sp)
14319  2629 2401          	jrnc	L215
14320  262b 5c            	incw	x
14321  262c               L215:
14322  262c 1003          	sub	a,(OFST-3,sp)
14323  262e 2401          	jrnc	L415
14324  2630 5a            	decw	x
14325  2631               L415:
14326  2631 1004          	sub	a,(OFST-2,sp)
14327  2633 2401          	jrnc	L615
14328  2635 5a            	decw	x
14329  2636               L615:
14330  2636 02            	rlwa	x,a
14331  2637 90ae0100      	ldw	y,#256
14332  263b 8d000000      	callf	d_idiv
14334  263f 51            	exgw	x,y
14335  2640 01            	rrwa	x,a
14336  2641 6b01          	ld	(OFST-5,sp),a
14337  2643 02            	rlwa	x,a
14338                     ; 3324 	B_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -B_Addr_AB-B_Addr_CD)%0x100;
14340  2644 7b0d          	ld	a,(OFST+7,sp)
14341  2646 5f            	clrw	x
14342  2647 1b08          	add	a,(OFST+2,sp)
14343  2649 2401          	jrnc	L025
14344  264b 5c            	incw	x
14345  264c               L025:
14346  264c 1b0c          	add	a,(OFST+6,sp)
14347  264e 2401          	jrnc	L225
14348  2650 5c            	incw	x
14349  2651               L225:
14350  2651 1005          	sub	a,(OFST-1,sp)
14351  2653 2401          	jrnc	L425
14352  2655 5a            	decw	x
14353  2656               L425:
14354  2656 1006          	sub	a,(OFST+0,sp)
14355  2658 2401          	jrnc	L625
14356  265a 5a            	decw	x
14357  265b               L625:
14358  265b 02            	rlwa	x,a
14359  265c 90ae0100      	ldw	y,#256
14360  2660 8d000000      	callf	d_idiv
14362  2664 51            	exgw	x,y
14363  2665 01            	rrwa	x,a
14364  2666 6b02          	ld	(OFST-4,sp),a
14365  2668 02            	rlwa	x,a
14366                     ; 3327 	hdmirxwr(REG_RX_0C1,u8_VSDB_Addr);			//VSDB Start Address
14368  2669 7b07          	ld	a,(OFST+1,sp)
14369  266b 97            	ld	xl,a
14370  266c a6c1          	ld	a,#193
14371  266e 95            	ld	xh,a
14372  266f 8d690069      	callf	L56f_hdmirxwr
14374                     ; 3328 	hdmirxwr(REG_RX_0C2,A_Addr_AB);					//Port 0 AB
14376  2673 7b03          	ld	a,(OFST-3,sp)
14377  2675 97            	ld	xl,a
14378  2676 a6c2          	ld	a,#194
14379  2678 95            	ld	xh,a
14380  2679 8d690069      	callf	L56f_hdmirxwr
14382                     ; 3329 	hdmirxwr(REG_RX_0C3,A_Addr_CD);				//Port 0 CD
14384  267d 7b04          	ld	a,(OFST-2,sp)
14385  267f 97            	ld	xl,a
14386  2680 a6c3          	ld	a,#195
14387  2682 95            	ld	xh,a
14388  2683 8d690069      	callf	L56f_hdmirxwr
14390                     ; 3330 	hdmirxwr(REG_RX_0C5,A_Block1_CheckSum);		//Port 0 Bank 1 CheckSum
14392  2687 7b01          	ld	a,(OFST-5,sp)
14393  2689 97            	ld	xl,a
14394  268a a6c5          	ld	a,#197
14395  268c 95            	ld	xh,a
14396  268d 8d690069      	callf	L56f_hdmirxwr
14398                     ; 3332 	hdmirxwr(REG_RX_0C6,B_Addr_AB);					//Port 1 AB
14400  2691 7b05          	ld	a,(OFST-1,sp)
14401  2693 97            	ld	xl,a
14402  2694 a6c6          	ld	a,#198
14403  2696 95            	ld	xh,a
14404  2697 8d690069      	callf	L56f_hdmirxwr
14406                     ; 3333 	hdmirxwr(REG_RX_0C7,B_Addr_CD);				//Port 1 CD
14408  269b 7b06          	ld	a,(OFST+0,sp)
14409  269d 97            	ld	xl,a
14410  269e a6c7          	ld	a,#199
14411  26a0 95            	ld	xh,a
14412  26a1 8d690069      	callf	L56f_hdmirxwr
14414                     ; 3334 	hdmirxwr(REG_RX_0C9,B_Block1_CheckSum);		//Port 1 Bank 1 CheckSum
14416  26a5 7b02          	ld	a,(OFST-4,sp)
14417  26a7 97            	ld	xl,a
14418  26a8 a6c9          	ld	a,#201
14419  26aa 95            	ld	xh,a
14420  26ab 8d690069      	callf	L56f_hdmirxwr
14422                     ; 3338 }
14425  26af 5b08          	addw	sp,#8
14426  26b1 87            	retf
14461                     ; 3339 static void PhyAdrSet(void)
14461                     ; 3340 {
14462                     	switch	.text
14463  26b2               L123f_PhyAdrSet:
14467                     ; 3341 	txphyA = (txphyadr[0]&0xF0)>>4;
14469  26b2 c6000e        	ld	a,_txphyadr
14470  26b5 a4f0          	and	a,#240
14471  26b7 4e            	swap	a
14472  26b8 a40f          	and	a,#15
14473  26ba c7000d        	ld	_txphyA,a
14474                     ; 3342 	txphyB = (txphyadr[0]&0x0F);
14476  26bd c6000e        	ld	a,_txphyadr
14477  26c0 a40f          	and	a,#15
14478  26c2 c7000c        	ld	_txphyB,a
14479                     ; 3343 	txphyC = (txphyadr[1]&0xF0)>>4;
14481  26c5 c6000f        	ld	a,_txphyadr+1
14482  26c8 a4f0          	and	a,#240
14483  26ca 4e            	swap	a
14484  26cb a40f          	and	a,#15
14485  26cd c7000b        	ld	_txphyC,a
14486                     ; 3344 	txphyD = (txphyadr[1]&0x0F);
14488  26d0 c6000f        	ld	a,_txphyadr+1
14489  26d3 a40f          	and	a,#15
14490  26d5 c7000a        	ld	_txphyD,a
14491                     ; 3346 	if( txphyA==0 && txphyB==0 && txphyC==0 && txphyD==0 )
14493  26d8 725d000d      	tnz	_txphyA
14494  26dc 2618          	jrne	L7206
14496  26de 725d000c      	tnz	_txphyB
14497  26e2 2612          	jrne	L7206
14499  26e4 725d000b      	tnz	_txphyC
14500  26e8 260c          	jrne	L7206
14502  26ea 725d000a      	tnz	_txphyD
14503  26ee 2606          	jrne	L7206
14504                     ; 3347 		txphylevel = 0;
14506  26f0 725f0009      	clr	_txphylevel
14508  26f4 203a          	jra	L1306
14509  26f6               L7206:
14510                     ; 3348 	else if( txphyB==0 && txphyC==0 && txphyD==0 )
14512  26f6 725d000c      	tnz	_txphyB
14513  26fa 2612          	jrne	L3306
14515  26fc 725d000b      	tnz	_txphyC
14516  2700 260c          	jrne	L3306
14518  2702 725d000a      	tnz	_txphyD
14519  2706 2606          	jrne	L3306
14520                     ; 3349 		txphylevel = 1;
14522  2708 35010009      	mov	_txphylevel,#1
14524  270c 2022          	jra	L1306
14525  270e               L3306:
14526                     ; 3350 	else if( txphyC==0 && txphyD==0 )
14528  270e 725d000b      	tnz	_txphyC
14529  2712 260c          	jrne	L7306
14531  2714 725d000a      	tnz	_txphyD
14532  2718 2606          	jrne	L7306
14533                     ; 3351 		txphylevel = 2;
14535  271a 35020009      	mov	_txphylevel,#2
14537  271e 2010          	jra	L1306
14538  2720               L7306:
14539                     ; 3352 	else if( txphyD==0 )
14541  2720 725d000a      	tnz	_txphyD
14542  2724 2606          	jrne	L3406
14543                     ; 3353 		txphylevel = 3;
14545  2726 35030009      	mov	_txphylevel,#3
14547  272a 2004          	jra	L1306
14548  272c               L3406:
14549                     ; 3355 		txphylevel = 4;
14551  272c 35040009      	mov	_txphylevel,#4
14552  2730               L1306:
14553                     ; 3357 	rxcurport = 0;
14555  2730 725f0000      	clr	_rxcurport
14556                     ; 3358 	switch( txphylevel )
14558  2734 c60009        	ld	a,_txphylevel
14560                     ; 3389 			break;
14561  2737 4d            	tnz	a
14562  2738 271b          	jreq	L5006
14563  273a 4a            	dec	a
14564  273b 272a          	jreq	L7006
14565  273d 4a            	dec	a
14566  273e 274a          	jreq	L1106
14567  2740 4a            	dec	a
14568  2741 275b          	jreq	L3106
14569  2743               L5106:
14570                     ; 3384 		default:
14570                     ; 3385 			rxphyadr[0][0] = 0xFF;
14572  2743 35ff0005      	mov	_rxphyadr,#255
14573                     ; 3386 			rxphyadr[0][1] = 0xFF;
14575  2747 35ff0006      	mov	_rxphyadr+1,#255
14576                     ; 3387 			rxphyadr[1][0] = 0xFF;
14578  274b 35ff0007      	mov	_rxphyadr+2,#255
14579                     ; 3388 			rxphyadr[1][1] = 0xFF;
14581  274f 35ff0008      	mov	_rxphyadr+3,#255
14582                     ; 3389 			break;
14584  2753 206c          	jra	L1506
14585  2755               L5006:
14586                     ; 3360 		case 0:
14586                     ; 3361 			rxphyadr[0][0] = 0x10;
14588  2755 35100005      	mov	_rxphyadr,#16
14589                     ; 3362 			rxphyadr[0][1] = 0x00;
14591  2759 725f0006      	clr	_rxphyadr+1
14592                     ; 3363 			rxphyadr[1][0] = 0x20;
14594  275d 35200007      	mov	_rxphyadr+2,#32
14595                     ; 3364 			rxphyadr[1][1] = 0x00;
14597  2761 725f0008      	clr	_rxphyadr+3
14598                     ; 3365 			break;
14600  2765 205a          	jra	L1506
14601  2767               L7006:
14602                     ; 3366 		case 1:
14602                     ; 3367 			rxphyadr[0][0] = (txphyA<<4)+0x01;
14604  2767 c6000d        	ld	a,_txphyA
14605  276a 97            	ld	xl,a
14606  276b a610          	ld	a,#16
14607  276d 42            	mul	x,a
14608  276e 9f            	ld	a,xl
14609  276f 4c            	inc	a
14610  2770 c70005        	ld	_rxphyadr,a
14611                     ; 3368 			rxphyadr[0][1] = 0x00;
14613  2773 725f0006      	clr	_rxphyadr+1
14614                     ; 3369 			rxphyadr[1][0] = (txphyA<<4)+0x02;
14616  2777 c6000d        	ld	a,_txphyA
14617  277a 97            	ld	xl,a
14618  277b a610          	ld	a,#16
14619  277d 42            	mul	x,a
14620  277e 9f            	ld	a,xl
14621  277f ab02          	add	a,#2
14622  2781 c70007        	ld	_rxphyadr+2,a
14623                     ; 3370 			rxphyadr[1][1] = 0x00;
14625  2784 725f0008      	clr	_rxphyadr+3
14626                     ; 3371 			break;
14628  2788 2037          	jra	L1506
14629  278a               L1106:
14630                     ; 3372 		case 2:
14630                     ; 3373 			rxphyadr[0][0] = txphyadr[0];
14632  278a 55000e0005    	mov	_rxphyadr,_txphyadr
14633                     ; 3374 			rxphyadr[0][1] = 0x10;
14635  278f 35100006      	mov	_rxphyadr+1,#16
14636                     ; 3375 			rxphyadr[1][0] = txphyadr[0];
14638  2793 55000e0007    	mov	_rxphyadr+2,_txphyadr
14639                     ; 3376 			rxphyadr[1][1] = 0x20;
14641  2798 35200008      	mov	_rxphyadr+3,#32
14642                     ; 3377 			break;
14644  279c 2023          	jra	L1506
14645  279e               L3106:
14646                     ; 3378 		case 3:
14646                     ; 3379 			rxphyadr[0][0] = txphyadr[0];
14648  279e 55000e0005    	mov	_rxphyadr,_txphyadr
14649                     ; 3380 			rxphyadr[0][1] = (txphyC<<4)+0x01;
14651  27a3 c6000b        	ld	a,_txphyC
14652  27a6 97            	ld	xl,a
14653  27a7 a610          	ld	a,#16
14654  27a9 42            	mul	x,a
14655  27aa 9f            	ld	a,xl
14656  27ab 4c            	inc	a
14657  27ac c70006        	ld	_rxphyadr+1,a
14658                     ; 3381 			rxphyadr[1][0] = txphyadr[0];
14660  27af 55000e0007    	mov	_rxphyadr+2,_txphyadr
14661                     ; 3382 			rxphyadr[1][1] = (txphyC<<4)+0x02;
14663  27b4 c6000b        	ld	a,_txphyC
14664  27b7 97            	ld	xl,a
14665  27b8 a610          	ld	a,#16
14666  27ba 42            	mul	x,a
14667  27bb 9f            	ld	a,xl
14668  27bc ab02          	add	a,#2
14669  27be c70008        	ld	_rxphyadr+3,a
14670                     ; 3383 			break;
14672  27c1               L1506:
14673                     ; 3402 	MHLRX_DEBUG_PRINTF(printf("\r\nDnStrm PhyAdr = %x, %x, %x, %x\r\n", txphyA, txphyB, txphyC, txphyD));
14675  27c1 3b000a        	push	_txphyD
14676  27c4 3b000b        	push	_txphyC
14677  27c7 3b000c        	push	_txphyB
14678  27ca 3b000d        	push	_txphyA
14679  27cd ae1bff        	ldw	x,#L3506
14680  27d0 8d000000      	callf	f_printf
14682  27d4 5b04          	addw	sp,#4
14683                     ; 3404 	rxphyA = (rxphyadr[0][0]&0xF0)>>4;
14685  27d6 c60005        	ld	a,_rxphyadr
14686  27d9 a4f0          	and	a,#240
14687  27db 4e            	swap	a
14688  27dc a40f          	and	a,#15
14689  27de c70004        	ld	_rxphyA,a
14690                     ; 3405 	rxphyB = (rxphyadr[0][0]&0x0F);
14692  27e1 c60005        	ld	a,_rxphyadr
14693  27e4 a40f          	and	a,#15
14694  27e6 c70003        	ld	_rxphyB,a
14695                     ; 3406 	rxphyC = (rxphyadr[0][1]&0xF0)>>4;
14697  27e9 c60006        	ld	a,_rxphyadr+1
14698  27ec a4f0          	and	a,#240
14699  27ee 4e            	swap	a
14700  27ef a40f          	and	a,#15
14701  27f1 c70002        	ld	_rxphyC,a
14702                     ; 3407 	rxphyD = (rxphyadr[0][1]&0x0F);
14704  27f4 c60006        	ld	a,_rxphyadr+1
14705  27f7 a40f          	and	a,#15
14706  27f9 c70001        	ld	_rxphyD,a
14707                     ; 3408 	MHLRX_DEBUG_PRINTF(printf(" PortA PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));
14709  27fc 3b0001        	push	_rxphyD
14710  27ff 3b0002        	push	_rxphyC
14711  2802 3b0003        	push	_rxphyB
14712  2805 3b0004        	push	_rxphyA
14713  2808 ae1bde        	ldw	x,#L5506
14714  280b 8d000000      	callf	f_printf
14716  280f 5b04          	addw	sp,#4
14717                     ; 3410 	rxphyA = (rxphyadr[1][0]&0xF0)>>4;
14719  2811 c60007        	ld	a,_rxphyadr+2
14720  2814 a4f0          	and	a,#240
14721  2816 4e            	swap	a
14722  2817 a40f          	and	a,#15
14723  2819 c70004        	ld	_rxphyA,a
14724                     ; 3411 	rxphyB = (rxphyadr[1][0]&0x0F);
14726  281c c60007        	ld	a,_rxphyadr+2
14727  281f a40f          	and	a,#15
14728  2821 c70003        	ld	_rxphyB,a
14729                     ; 3412 	rxphyC = (rxphyadr[1][1]&0xF0)>>4;
14731  2824 c60008        	ld	a,_rxphyadr+3
14732  2827 a4f0          	and	a,#240
14733  2829 4e            	swap	a
14734  282a a40f          	and	a,#15
14735  282c c70002        	ld	_rxphyC,a
14736                     ; 3413 	rxphyD = (rxphyadr[1][1]&0x0F);
14738  282f c60008        	ld	a,_rxphyadr+3
14739  2832 a40f          	and	a,#15
14740  2834 c70001        	ld	_rxphyD,a
14741                     ; 3414 	MHLRX_DEBUG_PRINTF(printf(" PortB PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));
14743  2837 3b0001        	push	_rxphyD
14744  283a 3b0002        	push	_rxphyC
14745  283d 3b0003        	push	_rxphyB
14746  2840 3b0004        	push	_rxphyA
14747  2843 ae1bbd        	ldw	x,#L7506
14748  2846 8d000000      	callf	f_printf
14750  284a 5b04          	addw	sp,#4
14751                     ; 3416 }
14754  284c 87            	retf
14790                     ; 3428 static void RCPinitQ(struct it6802_dev_data *it6802)
14790                     ; 3429 {
14791                     	switch	.text
14792  284d               L323f_RCPinitQ:
14796                     ; 3430 	it6802->RCPhead = 0;
14798  284d 6f71          	clr	(113,x)
14799                     ; 3431 	it6802->RCPtail = 0;
14801  284f 6f72          	clr	(114,x)
14802                     ; 3432 	it6802->RCPResult = RCP_Result_Finish;
14804  2851 a604          	ld	a,#4
14805  2853 e774          	ld	(116,x),a
14806                     ; 3433 }
14809  2855 87            	retf
14861                     ; 3435 void RCPKeyPush(unsigned char ucKey)
14861                     ; 3436 {
14862                     	switch	.text
14863  2856               f_RCPKeyPush:
14865  2856 88            	push	a
14866  2857 5203          	subw	sp,#3
14867       00000003      OFST:	set	3
14870                     ; 3439 	struct it6802_dev_data *it6802 = get_it6802_dev_data();
14872  2859 8dd301d3      	callf	L501f_get_it6802_dev_data
14874  285d 1f02          	ldw	(OFST-1,sp),x
14875                     ; 3443 	if( ( it6802->RCPhead % MAXRCPINDEX ) == ( ( it6802->RCPtail+1 ) % MAXRCPINDEX ) )
14877  285f 1e02          	ldw	x,(OFST-1,sp)
14878  2861 e671          	ld	a,(113,x)
14879  2863 5f            	clrw	x
14880  2864 97            	ld	xl,a
14881  2865 a605          	ld	a,#5
14882  2867 8d000000      	callf	d_smodx
14884  286b 1602          	ldw	y,(OFST-1,sp)
14885  286d 90e672        	ld	a,(114,y)
14886  2870 905f          	clrw	y
14887  2872 9097          	ld	yl,a
14888  2874 905c          	incw	y
14889  2876 a605          	ld	a,#5
14890  2878 8d000000      	callf	d_smody
14892  287c 90bf00        	ldw	c_y,y
14893  287f b300          	cpw	x,c_y
14894  2881 272c          	jreq	L045
14895                     ; 3445 		return;
14897                     ; 3449 	it6802->RCPtail += 1;
14899  2883 1e02          	ldw	x,(OFST-1,sp)
14900  2885 6c72          	inc	(114,x)
14901                     ; 3450 	i=it6802->RCPtail % MAXRCPINDEX;
14903  2887 1e02          	ldw	x,(OFST-1,sp)
14904  2889 e672          	ld	a,(114,x)
14905  288b 5f            	clrw	x
14906  288c 97            	ld	xl,a
14907  288d a605          	ld	a,#5
14908  288f 8d000000      	callf	d_smodx
14910  2893 01            	rrwa	x,a
14911  2894 6b01          	ld	(OFST-2,sp),a
14912  2896 02            	rlwa	x,a
14913                     ; 3451 	it6802->RCPTxArray[i]=ucKey;
14915  2897 7b02          	ld	a,(OFST-1,sp)
14916  2899 97            	ld	xl,a
14917  289a 7b03          	ld	a,(OFST+0,sp)
14918  289c 1b01          	add	a,(OFST-2,sp)
14919  289e 2401          	jrnc	L635
14920  28a0 5c            	incw	x
14921  28a1               L635:
14922  28a1 02            	rlwa	x,a
14923  28a2 7b04          	ld	a,(OFST+1,sp)
14924  28a4 e76c          	ld	(108,x),a
14925                     ; 3453 	SwitchRCPStatus(it6802,RCP_Transfer);
14927  28a6 4b03          	push	#3
14928  28a8 1e03          	ldw	x,(OFST+0,sp)
14929  28aa 8d5e295e      	callf	L133f_SwitchRCPStatus
14931  28ae 84            	pop	a
14932                     ; 3455 }
14933  28af               L045:
14936  28af 5b04          	addw	sp,#4
14937  28b1 87            	retf
14976                     ; 3457 static int RCPKeyPop(struct it6802_dev_data *it6802)
14976                     ; 3458 {
14977                     	switch	.text
14978  28b2               L523f_RCPKeyPop:
14980  28b2 89            	pushw	x
14981       00000000      OFST:	set	0
14984                     ; 3461 	if( (it6802->RCPhead % MAXRCPINDEX) == (it6802->RCPtail % MAXRCPINDEX) )
14986  28b3 e671          	ld	a,(113,x)
14987  28b5 5f            	clrw	x
14988  28b6 97            	ld	xl,a
14989  28b7 a605          	ld	a,#5
14990  28b9 8d000000      	callf	d_smodx
14992  28bd 1601          	ldw	y,(OFST+1,sp)
14993  28bf 90e672        	ld	a,(114,y)
14994  28c2 905f          	clrw	y
14995  28c4 9097          	ld	yl,a
14996  28c6 a605          	ld	a,#5
14997  28c8 8d000000      	callf	d_smody
14999  28cc 90bf00        	ldw	c_y,y
15000  28cf b300          	cpw	x,c_y
15001  28d1 2605          	jrne	L7416
15002                     ; 3463 		return FAIL;
15004  28d3 aeffff        	ldw	x,#65535
15006  28d6 203c          	jra	L445
15007  28d8               L7416:
15008                     ; 3466 	it6802->RCPhead += 1;
15010  28d8 1e01          	ldw	x,(OFST+1,sp)
15011  28da 6c71          	inc	(113,x)
15012                     ; 3468 	it6802->txmsgdata[0]=MSG_RCP;
15014  28dc 1e01          	ldw	x,(OFST+1,sp)
15015  28de a610          	ld	a,#16
15016  28e0 e748          	ld	(72,x),a
15017                     ; 3469 	it6802->txmsgdata[1]=it6802->RCPTxArray[ it6802->RCPhead % MAXRCPINDEX ];	//tx new key to peer
15019  28e2 1e01          	ldw	x,(OFST+1,sp)
15020  28e4 e671          	ld	a,(113,x)
15021  28e6 5f            	clrw	x
15022  28e7 97            	ld	xl,a
15023  28e8 a605          	ld	a,#5
15024  28ea 8d000000      	callf	d_smodx
15026  28ee 72fb01        	addw	x,(OFST+1,sp)
15027  28f1 e66c          	ld	a,(108,x)
15028  28f3 1e01          	ldw	x,(OFST+1,sp)
15029  28f5 e749          	ld	(73,x),a
15030                     ; 3471 	MHLRX_DEBUG_PRINTF(printf("RCPKeyPop() key = %x \r\n",it6802->txmsgdata[1]));
15032  28f7 1e01          	ldw	x,(OFST+1,sp)
15033  28f9 e649          	ld	a,(73,x)
15034  28fb 88            	push	a
15035  28fc ae1ba5        	ldw	x,#L1516
15036  28ff 8d000000      	callf	f_printf
15038  2903 84            	pop	a
15039                     ; 3473 	cbus_send_mscmsg(it6802);
15041  2904 1e01          	ldw	x,(OFST+1,sp)
15042  2906 8d361c36      	callf	L352f_cbus_send_mscmsg
15044                     ; 3474 	SwitchRCPResult(it6802,RCP_Result_Transfer);
15046  290a 4b03          	push	#3
15047  290c 1e02          	ldw	x,(OFST+2,sp)
15048  290e 8d172917      	callf	L723f_SwitchRCPResult
15050  2912 84            	pop	a
15051                     ; 3476 	return SUCCESS;
15053  2913 5f            	clrw	x
15055  2914               L445:
15057  2914 5b02          	addw	sp,#2
15058  2916 87            	retf
15105                     ; 3479 static void SwitchRCPResult(struct it6802_dev_data *it6802,RCPResult_Type RCPResult)
15105                     ; 3480 {
15106                     	switch	.text
15107  2917               L723f_SwitchRCPResult:
15109  2917 89            	pushw	x
15110       00000000      OFST:	set	0
15113                     ; 3481 	it6802->RCPResult = RCPResult;
15115  2918 7b06          	ld	a,(OFST+6,sp)
15116  291a 1e01          	ldw	x,(OFST+1,sp)
15117  291c e774          	ld	(116,x),a
15118                     ; 3482 	switch(RCPResult)
15120  291e 7b06          	ld	a,(OFST+6,sp)
15122                     ; 3489 		case RCP_Result_Unknown:	break;
15123  2920 4d            	tnz	a
15124  2921 270e          	jreq	L3516
15125  2923 4a            	dec	a
15126  2924 2714          	jreq	L5516
15127  2926 4a            	dec	a
15128  2927 271a          	jreq	L7516
15129  2929 4a            	dec	a
15130  292a 2720          	jreq	L1616
15131  292c 4a            	dec	a
15132  292d 2726          	jreq	L3616
15133  292f 202b          	jra	L5126
15134  2931               L3516:
15135                     ; 3484 		case RCP_Result_OK:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_OK \r\n"));   break;
15137  2931 ae1b94        	ldw	x,#L7126
15138  2934 8d000000      	callf	f_printf
15142  2938 2022          	jra	L5126
15143  293a               L5516:
15144                     ; 3485 		case RCP_Result_FAIL:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_FAIL \r\n"));   break;
15146  293a ae1b81        	ldw	x,#L1226
15147  293d 8d000000      	callf	f_printf
15151  2941 2019          	jra	L5126
15152  2943               L7516:
15153                     ; 3486 		case RCP_Result_ABORT:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_ABORT \r\n"));   break;
15155  2943 ae1b6d        	ldw	x,#L3226
15156  2946 8d000000      	callf	f_printf
15160  294a 2010          	jra	L5126
15161  294c               L1616:
15162                     ; 3487 		case RCP_Result_Transfer:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Transfer \r\n"));   break;
15164  294c ae1b56        	ldw	x,#L5226
15165  294f 8d000000      	callf	f_printf
15169  2953 2007          	jra	L5126
15170  2955               L3616:
15171                     ; 3488 		case RCP_Result_Finish:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Finish \r\n"));   break;
15173  2955 ae1b41        	ldw	x,#L7226
15174  2958 8d000000      	callf	f_printf
15178  295c               L5616:
15179                     ; 3489 		case RCP_Result_Unknown:	break;
15181  295c               L5126:
15182                     ; 3492 }
15185  295c 85            	popw	x
15186  295d 87            	retf
15232                     ; 3494 static void SwitchRCPStatus(struct it6802_dev_data *it6802,RCPState_Type RCPState)
15232                     ; 3495 {
15233                     	switch	.text
15234  295e               L133f_SwitchRCPStatus:
15236  295e 89            	pushw	x
15237       00000000      OFST:	set	0
15240                     ; 3496 	it6802->RCPState = RCPState;
15242  295f 7b06          	ld	a,(OFST+6,sp)
15243  2961 1e01          	ldw	x,(OFST+1,sp)
15244  2963 e773          	ld	(115,x),a
15245                     ; 3497 }
15248  2965 85            	popw	x
15249  2966 87            	retf
15287                     ; 3499 static void RCPManager(struct it6802_dev_data *it6802)
15287                     ; 3500 {
15288                     	switch	.text
15289  2967               L333f_RCPManager:
15291  2967 89            	pushw	x
15292       00000000      OFST:	set	0
15295                     ; 3502 	switch(it6802->RCPState)
15297  2968 e673          	ld	a,(115,x)
15298  296a a103          	cp	a,#3
15299  296c 261c          	jrne	L3036
15302  296e               L5526:
15303                     ; 3507 				if(it6802->RCPResult == RCP_Result_Finish)
15305  296e 1e01          	ldw	x,(OFST+1,sp)
15306  2970 e674          	ld	a,(116,x)
15307  2972 a104          	cp	a,#4
15308  2974 2614          	jrne	L3036
15309                     ; 3509 					if(RCPKeyPop(it6802)==FAIL)
15311  2976 1e01          	ldw	x,(OFST+1,sp)
15312  2978 8db228b2      	callf	L523f_RCPKeyPop
15314  297c a3ffff        	cpw	x,#65535
15315  297f 2609          	jrne	L3036
15316                     ; 3510 						SwitchRCPStatus(it6802,RCP_Empty);
15318  2981 4b04          	push	#4
15319  2983 1e02          	ldw	x,(OFST+2,sp)
15320  2985 8d5e295e      	callf	L133f_SwitchRCPStatus
15322  2989 84            	pop	a
15323  298a               L7526:
15324                     ; 3515 		default :
15324                     ; 3516 			break;
15326  298a               L3036:
15327                     ; 3518 }
15330  298a 85            	popw	x
15331  298b 87            	retf
15454                     ; 3528 static void IT6802MHLInterruptHandler(struct it6802_dev_data *it6802)
15454                     ; 3529 {
15455                     	switch	.text
15456  298c               L533f_IT6802MHLInterruptHandler:
15458  298c 89            	pushw	x
15459  298d 5208          	subw	sp,#8
15460       00000008      OFST:	set	8
15463                     ; 3534 	MHL04 = 0x00;
15465                     ; 3535 	MHL05 = 0x00;
15467                     ; 3536 	MHL06 = 0x00;
15469                     ; 3537 	MHLA0 = 0x00;
15471                     ; 3538 	MHLA1 = 0x00;
15473                     ; 3539 	MHLA2 = 0x00;
15475                     ; 3540 	MHLA3 = 0x00;
15477                     ; 3542 	MHL04 = mhlrxrd(0x04);
15479  298f a604          	ld	a,#4
15480  2991 8d030103      	callf	L37f_mhlrxrd
15482  2995 6b05          	ld	(OFST-3,sp),a
15483                     ; 3543 	MHL05 = mhlrxrd(0x05);
15485  2997 a605          	ld	a,#5
15486  2999 8d030103      	callf	L37f_mhlrxrd
15488  299d 6b06          	ld	(OFST-2,sp),a
15489                     ; 3544 	MHL06 = mhlrxrd(0x06);
15491  299f a606          	ld	a,#6
15492  29a1 8d030103      	callf	L37f_mhlrxrd
15494  29a5 6b08          	ld	(OFST+0,sp),a
15495                     ; 3546 	mhlrxwr(0x04,MHL04);
15497  29a7 7b05          	ld	a,(OFST-3,sp)
15498  29a9 97            	ld	xl,a
15499  29aa a604          	ld	a,#4
15500  29ac 95            	ld	xh,a
15501  29ad 8d3a013a      	callf	L57f_mhlrxwr
15503                     ; 3547 	mhlrxwr(0x05,MHL05);
15505  29b1 7b06          	ld	a,(OFST-2,sp)
15506  29b3 97            	ld	xl,a
15507  29b4 a605          	ld	a,#5
15508  29b6 95            	ld	xh,a
15509  29b7 8d3a013a      	callf	L57f_mhlrxwr
15511                     ; 3548 	mhlrxwr(0x06,MHL06);
15513  29bb 7b08          	ld	a,(OFST+0,sp)
15514  29bd 97            	ld	xl,a
15515  29be a606          	ld	a,#6
15516  29c0 95            	ld	xh,a
15517  29c1 8d3a013a      	callf	L57f_mhlrxwr
15519                     ; 3550 	MHLA0 = mhlrxrd(0xA0);
15521  29c5 a6a0          	ld	a,#160
15522  29c7 8d030103      	callf	L37f_mhlrxrd
15524  29cb 6b04          	ld	(OFST-4,sp),a
15525                     ; 3551 	MHLA1 = mhlrxrd(0xA1);
15527  29cd a6a1          	ld	a,#161
15528  29cf 8d030103      	callf	L37f_mhlrxrd
15530  29d3 6b03          	ld	(OFST-5,sp),a
15531                     ; 3552 	MHLA2 = mhlrxrd(0xA2);
15533  29d5 a6a2          	ld	a,#162
15534  29d7 8d030103      	callf	L37f_mhlrxrd
15536  29db 6b02          	ld	(OFST-6,sp),a
15537                     ; 3553 	MHLA3 = mhlrxrd(0xA3);
15539  29dd a6a3          	ld	a,#163
15540  29df 8d030103      	callf	L37f_mhlrxrd
15542  29e3 6b07          	ld	(OFST-1,sp),a
15543                     ; 3555 	mhlrxwr(0xA0,MHLA0);
15545  29e5 7b04          	ld	a,(OFST-4,sp)
15546  29e7 97            	ld	xl,a
15547  29e8 a6a0          	ld	a,#160
15548  29ea 95            	ld	xh,a
15549  29eb 8d3a013a      	callf	L57f_mhlrxwr
15551                     ; 3556 	mhlrxwr(0xA1,MHLA1);
15553  29ef 7b03          	ld	a,(OFST-5,sp)
15554  29f1 97            	ld	xl,a
15555  29f2 a6a1          	ld	a,#161
15556  29f4 95            	ld	xh,a
15557  29f5 8d3a013a      	callf	L57f_mhlrxwr
15559                     ; 3557 	mhlrxwr(0xA2,MHLA2);
15561  29f9 7b02          	ld	a,(OFST-6,sp)
15562  29fb 97            	ld	xl,a
15563  29fc a6a2          	ld	a,#162
15564  29fe 95            	ld	xh,a
15565  29ff 8d3a013a      	callf	L57f_mhlrxwr
15567                     ; 3558 	mhlrxwr(0xA3,MHLA3);
15569  2a03 7b07          	ld	a,(OFST-1,sp)
15570  2a05 97            	ld	xl,a
15571  2a06 a6a3          	ld	a,#163
15572  2a08 95            	ld	xh,a
15573  2a09 8d3a013a      	callf	L57f_mhlrxwr
15575                     ; 3562 	if( MHL04&0x01 ) {
15577  2a0d 7b05          	ld	a,(OFST-3,sp)
15578  2a0f a501          	bcp	a,#1
15579  2a11 2707          	jreq	L3536
15580                     ; 3564 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer TX Packet Done Interrupt ...\r\n"));
15582  2a13 ae1b0b        	ldw	x,#L5536
15583  2a16 8d000000      	callf	f_printf
15585  2a1a               L3536:
15586                     ; 3568 	if( MHL04&0x02 ) {
15588  2a1a 7b05          	ld	a,(OFST-3,sp)
15589  2a1c a502          	bcp	a,#2
15590  2a1e 272c          	jreq	L7536
15591                     ; 3570 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer TX Packet Fail Interrupt ... \r\n"));
15593  2a20 ae1acd        	ldw	x,#L1636
15594  2a23 8d000000      	callf	f_printf
15596                     ; 3571 		IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));
15598  2a27 a615          	ld	a,#21
15599  2a29 8d030103      	callf	L37f_mhlrxrd
15601  2a2d 5f            	clrw	x
15602  2a2e 97            	ld	xl,a
15603  2a2f 89            	pushw	x
15604  2a30 ae1aa3        	ldw	x,#L3636
15605  2a33 8d000000      	callf	f_printf
15607  2a37 85            	popw	x
15608                     ; 3573 		rddata = mhlrxrd(0x15);
15610  2a38 a615          	ld	a,#21
15611  2a3a 8d030103      	callf	L37f_mhlrxrd
15613  2a3e 6b07          	ld	(OFST-1,sp),a
15614                     ; 3575 		mhlrxwr(0x15, rddata&0xF0);
15616  2a40 7b07          	ld	a,(OFST-1,sp)
15617  2a42 a4f0          	and	a,#240
15618  2a44 97            	ld	xl,a
15619  2a45 a615          	ld	a,#21
15620  2a47 95            	ld	xh,a
15621  2a48 8d3a013a      	callf	L57f_mhlrxwr
15623  2a4c               L7536:
15624                     ; 3579 	if( MHL04&0x04 ) {
15626  2a4c 7b05          	ld	a,(OFST-3,sp)
15627  2a4e a504          	bcp	a,#4
15628  2a50 2707          	jreq	L5636
15629                     ; 3581 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer RX Packet Done Interrupt ...\r\n"));
15631  2a52 ae1a6d        	ldw	x,#L7636
15632  2a55 8d000000      	callf	f_printf
15634  2a59               L5636:
15635                     ; 3585 	if( MHL04&0x08 ) {
15637  2a59 7b05          	ld	a,(OFST-3,sp)
15638  2a5b a508          	bcp	a,#8
15639  2a5d 272c          	jreq	L1736
15640                     ; 3587 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer RX Packet Fail Interrupt ... \r\n"));
15642  2a5f ae1a2f        	ldw	x,#L3736
15643  2a62 8d000000      	callf	f_printf
15645                     ; 3589 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));
15647  2a66 a615          	ld	a,#21
15648  2a68 8d030103      	callf	L37f_mhlrxrd
15650  2a6c 5f            	clrw	x
15651  2a6d 97            	ld	xl,a
15652  2a6e 89            	pushw	x
15653  2a6f ae1aa3        	ldw	x,#L3636
15654  2a72 8d000000      	callf	f_printf
15656  2a76 85            	popw	x
15657                     ; 3591 		 rddata = mhlrxrd(0x15);
15659  2a77 a615          	ld	a,#21
15660  2a79 8d030103      	callf	L37f_mhlrxrd
15662  2a7d 6b07          	ld	(OFST-1,sp),a
15663                     ; 3593 		 mhlrxwr(0x15, rddata&0x0F);
15665  2a7f 7b07          	ld	a,(OFST-1,sp)
15666  2a81 a40f          	and	a,#15
15667  2a83 97            	ld	xl,a
15668  2a84 a615          	ld	a,#21
15669  2a86 95            	ld	xh,a
15670  2a87 8d3a013a      	callf	L57f_mhlrxwr
15672  2a8b               L1736:
15673                     ; 3598 	if( MHL04&0x10 ) {
15675  2a8b 7b05          	ld	a,(OFST-3,sp)
15676  2a8d a510          	bcp	a,#16
15677  2a8f 270d          	jreq	L5736
15678                     ; 3599 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX MSC_MSG Interrupt ...\r\n"));
15680  2a91 ae1a09        	ldw	x,#L7736
15681  2a94 8d000000      	callf	f_printf
15683                     ; 3601 	    mhl_read_mscmsg(it6802 );
15685  2a98 1e09          	ldw	x,(OFST+1,sp)
15686  2a9a 8d571a57      	callf	L542f_mhl_read_mscmsg
15688  2a9e               L5736:
15689                     ; 3605 	if( MHL04&0x20 ) {
15691  2a9e 7b05          	ld	a,(OFST-3,sp)
15692  2aa0 a520          	bcp	a,#32
15693  2aa2 2707          	jreq	L1046
15694                     ; 3606 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_STAT Interrupt ...\r\n"));
15696  2aa4 ae19e0        	ldw	x,#L3046
15697  2aa7 8d000000      	callf	f_printf
15699  2aab               L1046:
15700                     ; 3608 	if( MHL04&0x40 ) {
15702  2aab 7b05          	ld	a,(OFST-3,sp)
15703  2aad a540          	bcp	a,#64
15704  2aaf 2707          	jreq	L5046
15705                     ; 3610 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_BURST Interrupt  ...\r\n"));
15707  2ab1 ae19b5        	ldw	x,#L7046
15708  2ab4 8d000000      	callf	f_printf
15710  2ab8               L5046:
15711                     ; 3614 	if( MHL05&0x01 ) {
15713  2ab8 7b06          	ld	a,(OFST-2,sp)
15714  2aba a501          	bcp	a,#1
15715  2abc 2707          	jreq	L1146
15716                     ; 3616 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Done Interrupt ...\r\n"));
15718  2abe ae1991        	ldw	x,#L3146
15719  2ac1 8d000000      	callf	f_printf
15721  2ac5               L1146:
15722                     ; 3620 	if( MHL05&0x02 )
15724  2ac5 7b06          	ld	a,(OFST-2,sp)
15725  2ac7 a502          	bcp	a,#2
15726  2ac9 2756          	jreq	L5146
15727                     ; 3623 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail Interrupt (Unexpected) ...\r\n"));
15729  2acb ae1960        	ldw	x,#L7146
15730  2ace 8d000000      	callf	f_printf
15732                     ; 3624 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail reg18= %02X \r\n",(int)mhlrxrd(0x18)));
15734  2ad2 a618          	ld	a,#24
15735  2ad4 8d030103      	callf	L37f_mhlrxrd
15737  2ad8 5f            	clrw	x
15738  2ad9 97            	ld	xl,a
15739  2ada 89            	pushw	x
15740  2adb ae193d        	ldw	x,#L1246
15741  2ade 8d000000      	callf	f_printf
15743  2ae2 85            	popw	x
15744                     ; 3626 		rddata = mhlrxrd(0x18);
15746  2ae3 a618          	ld	a,#24
15747  2ae5 8d030103      	callf	L37f_mhlrxrd
15749  2ae9 6b07          	ld	(OFST-1,sp),a
15750                     ; 3627 		mhlrxwr(0x18, rddata);
15752  2aeb 7b07          	ld	a,(OFST-1,sp)
15753  2aed 97            	ld	xl,a
15754  2aee a618          	ld	a,#24
15755  2af0 95            	ld	xh,a
15756  2af1 8d3a013a      	callf	L57f_mhlrxwr
15758                     ; 3629 		rddata = mhlrxrd(0x19);
15760  2af5 a619          	ld	a,#25
15761  2af7 8d030103      	callf	L37f_mhlrxrd
15763  2afb 6b07          	ld	(OFST-1,sp),a
15764                     ; 3631 		if( rddata&0x01 )
15766  2afd 7b07          	ld	a,(OFST-1,sp)
15767  2aff a501          	bcp	a,#1
15768  2b01 2707          	jreq	L3246
15769                     ; 3632 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX FW Fail in the middle of the command sequence !!!\r\n"));
15771  2b03 ae18f8        	ldw	x,#L5246
15772  2b06 8d000000      	callf	f_printf
15774  2b0a               L3246:
15775                     ; 3633 		if( rddata&0x02 )
15777  2b0a 7b07          	ld	a,(OFST-1,sp)
15778  2b0c a502          	bcp	a,#2
15779  2b0e 2707          	jreq	L7246
15780                     ; 3634 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX Fail because FW mode RxPktFIFO not empty !!!\r\n"));
15782  2b10 ae18b8        	ldw	x,#L1346
15783  2b13 8d000000      	callf	f_printf
15785  2b17               L7246:
15786                     ; 3636 		mhlrxwr(0x19, rddata);
15788  2b17 7b07          	ld	a,(OFST-1,sp)
15789  2b19 97            	ld	xl,a
15790  2b1a a619          	ld	a,#25
15791  2b1c 95            	ld	xh,a
15792  2b1d 8d3a013a      	callf	L57f_mhlrxwr
15794  2b21               L5146:
15795                     ; 3641 	if( MHL05&0x04 ) {
15797  2b21 7b06          	ld	a,(OFST-2,sp)
15798  2b23 a504          	bcp	a,#4
15799  2b25 2711          	jreq	L3346
15800                     ; 3642 		 mhlrxwr(0x05, 0x04);
15802  2b27 ae0004        	ldw	x,#4
15803  2b2a a605          	ld	a,#5
15804  2b2c 95            	ld	xh,a
15805  2b2d 8d3a013a      	callf	L57f_mhlrxwr
15807                     ; 3644 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Done Interrupt ...\r\n"));
15809  2b31 ae1894        	ldw	x,#L5346
15810  2b34 8d000000      	callf	f_printf
15812  2b38               L3346:
15813                     ; 3647 	if( MHL05&0x08 ) {
15815  2b38 7b06          	ld	a,(OFST-2,sp)
15816  2b3a a508          	bcp	a,#8
15817  2b3c 2760          	jreq	L7346
15818                     ; 3648 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail Interrupt ...\r\n" ));
15820  2b3e ae1870        	ldw	x,#L1446
15821  2b41 8d000000      	callf	f_printf
15823                     ; 3649 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail status reg1A=%X reg1B=%X\r\n", (int)mhlrxrd(0x1A),(int)mhlrxrd(0x1B)));
15825  2b45 a61b          	ld	a,#27
15826  2b47 8d030103      	callf	L37f_mhlrxrd
15828  2b4b 5f            	clrw	x
15829  2b4c 97            	ld	xl,a
15830  2b4d 89            	pushw	x
15831  2b4e a61a          	ld	a,#26
15832  2b50 8d030103      	callf	L37f_mhlrxrd
15834  2b54 5f            	clrw	x
15835  2b55 97            	ld	xl,a
15836  2b56 89            	pushw	x
15837  2b57 ae1841        	ldw	x,#L3446
15838  2b5a 8d000000      	callf	f_printf
15840  2b5e 5b04          	addw	sp,#4
15841                     ; 3651 		 rddata = mhlrxrd(0x1A);
15843  2b60 a61a          	ld	a,#26
15844  2b62 8d030103      	callf	L37f_mhlrxrd
15846  2b66 6b07          	ld	(OFST-1,sp),a
15847                     ; 3653 		mhlrxwr(0x1A, rddata);
15849  2b68 7b07          	ld	a,(OFST-1,sp)
15850  2b6a 97            	ld	xl,a
15851  2b6b a61a          	ld	a,#26
15852  2b6d 95            	ld	xh,a
15853  2b6e 8d3a013a      	callf	L57f_mhlrxwr
15855                     ; 3655 		 rddata = mhlrxrd(0x1B);
15857  2b72 a61b          	ld	a,#27
15858  2b74 8d030103      	callf	L37f_mhlrxrd
15860  2b78 6b07          	ld	(OFST-1,sp),a
15861                     ; 3656 		 if( rddata&0x01 )
15863  2b7a 7b07          	ld	a,(OFST-1,sp)
15864  2b7c a501          	bcp	a,#1
15865  2b7e 2707          	jreq	L5446
15866                     ; 3657 			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Retry > 32 times !!!\r\n"));
15868  2b80 ae181c        	ldw	x,#L7446
15869  2b83 8d000000      	callf	f_printf
15871  2b87               L5446:
15872                     ; 3658 		 if( rddata&0x02 ) {
15874  2b87 7b07          	ld	a,(OFST-1,sp)
15875  2b89 a502          	bcp	a,#2
15876  2b8b 2707          	jreq	L1546
15877                     ; 3659 			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Receive ABORT Packet !!!\r\n"));
15879  2b8d ae17f3        	ldw	x,#L3546
15880  2b90 8d000000      	callf	f_printf
15882  2b94               L1546:
15883                     ; 3663 		 mhlrxwr(0x1B, rddata);
15885  2b94 7b07          	ld	a,(OFST-1,sp)
15886  2b96 97            	ld	xl,a
15887  2b97 a61b          	ld	a,#27
15888  2b99 95            	ld	xh,a
15889  2b9a 8d3a013a      	callf	L57f_mhlrxwr
15891  2b9e               L7346:
15892                     ; 3668 	if( MHL05&0x10 ) {
15894  2b9e 7b06          	ld	a,(OFST-2,sp)
15895  2ba0 a510          	bcp	a,#16
15896  2ba2 2726          	jreq	L5546
15897                     ; 3670 	         mhlrxwr(0x05, 0x10);
15899  2ba4 ae0010        	ldw	x,#16
15900  2ba7 a605          	ld	a,#5
15901  2ba9 95            	ld	xh,a
15902  2baa 8d3a013a      	callf	L57f_mhlrxwr
15904                     ; 3672 		 if( (mhlrxrd(0xB1)&0x07)==2 ) {
15906  2bae a6b1          	ld	a,#177
15907  2bb0 8d030103      	callf	L37f_mhlrxrd
15909  2bb4 a407          	and	a,#7
15910  2bb6 a102          	cp	a,#2
15911  2bb8 2609          	jrne	L7546
15912                     ; 3673 			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : PackPixel Mode ...\r\n"));
15914  2bba ae17cd        	ldw	x,#L1646
15915  2bbd 8d000000      	callf	f_printf
15918  2bc1 2007          	jra	L5546
15919  2bc3               L7546:
15920                     ; 3676 			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : 24 bits Mode ...\r\n"));
15922  2bc3 ae17a9        	ldw	x,#L5646
15923  2bc6 8d000000      	callf	f_printf
15925  2bca               L5546:
15926                     ; 3681 	if( MHL05&0x20 ) {
15928  2bca 7b06          	ld	a,(OFST-2,sp)
15929  2bcc a520          	bcp	a,#32
15930  2bce 2707          	jreq	L7646
15931                     ; 3683 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Req Fail Interrupt (Hardware) ... \r\n"));
15933  2bd0 ae1779        	ldw	x,#L1746
15934  2bd3 8d000000      	callf	f_printf
15936  2bd7               L7646:
15937                     ; 3687 	if( MHL05&0x40 ) {
15939  2bd7 7b06          	ld	a,(OFST-2,sp)
15940  2bd9 a540          	bcp	a,#64
15941  2bdb 2707          	jreq	L3746
15942                     ; 3689 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Done Interrupt ...\r\n"));
15944  2bdd ae1755        	ldw	x,#L5746
15945  2be0 8d000000      	callf	f_printf
15947  2be4               L3746:
15948                     ; 3692 	if( MHL05&0x80 ) {
15950  2be4 7b06          	ld	a,(OFST-2,sp)
15951  2be6 a580          	bcp	a,#128
15952  2be8 272b          	jreq	L7746
15953                     ; 3694 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Fail Interrupt ...\r\n"));
15955  2bea ae1731        	ldw	x,#L1056
15956  2bed 8d000000      	callf	f_printf
15958                     ; 3696 		rddata  = mhlrxrd(0x16);
15960  2bf1 a616          	ld	a,#22
15961  2bf3 8d030103      	callf	L37f_mhlrxrd
15963  2bf7 6b07          	ld	(OFST-1,sp),a
15964                     ; 3697 		mhlrxwr(0x16, rddata);
15966  2bf9 7b07          	ld	a,(OFST-1,sp)
15967  2bfb 97            	ld	xl,a
15968  2bfc a616          	ld	a,#22
15969  2bfe 95            	ld	xh,a
15970  2bff 8d3a013a      	callf	L57f_mhlrxwr
15972                     ; 3699 		rddata = mhlrxrd(0x17);
15974  2c03 a617          	ld	a,#23
15975  2c05 8d030103      	callf	L37f_mhlrxrd
15977  2c09 6b07          	ld	(OFST-1,sp),a
15978                     ; 3700 		mhlrxwr(0x17, rddata);
15980  2c0b 7b07          	ld	a,(OFST-1,sp)
15981  2c0d 97            	ld	xl,a
15982  2c0e a617          	ld	a,#23
15983  2c10 95            	ld	xh,a
15984  2c11 8d3a013a      	callf	L57f_mhlrxwr
15986  2c15               L7746:
15987                     ; 3705 	 if( MHL06&0x01 ) {
15989  2c15 7b08          	ld	a,(OFST+0,sp)
15990  2c17 a501          	bcp	a,#1
15991  2c19 270e          	jreq	L3056
15992                     ; 3706 		 mhlrxwr(0x06, 0x01);
15994  2c1b ae0001        	ldw	x,#1
15995  2c1e a606          	ld	a,#6
15996  2c20 95            	ld	xh,a
15997  2c21 8d3a013a      	callf	L57f_mhlrxwr
15999                     ; 3707 		 wakeupfailcnt = 0;
16001  2c25 725f0004      	clr	_wakeupfailcnt
16002  2c29               L3056:
16003                     ; 3710 	 if( MHL06&0x02 ) {
16005  2c29 7b08          	ld	a,(OFST+0,sp)
16006  2c2b a502          	bcp	a,#2
16007  2c2d 2746          	jreq	L5056
16008                     ; 3711 		 mhlrxwr(0x06, 0x02);
16010  2c2f ae0002        	ldw	x,#2
16011  2c32 a606          	ld	a,#6
16012  2c34 95            	ld	xh,a
16013  2c35 8d3a013a      	callf	L57f_mhlrxwr
16015                     ; 3712 		 wakeupfailcnt++;
16017  2c39 725c0004      	inc	_wakeupfailcnt
16018                     ; 3713 		 MHLRX_DEBUG_PRINTF(printf("WakeUp Fail Interrupt\r\n"));
16020  2c3d ae1719        	ldw	x,#L7056
16021  2c40 8d000000      	callf	f_printf
16023                     ; 3715 		 if( wakeupfailcnt==8 ) {
16025  2c44 c60004        	ld	a,_wakeupfailcnt
16026  2c47 a108          	cp	a,#8
16027  2c49 262a          	jrne	L5056
16028                     ; 3716              if( mhlrxrd(0x28)&0x08 ) {
16030  2c4b a628          	ld	a,#40
16031  2c4d 8d030103      	callf	L37f_mhlrxrd
16033  2c51 a508          	bcp	a,#8
16034  2c53 270f          	jreq	L3156
16035                     ; 3717 			     mhlrxset(0x28, 0x08, 0x00);
16037  2c55 4b00          	push	#0
16038  2c57 ae0008        	ldw	x,#8
16039  2c5a a628          	ld	a,#40
16040  2c5c 95            	ld	xh,a
16041  2c5d 8d7a017a      	callf	L77f_mhlrxset
16043  2c61 84            	pop	a
16045  2c62 200d          	jra	L5156
16046  2c64               L3156:
16047                     ; 3720 				 mhlrxset(0x28, 0x08, 0x08);
16049  2c64 4b08          	push	#8
16050  2c66 ae0008        	ldw	x,#8
16051  2c69 a628          	ld	a,#40
16052  2c6b 95            	ld	xh,a
16053  2c6c 8d7a017a      	callf	L77f_mhlrxset
16055  2c70 84            	pop	a
16056  2c71               L5156:
16057                     ; 3722 			 wakeupfailcnt=0;
16059  2c71 725f0004      	clr	_wakeupfailcnt
16060  2c75               L5056:
16061                     ; 3727 	if( MHL06&0x04 ) {
16063  2c75 7b08          	ld	a,(OFST+0,sp)
16064  2c77 a504          	bcp	a,#4
16065  2c79 2747          	jreq	L7156
16066                     ; 3729 		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS Discovery Done Interrupt ...\r\n"));
16068  2c7b ae16ee        	ldw	x,#L1256
16069  2c7e 8d000000      	callf	f_printf
16071                     ; 3730 		MHLRX_DEBUG_PRINTF(printf("CBUS Discovery Done Interrupt ...\r\n"));
16073  2c82 ae16ca        	ldw	x,#L3256
16074  2c85 8d000000      	callf	f_printf
16076                     ; 3731 		TxWrBstSeq = 0;
16078  2c89 725f0001      	clr	_TxWrBstSeq
16079                     ; 3736 			MHLRX_DEBUG_PRINTF(printf("Set DCAP_RDY to 1 ...\r\n"));
16081  2c8d ae16b2        	ldw	x,#L5256
16082  2c90 8d000000      	callf	f_printf
16084                     ; 3737 			set_mhlsts(MHLSts00B, DCAP_RDY);
16086  2c94 ae0001        	ldw	x,#1
16087  2c97 a630          	ld	a,#48
16088  2c99 95            	ld	xh,a
16089  2c9a 8d122012      	callf	L362f_set_mhlsts
16091                     ; 3739 			MHLRX_DEBUG_PRINTF(printf("Set HPD to 1 ...\r\n"));
16093  2c9e ae169f        	ldw	x,#L7256
16094  2ca1 8d000000      	callf	f_printf
16096                     ; 3741 			 mscfire(0x50, 0x04);
16098  2ca5 ae0004        	ldw	x,#4
16099  2ca8 89            	pushw	x
16100  2ca9 ae0050        	ldw	x,#80
16101  2cac 8df81bf8      	callf	L152f_mscfire
16103  2cb0 85            	popw	x
16104                     ; 3744 			MHLRX_DEBUG_PRINTF(printf("Set PATH_EN to 1 ...\r\n"));
16106  2cb1 ae1688        	ldw	x,#L1356
16107  2cb4 8d000000      	callf	f_printf
16109                     ; 3745 			set_mhlsts(MHLSts01B, PATH_EN);
16111  2cb8 ae0008        	ldw	x,#8
16112  2cbb a631          	ld	a,#49
16113  2cbd 95            	ld	xh,a
16114  2cbe 8d122012      	callf	L362f_set_mhlsts
16116  2cc2               L7156:
16117                     ; 3749 	if( MHL06&0x08 ) {
16119  2cc2 7b08          	ld	a,(OFST+0,sp)
16120  2cc4 a508          	bcp	a,#8
16121                     ; 3755 	if( MHL06&0x10 ) {
16123  2cc6 7b08          	ld	a,(OFST+0,sp)
16124  2cc8 a510          	bcp	a,#16
16125  2cca 2735          	jreq	L5356
16126                     ; 3757 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS PATH_EN Change Interrupt ...\r\n"));
16128  2ccc ae165d        	ldw	x,#L7356
16129  2ccf 8d000000      	callf	f_printf
16131                     ; 3762 		hdmirxset(0x26, 0x80, 0x00);
16133  2cd3 4b00          	push	#0
16134  2cd5 ae0080        	ldw	x,#128
16135  2cd8 a626          	ld	a,#38
16136  2cda 95            	ld	xh,a
16137  2cdb 8da500a5      	callf	L76f_hdmirxset
16139  2cdf 84            	pop	a
16140                     ; 3763 		delay1ms(1);
16142  2ce0 ae0001        	ldw	x,#1
16143  2ce3 8d000000      	callf	f_IR_DelayNMiliseconds
16145                     ; 3764 		hdmirxset(0x26, 0x80, 0x80);
16147  2ce7 4b80          	push	#128
16148  2ce9 ae0080        	ldw	x,#128
16149  2cec a626          	ld	a,#38
16150  2cee 95            	ld	xh,a
16151  2cef 8da500a5      	callf	L76f_hdmirxset
16153  2cf3 84            	pop	a
16154                     ; 3765 		hdmirxset(0x22, 0x04, 0x04);
16156  2cf4 4b04          	push	#4
16157  2cf6 ae0004        	ldw	x,#4
16158  2cf9 a622          	ld	a,#34
16159  2cfb 95            	ld	xh,a
16160  2cfc 8da500a5      	callf	L76f_hdmirxset
16162  2d00 84            	pop	a
16163  2d01               L5356:
16164                     ; 3772 	if( MHL06&0x20 ) {
16166  2d01 7b08          	ld	a,(OFST+0,sp)
16167  2d03 a520          	bcp	a,#32
16168  2d05 271f          	jreq	L1456
16169                     ; 3774 		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS MUTE Change Interrupt ...\r\n"));
16171  2d07 ae1635        	ldw	x,#L3456
16172  2d0a 8d000000      	callf	f_printf
16174                     ; 3775 		IT6802_DEBUG_INT_PRINTF(printf("it6802-Current CBUS MUTE Status = %X \r\n", (int)(mhlrxrd(0xB1)&0x10)>>4));
16176  2d0e a6b1          	ld	a,#177
16177  2d10 8d030103      	callf	L37f_mhlrxrd
16179  2d14 5f            	clrw	x
16180  2d15 a410          	and	a,#16
16181  2d17 5f            	clrw	x
16182  2d18 02            	rlwa	x,a
16183  2d19 57            	sraw	x
16184  2d1a 57            	sraw	x
16185  2d1b 57            	sraw	x
16186  2d1c 57            	sraw	x
16187  2d1d 89            	pushw	x
16188  2d1e ae160d        	ldw	x,#L5456
16189  2d21 8d000000      	callf	f_printf
16191  2d25 85            	popw	x
16192  2d26               L1456:
16193                     ; 3778 	if( MHL06&0x40 ) {
16195  2d26 7b08          	ld	a,(OFST+0,sp)
16196  2d28 a540          	bcp	a,#64
16197  2d2a 2731          	jreq	L7456
16198                     ; 3780 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS DCapRdy Change Interrupt ...\r\n"));
16200  2d2c ae15e2        	ldw	x,#L1556
16201  2d2f 8d000000      	callf	f_printf
16203                     ; 3782 		if( mhlrxrd(0xB0)&0x01 )
16205  2d33 a6b0          	ld	a,#176
16206  2d35 8d030103      	callf	L37f_mhlrxrd
16208  2d39 a501          	bcp	a,#1
16209  2d3b 2719          	jreq	L3556
16210                     ; 3785 			read_devcap_hw(it6802);  // READ_DEVCAP hardware mode
16212  2d3d 1e09          	ldw	x,(OFST+1,sp)
16213  2d3f 8d751f75      	callf	L752f_read_devcap_hw
16215                     ; 3787 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set DCAP_RDY to 1 ...\r\n"));
16217  2d43 ae15c3        	ldw	x,#L5556
16218  2d46 8d000000      	callf	f_printf
16220                     ; 3789 			set_mhlsts(MHLSts00B, DCAP_RDY);
16222  2d4a ae0001        	ldw	x,#1
16223  2d4d a630          	ld	a,#48
16224  2d4f 95            	ld	xh,a
16225  2d50 8d122012      	callf	L362f_set_mhlsts
16228  2d54 2007          	jra	L7456
16229  2d56               L3556:
16230                     ; 3793 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-DCapRdy Change from '1' to '0'\r\n"));
16232  2d56 ae159b        	ldw	x,#L1656
16233  2d59 8d000000      	callf	f_printf
16235  2d5d               L7456:
16236                     ; 3796 	if( MHL06&0x80 ) {
16238  2d5d 7b08          	ld	a,(OFST+0,sp)
16239  2d5f a580          	bcp	a,#128
16240  2d61 271e          	jreq	L3656
16241                     ; 3798 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-VBUS Status Change Interrupt ...\r\n"));
16243  2d63 ae1571        	ldw	x,#L5656
16244  2d66 8d000000      	callf	f_printf
16246                     ; 3799 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Current VBUS Status = %X\r\n",(int) (mhlrxrd(0x10)&0x08)>>3));
16248  2d6a a610          	ld	a,#16
16249  2d6c 8d030103      	callf	L37f_mhlrxrd
16251  2d70 5f            	clrw	x
16252  2d71 a408          	and	a,#8
16253  2d73 5f            	clrw	x
16254  2d74 02            	rlwa	x,a
16255  2d75 57            	sraw	x
16256  2d76 57            	sraw	x
16257  2d77 57            	sraw	x
16258  2d78 89            	pushw	x
16259  2d79 ae154f        	ldw	x,#L7656
16260  2d7c 8d000000      	callf	f_printf
16262  2d80 85            	popw	x
16263  2d81               L3656:
16264                     ; 3804 	if( MHLA0&0x01 ) {
16266  2d81 7b04          	ld	a,(OFST-4,sp)
16267  2d83 a501          	bcp	a,#1
16268  2d85 2720          	jreq	L1756
16269                     ; 3805 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability Change Interrupt ...\r\n"));
16271  2d87 ae151b        	ldw	x,#L3756
16272  2d8a 8d000000      	callf	f_printf
16274                     ; 3807 			if( mhlrxrd(0xB0)&0x01 ){
16276  2d8e a6b0          	ld	a,#176
16277  2d90 8d030103      	callf	L37f_mhlrxrd
16279  2d94 a501          	bcp	a,#1
16280  2d96 2708          	jreq	L5756
16281                     ; 3808 				read_devcap_hw(it6802);	  // READ_DEVCAP HardWare mode
16283  2d98 1e09          	ldw	x,(OFST+1,sp)
16284  2d9a 8d751f75      	callf	L752f_read_devcap_hw
16287  2d9e 2007          	jra	L1756
16288  2da0               L5756:
16289                     ; 3811 				IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability is still not Ready !!! \r\n"));
16291  2da0 ae14e4        	ldw	x,#L1066
16292  2da3 8d000000      	callf	f_printf
16294  2da7               L1756:
16295                     ; 3814 	if( MHLA0&0x02 ) {
16297  2da7 7b04          	ld	a,(OFST-4,sp)
16298  2da9 a502          	bcp	a,#2
16299  2dab 2604          	jrne	L065
16300  2dad ac402e40      	jpf	L3066
16301  2db1               L065:
16302                     ; 3815 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL DSCR_CHG Interrupt ......\r\n"));
16304  2db1 ae14bd        	ldw	x,#L5066
16305  2db4 8d000000      	callf	f_printf
16307                     ; 3817          mhlrxbrd(0xC0, 16, &(it6802->rxscrpad[0]));
16309  2db8 1e09          	ldw	x,(OFST+1,sp)
16310  2dba 1c005c        	addw	x,#92
16311  2dbd 89            	pushw	x
16312  2dbe ae0010        	ldw	x,#16
16313  2dc1 a6c0          	ld	a,#192
16314  2dc3 95            	ld	xh,a
16315  2dc4 8da101a1      	callf	L101f_mhlrxbrd
16317  2dc8 85            	popw	x
16318                     ; 3819          rddata = mhlrxrd(0x64);
16320  2dc9 a664          	ld	a,#100
16321  2dcb 8d030103      	callf	L37f_mhlrxrd
16323  2dcf 6b07          	ld	(OFST-1,sp),a
16324                     ; 3821          for(i=0; i<rddata; i++)
16326  2dd1 0f08          	clr	(OFST+0,sp)
16328  2dd3 201b          	jra	L3166
16329  2dd5               L7066:
16330                     ; 3822              MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, it6802->rxscrpad[i]));
16332  2dd5 7b09          	ld	a,(OFST+1,sp)
16333  2dd7 97            	ld	xl,a
16334  2dd8 7b0a          	ld	a,(OFST+2,sp)
16335  2dda 1b08          	add	a,(OFST+0,sp)
16336  2ddc 2401          	jrnc	L655
16337  2dde 5c            	incw	x
16338  2ddf               L655:
16339  2ddf 02            	rlwa	x,a
16340  2de0 e65c          	ld	a,(92,x)
16341  2de2 88            	push	a
16342  2de3 7b09          	ld	a,(OFST+1,sp)
16343  2de5 88            	push	a
16344  2de6 ae149c        	ldw	x,#L7166
16345  2de9 8d000000      	callf	f_printf
16347  2ded 85            	popw	x
16348                     ; 3821          for(i=0; i<rddata; i++)
16350  2dee 0c08          	inc	(OFST+0,sp)
16351  2df0               L3166:
16354  2df0 7b08          	ld	a,(OFST+0,sp)
16355  2df2 1107          	cp	a,(OFST-1,sp)
16356  2df4 25df          	jrult	L7066
16357                     ; 3824          if( rddata>16 )
16359  2df6 7b07          	ld	a,(OFST-1,sp)
16360  2df8 a111          	cp	a,#17
16361  2dfa 2507          	jrult	L1266
16362                     ; 3825              MHLRX_DEBUG_PRINTF(printf("ERROR: Receive Scratch Pad Data > 16 bytes !!!\r\n"));
16364  2dfc ae146b        	ldw	x,#L3266
16365  2dff 8d000000      	callf	f_printf
16367  2e03               L1266:
16368                     ; 3827          if( it6802->rxscrpad[0]!=mhlrxrd(0x83) || it6802->rxscrpad[1]!=mhlrxrd(0x84) ) {
16370  2e03 a683          	ld	a,#131
16371  2e05 8d030103      	callf	L37f_mhlrxrd
16373  2e09 6b01          	ld	(OFST-7,sp),a
16374  2e0b 1e09          	ldw	x,(OFST+1,sp)
16375  2e0d e65c          	ld	a,(92,x)
16376  2e0f 1101          	cp	a,(OFST-7,sp)
16377  2e11 2610          	jrne	L7266
16379  2e13 a684          	ld	a,#132
16380  2e15 8d030103      	callf	L37f_mhlrxrd
16382  2e19 6b01          	ld	(OFST-7,sp),a
16383  2e1b 1e09          	ldw	x,(OFST+1,sp)
16384  2e1d e65d          	ld	a,(93,x)
16385  2e1f 1101          	cp	a,(OFST-7,sp)
16386  2e21 271d          	jreq	L3066
16387  2e23               L7266:
16388                     ; 3828              MHLRX_DEBUG_PRINTF(printf("Adopter ID = 0x%02X %02X\r\n", mhlrxrd(0x83), mhlrxrd(0x84)));
16390  2e23 a684          	ld	a,#132
16391  2e25 8d030103      	callf	L37f_mhlrxrd
16393  2e29 88            	push	a
16394  2e2a a683          	ld	a,#131
16395  2e2c 8d030103      	callf	L37f_mhlrxrd
16397  2e30 88            	push	a
16398  2e31 ae1450        	ldw	x,#L1366
16399  2e34 8d000000      	callf	f_printf
16401  2e38 85            	popw	x
16402                     ; 3829              MHLRX_DEBUG_PRINTF(printf("ERROR: Adopter ID Mismatch !!!\r\n"));
16404  2e39 ae142f        	ldw	x,#L3366
16405  2e3c 8d000000      	callf	f_printf
16407  2e40               L3066:
16408                     ; 3835 	if( MHLA0&0x04 ) {
16410  2e40 7b04          	ld	a,(OFST-4,sp)
16411  2e42 a504          	bcp	a,#4
16412  2e44 2740          	jreq	L5366
16413                     ; 3837 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL REQ_WRT Interrupt  ...\r\n"));
16415  2e46 ae140b        	ldw	x,#L7366
16416  2e49 8d000000      	callf	f_printf
16418                     ; 3839 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set GRT_WRT to 1  ...\r\n"));
16420  2e4d ae13ec        	ldw	x,#L1466
16421  2e50 8d000000      	callf	f_printf
16423                     ; 3841 		set_mhlint(MHLInt00B, GRT_WRT);
16425  2e54 ae0008        	ldw	x,#8
16426  2e57 a620          	ld	a,#32
16427  2e59 95            	ld	xh,a
16428  2e5a 8df01ff0      	callf	L162f_set_mhlint
16430                     ; 3843          rddata = mhlrxrd(0x64);
16432  2e5e a664          	ld	a,#100
16433  2e60 8d030103      	callf	L37f_mhlrxrd
16435  2e64 6b07          	ld	(OFST-1,sp),a
16436                     ; 3845          for(i=0; i<rddata; i++)
16438  2e66 0f08          	clr	(OFST+0,sp)
16440  2e68 2016          	jra	L7466
16441  2e6a               L3466:
16442                     ; 3846              MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, mhlrxrd(0xc0+i)));
16444  2e6a 7b08          	ld	a,(OFST+0,sp)
16445  2e6c abc0          	add	a,#192
16446  2e6e 8d030103      	callf	L37f_mhlrxrd
16448  2e72 88            	push	a
16449  2e73 7b09          	ld	a,(OFST+1,sp)
16450  2e75 88            	push	a
16451  2e76 ae149c        	ldw	x,#L7166
16452  2e79 8d000000      	callf	f_printf
16454  2e7d 85            	popw	x
16455                     ; 3845          for(i=0; i<rddata; i++)
16457  2e7e 0c08          	inc	(OFST+0,sp)
16458  2e80               L7466:
16461  2e80 7b08          	ld	a,(OFST+0,sp)
16462  2e82 1107          	cp	a,(OFST-1,sp)
16463  2e84 25e4          	jrult	L3466
16464  2e86               L5366:
16465                     ; 3851 	if( MHLA0&0x08 ) {
16467  2e86 7b04          	ld	a,(OFST-4,sp)
16468  2e88 a508          	bcp	a,#8
16469  2e8a 2604ac0d2f0d  	jreq	L3566
16470                     ; 3853 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-[**]MHL GNT_WRT Interrupt  ...\r\n"));
16472  2e90 ae13c4        	ldw	x,#L5566
16473  2e93 8d000000      	callf	f_printf
16475                     ; 3856          MHLRX_DEBUG_PRINTF(printf("MHL GNT_WRT Interrupt (TxSeqNum=%d) ...\r\n", TxWrBstSeq));
16477  2e97 3b0001        	push	_TxWrBstSeq
16478  2e9a ae139a        	ldw	x,#L7566
16479  2e9d 8d000000      	callf	f_printf
16481  2ea1 84            	pop	a
16482                     ; 3857 		 if( EnMHL3DSupport==TRUE ) {
16484  2ea2 c60003        	ld	a,_EnMHL3DSupport
16485  2ea5 a101          	cp	a,#1
16486  2ea7 2642          	jrne	L1666
16487                     ; 3858 		     if( V3D_EntryCnt==0 )
16489  2ea9 725d0000      	tnz	_V3D_EntryCnt
16490  2ead 2608          	jrne	L3666
16491                     ; 3859                  v3d_burst1st(it6802);
16493  2eaf 1e09          	ldw	x,(OFST+1,sp)
16494  2eb1 8dba20ba      	callf	L172f_v3d_burst1st
16497  2eb5 2056          	jra	L3566
16498  2eb7               L3666:
16499                     ; 3860 		     else if( V3D_EntryCnt==1 )
16501  2eb7 c60000        	ld	a,_V3D_EntryCnt
16502  2eba a101          	cp	a,#1
16503  2ebc 2608          	jrne	L7666
16504                     ; 3861 				      v3d_burst2nd(it6802);
16506  2ebe 1e09          	ldw	x,(OFST+1,sp)
16507  2ec0 8d472147      	callf	L372f_v3d_burst2nd
16510  2ec4 2047          	jra	L3566
16511  2ec6               L7666:
16512                     ; 3862 		     else if( V3D_EntryCnt==2 )
16514  2ec6 c60000        	ld	a,_V3D_EntryCnt
16515  2ec9 a102          	cp	a,#2
16516  2ecb 2608          	jrne	L3766
16517                     ; 3863 				      v3d_burst3rd(it6802);
16519  2ecd 1e09          	ldw	x,(OFST+1,sp)
16520  2ecf 8dd421d4      	callf	L572f_v3d_burst3rd
16523  2ed3 2038          	jra	L3566
16524  2ed5               L3766:
16525                     ; 3864 			 else if( V3D_EntryCnt==3 ) {
16527  2ed5 c60000        	ld	a,_V3D_EntryCnt
16528  2ed8 a103          	cp	a,#3
16529  2eda 2631          	jrne	L3566
16530                     ; 3865 				      v3d_burst4th(it6802);
16532  2edc 1e09          	ldw	x,(OFST+1,sp)
16533  2ede 8d612261      	callf	L772f_v3d_burst4th
16535                     ; 3866 			 		  MHLRX_DEBUG_PRINTF(printf(" ### 3D supporpt Write_Burst End ###\r\n"));
16537  2ee2 ae1373        	ldw	x,#L1076
16538  2ee5 8d000000      	callf	f_printf
16540  2ee9 2022          	jra	L3566
16541  2eeb               L1666:
16542                     ; 3870 			 if( V3D_EntryCnt==0 )
16544  2eeb 725d0000      	tnz	_V3D_EntryCnt
16545  2eef 2608          	jrne	L5076
16546                     ; 3871 				 v3d_unsupport1st(it6802);
16548  2ef1 1e09          	ldw	x,(OFST+1,sp)
16549  2ef3 8de422e4      	callf	L103f_v3d_unsupport1st
16552  2ef7 2014          	jra	L3566
16553  2ef9               L5076:
16554                     ; 3872 			 else if( V3D_EntryCnt==1 ) {
16556  2ef9 c60000        	ld	a,_V3D_EntryCnt
16557  2efc a101          	cp	a,#1
16558  2efe 260d          	jrne	L3566
16559                     ; 3873 				      v3d_unsupport2nd(it6802);
16561  2f00 1e09          	ldw	x,(OFST+1,sp)
16562  2f02 8d492349      	callf	L303f_v3d_unsupport2nd
16564                     ; 3874 				      MHLRX_DEBUG_PRINTF(printf(" ### 3D Un-Support Write_Burst End ###\r\n"));
16566  2f06 ae134a        	ldw	x,#L3176
16567  2f09 8d000000      	callf	f_printf
16569  2f0d               L3566:
16570                     ; 3882      if( MHLA0&0x10 ) {
16572  2f0d 7b04          	ld	a,(OFST-4,sp)
16573  2f0f a510          	bcp	a,#16
16574  2f11 2726          	jreq	L5176
16575                     ; 3883          mhlrxwr(0xA0, 0x10);
16577  2f13 ae0010        	ldw	x,#16
16578  2f16 a6a0          	ld	a,#160
16579  2f18 95            	ld	xh,a
16580  2f19 8d3a013a      	callf	L57f_mhlrxwr
16582                     ; 3885          MHLRX_DEBUG_PRINTF(printf("3D Request Interrupt ...\r\n"));
16584  2f1d ae132f        	ldw	x,#L7176
16585  2f20 8d000000      	callf	f_printf
16587                     ; 3887 		 if( EnMSCWrBurst3D==TRUE ) {
16589  2f24 c60002        	ld	a,_EnMSCWrBurst3D
16590  2f27 a101          	cp	a,#1
16591  2f29 260e          	jrne	L5176
16592                     ; 3888 			 V3D_EntryCnt = 0;
16594  2f2b 725f0000      	clr	_V3D_EntryCnt
16595                     ; 3889 		     set_mhlint(MHLInt00B, REQ_WRT);
16597  2f2f ae0004        	ldw	x,#4
16598  2f32 a620          	ld	a,#32
16599  2f34 95            	ld	xh,a
16600  2f35 8df01ff0      	callf	L162f_set_mhlint
16602  2f39               L5176:
16603                     ; 3894 	if( MHLA1&0x02 ) {
16605  2f39 7b03          	ld	a,(OFST-5,sp)
16606  2f3b a502          	bcp	a,#2
16607  2f3d 2707          	jreq	L3276
16608                     ; 3895 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL EDID Change Interrupt ...\r\n"));
16610  2f3f ae1308        	ldw	x,#L5276
16611  2f42 8d000000      	callf	f_printf
16613  2f46               L3276:
16614                     ; 3898 }
16617  2f46 5b0a          	addw	sp,#10
16618  2f48 87            	retf
16726                     ; 3902 static void IT6802HDMIInterruptHandler(struct it6802_dev_data *it6802)
16726                     ; 3903 {
16727                     	switch	.text
16728  2f49               L733f_IT6802HDMIInterruptHandler:
16730  2f49 89            	pushw	x
16731  2f4a 5208          	subw	sp,#8
16732       00000008      OFST:	set	8
16735                     ; 3913 	chgbank(0);
16737  2f4c 5f            	clrw	x
16738  2f4d 8d140514      	callf	L711f_chgbank
16740                     ; 3915 	Reg05h = hdmirxrd(REG_RX_005);
16742  2f51 a605          	ld	a,#5
16743  2f53 8d390039      	callf	L36f_hdmirxrd
16745  2f57 6b04          	ld	(OFST-4,sp),a
16746                     ; 3916 	Reg06h = hdmirxrd(REG_RX_006);
16748  2f59 a606          	ld	a,#6
16749  2f5b 8d390039      	callf	L36f_hdmirxrd
16751  2f5f 6b05          	ld	(OFST-3,sp),a
16752                     ; 3917 	Reg07h = hdmirxrd(REG_RX_007);
16754  2f61 a607          	ld	a,#7
16755  2f63 8d390039      	callf	L36f_hdmirxrd
16757  2f67 6b06          	ld	(OFST-2,sp),a
16758                     ; 3918 	Reg08h = hdmirxrd(REG_RX_008);
16760  2f69 a608          	ld	a,#8
16761  2f6b 8d390039      	callf	L36f_hdmirxrd
16763  2f6f 6b07          	ld	(OFST-1,sp),a
16764                     ; 3919 	Reg09h = hdmirxrd(REG_RX_009);
16766  2f71 a609          	ld	a,#9
16767  2f73 8d390039      	callf	L36f_hdmirxrd
16769  2f77 6b08          	ld	(OFST+0,sp),a
16770                     ; 3921 	Reg0Ah = hdmirxrd(REG_RX_P0_SYS_STATUS);
16772  2f79 a60a          	ld	a,#10
16773  2f7b 8d390039      	callf	L36f_hdmirxrd
16775  2f7f 6b02          	ld	(OFST-6,sp),a
16776                     ; 3922 	Reg0Bh = hdmirxrd(REG_RX_P1_SYS_STATUS);
16778  2f81 a60b          	ld	a,#11
16779  2f83 8d390039      	callf	L36f_hdmirxrd
16781                     ; 3923 	RegD0h = hdmirxrd(REG_RX_0D0);
16783  2f87 a6d0          	ld	a,#208
16784  2f89 8d390039      	callf	L36f_hdmirxrd
16786  2f8d 6b03          	ld	(OFST-5,sp),a
16787                     ; 3925 	hdmirxwr(REG_RX_005, Reg05h);
16789  2f8f 7b04          	ld	a,(OFST-4,sp)
16790  2f91 97            	ld	xl,a
16791  2f92 a605          	ld	a,#5
16792  2f94 95            	ld	xh,a
16793  2f95 8d690069      	callf	L56f_hdmirxwr
16795                     ; 3926 	hdmirxwr(REG_RX_006, Reg06h);
16797  2f99 7b05          	ld	a,(OFST-3,sp)
16798  2f9b 97            	ld	xl,a
16799  2f9c a606          	ld	a,#6
16800  2f9e 95            	ld	xh,a
16801  2f9f 8d690069      	callf	L56f_hdmirxwr
16803                     ; 3927 	hdmirxwr(REG_RX_007, Reg07h);
16805  2fa3 7b06          	ld	a,(OFST-2,sp)
16806  2fa5 97            	ld	xl,a
16807  2fa6 a607          	ld	a,#7
16808  2fa8 95            	ld	xh,a
16809  2fa9 8d690069      	callf	L56f_hdmirxwr
16811                     ; 3928 	hdmirxwr(REG_RX_008, Reg08h);
16813  2fad 7b07          	ld	a,(OFST-1,sp)
16814  2faf 97            	ld	xl,a
16815  2fb0 a608          	ld	a,#8
16816  2fb2 95            	ld	xh,a
16817  2fb3 8d690069      	callf	L56f_hdmirxwr
16819                     ; 3929 	hdmirxwr(REG_RX_009, Reg09h);
16821  2fb7 7b08          	ld	a,(OFST+0,sp)
16822  2fb9 97            	ld	xl,a
16823  2fba a609          	ld	a,#9
16824  2fbc 95            	ld	xh,a
16825  2fbd 8d690069      	callf	L56f_hdmirxwr
16827                     ; 3930 	hdmirxwr(REG_RX_0D0, RegD0h);
16829  2fc1 7b03          	ld	a,(OFST-5,sp)
16830  2fc3 97            	ld	xl,a
16831  2fc4 a6d0          	ld	a,#208
16832  2fc6 95            	ld	xh,a
16833  2fc7 8d690069      	callf	L56f_hdmirxwr
16835                     ; 3932      if( Reg05h!=0x00 ) {
16837  2fcb 0d04          	tnz	(OFST-4,sp)
16838  2fcd 2604          	jrne	L465
16839  2fcf ac603060      	jpf	L7676
16840  2fd3               L465:
16841                     ; 3933 		 if( Reg05h&0x80 ) {
16843  2fd3 7b04          	ld	a,(OFST-4,sp)
16844  2fd5 a580          	bcp	a,#128
16845  2fd7 270b          	jreq	L1776
16846                     ; 3934 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Off Detected ###\r\n"));
16848  2fd9 ae12e4        	ldw	x,#L3776
16849  2fdc 8d000000      	callf	f_printf
16851                     ; 3935 			it6802->m_ucEccCount_P0=0;
16853  2fe0 1e09          	ldw	x,(OFST+1,sp)
16854  2fe2 6f15          	clr	(21,x)
16855  2fe4               L1776:
16856                     ; 3938 		 if( Reg05h&0x40 ) {
16858  2fe4 7b04          	ld	a,(OFST-4,sp)
16859  2fe6 a540          	bcp	a,#64
16860  2fe8 270d          	jreq	L5776
16861                     ; 3939 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 ECC Error ####\r\n"));
16863  2fea ae12c7        	ldw	x,#L7776
16864  2fed 8d000000      	callf	f_printf
16866                     ; 3940 			hdmirx_INT_P0_ECC(it6802);
16868  2ff1 1e09          	ldw	x,(OFST+1,sp)
16869  2ff3 8d971197      	callf	L512f_hdmirx_INT_P0_ECC
16871  2ff7               L5776:
16872                     ; 3943 		 if( Reg05h&0x20 ) {
16874  2ff7 7b04          	ld	a,(OFST-4,sp)
16875  2ff9 a520          	bcp	a,#32
16876  2ffb 270d          	jreq	L1007
16877                     ; 3945 		     MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDMI/DVI Mode change ####\r\n"));
16879  2ffd ae129f        	ldw	x,#L3007
16880  3000 8d000000      	callf	f_printf
16882                     ; 3946 			hdmirx_INT_HDMIMode_Chg(it6802);
16884  3004 1e09          	ldw	x,(OFST+1,sp)
16885  3006 8d471247      	callf	L522f_hdmirx_INT_HDMIMode_Chg
16887  300a               L1007:
16888                     ; 3950 		 if( Reg05h&0x08 ) {
16890  300a 7b04          	ld	a,(OFST-4,sp)
16891  300c a508          	bcp	a,#8
16892  300e 270b          	jreq	L5007
16893                     ; 3951 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Start ####\r\n"));
16895  3010 ae1272        	ldw	x,#L7007
16896  3013 8d000000      	callf	f_printf
16898                     ; 3952 			it6802->m_ucEccCount_P0=0;
16900  3017 1e09          	ldw	x,(OFST+1,sp)
16901  3019 6f15          	clr	(21,x)
16902  301b               L5007:
16903                     ; 3955 		 if( Reg05h&0x10 ) {
16905  301b 7b04          	ld	a,(OFST-4,sp)
16906  301d a510          	bcp	a,#16
16907  301f 2707          	jreq	L1107
16908                     ; 3956 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Done ####\r\n"));
16910  3021 ae1246        	ldw	x,#L3107
16911  3024 8d000000      	callf	f_printf
16913  3028               L1107:
16914                     ; 3959 		 if( Reg05h&0x04 ) {
16916  3028 7b04          	ld	a,(OFST-4,sp)
16917  302a a504          	bcp	a,#4
16918  302c 2707          	jreq	L5107
16919                     ; 3960 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Input Clock Change Detect ####\r\n"));
16921  302e ae1219        	ldw	x,#L7107
16922  3031 8d000000      	callf	f_printf
16924  3035               L5107:
16925                     ; 3963 		 if( Reg05h&0x02 ) {
16927  3035 7b04          	ld	a,(OFST-4,sp)
16928  3037 a502          	bcp	a,#2
16929  3039 270f          	jreq	L1207
16930                     ; 3964 	             MHLRX_DEBUG_PRINTF(printf("#### Port 0 Rx CKOn Detect ####\r\n"));
16932  303b ae11f7        	ldw	x,#L3207
16933  303e 8d000000      	callf	f_printf
16935                     ; 3965 			it6802->m_ucEccCount_P0=0;
16937  3042 1e09          	ldw	x,(OFST+1,sp)
16938  3044 6f15          	clr	(21,x)
16939                     ; 3966 			it6802->m_ucDeskew_P0=0;
16941  3046 1e09          	ldw	x,(OFST+1,sp)
16942  3048 6f17          	clr	(23,x)
16943  304a               L1207:
16944                     ; 3972 		 if( Reg05h&0x01 ) {
16946  304a 7b04          	ld	a,(OFST-4,sp)
16947  304c a501          	bcp	a,#1
16948  304e 2710          	jreq	L7676
16949                     ; 3973 			MHLRX_DEBUG_PRINTF(printf("#### Port 0 Power 5V change ####\r\n"));
16951  3050 ae11d4        	ldw	x,#L7207
16952  3053 8d000000      	callf	f_printf
16954                     ; 3974 			hdmirx_INT_5V_Pwr_Chg(it6802,0);
16956  3057 4b00          	push	#0
16957  3059 1e0a          	ldw	x,(OFST+2,sp)
16958  305b 8d571157      	callf	L312f_hdmirx_INT_5V_Pwr_Chg
16960  305f 84            	pop	a
16961  3060               L7676:
16962                     ; 3978      if( Reg06h!=0x00 ) {
16964  3060 0d05          	tnz	(OFST-3,sp)
16965  3062 2604          	jrne	L665
16966  3064 acf530f5      	jpf	L1307
16967  3068               L665:
16968                     ; 3979 		 if( Reg06h&0x80 ) {
16970  3068 7b05          	ld	a,(OFST-3,sp)
16971  306a a580          	bcp	a,#128
16972  306c 270b          	jreq	L3307
16973                     ; 3980 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Off Detected ###\r\n"));
16975  306e ae11b0        	ldw	x,#L5307
16976  3071 8d000000      	callf	f_printf
16978                     ; 3981 			it6802->m_ucEccCount_P1=0;
16980  3075 1e09          	ldw	x,(OFST+1,sp)
16981  3077 6f16          	clr	(22,x)
16982  3079               L3307:
16983                     ; 3985 		 if( Reg06h&0x40 ) {
16985  3079 7b05          	ld	a,(OFST-3,sp)
16986  307b a540          	bcp	a,#64
16987  307d 270d          	jreq	L7307
16988                     ; 3986 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 ECC Error ####\r\n"));
16990  307f ae1193        	ldw	x,#L1407
16991  3082 8d000000      	callf	f_printf
16993                     ; 3987 			hdmirx_INT_P1_ECC(it6802);
16995  3086 1e09          	ldw	x,(OFST+1,sp)
16996  3088 8dc311c3      	callf	L712f_hdmirx_INT_P1_ECC
16998  308c               L7307:
16999                     ; 3990 		 if( Reg06h&0x20 ) {
17001  308c 7b05          	ld	a,(OFST-3,sp)
17002  308e a520          	bcp	a,#32
17003  3090 270d          	jreq	L3407
17004                     ; 3991 		     MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDMI/DVI Mode change ####\r\n"));
17006  3092 ae116b        	ldw	x,#L5407
17007  3095 8d000000      	callf	f_printf
17009                     ; 3992 			hdmirx_INT_HDMIMode_Chg(it6802);
17011  3099 1e09          	ldw	x,(OFST+1,sp)
17012  309b 8d471247      	callf	L522f_hdmirx_INT_HDMIMode_Chg
17014  309f               L3407:
17015                     ; 3995 		 if( Reg06h&0x10 ) {
17017  309f 7b05          	ld	a,(OFST-3,sp)
17018  30a1 a510          	bcp	a,#16
17019  30a3 2707          	jreq	L7407
17020                     ; 3996 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Done ####\r\n"));
17022  30a5 ae113f        	ldw	x,#L1507
17023  30a8 8d000000      	callf	f_printf
17025  30ac               L7407:
17026                     ; 3999 		 if( Reg06h&0x08 ) {
17028  30ac 7b05          	ld	a,(OFST-3,sp)
17029  30ae a508          	bcp	a,#8
17030  30b0 270b          	jreq	L3507
17031                     ; 4000 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Start ####\r\n"));
17033  30b2 ae1112        	ldw	x,#L5507
17034  30b5 8d000000      	callf	f_printf
17036                     ; 4001 			it6802->m_ucEccCount_P1=0;
17038  30b9 1e09          	ldw	x,(OFST+1,sp)
17039  30bb 6f16          	clr	(22,x)
17040  30bd               L3507:
17041                     ; 4005 		 if( Reg06h&0x04 ) {
17043  30bd 7b05          	ld	a,(OFST-3,sp)
17044  30bf a504          	bcp	a,#4
17045  30c1 2707          	jreq	L7507
17046                     ; 4006 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 Input Clock Change Detect ####\r\n"));
17048  30c3 ae10e5        	ldw	x,#L1607
17049  30c6 8d000000      	callf	f_printf
17051  30ca               L7507:
17052                     ; 4009 		 if( Reg06h&0x02 ) {
17054  30ca 7b05          	ld	a,(OFST-3,sp)
17055  30cc a502          	bcp	a,#2
17056  30ce 270f          	jreq	L3607
17057                     ; 4010 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Rx CKOn Detect ####\r\n"));
17059  30d0 ae10c3        	ldw	x,#L5607
17060  30d3 8d000000      	callf	f_printf
17062                     ; 4013 			it6802->m_ucDeskew_P1=0;
17064  30d7 1e09          	ldw	x,(OFST+1,sp)
17065  30d9 6f18          	clr	(24,x)
17066                     ; 4014 			it6802->m_ucEccCount_P1=0;
17068  30db 1e09          	ldw	x,(OFST+1,sp)
17069  30dd 6f16          	clr	(22,x)
17070  30df               L3607:
17071                     ; 4018 		 if( Reg06h&0x01 ) {
17073  30df 7b05          	ld	a,(OFST-3,sp)
17074  30e1 a501          	bcp	a,#1
17075  30e3 2710          	jreq	L1307
17076                     ; 4019 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Power 5V change ####\r\n"));
17078  30e5 ae10a0        	ldw	x,#L1707
17079  30e8 8d000000      	callf	f_printf
17081                     ; 4020 			hdmirx_INT_5V_Pwr_Chg(it6802,1);
17083  30ec 4b01          	push	#1
17084  30ee 1e0a          	ldw	x,(OFST+2,sp)
17085  30f0 8d571157      	callf	L312f_hdmirx_INT_5V_Pwr_Chg
17087  30f4 84            	pop	a
17088  30f5               L1307:
17089                     ; 4025 	 if( Reg07h!=0x00) {
17091  30f5 0d06          	tnz	(OFST-2,sp)
17092  30f7 2604          	jrne	L075
17093  30f9 ac803180      	jpf	L3707
17094  30fd               L075:
17095                     ; 4026 		 if( Reg07h&0x80 ) {
17097  30fd 7b06          	ld	a,(OFST-2,sp)
17098  30ff a580          	bcp	a,#128
17099  3101 270b          	jreq	L5707
17100                     ; 4027 			 MHLRX_DEBUG_PRINTF(printf("#### Audio FIFO Error ####\r\n"));
17102  3103 ae1083        	ldw	x,#L7707
17103  3106 8d000000      	callf	f_printf
17105                     ; 4028 			 aud_fiforst();
17107  310a 8dc60cc6      	callf	L751f_aud_fiforst
17109  310e               L5707:
17110                     ; 4031 		 if( Reg07h&0x40 ) {
17112  310e 7b06          	ld	a,(OFST-2,sp)
17113  3110 a540          	bcp	a,#64
17114  3112 2707          	jreq	L1017
17115                     ; 4032 			 MHLRX_DEBUG_PRINTF(printf("#### Audio Auto Mute ####\r\n"));
17117  3114 ae1067        	ldw	x,#L3017
17118  3117 8d000000      	callf	f_printf
17120  311b               L1017:
17121                     ; 4035 		 if( Reg07h&0x20 ) {
17123  311b 7b06          	ld	a,(OFST-2,sp)
17124  311d a520          	bcp	a,#32
17125  311f 2710          	jreq	L5017
17126                     ; 4036 			 MHLRX_DEBUG_PRINTF(printf("#### Packet Left Mute ####\r\n"));
17128  3121 ae104a        	ldw	x,#L7017
17129  3124 8d000000      	callf	f_printf
17131                     ; 4037 			 IT6802_SetVideoMute(it6802,OFF);
17133  3128 4b00          	push	#0
17134  312a 1e0a          	ldw	x,(OFST+2,sp)
17135  312c 8d8e0f8e      	callf	L302f_IT6802_SetVideoMute
17137  3130 84            	pop	a
17138  3131               L5017:
17139                     ; 4040 		 if( Reg07h&0x10 ) {
17141  3131 7b06          	ld	a,(OFST-2,sp)
17142  3133 a510          	bcp	a,#16
17143  3135 2710          	jreq	L1117
17144                     ; 4041 			 MHLRX_DEBUG_PRINTF(printf("#### Set Mute Packet Received ####\r\n"));
17146  3137 ae1025        	ldw	x,#L3117
17147  313a 8d000000      	callf	f_printf
17149                     ; 4043 			 IT6802_SetVideoMute(it6802,ON);
17151  313e 4b01          	push	#1
17152  3140 1e0a          	ldw	x,(OFST+2,sp)
17153  3142 8d8e0f8e      	callf	L302f_IT6802_SetVideoMute
17155  3146 84            	pop	a
17156  3147               L1117:
17157                     ; 4046 		 if( Reg07h&0x08 ) {
17159  3147 7b06          	ld	a,(OFST-2,sp)
17160  3149 a508          	bcp	a,#8
17161                     ; 4051 		 if( Reg07h&0x04 ) {
17163  314b 7b06          	ld	a,(OFST-2,sp)
17164  314d a504          	bcp	a,#4
17165  314f 2707          	jreq	L7117
17166                     ; 4052 			 MHLRX_DEBUG_PRINTF(printf("#### Video Mode Changed ####\r\n"));
17168  3151 ae1006        	ldw	x,#L1217
17169  3154 8d000000      	callf	f_printf
17171  3158               L7117:
17172                     ; 4055 		 if( Reg07h&0x02 ) {
17174  3158 7b06          	ld	a,(OFST-2,sp)
17175  315a a502          	bcp	a,#2
17176  315c 2706          	jreq	L3217
17177                     ; 4056 			hdmirx_INT_SCDT_Chg(it6802);
17179  315e 1e09          	ldw	x,(OFST+1,sp)
17180  3160 8d9f129f      	callf	L722f_hdmirx_INT_SCDT_Chg
17182  3164               L3217:
17183                     ; 4059 		 if( Reg07h&0x01 ) {
17185  3164 7b06          	ld	a,(OFST-2,sp)
17186  3166 a501          	bcp	a,#1
17187  3168 2716          	jreq	L3707
17188                     ; 4060 			 if( (Reg0Ah&0x40)>>6 ) {
17190  316a 7b02          	ld	a,(OFST-6,sp)
17191  316c a540          	bcp	a,#64
17192  316e 2709          	jreq	L7217
17193                     ; 4061 				 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : MHL ####\r\n"));
17195  3170 ae0fe4        	ldw	x,#L1317
17196  3173 8d000000      	callf	f_printf
17199  3177 2007          	jra	L3707
17200  3179               L7217:
17201                     ; 4064 		                 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : HDMI ####\r\n"));
17203  3179 ae0fc1        	ldw	x,#L5317
17204  317c 8d000000      	callf	f_printf
17206  3180               L3707:
17207                     ; 4069 	 if( Reg08h!=0x00) {
17209  3180 0d07          	tnz	(OFST-1,sp)
17210  3182 2756          	jreq	L7317
17211                     ; 4070 		 if( Reg08h&0x80 ) {
17213  3184 7b07          	ld	a,(OFST-1,sp)
17214  3186 a580          	bcp	a,#128
17215                     ; 4074 		 if( Reg08h&0x40 ) {
17217  3188 7b07          	ld	a,(OFST-1,sp)
17218  318a a540          	bcp	a,#64
17219                     ; 4078 		 if( Reg08h&0x20 ) {
17221  318c 7b07          	ld	a,(OFST-1,sp)
17222  318e a520          	bcp	a,#32
17223  3190 2707          	jreq	L5417
17224                     ; 4079 			 MHLRX_DEBUG_PRINTF(printf("#### No Audio InfoFrame Received ####\r\n"));
17226  3192 ae0f99        	ldw	x,#L7417
17227  3195 8d000000      	callf	f_printf
17229  3199               L5417:
17230                     ; 4082 		 if( Reg08h&0x10) {
17232  3199 7b07          	ld	a,(OFST-1,sp)
17233  319b a510          	bcp	a,#16
17234  319d 2707          	jreq	L1517
17235                     ; 4083 			 MHLRX_DEBUG_PRINTF(printf("#### No AVI InfoFrame Received ####\r\n"));
17237  319f ae0f73        	ldw	x,#L3517
17238  31a2 8d000000      	callf	f_printf
17240  31a6               L1517:
17241                     ; 4086 		 if( Reg08h&0x08 ) {
17243  31a6 7b07          	ld	a,(OFST-1,sp)
17244  31a8 a508          	bcp	a,#8
17245  31aa 2707          	jreq	L5517
17246                     ; 4087 			 MHLRX_DEBUG_PRINTF(printf("#### CD Detect ####\r\n"));
17248  31ac ae0f5d        	ldw	x,#L7517
17249  31af 8d000000      	callf	f_printf
17251  31b3               L5517:
17252                     ; 4091 		 if( Reg08h&0x04 ) {
17254  31b3 7b07          	ld	a,(OFST-1,sp)
17255  31b5 a504          	bcp	a,#4
17256  31b7 2707          	jreq	L1617
17257                     ; 4093 			 MHLRX_DEBUG_PRINTF(printf("#### 3D InfoFrame Detect ####\r\n"));
17259  31b9 ae0f3d        	ldw	x,#L3617
17260  31bc 8d000000      	callf	f_printf
17262  31c0               L1617:
17263                     ; 4104 		 if( Reg08h&0x02 ) {
17265  31c0 7b07          	ld	a,(OFST-1,sp)
17266  31c2 a502          	bcp	a,#2
17267  31c4 2707          	jreq	L5617
17268                     ; 4105 			 MHLRX_DEBUG_PRINTF(printf("#### ISRC2 Detect ####\r\n"));
17270  31c6 ae0f24        	ldw	x,#L7617
17271  31c9 8d000000      	callf	f_printf
17273  31cd               L5617:
17274                     ; 4108 		 if( Reg08h&0x01 ) {
17276  31cd 7b07          	ld	a,(OFST-1,sp)
17277  31cf a501          	bcp	a,#1
17278  31d1 2707          	jreq	L7317
17279                     ; 4109 			 MHLRX_DEBUG_PRINTF(printf("#### ISRC1 Detect ####\r\n"));
17281  31d3 ae0f0b        	ldw	x,#L3717
17282  31d6 8d000000      	callf	f_printf
17284  31da               L7317:
17285                     ; 4113 	 if( Reg09h!=0x00 ) {
17287  31da 0d08          	tnz	(OFST+0,sp)
17288  31dc 2604          	jrne	L275
17289  31de ac723272      	jpf	L5717
17290  31e2               L275:
17291                     ; 4114          if( Reg09h&0x80 ) {
17293  31e2 7b08          	ld	a,(OFST+0,sp)
17294  31e4 a580          	bcp	a,#128
17295  31e6 2707          	jreq	L7717
17296                     ; 4115 			 MHLRX_DEBUG_PRINTF(printf("#### H2V Buffer Skew Fail ####\r\n"));
17298  31e8 ae0eea        	ldw	x,#L1027
17299  31eb 8d000000      	callf	f_printf
17301  31ef               L7717:
17302                     ; 4118 		 if( Reg09h&0x40 ) {
17304  31ef 7b08          	ld	a,(OFST+0,sp)
17305  31f1 a540          	bcp	a,#64
17306  31f3 2717          	jreq	L3027
17307                     ; 4120 			hdmirxwr(0x09, 0x20); //bug ~ need to update by Andrew
17309  31f5 ae0020        	ldw	x,#32
17310  31f8 a609          	ld	a,#9
17311  31fa 95            	ld	xh,a
17312  31fb 8d690069      	callf	L56f_hdmirxwr
17314                     ; 4121 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Deskew Error ####\r\n"));
17316  31ff ae0eca        	ldw	x,#L5027
17317  3202 8d000000      	callf	f_printf
17319                     ; 4122 			hdmirx_INT_P1_Deskew(it6802);
17321  3206 1e09          	ldw	x,(OFST+1,sp)
17322  3208 8d1b121b      	callf	L322f_hdmirx_INT_P1_Deskew
17324  320c               L3027:
17325                     ; 4125 		 if( Reg09h&0x20 ) {
17327  320c 7b08          	ld	a,(OFST+0,sp)
17328  320e a520          	bcp	a,#32
17329  3210 2717          	jreq	L7027
17330                     ; 4126 			 hdmirxwr(0x09, 0x20);
17332  3212 ae0020        	ldw	x,#32
17333  3215 a609          	ld	a,#9
17334  3217 95            	ld	xh,a
17335  3218 8d690069      	callf	L56f_hdmirxwr
17337                     ; 4127 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Deskew Error ####\r\n"));
17339  321c ae0eaa        	ldw	x,#L1127
17340  321f 8d000000      	callf	f_printf
17342                     ; 4128 			hdmirx_INT_P0_Deskew(it6802);
17344  3223 1e09          	ldw	x,(OFST+1,sp)
17345  3225 8def11ef      	callf	L122f_hdmirx_INT_P0_Deskew
17347  3229               L7027:
17348                     ; 4131 		 if( Reg09h&0x10 ) {
17350  3229 7b08          	ld	a,(OFST+0,sp)
17351  322b a510          	bcp	a,#16
17352  322d 2707          	jreq	L3127
17353                     ; 4132 			 MHLRX_DEBUG_PRINTF(printf("#### New Audio Packet Received ####\r\n"));
17355  322f ae0e84        	ldw	x,#L5127
17356  3232 8d000000      	callf	f_printf
17358  3236               L3127:
17359                     ; 4135 		 if( Reg09h&0x08 ) {
17361  3236 7b08          	ld	a,(OFST+0,sp)
17362  3238 a508          	bcp	a,#8
17363  323a 2707          	jreq	L7127
17364                     ; 4136 			 MHLRX_DEBUG_PRINTF(printf("#### New ACP Packet Received ####\r\n"));
17366  323c ae0e60        	ldw	x,#L1227
17367  323f 8d000000      	callf	f_printf
17369  3243               L7127:
17370                     ; 4139 		 if( Reg09h&0x04 ) {
17372  3243 7b08          	ld	a,(OFST+0,sp)
17373  3245 a504          	bcp	a,#4
17374  3247 2707          	jreq	L3227
17375                     ; 4140 			 MHLRX_DEBUG_PRINTF(printf("#### New SPD Packet Received ####\r\n"));
17377  3249 ae0e3c        	ldw	x,#L5227
17378  324c 8d000000      	callf	f_printf
17380  3250               L3227:
17381                     ; 4143 		 if( Reg09h&0x02) {
17383  3250 7b08          	ld	a,(OFST+0,sp)
17384  3252 a502          	bcp	a,#2
17385  3254 2707          	jreq	L7227
17386                     ; 4144 			 MHLRX_DEBUG_PRINTF(printf("#### New MPEG InfoFrame Received ####\r\n"));
17388  3256 ae0e14        	ldw	x,#L1327
17389  3259 8d000000      	callf	f_printf
17391  325d               L7227:
17392                     ; 4147 		 if( Reg09h&0x01) {
17394  325d 7b08          	ld	a,(OFST+0,sp)
17395  325f a501          	bcp	a,#1
17396  3261 270f          	jreq	L5717
17397                     ; 4148 			 MHLRX_DEBUG_PRINTF(printf("#### New AVI InfoFrame Received ####\r\n"));
17399  3263 ae0ded        	ldw	x,#L5327
17400  3266 8d000000      	callf	f_printf
17402                     ; 4150 			it6802->m_NewAVIInfoFrameF=TRUE;
17404  326a 1e09          	ldw	x,(OFST+1,sp)
17405  326c e675          	ld	a,(117,x)
17406  326e aa20          	or	a,#32
17407  3270 e775          	ld	(117,x),a
17408  3272               L5717:
17409                     ; 4156  if( RegD0h&0x10 ) {
17411  3272 7b03          	ld	a,(OFST-5,sp)
17412  3274 a510          	bcp	a,#16
17413  3276 2604acfb32fb  	jreq	L7327
17414                     ; 4157 	 MHLRX_DEBUG_PRINTF(printf("#### Port 0 EQ done interrupt ####\r\n"));
17416  327c ae0dc8        	ldw	x,#L1427
17417  327f 8d000000      	callf	f_printf
17419                     ; 4158 	chgbank(1);
17421  3283 ae0001        	ldw	x,#1
17422  3286 8d140514      	callf	L711f_chgbank
17424                     ; 4159 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_B_CS=%02bX  P0_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D5)&0x80)>>7 , (hdmirxrd(REG_RX_1D5)&0x7F)));
17426  328a a6d5          	ld	a,#213
17427  328c 8d390039      	callf	L36f_hdmirxrd
17429  3290 5f            	clrw	x
17430  3291 a47f          	and	a,#127
17431  3293 5f            	clrw	x
17432  3294 02            	rlwa	x,a
17433  3295 89            	pushw	x
17434  3296 01            	rrwa	x,a
17435  3297 a6d5          	ld	a,#213
17436  3299 8d390039      	callf	L36f_hdmirxrd
17438  329d a480          	and	a,#128
17439  329f 49            	rlc	a
17440  32a0 4f            	clr	a
17441  32a1 49            	rlc	a
17442  32a2 5f            	clrw	x
17443  32a3 97            	ld	xl,a
17444  32a4 89            	pushw	x
17445  32a5 ae0d9e        	ldw	x,#L3427
17446  32a8 8d000000      	callf	f_printf
17448  32ac 5b04          	addw	sp,#4
17449                     ; 4160 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_G_CS=%02bX  P0_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D6)&0x80)>>7 , (hdmirxrd(REG_RX_1D6)&0x7F)));
17451  32ae a6d6          	ld	a,#214
17452  32b0 8d390039      	callf	L36f_hdmirxrd
17454  32b4 5f            	clrw	x
17455  32b5 a47f          	and	a,#127
17456  32b7 5f            	clrw	x
17457  32b8 02            	rlwa	x,a
17458  32b9 89            	pushw	x
17459  32ba 01            	rrwa	x,a
17460  32bb a6d6          	ld	a,#214
17461  32bd 8d390039      	callf	L36f_hdmirxrd
17463  32c1 a480          	and	a,#128
17464  32c3 49            	rlc	a
17465  32c4 4f            	clr	a
17466  32c5 49            	rlc	a
17467  32c6 5f            	clrw	x
17468  32c7 97            	ld	xl,a
17469  32c8 89            	pushw	x
17470  32c9 ae0d74        	ldw	x,#L5427
17471  32cc 8d000000      	callf	f_printf
17473  32d0 5b04          	addw	sp,#4
17474                     ; 4161 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_R_CS=%02bX  P0_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D7)&0x80)>>7 , (hdmirxrd(REG_RX_1D7)&0x7F)));
17476  32d2 a6d7          	ld	a,#215
17477  32d4 8d390039      	callf	L36f_hdmirxrd
17479  32d8 5f            	clrw	x
17480  32d9 a47f          	and	a,#127
17481  32db 5f            	clrw	x
17482  32dc 02            	rlwa	x,a
17483  32dd 89            	pushw	x
17484  32de 01            	rrwa	x,a
17485  32df a6d7          	ld	a,#215
17486  32e1 8d390039      	callf	L36f_hdmirxrd
17488  32e5 a480          	and	a,#128
17489  32e7 49            	rlc	a
17490  32e8 4f            	clr	a
17491  32e9 49            	rlc	a
17492  32ea 5f            	clrw	x
17493  32eb 97            	ld	xl,a
17494  32ec 89            	pushw	x
17495  32ed ae0d4a        	ldw	x,#L7427
17496  32f0 8d000000      	callf	f_printf
17498  32f4 5b04          	addw	sp,#4
17499                     ; 4162 	chgbank(0);
17501  32f6 5f            	clrw	x
17502  32f7 8d140514      	callf	L711f_chgbank
17504  32fb               L7327:
17505                     ; 4166  if( RegD0h&0x40 ) {
17507  32fb 7b03          	ld	a,(OFST-5,sp)
17508  32fd a540          	bcp	a,#64
17509  32ff 2604ac843384  	jreq	L1527
17510                     ; 4167 	chgbank(1);
17512  3305 ae0001        	ldw	x,#1
17513  3308 8d140514      	callf	L711f_chgbank
17515                     ; 4168 	 MHLRX_DEBUG_PRINTF(printf("#### Port 1 EQ done interrupt ####\r\n"));
17517  330c ae0d25        	ldw	x,#L3527
17518  330f 8d000000      	callf	f_printf
17520                     ; 4169 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_B_CS=%02bX  P1_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DD)&0x80)>>7 , (hdmirxrd(REG_RX_1DD)&0x7F)));
17522  3313 a6dd          	ld	a,#221
17523  3315 8d390039      	callf	L36f_hdmirxrd
17525  3319 5f            	clrw	x
17526  331a a47f          	and	a,#127
17527  331c 5f            	clrw	x
17528  331d 02            	rlwa	x,a
17529  331e 89            	pushw	x
17530  331f 01            	rrwa	x,a
17531  3320 a6dd          	ld	a,#221
17532  3322 8d390039      	callf	L36f_hdmirxrd
17534  3326 a480          	and	a,#128
17535  3328 49            	rlc	a
17536  3329 4f            	clr	a
17537  332a 49            	rlc	a
17538  332b 5f            	clrw	x
17539  332c 97            	ld	xl,a
17540  332d 89            	pushw	x
17541  332e ae0cfb        	ldw	x,#L5527
17542  3331 8d000000      	callf	f_printf
17544  3335 5b04          	addw	sp,#4
17545                     ; 4170 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_G_CS=%02bX  P1_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DE)&0x80)>>7 , (hdmirxrd(REG_RX_1DE)&0x7F)));
17547  3337 a6de          	ld	a,#222
17548  3339 8d390039      	callf	L36f_hdmirxrd
17550  333d 5f            	clrw	x
17551  333e a47f          	and	a,#127
17552  3340 5f            	clrw	x
17553  3341 02            	rlwa	x,a
17554  3342 89            	pushw	x
17555  3343 01            	rrwa	x,a
17556  3344 a6de          	ld	a,#222
17557  3346 8d390039      	callf	L36f_hdmirxrd
17559  334a a480          	and	a,#128
17560  334c 49            	rlc	a
17561  334d 4f            	clr	a
17562  334e 49            	rlc	a
17563  334f 5f            	clrw	x
17564  3350 97            	ld	xl,a
17565  3351 89            	pushw	x
17566  3352 ae0cd1        	ldw	x,#L7527
17567  3355 8d000000      	callf	f_printf
17569  3359 5b04          	addw	sp,#4
17570                     ; 4171 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_R_CS=%02bX  P1_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DF)&0x80)>>7 , (hdmirxrd(REG_RX_1DF)&0x7F)));
17572  335b a6df          	ld	a,#223
17573  335d 8d390039      	callf	L36f_hdmirxrd
17575  3361 5f            	clrw	x
17576  3362 a47f          	and	a,#127
17577  3364 5f            	clrw	x
17578  3365 02            	rlwa	x,a
17579  3366 89            	pushw	x
17580  3367 01            	rrwa	x,a
17581  3368 a6df          	ld	a,#223
17582  336a 8d390039      	callf	L36f_hdmirxrd
17584  336e a480          	and	a,#128
17585  3370 49            	rlc	a
17586  3371 4f            	clr	a
17587  3372 49            	rlc	a
17588  3373 5f            	clrw	x
17589  3374 97            	ld	xl,a
17590  3375 89            	pushw	x
17591  3376 ae0ca7        	ldw	x,#L1627
17592  3379 8d000000      	callf	f_printf
17594  337d 5b04          	addw	sp,#4
17595                     ; 4172 	chgbank(0);
17597  337f 5f            	clrw	x
17598  3380 8d140514      	callf	L711f_chgbank
17600  3384               L1527:
17601                     ; 4175 if( RegD0h&0x20) {
17603  3384 7b03          	ld	a,(OFST-5,sp)
17604  3386 a520          	bcp	a,#32
17605  3388 2738          	jreq	L3627
17606                     ; 4176 hdmirxwr(0xD0, 0x20);
17608  338a ae0020        	ldw	x,#32
17609  338d a6d0          	ld	a,#208
17610  338f 95            	ld	xh,a
17611  3390 8d690069      	callf	L56f_hdmirxwr
17613                     ; 4179 hdmirxset(0x26, 0x80, 0x00);
17615  3394 4b00          	push	#0
17616  3396 ae0080        	ldw	x,#128
17617  3399 a626          	ld	a,#38
17618  339b 95            	ld	xh,a
17619  339c 8da500a5      	callf	L76f_hdmirxset
17621  33a0 84            	pop	a
17622                     ; 4181 delay1ms(1);
17624  33a1 ae0001        	ldw	x,#1
17625  33a4 8d000000      	callf	f_IR_DelayNMiliseconds
17627                     ; 4182 hdmirxset(0x26, 0x80, 0x80);
17629  33a8 4b80          	push	#128
17630  33aa ae0080        	ldw	x,#128
17631  33ad a626          	ld	a,#38
17632  33af 95            	ld	xh,a
17633  33b0 8da500a5      	callf	L76f_hdmirxset
17635  33b4 84            	pop	a
17636                     ; 4183 hdmirxset(0x22, 0x04, 0x04);
17638  33b5 4b04          	push	#4
17639  33b7 ae0004        	ldw	x,#4
17640  33ba a622          	ld	a,#34
17641  33bc 95            	ld	xh,a
17642  33bd 8da500a5      	callf	L76f_hdmirxset
17644  33c1 84            	pop	a
17645  33c2               L3627:
17646                     ; 4187 if( RegD0h&0x80) {
17648  33c2 7b03          	ld	a,(OFST-5,sp)
17649  33c4 a580          	bcp	a,#128
17650  33c6 2738          	jreq	L5627
17651                     ; 4188 hdmirxwr(0xD0, 0x80);
17653  33c8 ae0080        	ldw	x,#128
17654  33cb a6d0          	ld	a,#208
17655  33cd 95            	ld	xh,a
17656  33ce 8d690069      	callf	L56f_hdmirxwr
17658                     ; 4191 hdmirxset(0x3E, 0x80, 0x00);
17660  33d2 4b00          	push	#0
17661  33d4 ae0080        	ldw	x,#128
17662  33d7 a63e          	ld	a,#62
17663  33d9 95            	ld	xh,a
17664  33da 8da500a5      	callf	L76f_hdmirxset
17666  33de 84            	pop	a
17667                     ; 4193 delay1ms(1);
17669  33df ae0001        	ldw	x,#1
17670  33e2 8d000000      	callf	f_IR_DelayNMiliseconds
17672                     ; 4194 hdmirxset(0x3E, 0x80, 0x80);
17674  33e6 4b80          	push	#128
17675  33e8 ae0080        	ldw	x,#128
17676  33eb a63e          	ld	a,#62
17677  33ed 95            	ld	xh,a
17678  33ee 8da500a5      	callf	L76f_hdmirxset
17680  33f2 84            	pop	a
17681                     ; 4195 hdmirxset(0x3A, 0x04, 0x04);
17683  33f3 4b04          	push	#4
17684  33f5 ae0004        	ldw	x,#4
17685  33f8 a63a          	ld	a,#58
17686  33fa 95            	ld	xh,a
17687  33fb 8da500a5      	callf	L76f_hdmirxset
17689  33ff 84            	pop	a
17690  3400               L5627:
17691                     ; 4202 }
17694  3400 5b0a          	addw	sp,#10
17695  3402 87            	retf
17739                     ; 4204 void IT6802_fsm(void)
17739                     ; 4205 {
17740                     	switch	.text
17741  3403               f_IT6802_fsm:
17743  3403 89            	pushw	x
17744       00000002      OFST:	set	2
17747                     ; 4207 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
17749  3404 8dd301d3      	callf	L501f_get_it6802_dev_data
17751  3408 1f01          	ldw	(OFST-1,sp),x
17752                     ; 4209 	IT6802MHLInterruptHandler(it6802data);
17754  340a 1e01          	ldw	x,(OFST-1,sp)
17755  340c 8d8c298c      	callf	L533f_IT6802MHLInterruptHandler
17757                     ; 4210 	IT6802HDMIInterruptHandler(it6802data);
17759  3410 1e01          	ldw	x,(OFST-1,sp)
17760  3412 8d492f49      	callf	L733f_IT6802HDMIInterruptHandler
17762                     ; 4211 	IT6802VideoHandler(it6802data);
17764  3416 1e01          	ldw	x,(OFST-1,sp)
17765  3418 8dd310d3      	callf	L112f_IT6802VideoHandler
17767                     ; 4212 	IT6802AudioHandler(it6802data);
17769  341c 1e01          	ldw	x,(OFST-1,sp)
17770  341e 8d250e25      	callf	L771f_IT6802AudioHandler
17772                     ; 4214 	RCPManager(it6802data);
17774  3422 1e01          	ldw	x,(OFST-1,sp)
17775  3424 8d672967      	callf	L333f_RCPManager
17777                     ; 4218 	it6802AutoPortSelect(it6802data);
17779  3428 1e01          	ldw	x,(OFST-1,sp)
17780  342a 8db534b5      	callf	L143f_it6802AutoPortSelect
17782                     ; 4220 	it6802ShowErrorCount();
17784  342e 8d343434      	callf	L343f_it6802ShowErrorCount
17786                     ; 4223 }
17789  3432 85            	popw	x
17790  3433 87            	retf
17849                     ; 4225 static void it6802ShowErrorCount(void)
17849                     ; 4226 {
17850                     	switch	.text
17851  3434               L343f_it6802ShowErrorCount:
17853  3434 5204          	subw	sp,#4
17854       00000004      OFST:	set	4
17857                     ; 4233 	RegB4 = hdmirxrd(REG_RX_0B4);
17859  3436 a6b4          	ld	a,#180
17860  3438 8d390039      	callf	L36f_hdmirxrd
17862  343c 6b01          	ld	(OFST-3,sp),a
17863                     ; 4234 	RegB5 = hdmirxrd(REG_RX_0B5);
17865  343e a6b5          	ld	a,#181
17866  3440 8d390039      	callf	L36f_hdmirxrd
17868  3444 6b02          	ld	(OFST-2,sp),a
17869                     ; 4235 	RegB9 = hdmirxrd(REG_RX_0B9);
17871  3446 a6b9          	ld	a,#185
17872  3448 8d390039      	callf	L36f_hdmirxrd
17874  344c 6b03          	ld	(OFST-1,sp),a
17875                     ; 4236 	RegBA = hdmirxrd(REG_RX_0BA);
17877  344e a6ba          	ld	a,#186
17878  3450 8d390039      	callf	L36f_hdmirxrd
17880  3454 6b04          	ld	(OFST+0,sp),a
17881                     ; 4238 	if(OldRegB4!=RegB4)
17883  3456 c6000c        	ld	a,_OldRegB4
17884  3459 1101          	cp	a,(OFST-3,sp)
17885  345b 2710          	jreq	L1337
17886                     ; 4240 		MHLRX_DEBUG_PRINTF(printf("11111111 RegB4=%x \r\n",RegB4));
17888  345d 7b01          	ld	a,(OFST-3,sp)
17889  345f 88            	push	a
17890  3460 ae0c92        	ldw	x,#L3337
17891  3463 8d000000      	callf	f_printf
17893  3467 84            	pop	a
17894                     ; 4241 		OldRegB4=RegB4;
17896  3468 7b01          	ld	a,(OFST-3,sp)
17897  346a c7000c        	ld	_OldRegB4,a
17898  346d               L1337:
17899                     ; 4244 	if(OldRegB5!=RegB5)
17901  346d c6000d        	ld	a,_OldRegB5
17902  3470 1102          	cp	a,(OFST-2,sp)
17903  3472 2710          	jreq	L5337
17904                     ; 4247 		MHLRX_DEBUG_PRINTF(printf("22222222 RegB5=%x \r\n",RegB5));
17906  3474 7b02          	ld	a,(OFST-2,sp)
17907  3476 88            	push	a
17908  3477 ae0c7d        	ldw	x,#L7337
17909  347a 8d000000      	callf	f_printf
17911  347e 84            	pop	a
17912                     ; 4248 		OldRegB5=RegB5;
17914  347f 7b02          	ld	a,(OFST-2,sp)
17915  3481 c7000d        	ld	_OldRegB5,a
17916  3484               L5337:
17917                     ; 4251 	if(OldRegB9!=RegB9)
17919  3484 c6000e        	ld	a,_OldRegB9
17920  3487 1103          	cp	a,(OFST-1,sp)
17921  3489 2710          	jreq	L1437
17922                     ; 4253 		MHLRX_DEBUG_PRINTF(printf("33333333 RegB9=%x \r\n",RegB9));
17924  348b 7b03          	ld	a,(OFST-1,sp)
17925  348d 88            	push	a
17926  348e ae0c68        	ldw	x,#L3437
17927  3491 8d000000      	callf	f_printf
17929  3495 84            	pop	a
17930                     ; 4254 		OldRegB9=RegB9;
17932  3496 7b03          	ld	a,(OFST-1,sp)
17933  3498 c7000e        	ld	_OldRegB9,a
17934  349b               L1437:
17935                     ; 4257 	if(OldRegBA!=RegBA)
17937  349b c6000f        	ld	a,_OldRegBA
17938  349e 1104          	cp	a,(OFST+0,sp)
17939  34a0 2710          	jreq	L5437
17940                     ; 4259 		MHLRX_DEBUG_PRINTF(printf("44444444 RegBA=%x \r\n",RegBA));
17942  34a2 7b04          	ld	a,(OFST+0,sp)
17943  34a4 88            	push	a
17944  34a5 ae0c53        	ldw	x,#L7437
17945  34a8 8d000000      	callf	f_printf
17947  34ac 84            	pop	a
17948                     ; 4260 		OldRegBA=RegBA;
17950  34ad 7b04          	ld	a,(OFST+0,sp)
17951  34af c7000f        	ld	_OldRegBA,a
17952  34b2               L5437:
17953                     ; 4264 }
17956  34b2 5b04          	addw	sp,#4
17957  34b4 87            	retf
17994                     ; 4266 static void it6802AutoPortSelect(struct it6802_dev_data *it6802)
17994                     ; 4267 {
17995                     	switch	.text
17996  34b5               L143f_it6802AutoPortSelect:
18000                     ; 4285 }
18003  34b5 87            	retf
18114                     ; 4288 void get_vid_info( void )
18114                     ; 4289 {
18115                     	switch	.text
18116  34b6               f_get_vid_info:
18118  34b6 521b          	subw	sp,#27
18119       0000001b      OFST:	set	27
18122                     ; 4355 	InterLaced = (hdmirxrd(0x99)&0x02)>>1;
18124  34b8 a699          	ld	a,#153
18125  34ba 8d390039      	callf	L36f_hdmirxrd
18127  34be a402          	and	a,#2
18128  34c0 44            	srl	a
18129  34c1 5f            	clrw	x
18130  34c2 97            	ld	xl,a
18131  34c3 1f0a          	ldw	(OFST-17,sp),x
18132                     ; 4357 	HTotal   = ((hdmirxrd(0x9D)&0x3F)<<8) + hdmirxrd(0x9C);
18134  34c5 a69c          	ld	a,#156
18135  34c7 8d390039      	callf	L36f_hdmirxrd
18137  34cb 6b01          	ld	(OFST-26,sp),a
18138  34cd a69d          	ld	a,#157
18139  34cf 8d390039      	callf	L36f_hdmirxrd
18141  34d3 a43f          	and	a,#63
18142  34d5 5f            	clrw	x
18143  34d6 97            	ld	xl,a
18144  34d7 4f            	clr	a
18145  34d8 02            	rlwa	x,a
18146  34d9 01            	rrwa	x,a
18147  34da 1b01          	add	a,(OFST-26,sp)
18148  34dc 2401          	jrnc	L406
18149  34de 5c            	incw	x
18150  34df               L406:
18151  34df 02            	rlwa	x,a
18152  34e0 1f0c          	ldw	(OFST-15,sp),x
18153  34e2 01            	rrwa	x,a
18154                     ; 4358 	HActive  = ((hdmirxrd(0x9F)&0x3F)<<8) + hdmirxrd(0x9E);
18156  34e3 a69e          	ld	a,#158
18157  34e5 8d390039      	callf	L36f_hdmirxrd
18159  34e9 6b01          	ld	(OFST-26,sp),a
18160  34eb a69f          	ld	a,#159
18161  34ed 8d390039      	callf	L36f_hdmirxrd
18163  34f1 a43f          	and	a,#63
18164  34f3 5f            	clrw	x
18165  34f4 97            	ld	xl,a
18166  34f5 4f            	clr	a
18167  34f6 02            	rlwa	x,a
18168  34f7 01            	rrwa	x,a
18169  34f8 1b01          	add	a,(OFST-26,sp)
18170  34fa 2401          	jrnc	L606
18171  34fc 5c            	incw	x
18172  34fd               L606:
18173  34fd 02            	rlwa	x,a
18174  34fe 1f0e          	ldw	(OFST-13,sp),x
18175  3500 01            	rrwa	x,a
18176                     ; 4359 	HFP      = ((hdmirxrd(0xA1)&0xF0)<<4) + hdmirxrd(0xA2);
18178  3501 a6a2          	ld	a,#162
18179  3503 8d390039      	callf	L36f_hdmirxrd
18181  3507 6b01          	ld	(OFST-26,sp),a
18182  3509 a6a1          	ld	a,#161
18183  350b 8d390039      	callf	L36f_hdmirxrd
18185  350f a4f0          	and	a,#240
18186  3511 97            	ld	xl,a
18187  3512 a610          	ld	a,#16
18188  3514 42            	mul	x,a
18189  3515 01            	rrwa	x,a
18190  3516 1b01          	add	a,(OFST-26,sp)
18191  3518 2401          	jrnc	L016
18192  351a 5c            	incw	x
18193  351b               L016:
18194  351b 02            	rlwa	x,a
18195  351c 1f10          	ldw	(OFST-11,sp),x
18196  351e 01            	rrwa	x,a
18197                     ; 4360 	HSYNCW   = ((hdmirxrd(0xA1)&0x01)<<8) + hdmirxrd(0xA0);
18199  351f a6a0          	ld	a,#160
18200  3521 8d390039      	callf	L36f_hdmirxrd
18202  3525 6b01          	ld	(OFST-26,sp),a
18203  3527 a6a1          	ld	a,#161
18204  3529 8d390039      	callf	L36f_hdmirxrd
18206  352d a401          	and	a,#1
18207  352f 5f            	clrw	x
18208  3530 97            	ld	xl,a
18209  3531 4f            	clr	a
18210  3532 02            	rlwa	x,a
18211  3533 01            	rrwa	x,a
18212  3534 1b01          	add	a,(OFST-26,sp)
18213  3536 2401          	jrnc	L216
18214  3538 5c            	incw	x
18215  3539               L216:
18216  3539 02            	rlwa	x,a
18217  353a 1f12          	ldw	(OFST-9,sp),x
18218  353c 01            	rrwa	x,a
18219                     ; 4361 	HSyncPol = hdmirxrd(0xA8)&0x04>>2;
18221  353d a6a8          	ld	a,#168
18222  353f 8d390039      	callf	L36f_hdmirxrd
18224  3543 a401          	and	a,#1
18225  3545 5f            	clrw	x
18226  3546 97            	ld	xl,a
18227  3547 1f06          	ldw	(OFST-21,sp),x
18228                     ; 4363 	VTotal   = ((hdmirxrd(0xA4)&0x0F)<<8) + hdmirxrd(0xA3);
18230  3549 a6a3          	ld	a,#163
18231  354b 8d390039      	callf	L36f_hdmirxrd
18233  354f 6b01          	ld	(OFST-26,sp),a
18234  3551 a6a4          	ld	a,#164
18235  3553 8d390039      	callf	L36f_hdmirxrd
18237  3557 a40f          	and	a,#15
18238  3559 5f            	clrw	x
18239  355a 97            	ld	xl,a
18240  355b 4f            	clr	a
18241  355c 02            	rlwa	x,a
18242  355d 01            	rrwa	x,a
18243  355e 1b01          	add	a,(OFST-26,sp)
18244  3560 2401          	jrnc	L416
18245  3562 5c            	incw	x
18246  3563               L416:
18247  3563 02            	rlwa	x,a
18248  3564 1f14          	ldw	(OFST-7,sp),x
18249  3566 01            	rrwa	x,a
18250                     ; 4364 	VActive  = ((hdmirxrd(0xA4)&0xF0)<<4) + hdmirxrd(0xA5);
18252  3567 a6a5          	ld	a,#165
18253  3569 8d390039      	callf	L36f_hdmirxrd
18255  356d 6b01          	ld	(OFST-26,sp),a
18256  356f a6a4          	ld	a,#164
18257  3571 8d390039      	callf	L36f_hdmirxrd
18259  3575 a4f0          	and	a,#240
18260  3577 97            	ld	xl,a
18261  3578 a610          	ld	a,#16
18262  357a 42            	mul	x,a
18263  357b 01            	rrwa	x,a
18264  357c 1b01          	add	a,(OFST-26,sp)
18265  357e 2401          	jrnc	L616
18266  3580 5c            	incw	x
18267  3581               L616:
18268  3581 02            	rlwa	x,a
18269  3582 1f16          	ldw	(OFST-5,sp),x
18270  3584 01            	rrwa	x,a
18271                     ; 4365 	VFP      = hdmirxrd(0xA7)&0x3F;
18273  3585 a6a7          	ld	a,#167
18274  3587 8d390039      	callf	L36f_hdmirxrd
18276  358b a43f          	and	a,#63
18277  358d 5f            	clrw	x
18278  358e 97            	ld	xl,a
18279  358f 1f18          	ldw	(OFST-3,sp),x
18280                     ; 4366 	VSYNCW   = hdmirxrd(0xA6)&0x1F;
18282  3591 a6a6          	ld	a,#166
18283  3593 8d390039      	callf	L36f_hdmirxrd
18285  3597 a41f          	and	a,#31
18286  3599 5f            	clrw	x
18287  359a 97            	ld	xl,a
18288  359b 1f1a          	ldw	(OFST-1,sp),x
18289                     ; 4367 	VSyncPol = (hdmirxrd(0xA8)&0x08)>>3;
18291  359d a6a8          	ld	a,#168
18292  359f 8d390039      	callf	L36f_hdmirxrd
18294  35a3 a408          	and	a,#8
18295  35a5 44            	srl	a
18296  35a6 44            	srl	a
18297  35a7 44            	srl	a
18298  35a8 5f            	clrw	x
18299  35a9 97            	ld	xl,a
18300  35aa 1f08          	ldw	(OFST-19,sp),x
18301                     ; 4370 	CurTMDSCLK             = (int)TMDSCLK;
18303  35ac 96            	ldw	x,sp
18304  35ad 1c0002        	addw	x,#OFST-25
18305  35b0 8d000000      	callf	d_ltor
18307  35b4 8d000000      	callf	d_ftoi
18309  35b8 cf002d        	ldw	_CurTMDSCLK,x
18310                     ; 4372 	CurVTiming.HActive     = HActive;
18312  35bb 1e0e          	ldw	x,(OFST-13,sp)
18313  35bd cf0013        	ldw	_CurVTiming,x
18314                     ; 4373 	CurVTiming.HTotal      = HTotal;
18316  35c0 1e0c          	ldw	x,(OFST-15,sp)
18317  35c2 cf0017        	ldw	_CurVTiming+4,x
18318                     ; 4374 	CurVTiming.HFrontPorch = HFP;
18320  35c5 1e10          	ldw	x,(OFST-11,sp)
18321  35c7 cf0020        	ldw	_CurVTiming+13,x
18322                     ; 4375 	CurVTiming.HSyncWidth  = HSYNCW;
18324  35ca 1e12          	ldw	x,(OFST-9,sp)
18325  35cc cf0022        	ldw	_CurVTiming+15,x
18326                     ; 4376 	CurVTiming.HBackPorch  = HTotal - HActive - HFP - HSYNCW;
18328  35cf 1e0c          	ldw	x,(OFST-15,sp)
18329  35d1 72f00e        	subw	x,(OFST-13,sp)
18330  35d4 72f010        	subw	x,(OFST-11,sp)
18331  35d7 72f012        	subw	x,(OFST-9,sp)
18332  35da cf0024        	ldw	_CurVTiming+17,x
18333                     ; 4377 	CurVTiming.VActive     = VActive;
18335  35dd 1e16          	ldw	x,(OFST-5,sp)
18336  35df cf0015        	ldw	_CurVTiming+2,x
18337                     ; 4378 	CurVTiming.VTotal      = VTotal;
18339  35e2 1e14          	ldw	x,(OFST-7,sp)
18340  35e4 cf0019        	ldw	_CurVTiming+6,x
18341                     ; 4379 	CurVTiming.VFrontPorch = VFP;
18343  35e7 1e18          	ldw	x,(OFST-3,sp)
18344  35e9 cf0026        	ldw	_CurVTiming+19,x
18345                     ; 4380 	CurVTiming.VSyncWidth  = VSYNCW;
18347  35ec 1e1a          	ldw	x,(OFST-1,sp)
18348  35ee cf0028        	ldw	_CurVTiming+21,x
18349                     ; 4381 	CurVTiming.VBackPorch  = VTotal - VActive - VFP - VSYNCW;
18351  35f1 1e14          	ldw	x,(OFST-7,sp)
18352  35f3 72f016        	subw	x,(OFST-5,sp)
18353  35f6 72f018        	subw	x,(OFST-3,sp)
18354  35f9 72f01a        	subw	x,(OFST-1,sp)
18355  35fc cf002a        	ldw	_CurVTiming+23,x
18356                     ; 4382 	CurVTiming.ScanMode    = (InterLaced)&0x01;
18358  35ff 7b0b          	ld	a,(OFST-16,sp)
18359  3601 a401          	and	a,#1
18360  3603 44            	srl	a
18361  3604 9011002c      	bccm	_CurVTiming+25,#0
18362                     ; 4383 	CurVTiming.VPolarity   = (VSyncPol)&0x01;
18364  3608 7b09          	ld	a,(OFST-18,sp)
18365  360a a401          	and	a,#1
18366  360c 44            	srl	a
18367  360d 9013002c      	bccm	_CurVTiming+25,#1
18368                     ; 4384 	CurVTiming.HPolarity   = (HSyncPol)&0x01;
18370  3611 7b07          	ld	a,(OFST-20,sp)
18371  3613 a401          	and	a,#1
18372  3615 44            	srl	a
18373  3616 9015002c      	bccm	_CurVTiming+25,#2
18374                     ; 4385 }
18377  361a 5b1b          	addw	sp,#27
18378  361c 87            	retf
18446                     ; 4389 void show_vid_info( void )
18446                     ; 4390 {
18447                     	switch	.text
18448  361d               f_show_vid_info:
18450  361d 5206          	subw	sp,#6
18451       00000006      OFST:	set	6
18454                     ; 4394 	int GCP_CD       = CD8BIT; //24 bits per pixel
18456                     ; 4396 	GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
18458  361f a699          	ld	a,#153
18459  3621 8d390039      	callf	L36f_hdmirxrd
18461  3625 a4f0          	and	a,#240
18462  3627 4e            	swap	a
18463  3628 a40f          	and	a,#15
18464  362a 5f            	clrw	x
18465  362b 97            	ld	xl,a
18466  362c 1f05          	ldw	(OFST-1,sp),x
18467                     ; 4398 	switch( GCP_CD ) {
18469  362e 1e05          	ldw	x,(OFST-1,sp)
18471                     ; 4416 	break;
18472  3630 1d0005        	subw	x,#5
18473  3633 2722          	jreq	L3347
18474  3635 5a            	decw	x
18475  3636 2740          	jreq	L5347
18476  3638               L7347:
18477                     ; 4411 	default :
18477                     ; 4412 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 24 bits per pixel\r\n"));
18479  3638 ae0bd8        	ldw	x,#L3257
18480  363b 8d000000      	callf	f_printf
18482                     ; 4413 	InBPC=8;
18484  363f ae0008        	ldw	x,#8
18485  3642 1f05          	ldw	(OFST-1,sp),x
18486                     ; 4414 	hdmirxset(0x65, 0x0C, 0x00);
18488  3644 4b00          	push	#0
18489  3646 ae000c        	ldw	x,#12
18490  3649 a665          	ld	a,#101
18491  364b 95            	ld	xh,a
18492  364c 8da500a5      	callf	L76f_hdmirxset
18494  3650 84            	pop	a
18495                     ; 4415 	OutCD = OUT8B;
18497  3651 5f            	clrw	x
18498  3652 cf000a        	ldw	_OutCD,x
18499                     ; 4416 	break;
18501  3655 2040          	jra	L5157
18502  3657               L3347:
18503                     ; 4399 	case 5 :
18503                     ; 4400 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 30 bits per pixel\r\n"));
18505  3657 ae0c2a        	ldw	x,#L7157
18506  365a 8d000000      	callf	f_printf
18508                     ; 4401 	InBPC=10;
18510  365e ae000a        	ldw	x,#10
18511  3661 1f05          	ldw	(OFST-1,sp),x
18512                     ; 4402 	hdmirxset(0x65, 0x0C, 0x04);
18514  3663 4b04          	push	#4
18515  3665 ae000c        	ldw	x,#12
18516  3668 a665          	ld	a,#101
18517  366a 95            	ld	xh,a
18518  366b 8da500a5      	callf	L76f_hdmirxset
18520  366f 84            	pop	a
18521                     ; 4403 	OutCD = OUT10B;
18523  3670 ae0001        	ldw	x,#1
18524  3673 cf000a        	ldw	_OutCD,x
18525                     ; 4404 	break;
18527  3676 201f          	jra	L5157
18528  3678               L5347:
18529                     ; 4405 	case 6 :
18529                     ; 4406 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 36 bits per pixel\r\n"));
18531  3678 ae0c01        	ldw	x,#L1257
18532  367b 8d000000      	callf	f_printf
18534                     ; 4407 	InBPC=12;
18536  367f ae000c        	ldw	x,#12
18537  3682 1f05          	ldw	(OFST-1,sp),x
18538                     ; 4408 	hdmirxset(0x65, 0x0C, 0x08);
18540  3684 4b08          	push	#8
18541  3686 ae000c        	ldw	x,#12
18542  3689 a665          	ld	a,#101
18543  368b 95            	ld	xh,a
18544  368c 8da500a5      	callf	L76f_hdmirxset
18546  3690 84            	pop	a
18547                     ; 4409 	OutCD = OUT12B;
18549  3691 ae0002        	ldw	x,#2
18550  3694 cf000a        	ldw	_OutCD,x
18551                     ; 4410 	break;
18553  3697               L5157:
18554                     ; 4419 	switch( OutCD ) {
18556  3697 ce000a        	ldw	x,_OutCD
18558                     ; 4428 	break;
18559  369a 5a            	decw	x
18560  369b 270c          	jreq	L1447
18561  369d 5a            	decw	x
18562  369e 2712          	jreq	L3447
18563  36a0               L5447:
18564                     ; 4426 	default :
18564                     ; 4427 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 24 bits per pixel\r\n"));
18566  36a0 ae0b60        	ldw	x,#L5357
18567  36a3 8d000000      	callf	f_printf
18569                     ; 4428 	break;
18571  36a7 2010          	jra	L7257
18572  36a9               L1447:
18573                     ; 4420 	case 1 :
18573                     ; 4421 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 30 bits per pixel\r\n"));
18575  36a9 ae0bb0        	ldw	x,#L1357
18576  36ac 8d000000      	callf	f_printf
18578                     ; 4422 	break;
18580  36b0 2007          	jra	L7257
18581  36b2               L3447:
18582                     ; 4423 	case 2 :
18582                     ; 4424 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 36 bits per pixel\r\n"));
18584  36b2 ae0b88        	ldw	x,#L3357
18585  36b5 8d000000      	callf	f_printf
18587                     ; 4425 	break;
18589  36b9               L7257:
18590                     ; 4431 	chgbank(2);
18592  36b9 ae0002        	ldw	x,#2
18593  36bc 8d140514      	callf	L711f_chgbank
18595                     ; 4432 	InColorMode = (hdmirxrd(0x15)&0x60)>>5;
18597  36c0 a615          	ld	a,#21
18598  36c2 8d390039      	callf	L36f_hdmirxrd
18600  36c6 a460          	and	a,#96
18601  36c8 4e            	swap	a
18602  36c9 44            	srl	a
18603  36ca a407          	and	a,#7
18604  36cc 5f            	clrw	x
18605  36cd 97            	ld	xl,a
18606  36ce cf0006        	ldw	_InColorMode,x
18607                     ; 4433 	chgbank(0);
18609  36d1 5f            	clrw	x
18610  36d2 8d140514      	callf	L711f_chgbank
18612                     ; 4435 	if( InColorMode==1 ) { //YCbCr422
18614  36d6 ce0006        	ldw	x,_InColorMode
18615  36d9 a30001        	cpw	x,#1
18616  36dc 2605          	jrne	L7357
18617                     ; 4436 	InBPP = InBPC*2;
18619  36de 1e05          	ldw	x,(OFST-1,sp)
18620  36e0 58            	sllw	x
18622  36e1 200a          	jra	L1457
18623  36e3               L7357:
18624                     ; 4440 	InBPP = InBPC*3;
18626  36e3 1e05          	ldw	x,(OFST-1,sp)
18627  36e5 90ae0003      	ldw	y,#3
18628  36e9 8d000000      	callf	d_imul
18630  36ed               L1457:
18631                     ; 4443 	switch( InColorMode ) {
18633  36ed ce0006        	ldw	x,_InColorMode
18635                     ; 4461 	break;
18636  36f0 5d            	tnzw	x
18637  36f1 270f          	jreq	L7447
18638  36f3 5a            	decw	x
18639  36f4 2715          	jreq	L1547
18640  36f6 5a            	decw	x
18641  36f7 271b          	jreq	L3547
18642  36f9               L5547:
18643                     ; 4459 	default :
18643                     ; 4460 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = Reserved !!!\r\n"));
18645  36f9 ae0ae6        	ldw	x,#L5557
18646  36fc 8d000000      	callf	f_printf
18648                     ; 4461 	break;
18650  3700 2019          	jra	L5457
18651  3702               L7447:
18652                     ; 4444 	case 0 :
18652                     ; 4445 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = RGB444\r\n"));
18654  3702 ae0b44        	ldw	x,#L7457
18655  3705 8d000000      	callf	f_printf
18657                     ; 4448 	break;
18659  3709 2010          	jra	L5457
18660  370b               L1547:
18661                     ; 4449 	case 1 :
18661                     ; 4450 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr422\r\n"));
18663  370b ae0b26        	ldw	x,#L1557
18664  370e 8d000000      	callf	f_printf
18666                     ; 4453 	break;
18668  3712 2007          	jra	L5457
18669  3714               L3547:
18670                     ; 4454 	case 2 :
18670                     ; 4455 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr444\r\n"));
18672  3714 ae0b08        	ldw	x,#L3557
18673  3717 8d000000      	callf	f_printf
18675                     ; 4458 	break;
18677  371b               L5457:
18678                     ; 4465 	OutColorMode = (hdmirxrd(0x65)&0x30)>>5;
18680  371b a665          	ld	a,#101
18681  371d 8d390039      	callf	L36f_hdmirxrd
18683  3721 a430          	and	a,#48
18684  3723 4e            	swap	a
18685  3724 44            	srl	a
18686  3725 a407          	and	a,#7
18687  3727 5f            	clrw	x
18688  3728 97            	ld	xl,a
18689  3729 cf0008        	ldw	_OutColorMode,x
18690                     ; 4466 	switch( OutColorMode ) {
18692  372c ce0008        	ldw	x,_OutColorMode
18694                     ; 4481 	break;
18695  372f 5d            	tnzw	x
18696  3730 270f          	jreq	L7547
18697  3732 5a            	decw	x
18698  3733 2715          	jreq	L1647
18699  3735 5a            	decw	x
18700  3736 271b          	jreq	L3647
18701  3738               L5647:
18702                     ; 4479 	default :
18702                     ; 4480 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = Reserved !!!\r\n"));
18704  3738 ae0a68        	ldw	x,#L1757
18705  373b 8d000000      	callf	f_printf
18707                     ; 4481 	break;
18709  373f 2019          	jra	L1657
18710  3741               L7547:
18711                     ; 4467 	case 0 :
18711                     ; 4468 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = RGB444\r\n"));
18713  3741 ae0ac9        	ldw	x,#L3657
18714  3744 8d000000      	callf	f_printf
18716                     ; 4470 	break;
18718  3748 2010          	jra	L1657
18719  374a               L1647:
18720                     ; 4471 	case 1 :
18720                     ; 4472 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr422\r\n"));
18722  374a ae0aaa        	ldw	x,#L5657
18723  374d 8d000000      	callf	f_printf
18725                     ; 4474 	break;
18727  3751 2007          	jra	L1657
18728  3753               L3647:
18729                     ; 4475 	case 2 :
18729                     ; 4476 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr444\r\n"));
18731  3753 ae0a8b        	ldw	x,#L7657
18732  3756 8d000000      	callf	f_printf
18734                     ; 4478 	break;
18736  375a               L1657:
18737                     ; 4485 	MHL_Mode     = ((hdmirxrd(0x0A)&0x40)>>6);
18739  375a a60a          	ld	a,#10
18740  375c 8d390039      	callf	L36f_hdmirxrd
18742  3760 a440          	and	a,#64
18743  3762 4e            	swap	a
18744  3763 44            	srl	a
18745  3764 44            	srl	a
18746  3765 a403          	and	a,#3
18747  3767 5f            	clrw	x
18748  3768 97            	ld	xl,a
18749  3769 1f03          	ldw	(OFST-3,sp),x
18750                     ; 4486 	MHL_CLK_Mode = ((mhlrxrd(0xB1)&0x07));
18752  376b a6b1          	ld	a,#177
18753  376d 8d030103      	callf	L37f_mhlrxrd
18755  3771 a407          	and	a,#7
18756  3773 5f            	clrw	x
18757  3774 97            	ld	xl,a
18758  3775 1f05          	ldw	(OFST-1,sp),x
18759                     ; 4488 	if( MHL_Mode ) {
18761  3777 1e03          	ldw	x,(OFST-3,sp)
18762  3779 2719          	jreq	L3757
18763                     ; 4489 	if( MHL_CLK_Mode==0x02 )
18765  377b 1e05          	ldw	x,(OFST-1,sp)
18766  377d a30002        	cpw	x,#2
18767  3780 2609          	jrne	L5757
18768                     ; 4490 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL PackPixel Mode\r\n"));
18770  3782 ae0a48        	ldw	x,#L7757
18771  3785 8d000000      	callf	f_printf
18774  3789 2010          	jra	L5067
18775  378b               L5757:
18776                     ; 4492 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL 24 bits Mode\r\n"));
18778  378b ae0a2a        	ldw	x,#L3067
18779  378e 8d000000      	callf	f_printf
18781  3792 2007          	jra	L5067
18782  3794               L3757:
18783                     ; 4495 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : HDMI Mode\r\n"));
18785  3794 ae0a13        	ldw	x,#L7067
18786  3797 8d000000      	callf	f_printf
18788  379b               L5067:
18789                     ; 4500 	MHLRX_DEBUG_PRINTF(printf("HActive = %d\r\n", CurVTiming.HActive));
18791  379b ce0013        	ldw	x,_CurVTiming
18792  379e 89            	pushw	x
18793  379f ae0a04        	ldw	x,#L1167
18794  37a2 8d000000      	callf	f_printf
18796  37a6 85            	popw	x
18797                     ; 4501 	MHLRX_DEBUG_PRINTF(printf("VActive = %d\r\n", CurVTiming.VActive));
18799  37a7 ce0015        	ldw	x,_CurVTiming+2
18800  37aa 89            	pushw	x
18801  37ab ae09f5        	ldw	x,#L3167
18802  37ae 8d000000      	callf	f_printf
18804  37b2 85            	popw	x
18805                     ; 4502 	MHLRX_DEBUG_PRINTF(printf("HTotal = %d\r\n", CurVTiming.HTotal));
18807  37b3 ce0017        	ldw	x,_CurVTiming+4
18808  37b6 89            	pushw	x
18809  37b7 ae09e7        	ldw	x,#L5167
18810  37ba 8d000000      	callf	f_printf
18812  37be 85            	popw	x
18813                     ; 4503 	MHLRX_DEBUG_PRINTF(printf("VTotal = %d\r\n", CurVTiming.VTotal));
18815  37bf ce0019        	ldw	x,_CurVTiming+6
18816  37c2 89            	pushw	x
18817  37c3 ae09d9        	ldw	x,#L7167
18818  37c6 8d000000      	callf	f_printf
18820  37ca 85            	popw	x
18821                     ; 4504 	MHLRX_DEBUG_PRINTF(printf("HFrontPorch = %d\r\n", CurVTiming.HFrontPorch));
18823  37cb ce0020        	ldw	x,_CurVTiming+13
18824  37ce 89            	pushw	x
18825  37cf ae09c6        	ldw	x,#L1267
18826  37d2 8d000000      	callf	f_printf
18828  37d6 85            	popw	x
18829                     ; 4505 	MHLRX_DEBUG_PRINTF(printf("HSyncWidth = %d\r\n", CurVTiming.HSyncWidth));
18831  37d7 ce0022        	ldw	x,_CurVTiming+15
18832  37da 89            	pushw	x
18833  37db ae09b4        	ldw	x,#L3267
18834  37de 8d000000      	callf	f_printf
18836  37e2 85            	popw	x
18837                     ; 4506 	MHLRX_DEBUG_PRINTF(printf("HBackPorch = %d\r\n", CurVTiming.HBackPorch));
18839  37e3 ce0024        	ldw	x,_CurVTiming+17
18840  37e6 89            	pushw	x
18841  37e7 ae09a2        	ldw	x,#L5267
18842  37ea 8d000000      	callf	f_printf
18844  37ee 85            	popw	x
18845                     ; 4507 	MHLRX_DEBUG_PRINTF(printf("VFrontPorch = %d\r\n", CurVTiming.VFrontPorch));
18847  37ef ce0026        	ldw	x,_CurVTiming+19
18848  37f2 89            	pushw	x
18849  37f3 ae098f        	ldw	x,#L7267
18850  37f6 8d000000      	callf	f_printf
18852  37fa 85            	popw	x
18853                     ; 4508 	MHLRX_DEBUG_PRINTF(printf("VSyncWidth = %d\r\n", CurVTiming.VSyncWidth));
18855  37fb ce0028        	ldw	x,_CurVTiming+21
18856  37fe 89            	pushw	x
18857  37ff ae097d        	ldw	x,#L1367
18858  3802 8d000000      	callf	f_printf
18860  3806 85            	popw	x
18861                     ; 4509 	MHLRX_DEBUG_PRINTF(printf("VBackPorch = %d\r\n", CurVTiming.VBackPorch));
18863  3807 ce002a        	ldw	x,_CurVTiming+23
18864  380a 89            	pushw	x
18865  380b ae096b        	ldw	x,#L3367
18866  380e 8d000000      	callf	f_printf
18868  3812 85            	popw	x
18869                     ; 4511 	if( CurVTiming.ScanMode==0 ) {
18871  3813 c6002c        	ld	a,_CurVTiming+25
18872  3816 a501          	bcp	a,#1
18873  3818 2609          	jrne	L5367
18874                     ; 4512 	MHLRX_DEBUG_PRINTF(printf("ScanMode = Progressive\r\n"));
18876  381a ae0952        	ldw	x,#L7367
18877  381d 8d000000      	callf	f_printf
18880  3821 2007          	jra	L1467
18881  3823               L5367:
18882                     ; 4515 	MHLRX_DEBUG_PRINTF(printf("ScanMode = InterLaced\r\n"));
18884  3823 ae093a        	ldw	x,#L3467
18885  3826 8d000000      	callf	f_printf
18887  382a               L1467:
18888                     ; 4518 	if( CurVTiming.VPolarity==1 ) {
18890  382a c6002c        	ld	a,_CurVTiming+25
18891  382d a502          	bcp	a,#2
18892  382f 2709          	jreq	L5467
18893                     ; 4519 	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Positive\r\n"));
18895  3831 ae0924        	ldw	x,#L7467
18896  3834 8d000000      	callf	f_printf
18899  3838 2007          	jra	L1567
18900  383a               L5467:
18901                     ; 4522 	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Negative\r\n"));
18903  383a ae090e        	ldw	x,#L3567
18904  383d 8d000000      	callf	f_printf
18906  3841               L1567:
18907                     ; 4525 	if( CurVTiming.HPolarity==1 ) {
18909  3841 c6002c        	ld	a,_CurVTiming+25
18910  3844 a504          	bcp	a,#4
18911  3846 2709          	jreq	L5567
18912                     ; 4526 	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Positive\r\n"));
18914  3848 ae08f8        	ldw	x,#L7567
18915  384b 8d000000      	callf	f_printf
18918  384f 2007          	jra	L1667
18919  3851               L5567:
18920                     ; 4529 	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Negative\r\n"));
18922  3851 ae08e2        	ldw	x,#L3667
18923  3854 8d000000      	callf	f_printf
18925  3858               L1667:
18926                     ; 4533 	MHLRX_DEBUG_PRINTF(printf(" RegB4=%x \r\n",hdmirxrd(REG_RX_0B4)));
18928  3858 a6b4          	ld	a,#180
18929  385a 8d390039      	callf	L36f_hdmirxrd
18931  385e 88            	push	a
18932  385f ae08d5        	ldw	x,#L5667
18933  3862 8d000000      	callf	f_printf
18935  3866 84            	pop	a
18936                     ; 4534 	MHLRX_DEBUG_PRINTF(printf(" RegB5=%x \r\n",hdmirxrd(REG_RX_0B5)));
18938  3867 a6b5          	ld	a,#181
18939  3869 8d390039      	callf	L36f_hdmirxrd
18941  386d 88            	push	a
18942  386e ae08c8        	ldw	x,#L7667
18943  3871 8d000000      	callf	f_printf
18945  3875 84            	pop	a
18946                     ; 4535 	MHLRX_DEBUG_PRINTF(printf(" RegB9=%x \r\n",hdmirxrd(REG_RX_0B9)));
18948  3876 a6b9          	ld	a,#185
18949  3878 8d390039      	callf	L36f_hdmirxrd
18951  387c 88            	push	a
18952  387d ae08bb        	ldw	x,#L1767
18953  3880 8d000000      	callf	f_printf
18955  3884 84            	pop	a
18956                     ; 4536 	MHLRX_DEBUG_PRINTF(printf(" RegBA=%x \r\n",hdmirxrd(REG_RX_0BA)));
18958  3885 a6ba          	ld	a,#186
18959  3887 8d390039      	callf	L36f_hdmirxrd
18961  388b 88            	push	a
18962  388c ae08ae        	ldw	x,#L3767
18963  388f 8d000000      	callf	f_printf
18965  3893 84            	pop	a
18966                     ; 4539 }
18969  3894 5b06          	addw	sp,#6
18970  3896 87            	retf
18972                     	switch	.data
18973  0038               _t_3d_syncgen:
18974  0038 3c            	dc.b	60
18975  0039 02ed          	dc.w	749
18976  003b 0306          	dc.w	774
18977  003d 02e8          	dc.w	744
18978  003f 02f2          	dc.w	754
18979  0041 3e            	dc.b	62
18980  0042 02ed          	dc.w	749
18981  0044 0306          	dc.w	774
18982  0046 02e8          	dc.w	744
18983  0048 02f2          	dc.w	754
18984  004a 13            	dc.b	19
18985  004b 02ed          	dc.w	749
18986  004d 0306          	dc.w	774
18987  004f 02e8          	dc.w	744
18988  0051 02f2          	dc.w	754
18989  0053 04            	dc.b	4
18990  0054 02ed          	dc.w	749
18991  0056 0306          	dc.w	774
18992  0058 02e8          	dc.w	744
18993  005a 02f2          	dc.w	754
18994  005c 05            	dc.b	5
18995  005d 0464          	dc.w	1124
18996  005f 048d          	dc.w	1165
18997  0061 0460          	dc.w	1120
18998  0063 0469          	dc.w	1129
18999  0065 14            	dc.b	20
19000  0066 0464          	dc.w	1124
19001  0068 048d          	dc.w	1165
19002  006a 0460          	dc.w	1120
19003  006c 0469          	dc.w	1129
19004  006e 20            	dc.b	32
19005  006f 0464          	dc.w	1124
19006  0071 048d          	dc.w	1165
19007  0073 0460          	dc.w	1120
19008  0075 0469          	dc.w	1129
19009  0077 22            	dc.b	34
19010  0078 0464          	dc.w	1124
19011  007a 048d          	dc.w	1165
19012  007c 0460          	dc.w	1120
19013  007e 0469          	dc.w	1129
19014  0080 1f            	dc.b	31
19015  0081 0464          	dc.w	1124
19016  0083 048d          	dc.w	1165
19017  0085 0460          	dc.w	1120
19018  0087 0469          	dc.w	1129
19019  0089 10            	dc.b	16
19020  008a 0464          	dc.w	1124
19021  008c 048d          	dc.w	1165
19022  008e 0460          	dc.w	1120
19023  0090 0469          	dc.w	1129
19024  0092 ff            	dc.b	255
19025  0093 0000          	dc.w	0
19026  0095 0000          	dc.w	0
19027  0097 0000          	dc.w	0
19028  0099 0000          	dc.w	0
19124                     ; 4585 static unsigned char IT6802_DE3DFrame(unsigned char ena_de3d)
19124                     ; 4586 /*
19124                     ; 4587  * This function configures the HDMI DE3DFrame
19124                     ; 4588  * @param uunsigned char ena_de3d
19124                     ; 4589  * @return      TRUE
19124                     ; 4590  *              FALSE
19124                     ; 4591  */
19124                     ; 4592 {
19125                     	switch	.text
19126  3897               L543f_IT6802_DE3DFrame:
19128  3897 88            	push	a
19129  3898 520b          	subw	sp,#11
19130       0000000b      OFST:	set	11
19133                     ; 4604 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
19135  389a 8dd301d3      	callf	L501f_get_it6802_dev_data
19137  389e 1f0a          	ldw	(OFST-1,sp),x
19138                     ; 4606     if(ena_de3d  == TRUE)
19140  38a0 7b0c          	ld	a,(OFST+1,sp)
19141  38a2 a101          	cp	a,#1
19142  38a4 2704          	jreq	L626
19143  38a6 ac4b3d4b      	jpf	L5377
19144  38aa               L626:
19145                     ; 4609  	chgbank(2);
19147  38aa ae0002        	ldw	x,#2
19148  38ad 8d140514      	callf	L711f_chgbank
19150                     ; 4610 	uc=hdmirxrd(REG_RX_224);
19152  38b1 a624          	ld	a,#36
19153  38b3 8d390039      	callf	L36f_hdmirxrd
19155  38b7 6b09          	ld	(OFST-2,sp),a
19156                     ; 4612         if(uc == 0x81)	 // 3D InfoFrame Packet Type is valid
19158  38b9 7b09          	ld	a,(OFST-2,sp)
19159  38bb a181          	cp	a,#129
19160  38bd 2704          	jreq	L036
19161  38bf ac233d23      	jpf	L7377
19162  38c3               L036:
19163                     ; 4615 	it6802data->s_Current3DFr.VIC=hdmirxrd(REG_RX_218);	//AVI INFO PB4
19165  38c3 a618          	ld	a,#24
19166  38c5 8d390039      	callf	L36f_hdmirxrd
19168  38c9 1e0a          	ldw	x,(OFST-1,sp)
19169  38cb e726          	ld	(38,x),a
19170                     ; 4616 	it6802data->s_Current3DFr.HB0=hdmirxrd(REG_RX_224);	// General Packet Header Byte 0
19172  38cd a624          	ld	a,#36
19173  38cf 8d390039      	callf	L36f_hdmirxrd
19175  38d3 1e0a          	ldw	x,(OFST-1,sp)
19176  38d5 e727          	ld	(39,x),a
19177                     ; 4617 	it6802data->s_Current3DFr.HB1=hdmirxrd(REG_RX_225);
19179  38d7 a625          	ld	a,#37
19180  38d9 8d390039      	callf	L36f_hdmirxrd
19182  38dd 1e0a          	ldw	x,(OFST-1,sp)
19183  38df e728          	ld	(40,x),a
19184                     ; 4618 	it6802data->s_Current3DFr.HB2=hdmirxrd(REG_RX_226);
19186  38e1 a626          	ld	a,#38
19187  38e3 8d390039      	callf	L36f_hdmirxrd
19189  38e7 1e0a          	ldw	x,(OFST-1,sp)
19190  38e9 e729          	ld	(41,x),a
19191                     ; 4619 	it6802data->s_Current3DFr.PB0=hdmirxrd(REG_RX_227);	// General Packet Data Byte 0
19193  38eb a627          	ld	a,#39
19194  38ed 8d390039      	callf	L36f_hdmirxrd
19196  38f1 1e0a          	ldw	x,(OFST-1,sp)
19197  38f3 e72a          	ld	(42,x),a
19198                     ; 4620 	it6802data->s_Current3DFr.PB1=hdmirxrd(REG_RX_228);
19200  38f5 a628          	ld	a,#40
19201  38f7 8d390039      	callf	L36f_hdmirxrd
19203  38fb 1e0a          	ldw	x,(OFST-1,sp)
19204  38fd e72b          	ld	(43,x),a
19205                     ; 4621 	it6802data->s_Current3DFr.PB2=hdmirxrd(REG_RX_229);
19207  38ff a629          	ld	a,#41
19208  3901 8d390039      	callf	L36f_hdmirxrd
19210  3905 1e0a          	ldw	x,(OFST-1,sp)
19211  3907 e72c          	ld	(44,x),a
19212                     ; 4622 	it6802data->s_Current3DFr.PB3=hdmirxrd(REG_RX_22A);
19214  3909 a62a          	ld	a,#42
19215  390b 8d390039      	callf	L36f_hdmirxrd
19217  390f 1e0a          	ldw	x,(OFST-1,sp)
19218  3911 e72d          	ld	(45,x),a
19219                     ; 4623 	it6802data->s_Current3DFr.PB4=hdmirxrd(REG_RX_22B);
19221  3913 a62b          	ld	a,#43
19222  3915 8d390039      	callf	L36f_hdmirxrd
19224  3919 1e0a          	ldw	x,(OFST-1,sp)
19225  391b e72e          	ld	(46,x),a
19226                     ; 4624 	it6802data->s_Current3DFr.PB5=hdmirxrd(REG_RX_22C);
19228  391d a62c          	ld	a,#44
19229  391f 8d390039      	callf	L36f_hdmirxrd
19231  3923 1e0a          	ldw	x,(OFST-1,sp)
19232  3925 e72f          	ld	(47,x),a
19233                     ; 4625 	it6802data->s_Current3DFr.PB6=hdmirxrd(REG_RX_22D);
19235  3927 a62d          	ld	a,#45
19236  3929 8d390039      	callf	L36f_hdmirxrd
19238  392d 1e0a          	ldw	x,(OFST-1,sp)
19239  392f e730          	ld	(48,x),a
19240                     ; 4626 	it6802data->s_Current3DFr.PB7=hdmirxrd(REG_RX_22E);
19242  3931 a62e          	ld	a,#46
19243  3933 8d390039      	callf	L36f_hdmirxrd
19245  3937 1e0a          	ldw	x,(OFST-1,sp)
19246  3939 e731          	ld	(49,x),a
19247                     ; 4627  	chgbank(0);
19249  393b 5f            	clrw	x
19250  393c 8d140514      	callf	L711f_chgbank
19252                     ; 4630     MHLRX_DEBUG_PRINTF(printf("\r\nIT653x - HDMI_DumpDE3DFrameInfo: \r\n"));
19254  3940 ae0888        	ldw	x,#L1477
19255  3943 8d000000      	callf	f_printf
19257                     ; 4631     MHLRX_DEBUG_PRINTF(printf("        HDMI VIC = 0x%02bX \r\n",it6802data->s_Current3DFr.VIC));
19259  3947 1e0a          	ldw	x,(OFST-1,sp)
19260  3949 e626          	ld	a,(38,x)
19261  394b 88            	push	a
19262  394c ae086a        	ldw	x,#L3477
19263  394f 8d000000      	callf	f_printf
19265  3953 84            	pop	a
19266                     ; 4632     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB0));
19268  3954 1e0a          	ldw	x,(OFST-1,sp)
19269  3956 e627          	ld	a,(39,x)
19270  3958 88            	push	a
19271  3959 ae082a        	ldw	x,#L5477
19272  395c 8d000000      	callf	f_printf
19274  3960 84            	pop	a
19275                     ; 4633     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB1));
19277  3961 1e0a          	ldw	x,(OFST-1,sp)
19278  3963 e628          	ld	a,(40,x)
19279  3965 88            	push	a
19280  3966 ae07ea        	ldw	x,#L7477
19281  3969 8d000000      	callf	f_printf
19283  396d 84            	pop	a
19284                     ; 4634     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB2));
19286  396e 1e0a          	ldw	x,(OFST-1,sp)
19287  3970 e629          	ld	a,(41,x)
19288  3972 88            	push	a
19289  3973 ae07aa        	ldw	x,#L1577
19290  3976 8d000000      	callf	f_printf
19292  397a 84            	pop	a
19293                     ; 4635     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB0));
19295  397b 1e0a          	ldw	x,(OFST-1,sp)
19296  397d e62a          	ld	a,(42,x)
19297  397f 88            	push	a
19298  3980 ae076a        	ldw	x,#L3577
19299  3983 8d000000      	callf	f_printf
19301  3987 84            	pop	a
19302                     ; 4636     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB1));
19304  3988 1e0a          	ldw	x,(OFST-1,sp)
19305  398a e62b          	ld	a,(43,x)
19306  398c 88            	push	a
19307  398d ae072a        	ldw	x,#L5577
19308  3990 8d000000      	callf	f_printf
19310  3994 84            	pop	a
19311                     ; 4637     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB2));
19313  3995 1e0a          	ldw	x,(OFST-1,sp)
19314  3997 e62c          	ld	a,(44,x)
19315  3999 88            	push	a
19316  399a ae06ea        	ldw	x,#L7577
19317  399d 8d000000      	callf	f_printf
19319  39a1 84            	pop	a
19320                     ; 4638     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB3 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB3));
19322  39a2 1e0a          	ldw	x,(OFST-1,sp)
19323  39a4 e62d          	ld	a,(45,x)
19324  39a6 88            	push	a
19325  39a7 ae06aa        	ldw	x,#L1677
19326  39aa 8d000000      	callf	f_printf
19328  39ae 84            	pop	a
19329                     ; 4639     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB4 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB4));
19331  39af 1e0a          	ldw	x,(OFST-1,sp)
19332  39b1 e62e          	ld	a,(46,x)
19333  39b3 88            	push	a
19334  39b4 ae066a        	ldw	x,#L3677
19335  39b7 8d000000      	callf	f_printf
19337  39bb 84            	pop	a
19338                     ; 4640     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB5 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB5));
19340  39bc 1e0a          	ldw	x,(OFST-1,sp)
19341  39be e62f          	ld	a,(47,x)
19342  39c0 88            	push	a
19343  39c1 ae062a        	ldw	x,#L5677
19344  39c4 8d000000      	callf	f_printf
19346  39c8 84            	pop	a
19347                     ; 4641     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB6 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB6));
19349  39c9 1e0a          	ldw	x,(OFST-1,sp)
19350  39cb e630          	ld	a,(48,x)
19351  39cd 88            	push	a
19352  39ce ae05ea        	ldw	x,#L7677
19353  39d1 8d000000      	callf	f_printf
19355  39d5 84            	pop	a
19356                     ; 4642     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB7 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB7));
19358  39d6 1e0a          	ldw	x,(OFST-1,sp)
19359  39d8 e631          	ld	a,(49,x)
19360  39da 88            	push	a
19361  39db ae05aa        	ldw	x,#L1777
19362  39de 8d000000      	callf	f_printf
19364  39e2 84            	pop	a
19365                     ; 4649             it6802data->de3dframe_config.LR_Reference             =  2; // Source of the 3D L/R reference.
19367  39e3 1e0a          	ldw	x,(OFST-1,sp)
19368  39e5 a602          	ld	a,#2
19369  39e7 e71a          	ld	(26,x),a
19370                     ; 4650             it6802data->de3dframe_config.FrameDominance           =  0; // Left or Right Eye is first in L/R image pair.
19372  39e9 1e0a          	ldw	x,(OFST-1,sp)
19373  39eb 6f1b          	clr	(27,x)
19374                     ; 4651             it6802data->de3dframe_config.LR_Encoding              =  1; // Type of 3D L/R encoding
19376  39ed 1e0a          	ldw	x,(OFST-1,sp)
19377  39ef a601          	ld	a,#1
19378  39f1 e71c          	ld	(28,x),a
19379                     ; 4652             it6802data->de3dframe_config.TB_Reference             =  2; // Top/Bottom reference for vertically sub-sampled sources
19381  39f3 1e0a          	ldw	x,(OFST-1,sp)
19382  39f5 a602          	ld	a,#2
19383  39f7 e71d          	ld	(29,x),a
19384                     ; 4653             it6802data->de3dframe_config.OE_Reference             =  2; // Odd/Even reference for horizontally sub-sampled sources
19386  39f9 1e0a          	ldw	x,(OFST-1,sp)
19387  39fb a602          	ld	a,#2
19388  39fd e71e          	ld	(30,x),a
19389                     ; 4655             it6802data->de3dframe_config.NumActiveBlankLines      =  0; // Number of lines separating vertically packed L/R data to be removed (cropped)before being displayed
19391  39ff 1e0a          	ldw	x,(OFST-1,sp)
19392  3a01 6f1f          	clr	(31,x)
19393                     ; 4656             it6802data->de3dframe_config.NumberOfEncodedLines     =  0; // Number of encoded lines in one L/R eye frame of the display data to be blanked out with "Blanking Color".
19395  3a03 1e0a          	ldw	x,(OFST-1,sp)
19396  3a05 6f20          	clr	(32,x)
19397                     ; 4657             it6802data->de3dframe_config.LeftEncodedLineLocation  = -1; // Active line number of 1st encoded line in one Left eye frame of the display data (-1=unknown).
19399  3a07 1e0a          	ldw	x,(OFST-1,sp)
19400  3a09 90aeffff      	ldw	y,#65535
19401  3a0d ef21          	ldw	(33,x),y
19402                     ; 4658             it6802data->de3dframe_config.RightEncodedLineLocation = -1; // Active line number of 1st encoded line in one Right eye frame of the display data (-1=unknown).
19404  3a0f 1e0a          	ldw	x,(OFST-1,sp)
19405  3a11 90aeffff      	ldw	y,#65535
19406  3a15 ef23          	ldw	(35,x),y
19407                     ; 4659             it6802data->de3dframe_config.BlankingColor            =  7; // Color to use when blanking (or masking off) any embedded L/R encoding
19409  3a17 1e0a          	ldw	x,(OFST-1,sp)
19410  3a19 a607          	ld	a,#7
19411  3a1b e725          	ld	(37,x),a
19412                     ; 4661             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && ((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING))
19414  3a1d 1e0a          	ldw	x,(OFST-1,sp)
19415  3a1f e62e          	ld	a,(46,x)
19416  3a21 a4e0          	and	a,#224
19417  3a23 a140          	cp	a,#64
19418  3a25 265d          	jrne	L3777
19420  3a27 1e0a          	ldw	x,(OFST-1,sp)
19421  3a29 e62f          	ld	a,(47,x)
19422  3a2b a5f0          	bcp	a,#240
19423  3a2d 2655          	jrne	L3777
19424                     ; 4663                 i =0;
19426  3a2f 0f09          	clr	(OFST-2,sp)
19428  3a31 2042          	jra	L10001
19429  3a33               L5777:
19430                     ; 4667                     if(t_3d_syncgen[i].Vic == it6802data->s_Current3DFr.VIC)
19432  3a33 7b09          	ld	a,(OFST-2,sp)
19433  3a35 97            	ld	xl,a
19434  3a36 a609          	ld	a,#9
19435  3a38 42            	mul	x,a
19436  3a39 d60038        	ld	a,(_t_3d_syncgen,x)
19437  3a3c 1e0a          	ldw	x,(OFST-1,sp)
19438  3a3e e126          	cp	a,(38,x)
19439  3a40 2631          	jrne	L50001
19440                     ; 4669                         break;
19441  3a42               L30001:
19442                     ; 4673                 v_total     = t_3d_syncgen[i].V_total;
19444  3a42 7b09          	ld	a,(OFST-2,sp)
19445  3a44 97            	ld	xl,a
19446  3a45 a609          	ld	a,#9
19447  3a47 42            	mul	x,a
19448  3a48 de0039        	ldw	x,(_t_3d_syncgen+1,x)
19449                     ; 4674                 v_act_start = t_3d_syncgen[i].V_act_start;
19451  3a4b 7b09          	ld	a,(OFST-2,sp)
19452  3a4d 97            	ld	xl,a
19453  3a4e a609          	ld	a,#9
19454  3a50 42            	mul	x,a
19455  3a51 de003b        	ldw	x,(_t_3d_syncgen+3,x)
19456  3a54 1f05          	ldw	(OFST-6,sp),x
19457                     ; 4675                 v_act_end   = t_3d_syncgen[i].V_act_end;
19459  3a56 7b09          	ld	a,(OFST-2,sp)
19460  3a58 97            	ld	xl,a
19461  3a59 a609          	ld	a,#9
19462  3a5b 42            	mul	x,a
19463  3a5c de003d        	ldw	x,(_t_3d_syncgen+5,x)
19464  3a5f 1f07          	ldw	(OFST-4,sp),x
19465                     ; 4676                 v_sync_end  = t_3d_syncgen[i].V_sync_end;
19467  3a61 7b09          	ld	a,(OFST-2,sp)
19468  3a63 97            	ld	xl,a
19469  3a64 a609          	ld	a,#9
19470  3a66 42            	mul	x,a
19471  3a67 de003f        	ldw	x,(_t_3d_syncgen+7,x)
19472                     ; 4677                 v_act_bspace = v_act_start - v_act_end;
19474  3a6a 1e05          	ldw	x,(OFST-6,sp)
19475  3a6c 72f007        	subw	x,(OFST-4,sp)
19476  3a6f 1f07          	ldw	(OFST-4,sp),x
19477  3a71 2011          	jra	L3777
19478  3a73               L50001:
19479                     ; 4671                     i++;
19481  3a73 0c09          	inc	(OFST-2,sp)
19482  3a75               L10001:
19483                     ; 4665                 while(t_3d_syncgen[i].Vic != 0xFF)
19485  3a75 7b09          	ld	a,(OFST-2,sp)
19486  3a77 97            	ld	xl,a
19487  3a78 a609          	ld	a,#9
19488  3a7a 42            	mul	x,a
19489  3a7b d60038        	ld	a,(_t_3d_syncgen,x)
19490  3a7e a1ff          	cp	a,#255
19491  3a80 26b1          	jrne	L5777
19492  3a82 20be          	jra	L30001
19493  3a84               L3777:
19494                     ; 4680             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (!it6802data->DE3DFormat_HDMIFlag))
19496  3a84 1e0a          	ldw	x,(OFST-1,sp)
19497  3a86 e62e          	ld	a,(46,x)
19498  3a88 a4e0          	and	a,#224
19499  3a8a a140          	cp	a,#64
19500  3a8c 2610          	jrne	L70001
19502  3a8e 1e0a          	ldw	x,(OFST-1,sp)
19503  3a90 e637          	ld	a,(55,x)
19504  3a92 a501          	bcp	a,#1
19505  3a94 2608          	jrne	L70001
19506                     ; 4682                 it6802data->DE3DFormat_HDMIFlag = TRUE;
19508  3a96 1e0a          	ldw	x,(OFST-1,sp)
19509  3a98 e637          	ld	a,(55,x)
19510  3a9a aa01          	or	a,#1
19511  3a9c e737          	ld	(55,x),a
19512  3a9e               L70001:
19513                     ; 4685             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (it6802data->DE3DFormat_HDMIFlag))
19515  3a9e 1e0a          	ldw	x,(OFST-1,sp)
19516  3aa0 e62e          	ld	a,(46,x)
19517  3aa2 a4e0          	and	a,#224
19518  3aa4 a140          	cp	a,#64
19519  3aa6 2704          	jreq	L236
19520  3aa8 ac233d23      	jpf	L7377
19521  3aac               L236:
19523  3aac 1e0a          	ldw	x,(OFST-1,sp)
19524  3aae e637          	ld	a,(55,x)
19525  3ab0 a501          	bcp	a,#1
19526  3ab2 2604          	jrne	L436
19527  3ab4 ac233d23      	jpf	L7377
19528  3ab8               L436:
19529                     ; 4687                 if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (!it6802data->FramePacking_Flag))
19531  3ab8 1e0a          	ldw	x,(OFST-1,sp)
19532  3aba e62f          	ld	a,(47,x)
19533  3abc a5f0          	bcp	a,#240
19534  3abe 2624          	jrne	L31001
19536  3ac0 1e0a          	ldw	x,(OFST-1,sp)
19537  3ac2 e637          	ld	a,(55,x)
19538  3ac4 a502          	bcp	a,#2
19539  3ac6 261c          	jrne	L31001
19540                     ; 4689                     it6802data->FramePacking_Flag   = TRUE;
19542  3ac8 1e0a          	ldw	x,(OFST-1,sp)
19543  3aca e637          	ld	a,(55,x)
19544  3acc aa02          	or	a,#2
19545  3ace e737          	ld	(55,x),a
19546                     ; 4690                     it6802data->TopAndBottom_Flag   = FALSE;
19548  3ad0 1e0a          	ldw	x,(OFST-1,sp)
19549  3ad2 e637          	ld	a,(55,x)
19550  3ad4 a4fb          	and	a,#251
19551  3ad6 e737          	ld	(55,x),a
19552                     ; 4691                     it6802data->SideBySide_Flag     = FALSE;
19554  3ad8 1e0a          	ldw	x,(OFST-1,sp)
19555  3ada e637          	ld	a,(55,x)
19556  3adc a4f7          	and	a,#247
19557  3ade e737          	ld	(55,x),a
19558                     ; 4692                     it6802data->oldVIC              = 0;
19560  3ae0 1e0a          	ldw	x,(OFST-1,sp)
19561  3ae2 6f32          	clr	(50,x)
19562  3ae4               L31001:
19563                     ; 4695                 if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (it6802data->FramePacking_Flag))
19565  3ae4 1e0a          	ldw	x,(OFST-1,sp)
19566  3ae6 e62f          	ld	a,(47,x)
19567  3ae8 a5f0          	bcp	a,#240
19568  3aea 266b          	jrne	L51001
19570  3aec 1e0a          	ldw	x,(OFST-1,sp)
19571  3aee e637          	ld	a,(55,x)
19572  3af0 a502          	bcp	a,#2
19573  3af2 2763          	jreq	L51001
19574                     ; 4697                     it6802data->newVIC = it6802data->s_Current3DFr.VIC;
19576  3af4 1e0a          	ldw	x,(OFST-1,sp)
19577  3af6 e626          	ld	a,(38,x)
19578  3af8 e733          	ld	(51,x),a
19579                     ; 4698                     if(it6802data->newVIC != it6802data->oldVIC)
19581  3afa 1e0a          	ldw	x,(OFST-1,sp)
19582  3afc e633          	ld	a,(51,x)
19583  3afe 1e0a          	ldw	x,(OFST-1,sp)
19584  3b00 e132          	cp	a,(50,x)
19585  3b02 2753          	jreq	L51001
19586                     ; 4700                         if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) ||
19586                     ; 4701                            (it6802data->s_Current3DFr.VIC == 0x04) ||(it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22))
19588  3b04 1e0a          	ldw	x,(OFST-1,sp)
19589  3b06 e626          	ld	a,(38,x)
19590  3b08 a13c          	cp	a,#60
19591  3b0a 2728          	jreq	L32001
19593  3b0c 1e0a          	ldw	x,(OFST-1,sp)
19594  3b0e e626          	ld	a,(38,x)
19595  3b10 a13e          	cp	a,#62
19596  3b12 2720          	jreq	L32001
19598  3b14 1e0a          	ldw	x,(OFST-1,sp)
19599  3b16 e626          	ld	a,(38,x)
19600  3b18 a113          	cp	a,#19
19601  3b1a 2718          	jreq	L32001
19603  3b1c 1e0a          	ldw	x,(OFST-1,sp)
19604  3b1e e626          	ld	a,(38,x)
19605  3b20 a104          	cp	a,#4
19606  3b22 2710          	jreq	L32001
19608  3b24 1e0a          	ldw	x,(OFST-1,sp)
19609  3b26 e626          	ld	a,(38,x)
19610  3b28 a120          	cp	a,#32
19611  3b2a 2708          	jreq	L32001
19613  3b2c 1e0a          	ldw	x,(OFST-1,sp)
19614  3b2e e626          	ld	a,(38,x)
19615  3b30 a122          	cp	a,#34
19616  3b32 261b          	jrne	L12001
19617  3b34               L32001:
19618                     ; 4704                             it6802data->de3dframe_config.NumActiveBlankLines  =  (unsigned char)v_act_bspace;
19620  3b34 7b08          	ld	a,(OFST-3,sp)
19621  3b36 1e0a          	ldw	x,(OFST-1,sp)
19622  3b38 e71f          	ld	(31,x),a
19623                     ; 4705                             it6802data->de3dframe_config.Format = VERT_PACKED_FULL; // Type of 3D source format is FRAME_PACKING(VERT_PACKED_FULL)
19625  3b3a 1e0a          	ldw	x,(OFST-1,sp)
19626  3b3c a603          	ld	a,#3
19627  3b3e e719          	ld	(25,x),a
19628                     ; 4710 				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is FRAME_PACKING \r\n"));
19630  3b40 ae057f        	ldw	x,#L53001
19631  3b43 8d000000      	callf	f_printf
19634  3b47               L73001:
19635                     ; 4727                         it6802data->oldVIC = it6802data->newVIC;
19637  3b47 1e0a          	ldw	x,(OFST-1,sp)
19638  3b49 e633          	ld	a,(51,x)
19639  3b4b e732          	ld	(50,x),a
19640  3b4d 2008          	jra	L51001
19641  3b4f               L12001:
19642                     ; 4716                             it6802data->de3dframe_config.Format    =  6; // Type of 3D source format is UNDEFINED_FORMAT
19644  3b4f 1e0a          	ldw	x,(OFST-1,sp)
19645  3b51 a606          	ld	a,#6
19646  3b53 e719          	ld	(25,x),a
19647  3b55 20f0          	jra	L73001
19648  3b57               L51001:
19649                     ; 4731                 if(((it6802data->s_Current3DFr.PB5&0xF0) == TOP_AND_BOTTOM) && (!it6802data->TopAndBottom_Flag))
19651  3b57 1e0a          	ldw	x,(OFST-1,sp)
19652  3b59 e62f          	ld	a,(47,x)
19653  3b5b a4f0          	and	a,#240
19654  3b5d a160          	cp	a,#96
19655  3b5f 2704          	jreq	L636
19656  3b61 acf03bf0      	jpf	L14001
19657  3b65               L636:
19659  3b65 1e0a          	ldw	x,(OFST-1,sp)
19660  3b67 e637          	ld	a,(55,x)
19661  3b69 a504          	bcp	a,#4
19662  3b6b 2704          	jreq	L046
19663  3b6d acf03bf0      	jpf	L14001
19664  3b71               L046:
19665                     ; 4733                     if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
19665                     ; 4734                        (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
19667  3b71 1e0a          	ldw	x,(OFST-1,sp)
19668  3b73 e626          	ld	a,(38,x)
19669  3b75 a13c          	cp	a,#60
19670  3b77 2748          	jreq	L54001
19672  3b79 1e0a          	ldw	x,(OFST-1,sp)
19673  3b7b e626          	ld	a,(38,x)
19674  3b7d a13e          	cp	a,#62
19675  3b7f 2740          	jreq	L54001
19677  3b81 1e0a          	ldw	x,(OFST-1,sp)
19678  3b83 e626          	ld	a,(38,x)
19679  3b85 a113          	cp	a,#19
19680  3b87 2738          	jreq	L54001
19682  3b89 1e0a          	ldw	x,(OFST-1,sp)
19683  3b8b e626          	ld	a,(38,x)
19684  3b8d a104          	cp	a,#4
19685  3b8f 2730          	jreq	L54001
19687  3b91 1e0a          	ldw	x,(OFST-1,sp)
19688  3b93 e626          	ld	a,(38,x)
19689  3b95 a105          	cp	a,#5
19690  3b97 2728          	jreq	L54001
19692  3b99 1e0a          	ldw	x,(OFST-1,sp)
19693  3b9b e626          	ld	a,(38,x)
19694  3b9d a114          	cp	a,#20
19695  3b9f 2720          	jreq	L54001
19697  3ba1 1e0a          	ldw	x,(OFST-1,sp)
19698  3ba3 e626          	ld	a,(38,x)
19699  3ba5 a120          	cp	a,#32
19700  3ba7 2718          	jreq	L54001
19702  3ba9 1e0a          	ldw	x,(OFST-1,sp)
19703  3bab e626          	ld	a,(38,x)
19704  3bad a122          	cp	a,#34
19705  3baf 2710          	jreq	L54001
19707  3bb1 1e0a          	ldw	x,(OFST-1,sp)
19708  3bb3 e626          	ld	a,(38,x)
19709  3bb5 a11f          	cp	a,#31
19710  3bb7 2708          	jreq	L54001
19712  3bb9 1e0a          	ldw	x,(OFST-1,sp)
19713  3bbb e626          	ld	a,(38,x)
19714  3bbd a110          	cp	a,#16
19715  3bbf 2627          	jrne	L34001
19716  3bc1               L54001:
19717                     ; 4736                         it6802data->de3dframe_config.Format   =  VERT_PACKED_HALF; // Type of 3D source format is TOP_AND_BOTTOM(VERT_PACKED_HALF)
19719  3bc1 1e0a          	ldw	x,(OFST-1,sp)
19720  3bc3 a602          	ld	a,#2
19721  3bc5 e719          	ld	(25,x),a
19722                     ; 4741 				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is TOP_AND_BOTTOM \r\n"));
19724  3bc7 ae0553        	ldw	x,#L76001
19725  3bca 8d000000      	callf	f_printf
19728  3bce               L17001:
19729                     ; 4756                     it6802data->FramePacking_Flag   = FALSE;
19731  3bce 1e0a          	ldw	x,(OFST-1,sp)
19732  3bd0 e637          	ld	a,(55,x)
19733  3bd2 a4fd          	and	a,#253
19734  3bd4 e737          	ld	(55,x),a
19735                     ; 4757                     it6802data->TopAndBottom_Flag   = TRUE;
19737  3bd6 1e0a          	ldw	x,(OFST-1,sp)
19738  3bd8 e637          	ld	a,(55,x)
19739  3bda aa04          	or	a,#4
19740  3bdc e737          	ld	(55,x),a
19741                     ; 4758                     it6802data->SideBySide_Flag     = FALSE;
19743  3bde 1e0a          	ldw	x,(OFST-1,sp)
19744  3be0 e637          	ld	a,(55,x)
19745  3be2 a4f7          	and	a,#247
19746  3be4 e737          	ld	(55,x),a
19747  3be6 2008          	jra	L14001
19748  3be8               L34001:
19749                     ; 4746                         it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT
19751  3be8 1e0a          	ldw	x,(OFST-1,sp)
19752  3bea a606          	ld	a,#6
19753  3bec e719          	ld	(25,x),a
19754  3bee 20de          	jra	L17001
19755  3bf0               L14001:
19756                     ; 4761                 if(((it6802data->s_Current3DFr.PB5&0xF0) == SIDE_BY_SIDE) && (!it6802data->SideBySide_Flag))
19758  3bf0 1e0a          	ldw	x,(OFST-1,sp)
19759  3bf2 e62f          	ld	a,(47,x)
19760  3bf4 a4f0          	and	a,#240
19761  3bf6 a180          	cp	a,#128
19762  3bf8 2704          	jreq	L246
19763  3bfa ac893c89      	jpf	L37001
19764  3bfe               L246:
19766  3bfe 1e0a          	ldw	x,(OFST-1,sp)
19767  3c00 e637          	ld	a,(55,x)
19768  3c02 a508          	bcp	a,#8
19769  3c04 2704          	jreq	L446
19770  3c06 ac893c89      	jpf	L37001
19771  3c0a               L446:
19772                     ; 4763                     if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
19772                     ; 4764                        (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
19774  3c0a 1e0a          	ldw	x,(OFST-1,sp)
19775  3c0c e626          	ld	a,(38,x)
19776  3c0e a13c          	cp	a,#60
19777  3c10 2748          	jreq	L77001
19779  3c12 1e0a          	ldw	x,(OFST-1,sp)
19780  3c14 e626          	ld	a,(38,x)
19781  3c16 a13e          	cp	a,#62
19782  3c18 2740          	jreq	L77001
19784  3c1a 1e0a          	ldw	x,(OFST-1,sp)
19785  3c1c e626          	ld	a,(38,x)
19786  3c1e a113          	cp	a,#19
19787  3c20 2738          	jreq	L77001
19789  3c22 1e0a          	ldw	x,(OFST-1,sp)
19790  3c24 e626          	ld	a,(38,x)
19791  3c26 a104          	cp	a,#4
19792  3c28 2730          	jreq	L77001
19794  3c2a 1e0a          	ldw	x,(OFST-1,sp)
19795  3c2c e626          	ld	a,(38,x)
19796  3c2e a105          	cp	a,#5
19797  3c30 2728          	jreq	L77001
19799  3c32 1e0a          	ldw	x,(OFST-1,sp)
19800  3c34 e626          	ld	a,(38,x)
19801  3c36 a114          	cp	a,#20
19802  3c38 2720          	jreq	L77001
19804  3c3a 1e0a          	ldw	x,(OFST-1,sp)
19805  3c3c e626          	ld	a,(38,x)
19806  3c3e a120          	cp	a,#32
19807  3c40 2718          	jreq	L77001
19809  3c42 1e0a          	ldw	x,(OFST-1,sp)
19810  3c44 e626          	ld	a,(38,x)
19811  3c46 a122          	cp	a,#34
19812  3c48 2710          	jreq	L77001
19814  3c4a 1e0a          	ldw	x,(OFST-1,sp)
19815  3c4c e626          	ld	a,(38,x)
19816  3c4e a11f          	cp	a,#31
19817  3c50 2708          	jreq	L77001
19819  3c52 1e0a          	ldw	x,(OFST-1,sp)
19820  3c54 e626          	ld	a,(38,x)
19821  3c56 a110          	cp	a,#16
19822  3c58 2627          	jrne	L57001
19823  3c5a               L77001:
19824                     ; 4766                         it6802data->de3dframe_config.Format   =  HORIZ_PACKED_HALF; // Type of 3D source format is SIDE_BY_SIDE(HORIZ_PACKED_HALF)
19826  3c5a 1e0a          	ldw	x,(OFST-1,sp)
19827  3c5c a604          	ld	a,#4
19828  3c5e e719          	ld	(25,x),a
19829                     ; 4771 						MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is SIDE_BY_SIDE \r\n"));
19831  3c60 ae0529        	ldw	x,#L12101
19832  3c63 8d000000      	callf	f_printf
19835  3c67               L32101:
19836                     ; 4786                     it6802data->FramePacking_Flag   = FALSE;
19838  3c67 1e0a          	ldw	x,(OFST-1,sp)
19839  3c69 e637          	ld	a,(55,x)
19840  3c6b a4fd          	and	a,#253
19841  3c6d e737          	ld	(55,x),a
19842                     ; 4787                     it6802data->TopAndBottom_Flag   = FALSE;
19844  3c6f 1e0a          	ldw	x,(OFST-1,sp)
19845  3c71 e637          	ld	a,(55,x)
19846  3c73 a4fb          	and	a,#251
19847  3c75 e737          	ld	(55,x),a
19848                     ; 4788                     it6802data->SideBySide_Flag     = TRUE;
19850  3c77 1e0a          	ldw	x,(OFST-1,sp)
19851  3c79 e637          	ld	a,(55,x)
19852  3c7b aa08          	or	a,#8
19853  3c7d e737          	ld	(55,x),a
19854  3c7f 2008          	jra	L37001
19855  3c81               L57001:
19856                     ; 4776                         it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT
19858  3c81 1e0a          	ldw	x,(OFST-1,sp)
19859  3c83 a606          	ld	a,#6
19860  3c85 e719          	ld	(25,x),a
19861  3c87 20de          	jra	L32101
19862  3c89               L37001:
19863                     ; 4806 				MHLRX_DEBUG_PRINTF(printf("\r\nIT680x - HDMI_3D_SourceConfiguration: \r\n"));
19865  3c89 ae04fe        	ldw	x,#L52101
19866  3c8c 8d000000      	callf	f_printf
19868                     ; 4807 				MHLRX_DEBUG_PRINTF(printf("        Format                   = %d \r\n",it6802data->de3dframe_config.Format));
19870  3c90 1e0a          	ldw	x,(OFST-1,sp)
19871  3c92 e619          	ld	a,(25,x)
19872  3c94 88            	push	a
19873  3c95 ae04d5        	ldw	x,#L72101
19874  3c98 8d000000      	callf	f_printf
19876  3c9c 84            	pop	a
19877                     ; 4808 				MHLRX_DEBUG_PRINTF(printf("        LR_Reference             = %d \r\n",it6802data->de3dframe_config.LR_Reference));
19879  3c9d 1e0a          	ldw	x,(OFST-1,sp)
19880  3c9f e61a          	ld	a,(26,x)
19881  3ca1 88            	push	a
19882  3ca2 ae04ac        	ldw	x,#L13101
19883  3ca5 8d000000      	callf	f_printf
19885  3ca9 84            	pop	a
19886                     ; 4809 				MHLRX_DEBUG_PRINTF(printf("        FrameDominance           = %d \r\n",it6802data->de3dframe_config.FrameDominance));
19888  3caa 1e0a          	ldw	x,(OFST-1,sp)
19889  3cac e61b          	ld	a,(27,x)
19890  3cae 88            	push	a
19891  3caf ae0483        	ldw	x,#L33101
19892  3cb2 8d000000      	callf	f_printf
19894  3cb6 84            	pop	a
19895                     ; 4810 				MHLRX_DEBUG_PRINTF(printf("        LR_Encoding              = %d \r\n",it6802data->de3dframe_config.LR_Encoding));
19897  3cb7 1e0a          	ldw	x,(OFST-1,sp)
19898  3cb9 e61c          	ld	a,(28,x)
19899  3cbb 88            	push	a
19900  3cbc ae045a        	ldw	x,#L53101
19901  3cbf 8d000000      	callf	f_printf
19903  3cc3 84            	pop	a
19904                     ; 4811 				MHLRX_DEBUG_PRINTF(printf("        TB_Reference             = %d \r\n",it6802data->de3dframe_config.TB_Reference));
19906  3cc4 1e0a          	ldw	x,(OFST-1,sp)
19907  3cc6 e61d          	ld	a,(29,x)
19908  3cc8 88            	push	a
19909  3cc9 ae0431        	ldw	x,#L73101
19910  3ccc 8d000000      	callf	f_printf
19912  3cd0 84            	pop	a
19913                     ; 4812 				MHLRX_DEBUG_PRINTF(printf("        OE_Reference             = %d \r\n",it6802data->de3dframe_config.OE_Reference));
19915  3cd1 1e0a          	ldw	x,(OFST-1,sp)
19916  3cd3 e61e          	ld	a,(30,x)
19917  3cd5 88            	push	a
19918  3cd6 ae0408        	ldw	x,#L14101
19919  3cd9 8d000000      	callf	f_printf
19921  3cdd 84            	pop	a
19922                     ; 4813 				MHLRX_DEBUG_PRINTF(printf("        NumActiveBlankLines      = %d \r\n",it6802data->de3dframe_config.NumActiveBlankLines));
19924  3cde 1e0a          	ldw	x,(OFST-1,sp)
19925  3ce0 e61f          	ld	a,(31,x)
19926  3ce2 88            	push	a
19927  3ce3 ae03df        	ldw	x,#L34101
19928  3ce6 8d000000      	callf	f_printf
19930  3cea 84            	pop	a
19931                     ; 4814 				MHLRX_DEBUG_PRINTF(printf("        NumberOfEncodedLines     = %d \r\n",it6802data->de3dframe_config.NumberOfEncodedLines));
19933  3ceb 1e0a          	ldw	x,(OFST-1,sp)
19934  3ced e620          	ld	a,(32,x)
19935  3cef 88            	push	a
19936  3cf0 ae03b6        	ldw	x,#L54101
19937  3cf3 8d000000      	callf	f_printf
19939  3cf7 84            	pop	a
19940                     ; 4815 				MHLRX_DEBUG_PRINTF(printf("        LeftEncodedLineLocation  = %d \r\n",it6802data->de3dframe_config.LeftEncodedLineLocation));
19942  3cf8 1e0a          	ldw	x,(OFST-1,sp)
19943  3cfa ee21          	ldw	x,(33,x)
19944  3cfc 89            	pushw	x
19945  3cfd ae038d        	ldw	x,#L74101
19946  3d00 8d000000      	callf	f_printf
19948  3d04 85            	popw	x
19949                     ; 4816 				MHLRX_DEBUG_PRINTF(printf("        RightEncodedLineLocation = %d \r\n",it6802data->de3dframe_config.RightEncodedLineLocation));
19951  3d05 1e0a          	ldw	x,(OFST-1,sp)
19952  3d07 ee23          	ldw	x,(35,x)
19953  3d09 89            	pushw	x
19954  3d0a ae0364        	ldw	x,#L15101
19955  3d0d 8d000000      	callf	f_printf
19957  3d11 85            	popw	x
19958                     ; 4817 				MHLRX_DEBUG_PRINTF(printf("        BlankingColor            = %d \r\n",it6802data->de3dframe_config.BlankingColor ));
19960  3d12 1e0a          	ldw	x,(OFST-1,sp)
19961  3d14 e625          	ld	a,(37,x)
19962  3d16 88            	push	a
19963  3d17 ae033b        	ldw	x,#L35101
19964  3d1a 8d000000      	callf	f_printf
19966  3d1e 84            	pop	a
19967                     ; 4820                 return TRUE;
19969  3d1f a601          	ld	a,#1
19971  3d21 2029          	jra	L426
19972  3d23               L7377:
19973                     ; 4824         if(it6802data->DE3DFormat_HDMIFlag)// 3D InfoFrame Packet Type is not valid
19975  3d23 1e0a          	ldw	x,(OFST-1,sp)
19976  3d25 e637          	ld	a,(55,x)
19977  3d27 a501          	bcp	a,#1
19978  3d29 2720          	jreq	L5377
19979                     ; 4835             it6802data->DE3DFormat_HDMIFlag = FALSE;
19981  3d2b 1e0a          	ldw	x,(OFST-1,sp)
19982  3d2d e637          	ld	a,(55,x)
19983  3d2f a4fe          	and	a,#254
19984  3d31 e737          	ld	(55,x),a
19985                     ; 4836             it6802data->FramePacking_Flag   = FALSE;
19987  3d33 1e0a          	ldw	x,(OFST-1,sp)
19988  3d35 e637          	ld	a,(55,x)
19989  3d37 a4fd          	and	a,#253
19990  3d39 e737          	ld	(55,x),a
19991                     ; 4837             it6802data->TopAndBottom_Flag   = FALSE;
19993  3d3b 1e0a          	ldw	x,(OFST-1,sp)
19994  3d3d e637          	ld	a,(55,x)
19995  3d3f a4fb          	and	a,#251
19996  3d41 e737          	ld	(55,x),a
19997                     ; 4838             it6802data->SideBySide_Flag     = FALSE;
19999  3d43 1e0a          	ldw	x,(OFST-1,sp)
20000  3d45 e637          	ld	a,(55,x)
20001  3d47 a4f7          	and	a,#247
20002  3d49 e737          	ld	(55,x),a
20003  3d4b               L5377:
20004                     ; 4844     return FALSE;
20006  3d4b 4f            	clr	a
20008  3d4c               L426:
20010  3d4c 5b0c          	addw	sp,#12
20011  3d4e 87            	retf
20603                     	xdef	_t_3d_syncgen
20604                     	xdef	f_get_vid_info
20605                     	xdef	f_show_vid_info
20606                     	xdef	_AStateStr
20607                     	xdef	_VStateStr
20608                     	xdef	_Default_Edid_Block
20609                     	xdef	_bCSCMtx_YUV2RGB_ITU709_0_255
20610                     	xdef	_bCSCMtx_YUV2RGB_ITU709_16_235
20611                     	xdef	_bCSCMtx_YUV2RGB_ITU601_0_255
20612                     	xdef	_bCSCMtx_YUV2RGB_ITU601_16_235
20613                     	xdef	_bCSCMtx_RGB2YUV_ITU709_0_255
20614                     	xdef	_bCSCMtx_RGB2YUV_ITU709_16_235
20615                     	xdef	_bCSCMtx_RGB2YUV_ITU601_0_255
20616                     	xdef	_bCSCMtx_RGB2YUV_ITU601_16_235
20617                     	xdef	_SuppRCPCode
20618                     	xdef	_SuppRAPCode
20619                     	switch	.bss
20620  0000               _rxcurport:
20621  0000 00            	ds.b	1
20622                     	xdef	_rxcurport
20623  0001               _rxphyD:
20624  0001 00            	ds.b	1
20625                     	xdef	_rxphyD
20626  0002               _rxphyC:
20627  0002 00            	ds.b	1
20628                     	xdef	_rxphyC
20629  0003               _rxphyB:
20630  0003 00            	ds.b	1
20631                     	xdef	_rxphyB
20632  0004               _rxphyA:
20633  0004 00            	ds.b	1
20634                     	xdef	_rxphyA
20635  0005               _rxphyadr:
20636  0005 00000000      	ds.b	4
20637                     	xdef	_rxphyadr
20638  0009               _txphylevel:
20639  0009 00            	ds.b	1
20640                     	xdef	_txphylevel
20641  000a               _txphyD:
20642  000a 00            	ds.b	1
20643                     	xdef	_txphyD
20644  000b               _txphyC:
20645  000b 00            	ds.b	1
20646                     	xdef	_txphyC
20647  000c               _txphyB:
20648  000c 00            	ds.b	1
20649                     	xdef	_txphyB
20650  000d               _txphyA:
20651  000d 00            	ds.b	1
20652                     	xdef	_txphyA
20653  000e               _txphyadr:
20654  000e 0000          	ds.b	2
20655                     	xdef	_txphyadr
20656  0010               _VSDB_Addr:
20657  0010 00            	ds.b	1
20658                     	xdef	_VSDB_Addr
20659                     	xdef	_OldRegBA
20660                     	xdef	_OldRegB9
20661                     	xdef	_OldRegB5
20662                     	xdef	_OldRegB4
20663  0011               _VIC:
20664  0011 0000          	ds.b	2
20665                     	xdef	_VIC
20666                     	xdef	_OutCD
20667                     	xdef	_OutColorMode
20668                     	xdef	_InColorMode
20669  0013               _CurVTiming:
20670  0013 000000000000  	ds.b	26
20671                     	xdef	_CurVTiming
20672  002d               _CurTMDSCLK:
20673  002d 0000          	ds.b	2
20674                     	xdef	_CurTMDSCLK
20675                     	xdef	_DeviceID
20676                     	xdef	_wakeupfailcnt
20677                     	xdef	_EnMHL3DSupport
20678                     	xdef	_EnMSCWrBurst3D
20679                     	xdef	_TxWrBstSeq
20680  002f               _wrburstnum:
20681  002f 00            	ds.b	1
20682                     	xdef	_wrburstnum
20683  0030               _wrburstoff:
20684  0030 00            	ds.b	1
20685                     	xdef	_wrburstoff
20686                     	xdef	_V3D_EntryCnt
20687  0031               _it6802DEV:
20688  0031 000000000000  	ds.b	119
20689                     	xdef	_it6802DEV
20690                     	xref	f_IR_DelayNMiliseconds
20691                     	xref	f_SWI2C_ErrorProcess
20692                     	xref	f_HDMI_HotPlug
20693                     	xref	f_SWI2C_WriteBytes
20694                     	xref	f_SWI2C_ReadBytes
20695                     	xdef	f_IT6802_fsm
20696                     	xdef	f_RCPKeyPush
20697                     	xdef	f_it6802PortSelect
20698                     	xdef	f_IT6802_fsm_init
20699                     	xref	f_printf
20700                     	switch	.const
20701  033b               L35101:
20702  033b 202020202020  	dc.b	"        BlankingCo"
20703  034d 6c6f72202020  	dc.b	"lor            = %"
20704  035f 64200d        	dc.b	"d ",13
20705  0362 0a00          	dc.b	10,0
20706  0364               L15101:
20707  0364 202020202020  	dc.b	"        RightEncod"
20708  0376 65644c696e65  	dc.b	"edLineLocation = %"
20709  0388 64200d        	dc.b	"d ",13
20710  038b 0a00          	dc.b	10,0
20711  038d               L74101:
20712  038d 202020202020  	dc.b	"        LeftEncode"
20713  039f 644c696e654c  	dc.b	"dLineLocation  = %"
20714  03b1 64200d        	dc.b	"d ",13
20715  03b4 0a00          	dc.b	10,0
20716  03b6               L54101:
20717  03b6 202020202020  	dc.b	"        NumberOfEn"
20718  03c8 636f6465644c  	dc.b	"codedLines     = %"
20719  03da 64200d        	dc.b	"d ",13
20720  03dd 0a00          	dc.b	10,0
20721  03df               L34101:
20722  03df 202020202020  	dc.b	"        NumActiveB"
20723  03f1 6c616e6b4c69  	dc.b	"lankLines      = %"
20724  0403 64200d        	dc.b	"d ",13
20725  0406 0a00          	dc.b	10,0
20726  0408               L14101:
20727  0408 202020202020  	dc.b	"        OE_Referen"
20728  041a 636520202020  	dc.b	"ce             = %"
20729  042c 64200d        	dc.b	"d ",13
20730  042f 0a00          	dc.b	10,0
20731  0431               L73101:
20732  0431 202020202020  	dc.b	"        TB_Referen"
20733  0443 636520202020  	dc.b	"ce             = %"
20734  0455 64200d        	dc.b	"d ",13
20735  0458 0a00          	dc.b	10,0
20736  045a               L53101:
20737  045a 202020202020  	dc.b	"        LR_Encodin"
20738  046c 672020202020  	dc.b	"g              = %"
20739  047e 64200d        	dc.b	"d ",13
20740  0481 0a00          	dc.b	10,0
20741  0483               L33101:
20742  0483 202020202020  	dc.b	"        FrameDomin"
20743  0495 616e63652020  	dc.b	"ance           = %"
20744  04a7 64200d        	dc.b	"d ",13
20745  04aa 0a00          	dc.b	10,0
20746  04ac               L13101:
20747  04ac 202020202020  	dc.b	"        LR_Referen"
20748  04be 636520202020  	dc.b	"ce             = %"
20749  04d0 64200d        	dc.b	"d ",13
20750  04d3 0a00          	dc.b	10,0
20751  04d5               L72101:
20752  04d5 202020202020  	dc.b	"        Format    "
20753  04e7 202020202020  	dc.b	"               = %"
20754  04f9 64200d        	dc.b	"d ",13
20755  04fc 0a00          	dc.b	10,0
20756  04fe               L52101:
20757  04fe 0d0a49543638  	dc.b	13,10,73,84,54,56
20758  0504 3078202d2048  	dc.b	"0x - HDMI_3D_Sourc"
20759  0516 65436f6e6669  	dc.b	"eConfiguration: ",13
20760  0527 0a00          	dc.b	10,0
20761  0529               L12101:
20762  0529 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20763  053b 524d41542069  	dc.b	"RMAT is SIDE_BY_SI"
20764  054d 4445200d      	dc.b	"DE ",13
20765  0551 0a00          	dc.b	10,0
20766  0553               L76001:
20767  0553 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20768  0565 524d41542069  	dc.b	"RMAT is TOP_AND_BO"
20769  0577 54544f4d200d  	dc.b	"TTOM ",13
20770  057d 0a00          	dc.b	10,0
20771  057f               L53001:
20772  057f 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20773  0591 524d41542069  	dc.b	"RMAT is FRAME_PACK"
20774  05a3 494e47200d    	dc.b	"ING ",13
20775  05a8 0a00          	dc.b	10,0
20776  05aa               L1777:
20777  05aa 202020202020  	dc.b	"        Record HDM"
20778  05bc 492076656e64  	dc.b	"I vender specific "
20779  05ce 696e666f7266  	dc.b	"inforframe PB7 = 0"
20780  05e0 782530326258  	dc.b	"x%02bX ",13
20781  05e8 0a00          	dc.b	10,0
20782  05ea               L7677:
20783  05ea 202020202020  	dc.b	"        Record HDM"
20784  05fc 492076656e64  	dc.b	"I vender specific "
20785  060e 696e666f7266  	dc.b	"inforframe PB6 = 0"
20786  0620 782530326258  	dc.b	"x%02bX ",13
20787  0628 0a00          	dc.b	10,0
20788  062a               L5677:
20789  062a 202020202020  	dc.b	"        Record HDM"
20790  063c 492076656e64  	dc.b	"I vender specific "
20791  064e 696e666f7266  	dc.b	"inforframe PB5 = 0"
20792  0660 782530326258  	dc.b	"x%02bX ",13
20793  0668 0a00          	dc.b	10,0
20794  066a               L3677:
20795  066a 202020202020  	dc.b	"        Record HDM"
20796  067c 492076656e64  	dc.b	"I vender specific "
20797  068e 696e666f7266  	dc.b	"inforframe PB4 = 0"
20798  06a0 782530326258  	dc.b	"x%02bX ",13
20799  06a8 0a00          	dc.b	10,0
20800  06aa               L1677:
20801  06aa 202020202020  	dc.b	"        Record HDM"
20802  06bc 492076656e64  	dc.b	"I vender specific "
20803  06ce 696e666f7266  	dc.b	"inforframe PB3 = 0"
20804  06e0 782530326258  	dc.b	"x%02bX ",13
20805  06e8 0a00          	dc.b	10,0
20806  06ea               L7577:
20807  06ea 202020202020  	dc.b	"        Record HDM"
20808  06fc 492076656e64  	dc.b	"I vender specific "
20809  070e 696e666f7266  	dc.b	"inforframe PB2 = 0"
20810  0720 782530326258  	dc.b	"x%02bX ",13
20811  0728 0a00          	dc.b	10,0
20812  072a               L5577:
20813  072a 202020202020  	dc.b	"        Record HDM"
20814  073c 492076656e64  	dc.b	"I vender specific "
20815  074e 696e666f7266  	dc.b	"inforframe PB1 = 0"
20816  0760 782530326258  	dc.b	"x%02bX ",13
20817  0768 0a00          	dc.b	10,0
20818  076a               L3577:
20819  076a 202020202020  	dc.b	"        Record HDM"
20820  077c 492076656e64  	dc.b	"I vender specific "
20821  078e 696e666f7266  	dc.b	"inforframe PB0 = 0"
20822  07a0 782530326258  	dc.b	"x%02bX ",13
20823  07a8 0a00          	dc.b	10,0
20824  07aa               L1577:
20825  07aa 202020202020  	dc.b	"        Record HDM"
20826  07bc 492076656e64  	dc.b	"I vender specific "
20827  07ce 696e666f7266  	dc.b	"inforframe HB2 = 0"
20828  07e0 782530326258  	dc.b	"x%02bX ",13
20829  07e8 0a00          	dc.b	10,0
20830  07ea               L7477:
20831  07ea 202020202020  	dc.b	"        Record HDM"
20832  07fc 492076656e64  	dc.b	"I vender specific "
20833  080e 696e666f7266  	dc.b	"inforframe HB1 = 0"
20834  0820 782530326258  	dc.b	"x%02bX ",13
20835  0828 0a00          	dc.b	10,0
20836  082a               L5477:
20837  082a 202020202020  	dc.b	"        Record HDM"
20838  083c 492076656e64  	dc.b	"I vender specific "
20839  084e 696e666f7266  	dc.b	"inforframe HB0 = 0"
20840  0860 782530326258  	dc.b	"x%02bX ",13
20841  0868 0a00          	dc.b	10,0
20842  086a               L3477:
20843  086a 202020202020  	dc.b	"        HDMI VIC ="
20844  087c 203078253032  	dc.b	" 0x%02bX ",13
20845  0886 0a00          	dc.b	10,0
20846  0888               L1477:
20847  0888 0d0a49543635  	dc.b	13,10,73,84,54,53
20848  088e 3378202d2048  	dc.b	"3x - HDMI_DumpDE3D"
20849  08a0 4672616d6549  	dc.b	"FrameInfo: ",13
20850  08ac 0a00          	dc.b	10,0
20851  08ae               L3767:
20852  08ae 205265674241  	dc.b	" RegBA=%x ",13
20853  08b9 0a00          	dc.b	10,0
20854  08bb               L1767:
20855  08bb 205265674239  	dc.b	" RegB9=%x ",13
20856  08c6 0a00          	dc.b	10,0
20857  08c8               L7667:
20858  08c8 205265674235  	dc.b	" RegB5=%x ",13
20859  08d3 0a00          	dc.b	10,0
20860  08d5               L5667:
20861  08d5 205265674234  	dc.b	" RegB4=%x ",13
20862  08e0 0a00          	dc.b	10,0
20863  08e2               L3667:
20864  08e2 4853796e6350  	dc.b	"HSyncPol = Negativ"
20865  08f4 650d          	dc.b	"e",13
20866  08f6 0a00          	dc.b	10,0
20867  08f8               L7567:
20868  08f8 4853796e6350  	dc.b	"HSyncPol = Positiv"
20869  090a 650d          	dc.b	"e",13
20870  090c 0a00          	dc.b	10,0
20871  090e               L3567:
20872  090e 5653796e6350  	dc.b	"VSyncPol = Negativ"
20873  0920 650d          	dc.b	"e",13
20874  0922 0a00          	dc.b	10,0
20875  0924               L7467:
20876  0924 5653796e6350  	dc.b	"VSyncPol = Positiv"
20877  0936 650d          	dc.b	"e",13
20878  0938 0a00          	dc.b	10,0
20879  093a               L3467:
20880  093a 5363616e4d6f  	dc.b	"ScanMode = InterLa"
20881  094c 6365640d      	dc.b	"ced",13
20882  0950 0a00          	dc.b	10,0
20883  0952               L7367:
20884  0952 5363616e4d6f  	dc.b	"ScanMode = Progres"
20885  0964 736976650d    	dc.b	"sive",13
20886  0969 0a00          	dc.b	10,0
20887  096b               L3367:
20888  096b 564261636b50  	dc.b	"VBackPorch = %d",13
20889  097b 0a00          	dc.b	10,0
20890  097d               L1367:
20891  097d 5653796e6357  	dc.b	"VSyncWidth = %d",13
20892  098d 0a00          	dc.b	10,0
20893  098f               L7267:
20894  098f 5646726f6e74  	dc.b	"VFrontPorch = %d",13
20895  09a0 0a00          	dc.b	10,0
20896  09a2               L5267:
20897  09a2 484261636b50  	dc.b	"HBackPorch = %d",13
20898  09b2 0a00          	dc.b	10,0
20899  09b4               L3267:
20900  09b4 4853796e6357  	dc.b	"HSyncWidth = %d",13
20901  09c4 0a00          	dc.b	10,0
20902  09c6               L1267:
20903  09c6 4846726f6e74  	dc.b	"HFrontPorch = %d",13
20904  09d7 0a00          	dc.b	10,0
20905  09d9               L7167:
20906  09d9 56546f74616c  	dc.b	"VTotal = %d",13
20907  09e5 0a00          	dc.b	10,0
20908  09e7               L5167:
20909  09e7 48546f74616c  	dc.b	"HTotal = %d",13
20910  09f3 0a00          	dc.b	10,0
20911  09f5               L3167:
20912  09f5 564163746976  	dc.b	"VActive = %d",13
20913  0a02 0a00          	dc.b	10,0
20914  0a04               L1167:
20915  0a04 484163746976  	dc.b	"HActive = %d",13
20916  0a11 0a00          	dc.b	10,0
20917  0a13               L7067:
20918  0a13 425553204d4f  	dc.b	"BUS MODE : HDMI Mo"
20919  0a25 64650d        	dc.b	"de",13
20920  0a28 0a00          	dc.b	10,0
20921  0a2a               L3067:
20922  0a2a 425553204d4f  	dc.b	"BUS MODE : MHL 24 "
20923  0a3c 62697473204d  	dc.b	"bits Mode",13
20924  0a46 0a00          	dc.b	10,0
20925  0a48               L7757:
20926  0a48 425553204d4f  	dc.b	"BUS MODE : MHL Pac"
20927  0a5a 6b506978656c  	dc.b	"kPixel Mode",13
20928  0a66 0a00          	dc.b	10,0
20929  0a68               L1757:
20930  0a68 4f7574707574  	dc.b	"Output Color Mode "
20931  0a7a 3d2052657365  	dc.b	"= Reserved !!!",13
20932  0a89 0a00          	dc.b	10,0
20933  0a8b               L7657:
20934  0a8b 4f7574707574  	dc.b	"Output Color Mode "
20935  0a9d 3d2059436243  	dc.b	"= YCbCr444",13
20936  0aa8 0a00          	dc.b	10,0
20937  0aaa               L5657:
20938  0aaa 4f7574707574  	dc.b	"Output Color Mode "
20939  0abc 3d2059436243  	dc.b	"= YCbCr422",13
20940  0ac7 0a00          	dc.b	10,0
20941  0ac9               L3657:
20942  0ac9 4f7574707574  	dc.b	"Output Color Mode "
20943  0adb 3d2052474234  	dc.b	"= RGB444",13
20944  0ae4 0a00          	dc.b	10,0
20945  0ae6               L5557:
20946  0ae6 496e70757420  	dc.b	"Input Color Mode ="
20947  0af8 205265736572  	dc.b	" Reserved !!!",13
20948  0b06 0a00          	dc.b	10,0
20949  0b08               L3557:
20950  0b08 496e70757420  	dc.b	"Input Color Mode ="
20951  0b1a 205943624372  	dc.b	" YCbCr444",13
20952  0b24 0a00          	dc.b	10,0
20953  0b26               L1557:
20954  0b26 496e70757420  	dc.b	"Input Color Mode ="
20955  0b38 205943624372  	dc.b	" YCbCr422",13
20956  0b42 0a00          	dc.b	10,0
20957  0b44               L7457:
20958  0b44 496e70757420  	dc.b	"Input Color Mode ="
20959  0b56 205247423434  	dc.b	" RGB444",13
20960  0b5e 0a00          	dc.b	10,0
20961  0b60               L5357:
20962  0b60 4f7574707574  	dc.b	"Output ColorDepth "
20963  0b72 3d2032342062  	dc.b	"= 24 bits per pixe"
20964  0b84 6c0d          	dc.b	"l",13
20965  0b86 0a00          	dc.b	10,0
20966  0b88               L3357:
20967  0b88 4f7574707574  	dc.b	"Output ColorDepth "
20968  0b9a 3d2033362062  	dc.b	"= 36 bits per pixe"
20969  0bac 6c0d          	dc.b	"l",13
20970  0bae 0a00          	dc.b	10,0
20971  0bb0               L1357:
20972  0bb0 4f7574707574  	dc.b	"Output ColorDepth "
20973  0bc2 3d2033302062  	dc.b	"= 30 bits per pixe"
20974  0bd4 6c0d          	dc.b	"l",13
20975  0bd6 0a00          	dc.b	10,0
20976  0bd8               L3257:
20977  0bd8 0d0a496e7075  	dc.b	13,10,73,110,112,117
20978  0bde 7420436f6c6f  	dc.b	"t ColorDepth = 24 "
20979  0bf0 626974732070  	dc.b	"bits per pixel",13
20980  0bff 0a00          	dc.b	10,0
20981  0c01               L1257:
20982  0c01 0d0a496e7075  	dc.b	13,10,73,110,112,117
20983  0c07 7420436f6c6f  	dc.b	"t ColorDepth = 36 "
20984  0c19 626974732070  	dc.b	"bits per pixel",13
20985  0c28 0a00          	dc.b	10,0
20986  0c2a               L7157:
20987  0c2a 0d0a496e7075  	dc.b	13,10,73,110,112,117
20988  0c30 7420436f6c6f  	dc.b	"t ColorDepth = 30 "
20989  0c42 626974732070  	dc.b	"bits per pixel",13
20990  0c51 0a00          	dc.b	10,0
20991  0c53               L7437:
20992  0c53 343434343434  	dc.b	"44444444 RegBA=%x "
20993  0c65 0d0a00        	dc.b	13,10,0
20994  0c68               L3437:
20995  0c68 333333333333  	dc.b	"33333333 RegB9=%x "
20996  0c7a 0d0a00        	dc.b	13,10,0
20997  0c7d               L7337:
20998  0c7d 323232323232  	dc.b	"22222222 RegB5=%x "
20999  0c8f 0d0a00        	dc.b	13,10,0
21000  0c92               L3337:
21001  0c92 313131313131  	dc.b	"11111111 RegB4=%x "
21002  0ca4 0d0a00        	dc.b	13,10,0
21003  0ca7               L1627:
21004  0ca7 2050315f5265  	dc.b	" P1_Rec_R_CS=%02bX"
21005  0cb9 202050315f52  	dc.b	"  P1_Rec_R_RS=%02b"
21006  0ccb 5820200d      	dc.b	"X  ",13
21007  0ccf 0a00          	dc.b	10,0
21008  0cd1               L7527:
21009  0cd1 2050315f5265  	dc.b	" P1_Rec_G_CS=%02bX"
21010  0ce3 202050315f52  	dc.b	"  P1_Rec_G_RS=%02b"
21011  0cf5 5820200d      	dc.b	"X  ",13
21012  0cf9 0a00          	dc.b	10,0
21013  0cfb               L5527:
21014  0cfb 2050315f5265  	dc.b	" P1_Rec_B_CS=%02bX"
21015  0d0d 202050315f52  	dc.b	"  P1_Rec_B_RS=%02b"
21016  0d1f 5820200d      	dc.b	"X  ",13
21017  0d23 0a00          	dc.b	10,0
21018  0d25               L3527:
21019  0d25 232323232050  	dc.b	"#### Port 1 EQ don"
21020  0d37 6520696e7465  	dc.b	"e interrupt ####",13
21021  0d48 0a00          	dc.b	10,0
21022  0d4a               L7427:
21023  0d4a 2050305f5265  	dc.b	" P0_Rec_R_CS=%02bX"
21024  0d5c 202050305f52  	dc.b	"  P0_Rec_R_RS=%02b"
21025  0d6e 5820200d      	dc.b	"X  ",13
21026  0d72 0a00          	dc.b	10,0
21027  0d74               L5427:
21028  0d74 2050305f5265  	dc.b	" P0_Rec_G_CS=%02bX"
21029  0d86 202050305f52  	dc.b	"  P0_Rec_G_RS=%02b"
21030  0d98 5820200d      	dc.b	"X  ",13
21031  0d9c 0a00          	dc.b	10,0
21032  0d9e               L3427:
21033  0d9e 2050305f5265  	dc.b	" P0_Rec_B_CS=%02bX"
21034  0db0 202050305f52  	dc.b	"  P0_Rec_B_RS=%02b"
21035  0dc2 5820200d      	dc.b	"X  ",13
21036  0dc6 0a00          	dc.b	10,0
21037  0dc8               L1427:
21038  0dc8 232323232050  	dc.b	"#### Port 0 EQ don"
21039  0dda 6520696e7465  	dc.b	"e interrupt ####",13
21040  0deb 0a00          	dc.b	10,0
21041  0ded               L5327:
21042  0ded 23232323204e  	dc.b	"#### New AVI InfoF"
21043  0dff 72616d652052  	dc.b	"rame Received ####"
21044  0e11 0d0a00        	dc.b	13,10,0
21045  0e14               L1327:
21046  0e14 23232323204e  	dc.b	"#### New MPEG Info"
21047  0e26 4672616d6520  	dc.b	"Frame Received ###"
21048  0e38 230d          	dc.b	"#",13
21049  0e3a 0a00          	dc.b	10,0
21050  0e3c               L5227:
21051  0e3c 23232323204e  	dc.b	"#### New SPD Packe"
21052  0e4e 742052656365  	dc.b	"t Received ####",13
21053  0e5e 0a00          	dc.b	10,0
21054  0e60               L1227:
21055  0e60 23232323204e  	dc.b	"#### New ACP Packe"
21056  0e72 742052656365  	dc.b	"t Received ####",13
21057  0e82 0a00          	dc.b	10,0
21058  0e84               L5127:
21059  0e84 23232323204e  	dc.b	"#### New Audio Pac"
21060  0e96 6b6574205265  	dc.b	"ket Received ####",13
21061  0ea8 0a00          	dc.b	10,0
21062  0eaa               L1127:
21063  0eaa 232323232050  	dc.b	"#### Port 0 Deskew"
21064  0ebc 204572726f72  	dc.b	" Error ####",13
21065  0ec8 0a00          	dc.b	10,0
21066  0eca               L5027:
21067  0eca 232323232050  	dc.b	"#### Port 1 Deskew"
21068  0edc 204572726f72  	dc.b	" Error ####",13
21069  0ee8 0a00          	dc.b	10,0
21070  0eea               L1027:
21071  0eea 232323232048  	dc.b	"#### H2V Buffer Sk"
21072  0efc 657720466169  	dc.b	"ew Fail ####",13
21073  0f09 0a00          	dc.b	10,0
21074  0f0b               L3717:
21075  0f0b 232323232049  	dc.b	"#### ISRC1 Detect "
21076  0f1d 232323230d    	dc.b	"####",13
21077  0f22 0a00          	dc.b	10,0
21078  0f24               L7617:
21079  0f24 232323232049  	dc.b	"#### ISRC2 Detect "
21080  0f36 232323230d    	dc.b	"####",13
21081  0f3b 0a00          	dc.b	10,0
21082  0f3d               L3617:
21083  0f3d 232323232033  	dc.b	"#### 3D InfoFrame "
21084  0f4f 446574656374  	dc.b	"Detect ####",13
21085  0f5b 0a00          	dc.b	10,0
21086  0f5d               L7517:
21087  0f5d 232323232043  	dc.b	"#### CD Detect ###"
21088  0f6f 230d          	dc.b	"#",13
21089  0f71 0a00          	dc.b	10,0
21090  0f73               L3517:
21091  0f73 23232323204e  	dc.b	"#### No AVI InfoFr"
21092  0f85 616d65205265  	dc.b	"ame Received ####",13
21093  0f97 0a00          	dc.b	10,0
21094  0f99               L7417:
21095  0f99 23232323204e  	dc.b	"#### No Audio Info"
21096  0fab 4672616d6520  	dc.b	"Frame Received ###"
21097  0fbd 230d          	dc.b	"#",13
21098  0fbf 0a00          	dc.b	10,0
21099  0fc1               L5317:
21100  0fc1 232323232050  	dc.b	"#### Port 0 Bus Mo"
21101  0fd3 6465203a2048  	dc.b	"de : HDMI ####",13
21102  0fe2 0a00          	dc.b	10,0
21103  0fe4               L1317:
21104  0fe4 232323232050  	dc.b	"#### Port 0 Bus Mo"
21105  0ff6 6465203a204d  	dc.b	"de : MHL ####",13
21106  1004 0a00          	dc.b	10,0
21107  1006               L1217:
21108  1006 232323232056  	dc.b	"#### Video Mode Ch"
21109  1018 616e67656420  	dc.b	"anged ####",13
21110  1023 0a00          	dc.b	10,0
21111  1025               L3117:
21112  1025 232323232053  	dc.b	"#### Set Mute Pack"
21113  1037 657420526563  	dc.b	"et Received ####",13
21114  1048 0a00          	dc.b	10,0
21115  104a               L7017:
21116  104a 232323232050  	dc.b	"#### Packet Left M"
21117  105c 757465202323  	dc.b	"ute ####",13
21118  1065 0a00          	dc.b	10,0
21119  1067               L3017:
21120  1067 232323232041  	dc.b	"#### Audio Auto Mu"
21121  1079 746520232323  	dc.b	"te ####",13
21122  1081 0a00          	dc.b	10,0
21123  1083               L7707:
21124  1083 232323232041  	dc.b	"#### Audio FIFO Er"
21125  1095 726f72202323  	dc.b	"ror ####",13
21126  109e 0a00          	dc.b	10,0
21127  10a0               L1707:
21128  10a0 232323232050  	dc.b	"#### Port 1 Power "
21129  10b2 355620636861  	dc.b	"5V change ####",13
21130  10c1 0a00          	dc.b	10,0
21131  10c3               L5607:
21132  10c3 232323232050  	dc.b	"#### Port 1 Rx CKO"
21133  10d5 6e2044657465  	dc.b	"n Detect ####",13
21134  10e3 0a00          	dc.b	10,0
21135  10e5               L1607:
21136  10e5 232323232050  	dc.b	"#### Port 1 Input "
21137  10f7 436c6f636b20  	dc.b	"Clock Change Detec"
21138  1109 742023232323  	dc.b	"t ####",13
21139  1110 0a00          	dc.b	10,0
21140  1112               L5507:
21141  1112 232323232050  	dc.b	"#### Port 1 HDCP A"
21142  1124 757468656e74  	dc.b	"uthentication Star"
21143  1136 742023232323  	dc.b	"t ####",13
21144  113d 0a00          	dc.b	10,0
21145  113f               L1507:
21146  113f 232323232050  	dc.b	"#### Port 1 HDCP A"
21147  1151 757468656e74  	dc.b	"uthentication Done"
21148  1163 20232323230d  	dc.b	" ####",13
21149  1169 0a00          	dc.b	10,0
21150  116b               L5407:
21151  116b 232323232050  	dc.b	"#### Port 1 HDMI/D"
21152  117d 5649204d6f64  	dc.b	"VI Mode change ###"
21153  118f 230d          	dc.b	"#",13
21154  1191 0a00          	dc.b	10,0
21155  1193               L1407:
21156  1193 232323232050  	dc.b	"#### Port 1 ECC Er"
21157  11a5 726f72202323  	dc.b	"ror ####",13
21158  11ae 0a00          	dc.b	10,0
21159  11b0               L5307:
21160  11b0 232323232050  	dc.b	"#### Port 1 HDCP O"
21161  11c2 666620446574  	dc.b	"ff Detected ###",13
21162  11d2 0a00          	dc.b	10,0
21163  11d4               L7207:
21164  11d4 232323232050  	dc.b	"#### Port 0 Power "
21165  11e6 355620636861  	dc.b	"5V change ####",13
21166  11f5 0a00          	dc.b	10,0
21167  11f7               L3207:
21168  11f7 232323232050  	dc.b	"#### Port 0 Rx CKO"
21169  1209 6e2044657465  	dc.b	"n Detect ####",13
21170  1217 0a00          	dc.b	10,0
21171  1219               L7107:
21172  1219 232323232050  	dc.b	"#### Port 0 Input "
21173  122b 436c6f636b20  	dc.b	"Clock Change Detec"
21174  123d 742023232323  	dc.b	"t ####",13
21175  1244 0a00          	dc.b	10,0
21176  1246               L3107:
21177  1246 232323232050  	dc.b	"#### Port 0 HDCP A"
21178  1258 757468656e74  	dc.b	"uthentication Done"
21179  126a 20232323230d  	dc.b	" ####",13
21180  1270 0a00          	dc.b	10,0
21181  1272               L7007:
21182  1272 232323232050  	dc.b	"#### Port 0 HDCP A"
21183  1284 757468656e74  	dc.b	"uthentication Star"
21184  1296 742023232323  	dc.b	"t ####",13
21185  129d 0a00          	dc.b	10,0
21186  129f               L3007:
21187  129f 232323232050  	dc.b	"#### Port 0 HDMI/D"
21188  12b1 5649204d6f64  	dc.b	"VI Mode change ###"
21189  12c3 230d          	dc.b	"#",13
21190  12c5 0a00          	dc.b	10,0
21191  12c7               L7776:
21192  12c7 232323232050  	dc.b	"#### Port 0 ECC Er"
21193  12d9 726f72202323  	dc.b	"ror ####",13
21194  12e2 0a00          	dc.b	10,0
21195  12e4               L3776:
21196  12e4 232323232050  	dc.b	"#### Port 0 HDCP O"
21197  12f6 666620446574  	dc.b	"ff Detected ###",13
21198  1306 0a00          	dc.b	10,0
21199  1308               L5276:
21200  1308 495436383032  	dc.b	"IT6802-MHL EDID Ch"
21201  131a 616e67652049  	dc.b	"ange Interrupt ..."
21202  132c 0d0a00        	dc.b	13,10,0
21203  132f               L7176:
21204  132f 334420526571  	dc.b	"3D Request Interru"
21205  1341 7074202e2e2e  	dc.b	"pt ...",13
21206  1348 0a00          	dc.b	10,0
21207  134a               L3176:
21208  134a 202323232033  	dc.b	" ### 3D Un-Support"
21209  135c 205772697465  	dc.b	" Write_Burst End #"
21210  136e 23230d        	dc.b	"##",13
21211  1371 0a00          	dc.b	10,0
21212  1373               L1076:
21213  1373 202323232033  	dc.b	" ### 3D supporpt W"
21214  1385 726974655f42  	dc.b	"rite_Burst End ###"
21215  1397 0d0a00        	dc.b	13,10,0
21216  139a               L7566:
21217  139a 4d484c20474e  	dc.b	"MHL GNT_WRT Interr"
21218  13ac 757074202854  	dc.b	"upt (TxSeqNum=%d) "
21219  13be 2e2e2e0d      	dc.b	"...",13
21220  13c2 0a00          	dc.b	10,0
21221  13c4               L5566:
21222  13c4 495436383032  	dc.b	"IT6802-[**]MHL GNT"
21223  13d6 5f5752542049  	dc.b	"_WRT Interrupt  .."
21224  13e8 2e0d          	dc.b	".",13
21225  13ea 0a00          	dc.b	10,0
21226  13ec               L1466:
21227  13ec 495436383032  	dc.b	"IT6802-Set GRT_WRT"
21228  13fe 20746f203120  	dc.b	" to 1  ...",13
21229  1409 0a00          	dc.b	10,0
21230  140b               L7366:
21231  140b 495436383032  	dc.b	"IT6802-MHL REQ_WRT"
21232  141d 20496e746572  	dc.b	" Interrupt  ...",13
21233  142d 0a00          	dc.b	10,0
21234  142f               L3366:
21235  142f 4552524f523a  	dc.b	"ERROR: Adopter ID "
21236  1441 4d69736d6174  	dc.b	"Mismatch !!!",13
21237  144e 0a00          	dc.b	10,0
21238  1450               L1366:
21239  1450 41646f707465  	dc.b	"Adopter ID = 0x%02"
21240  1462 582025303258  	dc.b	"X %02X",13
21241  1469 0a00          	dc.b	10,0
21242  146b               L3266:
21243  146b 4552524f523a  	dc.b	"ERROR: Receive Scr"
21244  147d 617463682050  	dc.b	"atch Pad Data > 16"
21245  148f 206279746573  	dc.b	" bytes !!!",13
21246  149a 0a00          	dc.b	10,0
21247  149c               L7166:
21248  149c 525820536372  	dc.b	"RX Scratch Pad [%0"
21249  14ae 32645d203d20  	dc.b	"2d] = 0x%02X",13
21250  14bb 0a00          	dc.b	10,0
21251  14bd               L5066:
21252  14bd 495436383032  	dc.b	"IT6802-MHL DSCR_CH"
21253  14cf 4720496e7465  	dc.b	"G Interrupt ......"
21254  14e1 0d0a00        	dc.b	13,10,0
21255  14e4               L1066:
21256  14e4 495436383032  	dc.b	"IT6802-MHL Device "
21257  14f6 436170616269  	dc.b	"Capability is stil"
21258  1508 6c206e6f7420  	dc.b	"l not Ready !!! ",13
21259  1519 0a00          	dc.b	10,0
21260  151b               L3756:
21261  151b 495436383032  	dc.b	"IT6802-MHL Device "
21262  152d 436170616269  	dc.b	"Capability Change "
21263  153f 496e74657272  	dc.b	"Interrupt ...",13
21264  154d 0a00          	dc.b	10,0
21265  154f               L7656:
21266  154f 495436383032  	dc.b	"IT6802-Current VBU"
21267  1561 532053746174  	dc.b	"S Status = %X",13
21268  156f 0a00          	dc.b	10,0
21269  1571               L5656:
21270  1571 495436383032  	dc.b	"IT6802-VBUS Status"
21271  1583 204368616e67  	dc.b	" Change Interrupt "
21272  1595 2e2e2e0d      	dc.b	"...",13
21273  1599 0a00          	dc.b	10,0
21274  159b               L1656:
21275  159b 495436383032  	dc.b	"IT6802-DCapRdy Cha"
21276  15ad 6e6765206672  	dc.b	"nge from '1' to '0"
21277  15bf 270d          	dc.b	"'",13
21278  15c1 0a00          	dc.b	10,0
21279  15c3               L5556:
21280  15c3 495436383032  	dc.b	"IT6802-Set DCAP_RD"
21281  15d5 5920746f2031  	dc.b	"Y to 1 ...",13
21282  15e0 0a00          	dc.b	10,0
21283  15e2               L1556:
21284  15e2 495436383032  	dc.b	"IT6802-CBUS DCapRd"
21285  15f4 79204368616e  	dc.b	"y Change Interrupt"
21286  1606 202e2e2e0d    	dc.b	" ...",13
21287  160b 0a00          	dc.b	10,0
21288  160d               L5456:
21289  160d 697436383032  	dc.b	"it6802-Current CBU"
21290  161f 53204d555445  	dc.b	"S MUTE Status = %X"
21291  1631 200d          	dc.b	" ",13
21292  1633 0a00          	dc.b	10,0
21293  1635               L3456:
21294  1635 697436383032  	dc.b	"it6802-CBUS MUTE C"
21295  1647 68616e676520  	dc.b	"hange Interrupt .."
21296  1659 2e0d          	dc.b	".",13
21297  165b 0a00          	dc.b	10,0
21298  165d               L7356:
21299  165d 495436383032  	dc.b	"IT6802-CBUS PATH_E"
21300  166f 4e204368616e  	dc.b	"N Change Interrupt"
21301  1681 202e2e2e0d    	dc.b	" ...",13
21302  1686 0a00          	dc.b	10,0
21303  1688               L1356:
21304  1688 536574205041  	dc.b	"Set PATH_EN to 1 ."
21305  169a 2e2e0d        	dc.b	"..",13
21306  169d 0a00          	dc.b	10,0
21307  169f               L7256:
21308  169f 536574204850  	dc.b	"Set HPD to 1 ...",13
21309  16b0 0a00          	dc.b	10,0
21310  16b2               L5256:
21311  16b2 536574204443  	dc.b	"Set DCAP_RDY to 1 "
21312  16c4 2e2e2e0d      	dc.b	"...",13
21313  16c8 0a00          	dc.b	10,0
21314  16ca               L3256:
21315  16ca 434255532044  	dc.b	"CBUS Discovery Don"
21316  16dc 6520496e7465  	dc.b	"e Interrupt ...",13
21317  16ec 0a00          	dc.b	10,0
21318  16ee               L1256:
21319  16ee 697436383032  	dc.b	"it6802-CBUS Discov"
21320  1700 65727920446f  	dc.b	"ery Done Interrupt"
21321  1712 202e2e2e0d    	dc.b	" ...",13
21322  1717 0a00          	dc.b	10,0
21323  1719               L7056:
21324  1719 57616b655570  	dc.b	"WakeUp Fail Interr"
21325  172b 7570740d      	dc.b	"upt",13
21326  172f 0a00          	dc.b	10,0
21327  1731               L1056:
21328  1731 495436383032  	dc.b	"IT6802-DDC Rpd Fai"
21329  1743 6c20496e7465  	dc.b	"l Interrupt ...",13
21330  1753 0a00          	dc.b	10,0
21331  1755               L5746:
21332  1755 495436383032  	dc.b	"IT6802-DDC Rpd Don"
21333  1767 6520496e7465  	dc.b	"e Interrupt ...",13
21334  1777 0a00          	dc.b	10,0
21335  1779               L1746:
21336  1779 495436383032  	dc.b	"IT6802-DDC Req Fai"
21337  178b 6c20496e7465  	dc.b	"l Interrupt (Hardw"
21338  179d 61726529202e  	dc.b	"are) ... ",13
21339  17a7 0a00          	dc.b	10,0
21340  17a9               L5646:
21341  17a9 4d484c20436c  	dc.b	"MHL Clock Mode : 2"
21342  17bb 342062697473  	dc.b	"4 bits Mode ...",13
21343  17cb 0a00          	dc.b	10,0
21344  17cd               L1646:
21345  17cd 4d484c20436c  	dc.b	"MHL Clock Mode : P"
21346  17df 61636b506978  	dc.b	"ackPixel Mode ...",13
21347  17f1 0a00          	dc.b	10,0
21348  17f3               L3546:
21349  17f3 495436383032  	dc.b	"IT6802-ERROR: Rece"
21350  1805 697665204142  	dc.b	"ive ABORT Packet !"
21351  1817 21210d        	dc.b	"!!",13
21352  181a 0a00          	dc.b	10,0
21353  181c               L7446:
21354  181c 495436383032  	dc.b	"IT6802-ERROR: Retr"
21355  182e 79203e203332  	dc.b	"y > 32 times !!!",13
21356  183f 0a00          	dc.b	10,0
21357  1841               L3446:
21358  1841 495436383032  	dc.b	"IT6802-MSC Rpd Fai"
21359  1853 6c2073746174  	dc.b	"l status reg1A=%X "
21360  1865 72656731423d  	dc.b	"reg1B=%X",13
21361  186e 0a00          	dc.b	10,0
21362  1870               L1446:
21363  1870 495436383032  	dc.b	"IT6802-MSC Rpd Fai"
21364  1882 6c20496e7465  	dc.b	"l Interrupt ...",13
21365  1892 0a00          	dc.b	10,0
21366  1894               L5346:
21367  1894 495436383032  	dc.b	"IT6802-MSC Rpd Don"
21368  18a6 6520496e7465  	dc.b	"e Interrupt ...",13
21369  18b6 0a00          	dc.b	10,0
21370  18b8               L1346:
21371  18b8 495436383032  	dc.b	"IT6802-ERROR: TX F"
21372  18ca 61696c206265  	dc.b	"ail because FW mod"
21373  18dc 65205278506b  	dc.b	"e RxPktFIFO not em"
21374  18ee 707479202121  	dc.b	"pty !!!",13
21375  18f6 0a00          	dc.b	10,0
21376  18f8               L5246:
21377  18f8 495436383032  	dc.b	"IT6802-ERROR: TX F"
21378  190a 57204661696c  	dc.b	"W Fail in the midd"
21379  191c 6c65206f6620  	dc.b	"le of the command "
21380  192e 73657175656e  	dc.b	"sequence !!!",13
21381  193b 0a00          	dc.b	10,0
21382  193d               L1246:
21383  193d 495436383032  	dc.b	"IT6802-MSC Req Fai"
21384  194f 6c2072656731  	dc.b	"l reg18= %02X ",13
21385  195e 0a00          	dc.b	10,0
21386  1960               L7146:
21387  1960 495436383032  	dc.b	"IT6802-MSC Req Fai"
21388  1972 6c20496e7465  	dc.b	"l Interrupt (Unexp"
21389  1984 656374656429  	dc.b	"ected) ...",13
21390  198f 0a00          	dc.b	10,0
21391  1991               L3146:
21392  1991 495436383032  	dc.b	"IT6802-MSC Req Don"
21393  19a3 6520496e7465  	dc.b	"e Interrupt ...",13
21394  19b3 0a00          	dc.b	10,0
21395  19b5               L7046:
21396  19b5 495436383032  	dc.b	"IT6802-MSC RX WRIT"
21397  19c7 455f42555253  	dc.b	"E_BURST Interrupt "
21398  19d9 202e2e2e0d    	dc.b	" ...",13
21399  19de 0a00          	dc.b	10,0
21400  19e0               L3046:
21401  19e0 495436383032  	dc.b	"IT6802-MSC RX WRIT"
21402  19f2 455f53544154  	dc.b	"E_STAT Interrupt ."
21403  1a04 2e2e0d        	dc.b	"..",13
21404  1a07 0a00          	dc.b	10,0
21405  1a09               L7736:
21406  1a09 495436383032  	dc.b	"IT6802-MSC RX MSC_"
21407  1a1b 4d534720496e  	dc.b	"MSG Interrupt ...",13
21408  1a2d 0a00          	dc.b	10,0
21409  1a2f               L3736:
21410  1a2f 495436383032  	dc.b	"IT6802-ERROR: CBUS"
21411  1a41 204c696e6b20  	dc.b	" Link Layer RX Pac"
21412  1a53 6b6574204661  	dc.b	"ket Fail Interrupt"
21413  1a65 202e2e2e200d  	dc.b	" ... ",13
21414  1a6b 0a00          	dc.b	10,0
21415  1a6d               L7636:
21416  1a6d 495436383032  	dc.b	"IT6802-CBUS Link L"
21417  1a7f 617965722052  	dc.b	"ayer RX Packet Don"
21418  1a91 6520496e7465  	dc.b	"e Interrupt ...",13
21419  1aa1 0a00          	dc.b	10,0
21420  1aa3               L3636:
21421  1aa3 495436383032  	dc.b	"IT6802- TX Packet "
21422  1ab5 6572726f7220  	dc.b	"error Status reg15"
21423  1ac7 3d25580d      	dc.b	"=%X",13
21424  1acb 0a00          	dc.b	10,0
21425  1acd               L1636:
21426  1acd 495436383032  	dc.b	"IT6802-ERROR: CBUS"
21427  1adf 204c696e6b20  	dc.b	" Link Layer TX Pac"
21428  1af1 6b6574204661  	dc.b	"ket Fail Interrupt"
21429  1b03 202e2e2e200d  	dc.b	" ... ",13
21430  1b09 0a00          	dc.b	10,0
21431  1b0b               L5536:
21432  1b0b 495436383032  	dc.b	"IT6802-CBUS Link L"
21433  1b1d 617965722054  	dc.b	"ayer TX Packet Don"
21434  1b2f 6520496e7465  	dc.b	"e Interrupt ...",13
21435  1b3f 0a00          	dc.b	10,0
21436  1b41               L7226:
21437  1b41 5243505f5265  	dc.b	"RCP_Result_Finish "
21438  1b53 0d0a00        	dc.b	13,10,0
21439  1b56               L5226:
21440  1b56 5243505f5265  	dc.b	"RCP_Result_Transfe"
21441  1b68 72200d        	dc.b	"r ",13
21442  1b6b 0a00          	dc.b	10,0
21443  1b6d               L3226:
21444  1b6d 5243505f5265  	dc.b	"RCP_Result_ABORT ",13
21445  1b7f 0a00          	dc.b	10,0
21446  1b81               L1226:
21447  1b81 5243505f5265  	dc.b	"RCP_Result_FAIL ",13
21448  1b92 0a00          	dc.b	10,0
21449  1b94               L7126:
21450  1b94 5243505f5265  	dc.b	"RCP_Result_OK ",13
21451  1ba3 0a00          	dc.b	10,0
21452  1ba5               L1516:
21453  1ba5 5243504b6579  	dc.b	"RCPKeyPop() key = "
21454  1bb7 2578200d      	dc.b	"%x ",13
21455  1bbb 0a00          	dc.b	10,0
21456  1bbd               L7506:
21457  1bbd 20506f727442  	dc.b	" PortB PhyAdr = %x"
21458  1bcf 2c2025782c20  	dc.b	", %x, %x, %x",13
21459  1bdc 0a00          	dc.b	10,0
21460  1bde               L5506:
21461  1bde 20506f727441  	dc.b	" PortA PhyAdr = %x"
21462  1bf0 2c2025782c20  	dc.b	", %x, %x, %x",13
21463  1bfd 0a00          	dc.b	10,0
21464  1bff               L3506:
21465  1bff 0d0a446e5374  	dc.b	13,10,68,110,83,116
21466  1c05 726d20506879  	dc.b	"rm PhyAdr = %x, %x"
21467  1c17 2c2025782c20  	dc.b	", %x, %x",13
21468  1c20 0a00          	dc.b	10,0
21469  1c22               L5665:
21470  1c22 454449442050  	dc.b	"EDID Parsing OK",13
21471  1c32 0a00          	dc.b	10,0
21472  1c34               L1665:
21473  1c34 75385f565344  	dc.b	"u8_VSDB_Addr = %x",13
21474  1c46 0a00          	dc.b	10,0
21475  1c48               L7565:
21476  1c48 20426c6f636b  	dc.b	" Block1_CheckSum ="
21477  1c5a 2025780d      	dc.b	" %x",13
21478  1c5e 0a00          	dc.b	10,0
21479  1c60               L3565:
21480  1c60 20426c6f636b  	dc.b	" Block0_CheckSum ="
21481  1c72 2025780d      	dc.b	" %x",13
21482  1c76 0a00          	dc.b	10,0
21483  1c78               L7465:
21484  1c78 495436383032  	dc.b	"IT6802 EDIDRAMInit"
21485  1c8a 69616c203d20  	dc.b	"ial = %x",13
21486  1c93 0a00          	dc.b	10,0
21487  1c95               L1165:
21488  1c95 44697361626c  	dc.b	"DisableEDIDupdata("
21489  1ca7 29200d        	dc.b	") ",13
21490  1caa 0a00          	dc.b	10,0
21491  1cac               L7755:
21492  1cac 456e61626c65  	dc.b	"EnableEDIDupdata()"
21493  1cbe 200d          	dc.b	" ",13
21494  1cc0 0a00          	dc.b	10,0
21495  1cc2               L7555:
21496  1cc2 626c6f636b20  	dc.b	"block No =%x offse"
21497  1cd4 74203d202578  	dc.b	"t = %x ",13
21498  1cdc 0a00          	dc.b	10,0
21499  1cde               L3045:
21500  1cde 536574204453  	dc.b	"Set DSCR_CHG to 1 "
21501  1cf0 285478536571  	dc.b	"(TxSeqNum=%d) ...",13
21502  1d02 0a00          	dc.b	10,0
21503  1d04               L1535:
21504  1d04 4552524f523a  	dc.b	"ERROR: Set Burst W"
21505  1d16 726974652044  	dc.b	"rite Data Fail !!!"
21506  1d28 0d0a00        	dc.b	13,10,0
21507  1d2b               L5325:
21508  1d2b 495436383032  	dc.b	"IT6802-Read Device"
21509  1d3d 204361706162  	dc.b	" Capability End..."
21510  1d4f 0d0a00        	dc.b	13,10,0
21511  1d52               L3325:
21512  1d52 495436383032  	dc.b	"IT6802-DevCap[%X]="
21513  1d64 25580d        	dc.b	"%X",13
21514  1d67 0a00          	dc.b	10,0
21515  1d69               L7125:
21516  1d69 495436383032  	dc.b	"IT6802-",13
21517  1d71 0a5265616420  	dc.b	10,82,101,97,100,32
21518  1d77 446576696365  	dc.b	"Device Capability "
21519  1d89 537461727420  	dc.b	"Start ...",13
21520  1d93 0a00          	dc.b	10,0
21521  1d95               L3715:
21522  1d95 535441545f53  	dc.b	"STAT_SIZE = %02bX "
21523  1da7 42797465730d  	dc.b	"Bytes",13
21524  1dad 0a00          	dc.b	10,0
21525  1daf               L1715:
21526  1daf 494e545f5349  	dc.b	"INT_SIZE  = %02bX "
21527  1dc1 42797465730d  	dc.b	"Bytes",13
21528  1dc7 0a00          	dc.b	10,0
21529  1dc9               L7615:
21530  1dc9 534352415443  	dc.b	"SCRATCHPAD_SIZE = "
21531  1ddb 253032625820  	dc.b	"%02bX Bytes",13
21532  1de7 0a00          	dc.b	10,0
21533  1de9               L3615:
21534  1de9 444556494345  	dc.b	"DEVICE_ID_H=0x%02b"
21535  1dfb 582c20444556  	dc.b	"X, DEVICE_ID_L=0x%"
21536  1e0d 303262580d    	dc.b	"02bX",13
21537  1e12 0a00          	dc.b	10,0
21538  1e14               L1615:
21539  1e14 202020205543  	dc.b	"    UCP_RECV_SUPPO"
21540  1e26 5254203d2025  	dc.b	"RT = %02bX",13
21541  1e31 0a00          	dc.b	10,0
21542  1e33               L7515:
21543  1e33 202020205543  	dc.b	"    UCP_SEND_SUPPO"
21544  1e45 5254203d2025  	dc.b	"RT = %02bX",13
21545  1e50 0a00          	dc.b	10,0
21546  1e52               L5515:
21547  1e52 202020202020  	dc.b	"         SP_SUPPOR"
21548  1e64 5420203d2025  	dc.b	"T  = %02bX",13
21549  1e6f 0a00          	dc.b	10,0
21550  1e71               L3515:
21551  1e71 202020202020  	dc.b	"         RAP_SUPPO"
21552  1e83 5254203d2025  	dc.b	"RT = %02bX",13
21553  1e8e 0a00          	dc.b	10,0
21554  1e90               L1515:
21555  1e90 202020202020  	dc.b	"         RCP_SUPPO"
21556  1ea2 5254203d2025  	dc.b	"RT = %02bX",13
21557  1ead 0a00          	dc.b	10,0
21558  1eaf               L7415:
21559  1eaf 464541545552  	dc.b	"FEATURE_FLAG:",13
21560  1ebd 0a00          	dc.b	10,0
21561  1ebf               L5415:
21562  1ebf 42414e445749  	dc.b	"BANDWIDTH = %XMHz",13
21563  1ed1 0a00          	dc.b	10,0
21564  1ed3               L3415:
21565  1ed3 202020204c44  	dc.b	"    LD_GUI      = "
21566  1ee5 25303262580d  	dc.b	"%02bX",13
21567  1eeb 0a00          	dc.b	10,0
21568  1eed               L1415:
21569  1eed 202020204c44  	dc.b	"    LD_SPEAKER  = "
21570  1eff 25303262580d  	dc.b	"%02bX",13
21571  1f05 0a00          	dc.b	10,0
21572  1f07               L7315:
21573  1f07 202020204c44  	dc.b	"    LD_RECORD   = "
21574  1f19 25303262580d  	dc.b	"%02bX",13
21575  1f1f 0a00          	dc.b	10,0
21576  1f21               L5315:
21577  1f21 202020204c44  	dc.b	"    LD_TUNER    = "
21578  1f33 25303262580d  	dc.b	"%02bX",13
21579  1f39 0a00          	dc.b	10,0
21580  1f3b               L3315:
21581  1f3b 202020204c44  	dc.b	"    LD_MEDIA    = "
21582  1f4d 25303262580d  	dc.b	"%02bX",13
21583  1f53 0a00          	dc.b	10,0
21584  1f55               L1315:
21585  1f55 202020204c44  	dc.b	"    LD_AUDIO    = "
21586  1f67 25303262580d  	dc.b	"%02bX",13
21587  1f6d 0a00          	dc.b	10,0
21588  1f6f               L7215:
21589  1f6f 202020204c44  	dc.b	"    LD_VIDEO    = "
21590  1f81 25303262580d  	dc.b	"%02bX",13
21591  1f87 0a00          	dc.b	10,0
21592  1f89               L5215:
21593  1f89 202020204c44  	dc.b	"    LD_DISPLAY  = "
21594  1f9b 25303262580d  	dc.b	"%02bX",13
21595  1fa1 0a00          	dc.b	10,0
21596  1fa3               L3215:
21597  1fa3 4c4f475f4445  	dc.b	"LOG_DEV_MAP:",13
21598  1fb0 0a00          	dc.b	10,0
21599  1fb2               L1215:
21600  1fb2 4e6f74205375  	dc.b	"Not Support VIDEO_"
21601  1fc4 545950452021  	dc.b	"TYPE !!!",13
21602  1fcd 0a00          	dc.b	10,0
21603  1fcf               L5115:
21604  1fcf 202020205654  	dc.b	"    VT_GAME     = "
21605  1fe1 25303262580d  	dc.b	"%02bX",13
21606  1fe7 0a00          	dc.b	10,0
21607  1fe9               L3115:
21608  1fe9 202020205654  	dc.b	"    VT_CINEMA   = "
21609  1ffb 25303262580d  	dc.b	"%02bX",13
21610  2001 0a00          	dc.b	10,0
21611  2003               L1115:
21612  2003 202020205654  	dc.b	"    VT_PHOTO    = "
21613  2015 25303262580d  	dc.b	"%02bX",13
21614  201b 0a00          	dc.b	10,0
21615  201d               L7015:
21616  201d 202020205654  	dc.b	"    VT_GRAPHICS = "
21617  202f 25303262580d  	dc.b	"%02bX",13
21618  2035 0a00          	dc.b	10,0
21619  2037               L5015:
21620  2037 564944454f5f  	dc.b	"VIDEO_TYPE: ",13
21621  2044 0a00          	dc.b	10,0
21622  2046               L1015:
21623  2046 202020205355  	dc.b	"    SUPP_8CH  = %0"
21624  2058 3262580d      	dc.b	"2bX",13
21625  205c 0a00          	dc.b	10,0
21626  205e               L7705:
21627  205e 202020205355  	dc.b	"    SUPP_2CH  = %0"
21628  2070 3262580d      	dc.b	"2bX",13
21629  2074 0a00          	dc.b	10,0
21630  2076               L5705:
21631  2076 4155445f4c49  	dc.b	"AUD_LINK_MODE:",13
21632  2085 0a00          	dc.b	10,0
21633  2087               L3705:
21634  2087 202020205355  	dc.b	"    SUPP_VGA      "
21635  2099 3d2025303262  	dc.b	"= %02bX",13
21636  20a1 0a00          	dc.b	10,0
21637  20a3               L1705:
21638  20a3 202020205355  	dc.b	"    SUPP_ISLANDS  "
21639  20b5 3d2025303262  	dc.b	"= %02bX",13
21640  20bd 0a00          	dc.b	10,0
21641  20bf               L7605:
21642  20bf 202020205355  	dc.b	"    SUPP_PPIXEL   "
21643  20d1 3d2025303262  	dc.b	"= %02bX",13
21644  20d9 0a00          	dc.b	10,0
21645  20db               L5605:
21646  20db 202020205355  	dc.b	"    SUPP_YCBCR422 "
21647  20ed 3d2025303262  	dc.b	"= %02bX",13
21648  20f5 0a00          	dc.b	10,0
21649  20f7               L3605:
21650  20f7 202020205355  	dc.b	"    SUPP_YCBCR444 "
21651  2109 3d2025303262  	dc.b	"= %02bX",13
21652  2111 0a00          	dc.b	10,0
21653  2113               L1605:
21654  2113 202020205355  	dc.b	"    SUPP_RGB444   "
21655  2125 3d2025303262  	dc.b	"= %02bX",13
21656  212d 0a00          	dc.b	10,0
21657  212f               L7505:
21658  212f 5649445f4c49  	dc.b	"VID_LINK_MODE:",13
21659  213e 0a00          	dc.b	10,0
21660  2140               L5505:
21661  2140 41444f505445  	dc.b	"ADOPTER_ID_H=0x%02"
21662  2152 62582c204144  	dc.b	"bX, ADOPTER_ID_L=0"
21663  2164 782530326258  	dc.b	"x%02bX",13
21664  216b 0a00          	dc.b	10,0
21665  216d               L3505:
21666  216d 504c494d203d  	dc.b	"PLIM = %02bX",13
21667  217a 0a00          	dc.b	10,0
21668  217c               L1505:
21669  217c 504f57203d20  	dc.b	"POW = %02bX",13
21670  2188 0a00          	dc.b	10,0
21671  218a               L7405:
21672  218a 4552524f523a  	dc.b	"ERROR: Reserved fo"
21673  219c 722066757475  	dc.b	"r future use !!! ",0
21674  21ae               L5405:
21675  21ae 4445565f5459  	dc.b	"DEV_TYPE = Dongle,"
21676  21c0 2000          	dc.b	" ",0
21677  21c2               L3405:
21678  21c2 4445565f5459  	dc.b	"DEV_TYPE = Source,"
21679  21d4 2000          	dc.b	" ",0
21680  21d6               L1405:
21681  21d6 4445565f5459  	dc.b	"DEV_TYPE = Sink, ",0
21682  21e8               L7305:
21683  21e8 4552524f523a  	dc.b	"ERROR: DEV_TYPE at"
21684  21fa 206c65617374  	dc.b	" least one bit mus"
21685  220c 742062652073  	dc.b	"t be set !!!",13
21686  2219 0a00          	dc.b	10,0
21687  221b               L1305:
21688  221b 4445565f5459  	dc.b	"DEV_TYPE=",0
21689  2225               L7205:
21690  2225 4d484c5f5645  	dc.b	"MHL_VER_MAJOR/MINO"
21691  2237 523d25303262  	dc.b	"R=%02bX",13
21692  223f 0a00          	dc.b	10,0
21693  2241               L5205:
21694  2241 4445565f5354  	dc.b	"DEV_STATE=%02bX",13
21695  2251 0a00          	dc.b	10,0
21696  2253               L3205:
21697  2253 0d0a50617273  	dc.b	13,10,80,97,114,115
21698  2259 696e67204465  	dc.b	"ing Device Capabil"
21699  226b 697479205265  	dc.b	"ity Register ...",13
21700  227c 0a00          	dc.b	10,0
21701  227e               L1574:
21702  227e 495436383032  	dc.b	"IT6802-MSC FIRE() "
21703  2290 256c6420200d  	dc.b	"%ld  ",13
21704  2296 0a00          	dc.b	10,0
21705  2298               L1664:
21706  2298 4552524f523a  	dc.b	"ERROR: Unknown MSC"
21707  22aa 5f4d53472073  	dc.b	"_MSG sub-command c"
21708  22bc 6f6465203078  	dc.b	"ode 0x%02X !!!",13
21709  22cb 0a00          	dc.b	10,0
21710  22cd               L7564:
21711  22cd 4552524f523a  	dc.b	"ERROR: Unknown RAP"
21712  22df 207374617475  	dc.b	" status code 0x%02"
21713  22f1 58202121210d  	dc.b	"X !!!",13
21714  22f7 0a00          	dc.b	10,0
21715  22f9               L5564:
21716  22f9 4552524f523a  	dc.b	"ERROR: Unsupported"
21717  230b 20416374696f  	dc.b	" Action Code !!!",13
21718  231c 0a00          	dc.b	10,0
21719  231e               L3564:
21720  231e 4552524f523a  	dc.b	"ERROR: Unrecognize"
21721  2330 642041637469  	dc.b	"d Action Code !!!",13
21722  2342 0a00          	dc.b	10,0
21723  2344               L5464:
21724  2344 525820524150  	dc.b	"RX RAPK  => ",0
21725  2351               L3464:
21726  2351 4552524f523a  	dc.b	"ERROR: Unknown RCP"
21727  2363 207374617475  	dc.b	" status code !!!",13
21728  2374 0a00          	dc.b	10,0
21729  2376               L1464:
21730  2376 526573706f6e  	dc.b	"Responder Busy ..."
21731  2388 0d0a00        	dc.b	13,10,0
21732  238b               L7364:
21733  238b 4552524f523a  	dc.b	"ERROR: Ineffective"
21734  239d 20524350204b  	dc.b	" RCP Key Code !!!",13
21735  23af 0a00          	dc.b	10,0
21736  23b1               L1364:
21737  23b1 525820524350  	dc.b	"RX RCPK  => ",0
21738  23be               L7264:
21739  23be 4552524f523a  	dc.b	"ERROR: Unknown MSC"
21740  23d0 5f4d53472073  	dc.b	"_MSG status code 0"
21741  23e2 782530325820  	dc.b	"x%02X !!!",13
21742  23ec 0a00          	dc.b	10,0
21743  23ee               L5264:
21744  23ee 4552524f523a  	dc.b	"ERROR: Invalid sub"
21745  2400 2d636f6d6d61  	dc.b	"-command code !!!",13
21746  2412 0a00          	dc.b	10,0
21747  2414               L3264:
21748  2414 4e6f20457272  	dc.b	"No Error",13
21749  241d 0a00          	dc.b	10,0
21750  241f               L5164:
21751  241f 5258204d5347  	dc.b	"RX MSGE => ",0
21752  242b               L1254:
21753  242b 53656e642061  	dc.b	"Send a RAPK with s"
21754  243d 746174757320  	dc.b	"tatus code = 0x%02"
21755  244f 580d          	dc.b	"X",13
21756  2451 0a00          	dc.b	10,0
21757  2453               L7154:
21758  2453 4552524f523a  	dc.b	"ERROR: Unknown RAP"
21759  2465 20616374696f  	dc.b	" action code 0x%02"
21760  2477 58202121210d  	dc.b	"X !!!",13
21761  247d 0a00          	dc.b	10,0
21762  247f               L5154:
21763  247f 4368616e6765  	dc.b	"Change to CONTENT_"
21764  2491 4f4646207374  	dc.b	"OFF state",13
21765  249b 0a00          	dc.b	10,0
21766  249d               L3154:
21767  249d 4368616e6765  	dc.b	"Change to CONTENT_"
21768  24af 4f4e20737461  	dc.b	"ON state",13
21769  24b8 0a00          	dc.b	10,0
21770  24ba               L1154:
21771  24ba 506f6c6c0d    	dc.b	"Poll",13
21772  24bf 0a00          	dc.b	10,0
21773  24c1               L7444:
21774  24c1 53656e642061  	dc.b	"Send a RCPE with s"
21775  24d3 746174757320  	dc.b	"tatus code = 0x%02"
21776  24e5 580d          	dc.b	"X",13
21777  24e7 0a00          	dc.b	10,0
21778  24e9               L3444:
21779  24e9 53656e642061  	dc.b	"Send a RCPK with a"
21780  24fb 6374696f6e20  	dc.b	"ction code = 0x%02"
21781  250d 580d          	dc.b	"X",13
21782  250f 0a00          	dc.b	10,0
21783  2511               L7144:
21784  2511 204b65792050  	dc.b	" Key Press",13
21785  251c 0a00          	dc.b	10,0
21786  251e               L3144:
21787  251e 204b65792052  	dc.b	" Key Release",13
21788  252b 0a00          	dc.b	10,0
21789  252d               L5044:
21790  252d 4552524f523a  	dc.b	"ERROR: Reserved RC"
21791  253f 50207375622d  	dc.b	"P sub-command code"
21792  2551 202121210d    	dc.b	" !!!",13
21793  2556 0a00          	dc.b	10,0
21794  2558               L3044:
21795  2558 56656e646f72  	dc.b	"Vendor_Specific",0
21796  2568               L1044:
21797  2568 463500        	dc.b	"F5",0
21798  256b               L7734:
21799  256b 463420285965  	dc.b	"F4 (Yellow)",0
21800  2577               L5734:
21801  2577 463320284772  	dc.b	"F3 (Green)",0
21802  2582               L3734:
21803  2582 463220285265  	dc.b	"F2 (Red)",0
21804  258b               L1734:
21805  258b 46312028426c  	dc.b	"F1 (Blue)",0
21806  2595               L7634:
21807  2595 53656c656374  	dc.b	"Select_Media_Funct"
21808  25a7 696f6e00      	dc.b	"ion",0
21809  25ab               L5634:
21810  25ab 54756e655f46  	dc.b	"Tune_Function",0
21811  25b9               L3634:
21812  25b9 526573746f72  	dc.b	"Restore_Volume_Fun"
21813  25cb 6374696f6e00  	dc.b	"ction",0
21814  25d1               L1634:
21815  25d1 50617573655f  	dc.b	"Pause_Record_Funct"
21816  25e3 696f6e00      	dc.b	"ion",0
21817  25e7               L7534:
21818  25e7 5265636f7264  	dc.b	"Record_Function",0
21819  25f7               L5534:
21820  25f7 50617573655f  	dc.b	"Pause_Play_Functio"
21821  2609 6e00          	dc.b	"n",0
21822  260b               L3534:
21823  260b 506c61795f46  	dc.b	"Play_Function",0
21824  2619               L1534:
21825  2619 537562706963  	dc.b	"Subpicture",0
21826  2624               L7434:
21827  2624 416e676c6500  	dc.b	"Angle",0
21828  262a               L5434:
21829  262a 4261636b7761  	dc.b	"Backward",0
21830  2633               L3434:
21831  2633 466f72776172  	dc.b	"Forward",0
21832  263b               L1434:
21833  263b 456a65637400  	dc.b	"Eject",0
21834  2641               L7334:
21835  2641 466173742046  	dc.b	"Fast Forward",0
21836  264e               L5334:
21837  264e 526577696e64  	dc.b	"Rewind",0
21838  2655               L3334:
21839  2655 5265636f7264  	dc.b	"Record",0
21840  265c               L1334:
21841  265c 506175736500  	dc.b	"Pause",0
21842  2662               L7234:
21843  2662 53746f7000    	dc.b	"Stop",0
21844  2667               L5234:
21845  2667 506c617900    	dc.b	"Play",0
21846  266c               L3234:
21847  266c 4d75746500    	dc.b	"Mute",0
21848  2671               L1234:
21849  2671 566f6c756d65  	dc.b	"Volume Down",0
21850  267d               L7134:
21851  267d 566f6c756d65  	dc.b	"Volume Up",0
21852  2687               L5134:
21853  2687 506167652044  	dc.b	"Page Down",0
21854  2691               L3134:
21855  2691 506167652055  	dc.b	"Page Up",0
21856  2699               L1134:
21857  2699 48656c7000    	dc.b	"Help",0
21858  269e               L7034:
21859  269e 53686f772049  	dc.b	"Show Information",0
21860  26af               L5034:
21861  26af 496e70757420  	dc.b	"Input Select",0
21862  26bc               L3034:
21863  26bc 536f756e6420  	dc.b	"Sound Select",0
21864  26c9               L1034:
21865  26c9 50726576696f  	dc.b	"Previous Channel",0
21866  26da               L7724:
21867  26da 4368616e6e65  	dc.b	"Channel Down",0
21868  26e7               L5724:
21869  26e7 4368616e6e65  	dc.b	"Channel Up",0
21870  26f2               L3724:
21871  26f2 436c65617200  	dc.b	"Clear",0
21872  26f8               L1724:
21873  26f8 456e74657200  	dc.b	"Enter",0
21874  26fe               L7624:
21875  26fe 446f7400      	dc.b	"Dot",0
21876  2702               L5624:
21877  2702 4e756d657269  	dc.b	"Numeric 9",0
21878  270c               L3624:
21879  270c 4e756d657269  	dc.b	"Numeric 8",0
21880  2716               L1624:
21881  2716 4e756d657269  	dc.b	"Numeric 7",0
21882  2720               L7524:
21883  2720 4e756d657269  	dc.b	"Numeric 6",0
21884  272a               L5524:
21885  272a 4e756d657269  	dc.b	"Numeric 5",0
21886  2734               L3524:
21887  2734 4e756d657269  	dc.b	"Numeric 4",0
21888  273e               L1524:
21889  273e 4e756d657269  	dc.b	"Numeric 3",0
21890  2748               L7424:
21891  2748 4e756d657269  	dc.b	"Numeric 2",0
21892  2752               L5424:
21893  2752 4e756d657269  	dc.b	"Numeric 1",0
21894  275c               L3424:
21895  275c 4e756d657269  	dc.b	"Numeric 0",0
21896  2766               L1424:
21897  2766 4578697400    	dc.b	"Exit",0
21898  276b               L7324:
21899  276b 4661766f7269  	dc.b	"Favorite Menu",0
21900  2779               L5324:
21901  2779 436f6e74656e  	dc.b	"Contents Menu",0
21902  2787               L3324:
21903  2787 536574757020  	dc.b	"Setup Menu",0
21904  2792               L1324:
21905  2792 526f6f74204d  	dc.b	"Root Menu",0
21906  279c               L7224:
21907  279c 4c6566742d44  	dc.b	"Left-Down",0
21908  27a6               L5224:
21909  27a6 4c6566742d55  	dc.b	"Left-Up",0
21910  27ae               L3224:
21911  27ae 52696768742d  	dc.b	"Right-Down",0
21912  27b9               L1224:
21913  27b9 52696768742d  	dc.b	"Right-Up",0
21914  27c2               L7124:
21915  27c2 526967687400  	dc.b	"Right",0
21916  27c8               L5124:
21917  27c8 4c65667400    	dc.b	"Left",0
21918  27cd               L3124:
21919  27cd 446f776e00    	dc.b	"Down",0
21920  27d2               L1124:
21921  27d2 557000        	dc.b	"Up",0
21922  27d5               L7024:
21923  27d5 53656c656374  	dc.b	"Select",0
21924  27dc               L1024:
21925  27dc 4b6579436f64  	dc.b	"KeyCode=%x ==>",0
21926  27eb               L5573:
21927  27eb 4d302020203d  	dc.b	"M0   = 0x%X%X%X%X%"
21928  27fd 582558255825  	dc.b	"X%X%X%X%X%X%X%X%X%"
21929  280f 582558255820  	dc.b	"X%X%X ",13
21930  2816 0a00          	dc.b	10,0
21931  2818               L3573:
21932  2818 424b5356203d  	dc.b	"BKSV = 0x%X%X%X%X%"
21933  282a 582558255825  	dc.b	"X%X%X%X%X%X ",13
21934  2837 0a00          	dc.b	10,0
21935  2839               L1573:
21936  2839 414b5356203d  	dc.b	"AKSV = 0x%X%X%X%X%"
21937  284b 582558255825  	dc.b	"X%X%X%X%X%X ",13
21938  2858 0a00          	dc.b	10,0
21939  285a               L1563:
21940  285a 232323232053  	dc.b	"#### SCDT OFF ####"
21941  286c 0d0a00        	dc.b	13,10,0
21942  286f               L5463:
21943  286f 232323232053  	dc.b	"#### SCDT ON ####",13
21944  2881 0a00          	dc.b	10,0
21945  2883               L1263:
21946  2883 232323232048  	dc.b	"#### HDMI/DVI Mode"
21947  2895 203a20445649  	dc.b	" : DVI ####",13
21948  28a1 0a00          	dc.b	10,0
21949  28a3               L3163:
21950  28a3 232323232048  	dc.b	"#### HDMI/DVI Mode"
21951  28b5 203a2048444d  	dc.b	" : HDMI ####",13
21952  28c2 0a00          	dc.b	10,0
21953  28c4               L5653:
21954  28c4 434452207265  	dc.b	"CDR reset for Port"
21955  28d6 31204445534b  	dc.b	"1 DESKEW_TIMEOUT !"
21956  28e8 21210d        	dc.b	"!!",13
21957  28eb 0a00          	dc.b	10,0
21958  28ed               L1453:
21959  28ed 434452207265  	dc.b	"CDR reset for Port"
21960  28ff 30204445534b  	dc.b	"0 DESKEW_TIMEOUT !"
21961  2911 21210d        	dc.b	"!!",13
21962  2914 0a00          	dc.b	10,0
21963  2916               L5153:
21964  2916 434452207265  	dc.b	"CDR reset for Port"
21965  2928 31204543435f  	dc.b	"1 ECC_TIMEOUT !!!",13
21966  293a 0a00          	dc.b	10,0
21967  293c               L1743:
21968  293c 434452207265  	dc.b	"CDR reset for Port"
21969  294e 30204543435f  	dc.b	"0 ECC_TIMEOUT !!!",13
21970  2960 0a00          	dc.b	10,0
21971  2962               L5443:
21972  2962 232323232050  	dc.b	"#### Power 5V OFF "
21973  2974 232323230d    	dc.b	"####",13
21974  2979 0a00          	dc.b	10,0
21975  297b               L1443:
21976  297b 232323232050  	dc.b	"#### Power 5V ON #"
21977  298d 2323230d      	dc.b	"###",13
21978  2991 0a00          	dc.b	10,0
21979  2993               L1613:
21980  2993 2b2b2b2b2b2b  	dc.b	"+++++++++++ B_CAP_"
21981  29a5 4842525f4155  	dc.b	"HBR_AUDIO ++++++++"
21982  29b7 2b2b2b2b2b2b  	dc.b	"+++++++++",13
21983  29c1 0a00          	dc.b	10,0
21984  29c3               L7013:
21985  29c3 436174363032  	dc.b	"Cat6023 Audio--> A"
21986  29d5 7564696f2066  	dc.b	"udio flag=%02X,Ch "
21987  29e7 4e6f3d253032  	dc.b	"No=%02X,Fs=%02X .."
21988  29f9 2e200d        	dc.b	". ",13
21989  29fc 0a00          	dc.b	10,0
21990  29fe               L1013:
21991  29fe 2b2b2b200d    	dc.b	"+++ ",13
21992  2a03 0a00          	dc.b	10,0
21993  2a05               L7752:
21994  2a05 536574445649  	dc.b	"SetDVIVideoOutput("
21995  2a17 29200d        	dc.b	") ",13
21996  2a1a 0a00          	dc.b	10,0
21997  2a1c               L1552:
21998  2a1c 20536574436f  	dc.b	" SetColorimetryByM"
21999  2a2e 6f6465282920  	dc.b	"ode() REG_RX_PIXCL"
22000  2a40 4b5f53504545  	dc.b	"K_SPEED=%x ",13
22001  2a4c 0a00          	dc.b	10,0
22002  2a4e               L5642:
22003  2a4e 5365744e6577  	dc.b	"SetNewInfoVideoOut"
22004  2a60 707574282920  	dc.b	"put() ",13
22005  2a67 0a00          	dc.b	10,0
22006  2a69               L5342:
22007  2a69 302d3235350d  	dc.b	"0-255",13
22008  2a6f 0a00          	dc.b	10,0
22009  2a71               L1342:
22010  2a71 31362d323335  	dc.b	"16-235",13
22011  2a78 0a00          	dc.b	10,0
22012  2a7a               L3242:
22013  2a7a 435343203d20  	dc.b	"CSC = YUV2RGB ",0
22014  2a89               L3142:
22015  2a89 495455363031  	dc.b	"ITU601 ",0
22016  2a91               L7042:
22017  2a91 20302d323535  	dc.b	" 0-255",13
22018  2a98 0a00          	dc.b	10,0
22019  2a9a               L3042:
22020  2a9a 2031362d3233  	dc.b	" 16-235",13
22021  2aa2 0a00          	dc.b	10,0
22022  2aa4               L7732:
22023  2aa4 495455373039  	dc.b	"ITU709 ",0
22024  2aac               L1632:
22025  2aac 4f7574707574  	dc.b	"Output mode is RGB"
22026  2abe 32340d        	dc.b	"24",13
22027  2ac1 0a00          	dc.b	10,0
22028  2ac3               L5432:
22029  2ac3 496e70757420  	dc.b	"Input mode is RGB4"
22030  2ad5 34340d        	dc.b	"44",13
22031  2ad8 0a00          	dc.b	10,0
22032  2ada               L7332:
22033  2ada 496e70757420  	dc.b	"Input mode is YUV4"
22034  2aec 32320d        	dc.b	"22",13
22035  2aef 0a00          	dc.b	10,0
22036  2af1               L5332:
22037  2af1 496e70757420  	dc.b	"Input mode is YUV4"
22038  2b03 34340d        	dc.b	"44",13
22039  2b06 0a00          	dc.b	10,0
22040  2b08               L7232:
22041  2b08 4f7574707574  	dc.b	"Output mode is YUV"
22042  2b1a 3434340d      	dc.b	"444",13
22043  2b1e 0a00          	dc.b	10,0
22044  2b20               L1232:
22045  2b20 0d0a21212120  	dc.b	13,10,33,33,33,32
22046  2b26 536574436f6c  	dc.b	"SetColorSpaceConve"
22047  2b38 727428202920  	dc.b	"rt( ) !!!",13
22048  2b42 0a00          	dc.b	10,0
22049  2b44               L1612:
22050  2b44 536574566964  	dc.b	"SetVideoInputForma"
22051  2b56 745769746849  	dc.b	"tWithInfoFrame - R"
22052  2b68 656741453d25  	dc.b	"egAE=%x it6802->m_"
22053  2b7a 62496e707574  	dc.b	"bInputVideoMode=%x"
22054  2b8c 0d0a00        	dc.b	13,10,0
22055  2b8f               L7512:
22056  2b8f 696e70757420  	dc.b	"input RGB24 mode ",0
22057  2ba1               L5512:
22058  2ba1 696e70757420  	dc.b	"input YUV422 mode ",0
22059  2bb4               L3512:
22060  2bb4 696e70757420  	dc.b	"input YUV444 mode ",0
22061  2bc7               L1771:
22062  2bc7 434452207265  	dc.b	"CDR reset for SCDT"
22063  2bd9 5f4f46465f54  	dc.b	"_OFF_TIMEOUT !!!",13
22064  2bea 0a00          	dc.b	10,0
22065  2bec               L7261:
22066  2bec 495436383032  	dc.b	"IT6802_fsm_init( )"
22067  2bfe 200d          	dc.b	" ",13
22068  2c00 0a00          	dc.b	10,0
22069  2c02               L506:
22070  2c02 3d3d3d3d3d20  	dc.b	"=====  read Reg0x%"
22071  2c14 783d2578203d  	dc.b	"x=%x =====  ",13
22072  2c21 0a00          	dc.b	10,0
22073  2c23               L306:
22074  2c23 4d484c204932  	dc.b	"MHL I2C ERROR !!!",0
22075  2c35               L755:
22076  2c35 495436383032  	dc.b	"IT6802 I2C ERROR !"
22077  2c47 212100        	dc.b	"!!",0
22078  2c4a               L305:
22079  2c4a 3d3d3d3d3d20  	dc.b	"=====  Write Reg0x"
22080  2c5c 25783d257820  	dc.b	"%x=%x =====  ",13
22081  2c6a 0a00          	dc.b	10,0
22082  2c6c               L105:
22083  2c6c 48444d492049  	dc.b	"HDMI I2C ERROR !!!",0
22084  2c7f               L554:
22085  2c7f 3d3d3d3d3d20  	dc.b	"=====  Read Reg0x%"
22086  2c91 78203d20200d  	dc.b	"x =  ",13
22087  2c97 0a00          	dc.b	10,0
22088  2c99               L354:
22089  2c99 48444d492052  	dc.b	"HDMI Read ERROR !!"
22090  2cab 2100          	dc.b	"!",0
22091  2cad               L55:
22092  2cad 415354415445  	dc.b	"ASTATE_Reserved",0
22093  2cbd               L35:
22094  2cbd 415354415445  	dc.b	"ASTATE_AudioOn",0
22095  2ccc               L15:
22096  2ccc 415354415445  	dc.b	"ASTATE_WaitForRead"
22097  2cde 7900          	dc.b	"y",0
22098  2ce0               L74:
22099  2ce0 415354415445  	dc.b	"ASTATE_ResetAudio",0
22100  2cf2               L54:
22101  2cf2 415354415445  	dc.b	"ASTATE_RequestAudi"
22102  2d04 6f00          	dc.b	"o",0
22103  2d06               L34:
22104  2d06 415354415445  	dc.b	"ASTATE_AudioOff",0
22105  2d16               L14:
22106  2d16 565354415445  	dc.b	"VSTATE_Reserved",0
22107  2d26               L73:
22108  2d26 565354415445  	dc.b	"VSTATE_HDMI_OFF",0
22109  2d36               L53:
22110  2d36 565354415445  	dc.b	"VSTATE_ColorDetect"
22111  2d48 526573657400  	dc.b	"Reset",0
22112  2d4e               L33:
22113  2d4e 565354415445  	dc.b	"VSTATE_VideoOn",0
22114  2d5d               L13:
22115  2d5d 565354415445  	dc.b	"VSTATE_ModeDetecti"
22116  2d6f 6e6700        	dc.b	"ng",0
22117  2d72               L72:
22118  2d72 565354415445  	dc.b	"VSTATE_HDCP_Reset",0
22119  2d84               L52:
22120  2d84 565354415445  	dc.b	"VSTATE_HDCPSet",0
22121  2d93               L32:
22122  2d93 565354415445  	dc.b	"VSTATE_SyncCheckin"
22123  2da5 6700          	dc.b	"g",0
22124  2da7               L12:
22125  2da7 565354415445  	dc.b	"VSTATE_SWReset",0
22126  2db6               L71:
22127  2db6 565354415445  	dc.b	"VSTATE_SyncWait",0
22128  2dc6               L51:
22129  2dc6 565354415445  	dc.b	"VSTATE_5VOff",0
22130  2dd3               L31:
22131  2dd3 565354415445  	dc.b	"VSTATE_Termination"
22132  2de5 4f6e00        	dc.b	"On",0
22133  2de8               L11:
22134  2de8 565354415445  	dc.b	"VSTATE_Termination"
22135  2dfa 4f666600      	dc.b	"Off",0
22136  2dfe               L7:
22137  2dfe 565354415445  	dc.b	"VSTATE_Off",0
22138                     	xref.b	c_x
22139                     	xref.b	c_y
22159                     	xref	d_ftoi
22160                     	xref	d_ltor
22161                     	xref	d_smody
22162                     	xref	d_smodx
22163                     	xref	d_idiv
22164                     	xref	d_jctab
22165                     	xref	d_imul
22166                     	end
