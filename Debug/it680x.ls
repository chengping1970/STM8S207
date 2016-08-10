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
 635  0243 19            	dc.b	25
 636  0244 04            	dc.b	4
 637  0245 30            	dc.b	48
 638  0246 31            	dc.b	49
 639  0247 01            	dc.b	1
 640  0248 00            	dc.b	0
 641  0249 00            	dc.b	0
 642  024a 00            	dc.b	0
 643  024b 14            	dc.b	20
 644  024c 14            	dc.b	20
 645  024d 01            	dc.b	1
 646  024e 03            	dc.b	3
 647  024f 80            	dc.b	128
 648  0250 46            	dc.b	70
 649  0251 27            	dc.b	39
 650  0252 78            	dc.b	120
 651  0253 ea            	dc.b	234
 652  0254 67            	dc.b	103
 653  0255 55            	dc.b	85
 654  0256 a5            	dc.b	165
 655  0257 5b            	dc.b	91
 656  0258 47            	dc.b	71
 657  0259 9c            	dc.b	156
 658  025a 25            	dc.b	37
 659  025b 1e            	dc.b	30
 660  025c 4f            	dc.b	79
 661  025d 54            	dc.b	84
 662  025e b1            	dc.b	177
 663  025f 2c            	dc.b	44
 664  0260 00            	dc.b	0
 665  0261 31            	dc.b	49
 666  0262 40            	dc.b	64
 667  0263 45            	dc.b	69
 668  0264 40            	dc.b	64
 669  0265 61            	dc.b	97
 670  0266 40            	dc.b	64
 671  0267 81            	dc.b	129
 672  0268 00            	dc.b	0
 673  0269 81            	dc.b	129
 674  026a 80            	dc.b	128
 675  026b 95            	dc.b	149
 676  026c 00            	dc.b	0
 677  026d b3            	dc.b	179
 678  026e 00            	dc.b	0
 679  026f a9            	dc.b	169
 680  0270 40            	dc.b	64
 681  0271 1a            	dc.b	26
 682  0272 36            	dc.b	54
 683  0273 80            	dc.b	128
 684  0274 a0            	dc.b	160
 685  0275 70            	dc.b	112
 686  0276 38            	dc.b	56
 687  0277 1f            	dc.b	31
 688  0278 40            	dc.b	64
 689  0279 30            	dc.b	48
 690  027a 20            	dc.b	32
 691  027b 35            	dc.b	53
 692  027c 00            	dc.b	0
 693  027d c4            	dc.b	196
 694  027e 8e            	dc.b	142
 695  027f 21            	dc.b	33
 696  0280 00            	dc.b	0
 697  0281 00            	dc.b	0
 698  0282 1e            	dc.b	30
 699  0283 30            	dc.b	48
 700  0284 2a            	dc.b	42
 701  0285 00            	dc.b	0
 702  0286 98            	dc.b	152
 703  0287 51            	dc.b	81
 704  0288 00            	dc.b	0
 705  0289 2a            	dc.b	42
 706  028a 40            	dc.b	64
 707  028b 30            	dc.b	48
 708  028c 70            	dc.b	112
 709  028d 13            	dc.b	19
 710  028e 00            	dc.b	0
 711  028f 13            	dc.b	19
 712  0290 8e            	dc.b	142
 713  0291 21            	dc.b	33
 714  0292 00            	dc.b	0
 715  0293 00            	dc.b	0
 716  0294 1e            	dc.b	30
 717  0295 00            	dc.b	0
 718  0296 00            	dc.b	0
 719  0297 00            	dc.b	0
 720  0298 fc            	dc.b	252
 721  0299 00            	dc.b	0
 722  029a 48            	dc.b	72
 723  029b 44            	dc.b	68
 724  029c 4d            	dc.b	77
 725  029d 49            	dc.b	73
 726  029e 0a            	dc.b	10
 727  029f 20            	dc.b	32
 728  02a0 20            	dc.b	32
 729  02a1 20            	dc.b	32
 730  02a2 20            	dc.b	32
 731  02a3 20            	dc.b	32
 732  02a4 20            	dc.b	32
 733  02a5 20            	dc.b	32
 734  02a6 20            	dc.b	32
 735  02a7 00            	dc.b	0
 736  02a8 00            	dc.b	0
 737  02a9 00            	dc.b	0
 738  02aa 00            	dc.b	0
 739  02ab 00            	dc.b	0
 740  02ac 00            	dc.b	0
 741  02ad 00            	dc.b	0
 742  02ae 00            	dc.b	0
 743  02af 00            	dc.b	0
 744  02b0 00            	dc.b	0
 745  02b1 00            	dc.b	0
 746  02b2 00            	dc.b	0
 747  02b3 00            	dc.b	0
 748  02b4 00            	dc.b	0
 749  02b5 00            	dc.b	0
 750  02b6 00            	dc.b	0
 751  02b7 00            	dc.b	0
 752  02b8 00            	dc.b	0
 753  02b9 01            	dc.b	1
 754  02ba 6a            	dc.b	106
 755  02bb 02            	dc.b	2
 756  02bc 03            	dc.b	3
 757  02bd 20            	dc.b	32
 758  02be 71            	dc.b	113
 759  02bf 4c            	dc.b	76
 760  02c0 01            	dc.b	1
 761  02c1 02            	dc.b	2
 762  02c2 03            	dc.b	3
 763  02c3 04            	dc.b	4
 764  02c4 05            	dc.b	5
 765  02c5 0f            	dc.b	15
 766  02c6 90            	dc.b	144
 767  02c7 11            	dc.b	17
 768  02c8 12            	dc.b	18
 769  02c9 13            	dc.b	19
 770  02ca 14            	dc.b	20
 771  02cb 1f            	dc.b	31
 772  02cc 23            	dc.b	35
 773  02cd 09            	dc.b	9
 774  02ce 17            	dc.b	23
 775  02cf 07            	dc.b	7
 776  02d0 83            	dc.b	131
 777  02d1 01            	dc.b	1
 778  02d2 00            	dc.b	0
 779  02d3 00            	dc.b	0
 780  02d4 66            	dc.b	102
 781  02d5 03            	dc.b	3
 782  02d6 0c            	dc.b	12
 783  02d7 00            	dc.b	0
 784  02d8 10            	dc.b	16
 785  02d9 00            	dc.b	0
 786  02da 80            	dc.b	128
 787  02db 00            	dc.b	0
 788  02dc 00            	dc.b	0
 789  02dd 00            	dc.b	0
 790  02de 00            	dc.b	0
 791  02df 00            	dc.b	0
 792  02e0 00            	dc.b	0
 793  02e1 00            	dc.b	0
 794  02e2 00            	dc.b	0
 795  02e3 00            	dc.b	0
 796  02e4 00            	dc.b	0
 797  02e5 00            	dc.b	0
 798  02e6 00            	dc.b	0
 799  02e7 00            	dc.b	0
 800  02e8 00            	dc.b	0
 801  02e9 00            	dc.b	0
 802  02ea 00            	dc.b	0
 803  02eb 00            	dc.b	0
 804  02ec 00            	dc.b	0
 805  02ed 00            	dc.b	0
 806  02ee 00            	dc.b	0
 807  02ef 00            	dc.b	0
 808  02f0 00            	dc.b	0
 809  02f1 00            	dc.b	0
 810  02f2 00            	dc.b	0
 811  02f3 00            	dc.b	0
 812  02f4 00            	dc.b	0
 813  02f5 00            	dc.b	0
 814  02f6 00            	dc.b	0
 815  02f7 00            	dc.b	0
 816  02f8 00            	dc.b	0
 817  02f9 00            	dc.b	0
 818  02fa 00            	dc.b	0
 819  02fb 00            	dc.b	0
 820  02fc 00            	dc.b	0
 821  02fd 00            	dc.b	0
 822  02fe 00            	dc.b	0
 823  02ff 00            	dc.b	0
 824  0300 00            	dc.b	0
 825  0301 00            	dc.b	0
 826  0302 00            	dc.b	0
 827  0303 00            	dc.b	0
 828  0304 00            	dc.b	0
 829  0305 00            	dc.b	0
 830  0306 00            	dc.b	0
 831  0307 00            	dc.b	0
 832  0308 00            	dc.b	0
 833  0309 00            	dc.b	0
 834  030a 00            	dc.b	0
 835  030b 00            	dc.b	0
 836  030c 00            	dc.b	0
 837  030d 00            	dc.b	0
 838  030e 00            	dc.b	0
 839  030f 00            	dc.b	0
 840  0310 00            	dc.b	0
 841  0311 00            	dc.b	0
 842  0312 00            	dc.b	0
 843  0313 00            	dc.b	0
 844  0314 00            	dc.b	0
 845  0315 00            	dc.b	0
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
 882  033a 34            	dc.b	52
 883                     	switch	.data
 884  0010               _VStateStr:
 885  0010 2e25          	dc.w	L7
 886  0012 2e0f          	dc.w	L11
 887  0014 2dfa          	dc.w	L31
 888  0016 2ded          	dc.w	L51
 889  0018 2ddd          	dc.w	L71
 890  001a 2dce          	dc.w	L12
 891  001c 2dba          	dc.w	L32
 892  001e 2dab          	dc.w	L52
 893  0020 2d99          	dc.w	L72
 894  0022 2d84          	dc.w	L13
 895  0024 2d75          	dc.w	L33
 896  0026 2d5d          	dc.w	L53
 897  0028 2d4d          	dc.w	L73
 898  002a 2d3d          	dc.w	L14
 899  002c               _AStateStr:
 900  002c 2d2d          	dc.w	L34
 901  002e 2d19          	dc.w	L54
 902  0030 2d07          	dc.w	L74
 903  0032 2cf3          	dc.w	L15
 904  0034 2ce4          	dc.w	L35
 905  0036 2cd4          	dc.w	L55
 996                     ; 763 static SYS_STATUS EDID_RAM_Write(unsigned char offset,unsigned char byteno,unsigned char *p_data )
 996                     ; 764 {
 997                     	switch	.text
 998  0000               L75f_EDID_RAM_Write:
1000  0000 89            	pushw	x
1001  0001 88            	push	a
1002       00000001      OFST:	set	1
1005                     ; 766 	flag = i2c_write_byte(EDID_ADDR, offset, byteno, p_data, HDMI_DEV);
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
1019                     ; 767 	return !flag;
1021  0016 0d01          	tnz	(OFST+0,sp)
1022  0018 2604          	jrne	L6
1023  001a a601          	ld	a,#1
1024  001c 2001          	jra	L01
1025  001e               L6:
1026  001e 4f            	clr	a
1027  001f               L01:
1030  001f 5b03          	addw	sp,#3
1031  0021 87            	retf
1070                     ; 770 static unsigned char EDID_RAM_Read(unsigned char offset)
1070                     ; 771 {
1071                     	switch	.text
1072  0022               L16f_EDID_RAM_Read:
1074  0022 88            	push	a
1075       00000001      OFST:	set	1
1078                     ; 773 	i2c_read_byte(EDID_ADDR, offset,1, &p_data, HDMI_DEV);
1080  0023 96            	ldw	x,sp
1081  0024 1c0001        	addw	x,#OFST+0
1082  0027 89            	pushw	x
1083  0028 4b01          	push	#1
1084  002a 97            	ld	xl,a
1085  002b a6a0          	ld	a,#160
1086  002d 95            	ld	xh,a
1087  002e 8d000000      	callf	f_SWI2C_ReadBytes
1089  0032 5b03          	addw	sp,#3
1090                     ; 774 	return p_data;
1092  0034 7b01          	ld	a,(OFST+0,sp)
1095  0036 5b01          	addw	sp,#1
1096  0038 87            	retf
1143                     ; 778 static unsigned char hdmirxrd( unsigned char RegAddr)
1143                     ; 779 {
1144                     	switch	.text
1145  0039               L36f_hdmirxrd:
1147  0039 88            	push	a
1148  003a 89            	pushw	x
1149       00000002      OFST:	set	2
1152                     ; 783 	FLAG= i2c_read_byte(HDMI_ADDR, RegAddr, 1, &mDataIn, HDMI_DEV);
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
1165                     ; 784 	if(FLAG==0)
1167  004e 0d01          	tnz	(OFST-1,sp)
1168  0050 2612          	jrne	L154
1169                     ; 786 	MHLRX_DEBUG_PRINTF(printf("HDMI Read ERROR !!!"));
1171  0052 ae2cc0        	ldw	x,#L354
1172  0055 8d000000      	callf	f_printf
1174                     ; 787 	MHLRX_DEBUG_PRINTF(printf("=====  Read Reg0x%x =  \r\n",RegAddr));
1176  0059 7b03          	ld	a,(OFST+1,sp)
1177  005b 88            	push	a
1178  005c ae2ca6        	ldw	x,#L554
1179  005f 8d000000      	callf	f_printf
1181  0063 84            	pop	a
1182  0064               L154:
1183                     ; 789 	return mDataIn;
1185  0064 7b02          	ld	a,(OFST+0,sp)
1188  0066 5b03          	addw	sp,#3
1189  0068 87            	retf
1236                     ; 792 static unsigned char hdmirxwr( unsigned char RegAddr,unsigned char DataIn)
1236                     ; 793 {
1237                     	switch	.text
1238  0069               L56f_hdmirxwr:
1240  0069 89            	pushw	x
1241  006a 88            	push	a
1242       00000001      OFST:	set	1
1245                     ; 798 	flag= i2c_write_byte(HDMI_ADDR, RegAddr, 1, &DataIn, HDMI_DEV);
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
1259                     ; 799 	if(flag==0)
1261  0080 0d01          	tnz	(OFST+0,sp)
1262  0082 2623          	jrne	L774
1263                     ; 801 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1265  0084 ae2c7f        	ldw	x,#L105
1266  0087 8d000000      	callf	f_printf
1268                     ; 802 	MHLRX_DEBUG_PRINTF(printf("HDMI I2C ERROR !!!"));
1270  008b ae2c6c        	ldw	x,#L305
1271  008e 8d000000      	callf	f_printf
1273                     ; 803 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",RegAddr,DataIn));
1275  0092 7b03          	ld	a,(OFST+2,sp)
1276  0094 88            	push	a
1277  0095 7b03          	ld	a,(OFST+2,sp)
1278  0097 88            	push	a
1279  0098 ae2c4a        	ldw	x,#L505
1280  009b 8d000000      	callf	f_printf
1282  009f 85            	popw	x
1283                     ; 804 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1285  00a0 ae2c7f        	ldw	x,#L105
1286  00a3 8d000000      	callf	f_printf
1288  00a7               L774:
1289                     ; 806 	return !flag;
1291  00a7 0d01          	tnz	(OFST+0,sp)
1292  00a9 2604          	jrne	L02
1293  00ab a601          	ld	a,#1
1294  00ad 2001          	jra	L22
1295  00af               L02:
1296  00af 4f            	clr	a
1297  00b0               L22:
1300  00b0 5b03          	addw	sp,#3
1301  00b2 87            	retf
1355                     ; 809 static unsigned char  hdmirxset( unsigned char  offset, unsigned char  mask, unsigned char  ucdata )
1355                     ; 810 {
1356                     	switch	.text
1357  00b3               L76f_hdmirxset:
1359  00b3 89            	pushw	x
1360  00b4 89            	pushw	x
1361       00000002      OFST:	set	2
1364                     ; 812 	temp = hdmirxrd(offset);
1366  00b5 9e            	ld	a,xh
1367  00b6 8d390039      	callf	L36f_hdmirxrd
1369  00ba 6b02          	ld	(OFST+0,sp),a
1370                     ; 813 	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
1372  00bc 7b04          	ld	a,(OFST+2,sp)
1373  00be 1408          	and	a,(OFST+6,sp)
1374  00c0 6b01          	ld	(OFST-1,sp),a
1375  00c2 7b04          	ld	a,(OFST+2,sp)
1376  00c4 43            	cpl	a
1377  00c5 a4ff          	and	a,#255
1378  00c7 1402          	and	a,(OFST+0,sp)
1379  00c9 1b01          	add	a,(OFST-1,sp)
1380  00cb 6b02          	ld	(OFST+0,sp),a
1381                     ; 814 	return hdmirxwr(offset, temp);
1383  00cd 7b02          	ld	a,(OFST+0,sp)
1384  00cf 97            	ld	xl,a
1385  00d0 7b03          	ld	a,(OFST+1,sp)
1386  00d2 95            	ld	xh,a
1387  00d3 8d690069      	callf	L56f_hdmirxwr
1391  00d7 5b04          	addw	sp,#4
1392  00d9 87            	retf
1449                     ; 817 static void hdmirxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1449                     ; 818 {
1450                     	switch	.text
1451  00da               L17f_hdmirxbwr:
1453  00da 89            	pushw	x
1454  00db 88            	push	a
1455       00000001      OFST:	set	1
1458                     ; 820 	if( byteno>0 )
1460  00dc 9f            	ld	a,xl
1461  00dd 4d            	tnz	a
1462  00de 2714          	jreq	L555
1463                     ; 821 	flag= i2c_write_byte(HDMI_ADDR, offset, byteno, rddata, HDMI_DEV);
1465  00e0 1e07          	ldw	x,(OFST+6,sp)
1466  00e2 89            	pushw	x
1467  00e3 7b05          	ld	a,(OFST+4,sp)
1468  00e5 88            	push	a
1469  00e6 7b05          	ld	a,(OFST+4,sp)
1470  00e8 97            	ld	xl,a
1471  00e9 a690          	ld	a,#144
1472  00eb 95            	ld	xh,a
1473  00ec 8d000000      	callf	f_SWI2C_WriteBytes
1475  00f0 5b03          	addw	sp,#3
1476  00f2 6b01          	ld	(OFST+0,sp),a
1477  00f4               L555:
1478                     ; 822 	if(flag==0)
1480  00f4 0d01          	tnz	(OFST+0,sp)
1481  00f6 2624          	jrne	L755
1482                     ; 824 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1484  00f8 ae2c7f        	ldw	x,#L105
1485  00fb 8d000000      	callf	f_printf
1487                     ; 825 	MHLRX_DEBUG_PRINTF(printf("IT6802 I2C ERROR !!!"));
1489  00ff ae2c35        	ldw	x,#L165
1490  0102 8d000000      	callf	f_printf
1492                     ; 826 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,rddata));
1494  0106 1e07          	ldw	x,(OFST+6,sp)
1495  0108 89            	pushw	x
1496  0109 7b04          	ld	a,(OFST+3,sp)
1497  010b 88            	push	a
1498  010c ae2c4a        	ldw	x,#L505
1499  010f 8d000000      	callf	f_printf
1501  0113 5b03          	addw	sp,#3
1502                     ; 827 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1504  0115 ae2c7f        	ldw	x,#L105
1505  0118 8d000000      	callf	f_printf
1507  011c               L755:
1508                     ; 829 }
1511  011c 5b03          	addw	sp,#3
1512  011e 87            	retf
1559                     ; 832 static unsigned char mhlrxrd( unsigned char offset )
1559                     ; 833 {
1560                     	switch	.text
1561  011f               L37f_mhlrxrd:
1563  011f 88            	push	a
1564  0120 89            	pushw	x
1565       00000002      OFST:	set	2
1568                     ; 836 	FLAG=i2c_read_byte(MHL_ADDR, offset, 1, &mDataIn, HDMI_DEV);
1570  0121 96            	ldw	x,sp
1571  0122 1c0002        	addw	x,#OFST+0
1572  0125 89            	pushw	x
1573  0126 4b01          	push	#1
1574  0128 97            	ld	xl,a
1575  0129 a6e0          	ld	a,#224
1576  012b 95            	ld	xh,a
1577  012c 8d000000      	callf	f_SWI2C_ReadBytes
1579  0130 5b03          	addw	sp,#3
1580  0132 6b01          	ld	(OFST-1,sp),a
1581                     ; 837 	if(FLAG==0)
1583  0134 0d01          	tnz	(OFST-1,sp)
1584  0136 2623          	jrne	L306
1585                     ; 839 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1587  0138 ae2c7f        	ldw	x,#L105
1588  013b 8d000000      	callf	f_printf
1590                     ; 840 	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
1592  013f ae2c23        	ldw	x,#L506
1593  0142 8d000000      	callf	f_printf
1595                     ; 841 	MHLRX_DEBUG_PRINTF(printf("=====  read Reg0x%x=%x =====  \r\n",offset,mDataIn));
1597  0146 7b02          	ld	a,(OFST+0,sp)
1598  0148 88            	push	a
1599  0149 7b04          	ld	a,(OFST+2,sp)
1600  014b 88            	push	a
1601  014c ae2c02        	ldw	x,#L706
1602  014f 8d000000      	callf	f_printf
1604  0153 85            	popw	x
1605                     ; 842 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1607  0154 ae2c7f        	ldw	x,#L105
1608  0157 8d000000      	callf	f_printf
1610  015b               L306:
1611                     ; 844 	return mDataIn;
1613  015b 7b02          	ld	a,(OFST+0,sp)
1616  015d 5b03          	addw	sp,#3
1617  015f 87            	retf
1664                     ; 847 static unsigned char mhlrxwr( unsigned char offset, unsigned char ucdata )
1664                     ; 848 {
1665                     	switch	.text
1666  0160               L57f_mhlrxwr:
1668  0160 89            	pushw	x
1669  0161 88            	push	a
1670       00000001      OFST:	set	1
1673                     ; 850 	flag= i2c_write_byte(MHL_ADDR, offset, 1, &ucdata, HDMI_DEV);
1675  0162 96            	ldw	x,sp
1676  0163 1c0003        	addw	x,#OFST+2
1677  0166 89            	pushw	x
1678  0167 4b01          	push	#1
1679  0169 7b05          	ld	a,(OFST+4,sp)
1680  016b 97            	ld	xl,a
1681  016c a6e0          	ld	a,#224
1682  016e 95            	ld	xh,a
1683  016f 8d000000      	callf	f_SWI2C_WriteBytes
1685  0173 5b03          	addw	sp,#3
1686  0175 6b01          	ld	(OFST+0,sp),a
1687                     ; 851 	if(flag==0)
1689  0177 0d01          	tnz	(OFST+0,sp)
1690  0179 2623          	jrne	L136
1691                     ; 853 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1693  017b ae2c7f        	ldw	x,#L105
1694  017e 8d000000      	callf	f_printf
1696                     ; 854 	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
1698  0182 ae2c23        	ldw	x,#L506
1699  0185 8d000000      	callf	f_printf
1701                     ; 855 	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,ucdata));
1703  0189 7b03          	ld	a,(OFST+2,sp)
1704  018b 88            	push	a
1705  018c 7b03          	ld	a,(OFST+2,sp)
1706  018e 88            	push	a
1707  018f ae2c4a        	ldw	x,#L505
1708  0192 8d000000      	callf	f_printf
1710  0196 85            	popw	x
1711                     ; 856 	MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
1713  0197 ae2c7f        	ldw	x,#L105
1714  019a 8d000000      	callf	f_printf
1716  019e               L136:
1717                     ; 858 	return !flag;
1719  019e 0d01          	tnz	(OFST+0,sp)
1720  01a0 2604          	jrne	L43
1721  01a2 a601          	ld	a,#1
1722  01a4 2001          	jra	L63
1723  01a6               L43:
1724  01a6 4f            	clr	a
1725  01a7               L63:
1728  01a7 5b03          	addw	sp,#3
1729  01a9 87            	retf
1783                     ; 861 static unsigned char mhlrxset( unsigned char offset, unsigned char mask, unsigned char ucdata )
1783                     ; 862 {
1784                     	switch	.text
1785  01aa               L77f_mhlrxset:
1787  01aa 89            	pushw	x
1788  01ab 89            	pushw	x
1789       00000002      OFST:	set	2
1792                     ; 864 	temp = mhlrxrd(offset);
1794  01ac 9e            	ld	a,xh
1795  01ad 8d1f011f      	callf	L37f_mhlrxrd
1797  01b1 6b02          	ld	(OFST+0,sp),a
1798                     ; 865 	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
1800  01b3 7b04          	ld	a,(OFST+2,sp)
1801  01b5 1408          	and	a,(OFST+6,sp)
1802  01b7 6b01          	ld	(OFST-1,sp),a
1803  01b9 7b04          	ld	a,(OFST+2,sp)
1804  01bb 43            	cpl	a
1805  01bc a4ff          	and	a,#255
1806  01be 1402          	and	a,(OFST+0,sp)
1807  01c0 1b01          	add	a,(OFST-1,sp)
1808  01c2 6b02          	ld	(OFST+0,sp),a
1809                     ; 866 	return mhlrxwr(offset, temp);
1811  01c4 7b02          	ld	a,(OFST+0,sp)
1812  01c6 97            	ld	xl,a
1813  01c7 7b03          	ld	a,(OFST+1,sp)
1814  01c9 95            	ld	xh,a
1815  01ca 8d600160      	callf	L57f_mhlrxwr
1819  01ce 5b04          	addw	sp,#4
1820  01d0 87            	retf
1869                     ; 869 static void mhlrxbrd( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1869                     ; 870 {
1870                     	switch	.text
1871  01d1               L101f_mhlrxbrd:
1873  01d1 89            	pushw	x
1874       00000000      OFST:	set	0
1877                     ; 871 	if( byteno>0 )
1879  01d2 9f            	ld	a,xl
1880  01d3 4d            	tnz	a
1881  01d4 2712          	jreq	L776
1882                     ; 872 	i2c_read_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
1884  01d6 1e06          	ldw	x,(OFST+6,sp)
1885  01d8 89            	pushw	x
1886  01d9 7b04          	ld	a,(OFST+4,sp)
1887  01db 88            	push	a
1888  01dc 7b04          	ld	a,(OFST+4,sp)
1889  01de 97            	ld	xl,a
1890  01df a6e0          	ld	a,#224
1891  01e1 95            	ld	xh,a
1892  01e2 8d000000      	callf	f_SWI2C_ReadBytes
1894  01e6 5b03          	addw	sp,#3
1895  01e8               L776:
1896                     ; 873 }
1899  01e8 85            	popw	x
1900  01e9 87            	retf
1949                     ; 875 static void mhlrxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
1949                     ; 876 {
1950                     	switch	.text
1951  01ea               L301f_mhlrxbwr:
1953  01ea 89            	pushw	x
1954       00000000      OFST:	set	0
1957                     ; 877 	if( byteno>0 )
1959  01eb 9f            	ld	a,xl
1960  01ec 4d            	tnz	a
1961  01ed 2712          	jreq	L327
1962                     ; 878 	i2c_write_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
1964  01ef 1e06          	ldw	x,(OFST+6,sp)
1965  01f1 89            	pushw	x
1966  01f2 7b04          	ld	a,(OFST+4,sp)
1967  01f4 88            	push	a
1968  01f5 7b04          	ld	a,(OFST+4,sp)
1969  01f7 97            	ld	xl,a
1970  01f8 a6e0          	ld	a,#224
1971  01fa 95            	ld	xh,a
1972  01fb 8d000000      	callf	f_SWI2C_WriteBytes
1974  01ff 5b03          	addw	sp,#3
1975  0201               L327:
1976                     ; 879 }
1979  0201 85            	popw	x
1980  0202 87            	retf
2997                     ; 885 static struct it6802_dev_data* get_it6802_dev_data(void)
2997                     ; 886 {
2998                     	switch	.text
2999  0203               L501f_get_it6802_dev_data:
3003                     ; 887 	return &it6802DEV;
3005  0203 ae0031        	ldw	x,#_it6802DEV
3008  0206 87            	retf
3080                     ; 891 static void hdimrx_write_init(struct IT6802_REG_INI _CODE *tdata)
3080                     ; 892 {
3081                     	switch	.text
3082  0207               L701f_hdimrx_write_init:
3084  0207 89            	pushw	x
3085  0208 89            	pushw	x
3086       00000002      OFST:	set	2
3089                     ; 893 	int cnt = 0;
3091  0209 5f            	clrw	x
3092  020a 1f01          	ldw	(OFST-1,sp),x
3094  020c 203d          	jra	L3151
3095  020e               L7051:
3096                     ; 897 		hdmirxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
3098  020e 1e01          	ldw	x,(OFST-1,sp)
3099  0210 90ae0003      	ldw	y,#3
3100  0214 8d000000      	callf	d_imul
3102  0218 72fb03        	addw	x,(OFST+1,sp)
3103  021b e602          	ld	a,(2,x)
3104  021d 88            	push	a
3105  021e 1e02          	ldw	x,(OFST+0,sp)
3106  0220 90ae0003      	ldw	y,#3
3107  0224 8d000000      	callf	d_imul
3109  0228 72fb04        	addw	x,(OFST+2,sp)
3110  022b e601          	ld	a,(1,x)
3111  022d 97            	ld	xl,a
3112  022e 89            	pushw	x
3113  022f 1e04          	ldw	x,(OFST+2,sp)
3114  0231 90ae0003      	ldw	y,#3
3115  0235 8d000000      	callf	d_imul
3117  0239 72fb06        	addw	x,(OFST+4,sp)
3118  023c f6            	ld	a,(x)
3119  023d 85            	popw	x
3120  023e 95            	ld	xh,a
3121  023f 8db300b3      	callf	L76f_hdmirxset
3123  0243 84            	pop	a
3124                     ; 898 		cnt++;
3126  0244 1e01          	ldw	x,(OFST-1,sp)
3127  0246 1c0001        	addw	x,#1
3128  0249 1f01          	ldw	(OFST-1,sp),x
3129  024b               L3151:
3130                     ; 894 	while(tdata[cnt].ucAddr != 0xFF)
3132  024b 1e01          	ldw	x,(OFST-1,sp)
3133  024d 90ae0003      	ldw	y,#3
3134  0251 8d000000      	callf	d_imul
3136  0255 72fb03        	addw	x,(OFST+1,sp)
3137  0258 f6            	ld	a,(x)
3138  0259 a1ff          	cp	a,#255
3139  025b 26b1          	jrne	L7051
3140                     ; 901 }
3143  025d 5b04          	addw	sp,#4
3144  025f 87            	retf
3188                     ; 903 static void mhlrx_write_init(struct IT6802_REG_INI _CODE *tdata)
3188                     ; 904 {
3189                     	switch	.text
3190  0260               L111f_mhlrx_write_init:
3192  0260 89            	pushw	x
3193  0261 89            	pushw	x
3194       00000002      OFST:	set	2
3197                     ; 905 	int cnt = 0;
3199  0262 5f            	clrw	x
3200  0263 1f01          	ldw	(OFST-1,sp),x
3202  0265 203d          	jra	L5451
3203  0267               L1451:
3204                     ; 909 		mhlrxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
3206  0267 1e01          	ldw	x,(OFST-1,sp)
3207  0269 90ae0003      	ldw	y,#3
3208  026d 8d000000      	callf	d_imul
3210  0271 72fb03        	addw	x,(OFST+1,sp)
3211  0274 e602          	ld	a,(2,x)
3212  0276 88            	push	a
3213  0277 1e02          	ldw	x,(OFST+0,sp)
3214  0279 90ae0003      	ldw	y,#3
3215  027d 8d000000      	callf	d_imul
3217  0281 72fb04        	addw	x,(OFST+2,sp)
3218  0284 e601          	ld	a,(1,x)
3219  0286 97            	ld	xl,a
3220  0287 89            	pushw	x
3221  0288 1e04          	ldw	x,(OFST+2,sp)
3222  028a 90ae0003      	ldw	y,#3
3223  028e 8d000000      	callf	d_imul
3225  0292 72fb06        	addw	x,(OFST+4,sp)
3226  0295 f6            	ld	a,(x)
3227  0296 85            	popw	x
3228  0297 95            	ld	xh,a
3229  0298 8daa01aa      	callf	L77f_mhlrxset
3231  029c 84            	pop	a
3232                     ; 910 		cnt++;
3234  029d 1e01          	ldw	x,(OFST-1,sp)
3235  029f 1c0001        	addw	x,#1
3236  02a2 1f01          	ldw	(OFST-1,sp),x
3237  02a4               L5451:
3238                     ; 906 	while(tdata[cnt].ucAddr != 0xFF)
3240  02a4 1e01          	ldw	x,(OFST-1,sp)
3241  02a6 90ae0003      	ldw	y,#3
3242  02aa 8d000000      	callf	d_imul
3244  02ae 72fb03        	addw	x,(OFST+1,sp)
3245  02b1 f6            	ld	a,(x)
3246  02b2 a1ff          	cp	a,#255
3247  02b4 26b1          	jrne	L1451
3248                     ; 912 }
3251  02b6 5b04          	addw	sp,#4
3252  02b8 87            	retf
3288                     ; 920 static void hdmirx_Var_init(struct it6802_dev_data *it6802)
3288                     ; 921 {
3289                     	switch	.text
3290  02b9               L311f_hdmirx_Var_init:
3294                     ; 925     it6802->m_ucSCDTOffCount=0;
3296  02b9 6f14          	clr	(20,x)
3297                     ; 926     it6802->m_ucEccCount_P0=0;
3299  02bb 6f15          	clr	(21,x)
3300                     ; 927     it6802->m_ucEccCount_P1=0;
3302  02bd 6f16          	clr	(22,x)
3303                     ; 928     it6802->m_ucDeskew_P0=0;
3305  02bf 6f17          	clr	(23,x)
3306                     ; 929     it6802->m_ucDeskew_P1=0;
3308  02c1 6f18          	clr	(24,x)
3309                     ; 931     it6802->m_VState=VSTATE_Off;
3311  02c3 7f            	clr	(x)
3312                     ; 932     it6802->m_AState=ASTATE_AudioOff;
3314  02c4 6f01          	clr	(1,x)
3315                     ; 933     it6802->m_RxHDCPState=RxHDCP_PwrOff;
3317  02c6 6f02          	clr	(2,x)
3318                     ; 935     it6802->m_SWResetTimeOut=0;
3320  02c8 905f          	clrw	y
3321  02ca ef0b          	ldw	(11,x),y
3322                     ; 936     it6802->m_VideoCountingTimer=0;
3324  02cc 905f          	clrw	y
3325  02ce ef0d          	ldw	(13,x),y
3326                     ; 937     it6802->m_AudioCountingTimer=0;
3328  02d0 905f          	clrw	y
3329  02d2 ef0f          	ldw	(15,x),y
3330                     ; 939     it6802->m_bVideoOnCountFlag=FALSE;
3332  02d4 e675          	ld	a,(117,x)
3333  02d6 a4fd          	and	a,#253
3334  02d8 e775          	ld	(117,x),a
3335                     ; 941     it6802->m_MuteAutoOff=FALSE;
3337  02da e675          	ld	a,(117,x)
3338  02dc a4fb          	and	a,#251
3339  02de e775          	ld	(117,x),a
3340                     ; 942     it6802->m_bUpHDMIMode=FALSE;
3342  02e0 e675          	ld	a,(117,x)
3343  02e2 a4f7          	and	a,#247
3344  02e4 e775          	ld	(117,x),a
3345                     ; 943     it6802->m_bUpHDCPMode=FALSE;
3347  02e6 e675          	ld	a,(117,x)
3348  02e8 a4ef          	and	a,#239
3349  02ea e775          	ld	(117,x),a
3350                     ; 944     it6802->m_NewAVIInfoFrameF=FALSE;
3352  02ec e675          	ld	a,(117,x)
3353  02ee a4df          	and	a,#223
3354  02f0 e775          	ld	(117,x),a
3355                     ; 945     it6802->m_NewAUDInfoFrameF=FALSE;
3357  02f2 e675          	ld	a,(117,x)
3358  02f4 a4bf          	and	a,#191
3359  02f6 e775          	ld	(117,x),a
3360                     ; 946     it6802->m_HDCPRepeater=FALSE;
3362  02f8 e675          	ld	a,(117,x)
3363  02fa a47f          	and	a,#127
3364  02fc e775          	ld	(117,x),a
3365                     ; 948     it6802->m_bOutputVideoMode=HDMIRX_OUTPUT_VID_MODE ;
3367  02fe a640          	ld	a,#64
3368  0300 e712          	ld	(18,x),a
3369                     ; 949     it6802->m_bRxAVmute=FALSE;
3371  0302 e675          	ld	a,(117,x)
3372  0304 a4fe          	and	a,#254
3373  0306 e775          	ld	(117,x),a
3374                     ; 960 }
3377  0308 87            	retf
3419                     ; 970 static void IT6802_Rst( struct it6802_dev_data *it6802 )
3419                     ; 971 {
3420                     	switch	.text
3421  0309               L511f_IT6802_Rst:
3423  0309 89            	pushw	x
3424       00000000      OFST:	set	0
3427                     ; 972 	hdmirx_Var_init(it6802);
3429  030a 8db902b9      	callf	L311f_hdmirx_Var_init
3431                     ; 973 	RCPinitQ(it6802);
3433  030e 1e01          	ldw	x,(OFST+1,sp)
3434  0310 8d7d287d      	callf	L323f_RCPinitQ
3436                     ; 974 	hdimrx_write_init(IT6802_HDMI_INIT_TABLE);
3438  0314 ae0000        	ldw	x,#L3_IT6802_HDMI_INIT_TABLE
3439  0317 8d070207      	callf	L701f_hdimrx_write_init
3441                     ; 975 	mhlrx_write_init(IT6802_MHL_INIT_TABLE);
3443  031b ae00a5        	ldw	x,#L5_IT6802_MHL_INIT_TABLE
3444  031e 8d600260      	callf	L111f_mhlrx_write_init
3446                     ; 976 }
3449  0322 85            	popw	x
3450  0323 87            	retf
3498                     ; 979 void IT6802_fsm_init(void)
3498                     ; 980 {
3499                     	switch	.text
3500  0324               f_IT6802_fsm_init:
3502  0324 89            	pushw	x
3503       00000002      OFST:	set	2
3506                     ; 981 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
3508  0325 8d030203      	callf	L501f_get_it6802_dev_data
3510  0329 1f01          	ldw	(OFST-1,sp),x
3511                     ; 983 	MHLRX_DEBUG_PRINTF(printf("IT6802_fsm_init( ) \r\n"));
3513  032b ae2bec        	ldw	x,#L1361
3514  032e 8d000000      	callf	f_printf
3516                     ; 984 	IT6802_Rst(it6802data);
3518  0332 1e01          	ldw	x,(OFST-1,sp)
3519  0334 8d090309      	callf	L511f_IT6802_Rst
3521                     ; 987 	if( DeviceID==IT6802_CHIP) {
3523  0338 725d0005      	tnz	_DeviceID
3524  033c 2628          	jrne	L3361
3525                     ; 988 		hdmirxset(0x77, 0x80, 0x00);
3527  033e 4b00          	push	#0
3528  0340 ae0080        	ldw	x,#128
3529  0343 a677          	ld	a,#119
3530  0345 95            	ld	xh,a
3531  0346 8db300b3      	callf	L76f_hdmirxset
3533  034a 84            	pop	a
3534                     ; 989 		chgbank(1);
3536  034b ae0001        	ldw	x,#1
3537  034e 8d440544      	callf	L711f_chgbank
3539                     ; 990 	    hdmirxset(0xC0, 0x80, 0x00);
3541  0352 4b00          	push	#0
3542  0354 ae0080        	ldw	x,#128
3543  0357 a6c0          	ld	a,#192
3544  0359 95            	ld	xh,a
3545  035a 8db300b3      	callf	L76f_hdmirxset
3547  035e 84            	pop	a
3548                     ; 991 		chgbank(0);
3550  035f 5f            	clrw	x
3551  0360 8d440544      	callf	L711f_chgbank
3554  0364 2026          	jra	L5361
3555  0366               L3361:
3556                     ; 995 		hdmirxset(0x77, 0x80, 0x80);
3558  0366 4b80          	push	#128
3559  0368 ae0080        	ldw	x,#128
3560  036b a677          	ld	a,#119
3561  036d 95            	ld	xh,a
3562  036e 8db300b3      	callf	L76f_hdmirxset
3564  0372 84            	pop	a
3565                     ; 996 		chgbank(1);
3567  0373 ae0001        	ldw	x,#1
3568  0376 8d440544      	callf	L711f_chgbank
3570                     ; 997 		hdmirxset(0xC0, 0x80, 0x80);
3572  037a 4b80          	push	#128
3573  037c ae0080        	ldw	x,#128
3574  037f a6c0          	ld	a,#192
3575  0381 95            	ld	xh,a
3576  0382 8db300b3      	callf	L76f_hdmirxset
3578  0386 84            	pop	a
3579                     ; 998 		chgbank(0);
3581  0387 5f            	clrw	x
3582  0388 8d440544      	callf	L711f_chgbank
3584  038c               L5361:
3585                     ; 1002 	hdmirxwr(0x27, 0x1F);
3587  038c ae001f        	ldw	x,#31
3588  038f a627          	ld	a,#39
3589  0391 95            	ld	xh,a
3590  0392 8d690069      	callf	L56f_hdmirxwr
3592                     ; 1003 	hdmirxwr(0x28, 0x1F);
3594  0396 ae001f        	ldw	x,#31
3595  0399 a628          	ld	a,#40
3596  039b 95            	ld	xh,a
3597  039c 8d690069      	callf	L56f_hdmirxwr
3599                     ; 1004 	hdmirxwr(0x29, 0x1F);
3601  03a0 ae001f        	ldw	x,#31
3602  03a3 a629          	ld	a,#41
3603  03a5 95            	ld	xh,a
3604  03a6 8d690069      	callf	L56f_hdmirxwr
3606                     ; 1005 	hdmirxwr(0x3F, 0x1F);
3608  03aa ae001f        	ldw	x,#31
3609  03ad a63f          	ld	a,#63
3610  03af 95            	ld	xh,a
3611  03b0 8d690069      	callf	L56f_hdmirxwr
3613                     ; 1006 	hdmirxwr(0x40, 0x1F);
3615  03b4 ae001f        	ldw	x,#31
3616  03b7 a640          	ld	a,#64
3617  03b9 95            	ld	xh,a
3618  03ba 8d690069      	callf	L56f_hdmirxwr
3620                     ; 1007 	hdmirxwr(0x41, 0x1F);
3622  03be ae001f        	ldw	x,#31
3623  03c1 a641          	ld	a,#65
3624  03c3 95            	ld	xh,a
3625  03c4 8d690069      	callf	L56f_hdmirxwr
3627                     ; 1012 		chgbank(1);
3629  03c8 ae0001        	ldw	x,#1
3630  03cb 8d440544      	callf	L711f_chgbank
3632                     ; 1013 		hdmirxwr(0xBC, 0x06);
3634  03cf ae0006        	ldw	x,#6
3635  03d2 a6bc          	ld	a,#188
3636  03d4 95            	ld	xh,a
3637  03d5 8d690069      	callf	L56f_hdmirxwr
3639                     ; 1014 		chgbank(0);
3641  03d9 5f            	clrw	x
3642  03da 8d440544      	callf	L711f_chgbank
3644                     ; 1015 		hdmirxset(0x20, 0x40, 0x40);
3646  03de 4b40          	push	#64
3647  03e0 ae0040        	ldw	x,#64
3648  03e3 a620          	ld	a,#32
3649  03e5 95            	ld	xh,a
3650  03e6 8db300b3      	callf	L76f_hdmirxset
3652  03ea 84            	pop	a
3653                     ; 1016 		hdmirxwr(0x22, 0x38);
3655  03eb ae0038        	ldw	x,#56
3656  03ee a622          	ld	a,#34
3657  03f0 95            	ld	xh,a
3658  03f1 8d690069      	callf	L56f_hdmirxwr
3660                     ; 1017 		hdmirxwr(0x26, 0x80);
3662  03f5 ae0080        	ldw	x,#128
3663  03f8 a626          	ld	a,#38
3664  03fa 95            	ld	xh,a
3665  03fb 8d690069      	callf	L56f_hdmirxwr
3667                     ; 1022 		chgbank(1);
3669  03ff ae0001        	ldw	x,#1
3670  0402 8d440544      	callf	L711f_chgbank
3672                     ; 1023 		hdmirxwr(0xBC, 0x06);
3674  0406 ae0006        	ldw	x,#6
3675  0409 a6bc          	ld	a,#188
3676  040b 95            	ld	xh,a
3677  040c 8d690069      	callf	L56f_hdmirxwr
3679                     ; 1024 		chgbank(0);
3681  0410 5f            	clrw	x
3682  0411 8d440544      	callf	L711f_chgbank
3684                     ; 1025 		hdmirxset(0x38, 0x40, 0x40);
3686  0415 4b40          	push	#64
3687  0417 ae0040        	ldw	x,#64
3688  041a a638          	ld	a,#56
3689  041c 95            	ld	xh,a
3690  041d 8db300b3      	callf	L76f_hdmirxset
3692  0421 84            	pop	a
3693                     ; 1026 		hdmirxwr(0x3A, 0x38);
3695  0422 ae0038        	ldw	x,#56
3696  0425 a63a          	ld	a,#58
3697  0427 95            	ld	xh,a
3698  0428 8d690069      	callf	L56f_hdmirxwr
3700                     ; 1027 		hdmirxwr(0x3E, 0x80);
3702  042c ae0080        	ldw	x,#128
3703  042f a63e          	ld	a,#62
3704  0431 95            	ld	xh,a
3705  0432 8d690069      	callf	L56f_hdmirxwr
3707                     ; 1031 	hdmirxset(0x16, 0x08, 0x08); //enable P0 CLKD5 auto reset
3709  0436 4b08          	push	#8
3710  0438 ae0008        	ldw	x,#8
3711  043b a616          	ld	a,#22
3712  043d 95            	ld	xh,a
3713  043e 8db300b3      	callf	L76f_hdmirxset
3715  0442 84            	pop	a
3716                     ; 1033 	hdmirxset(0x1D, 0x08, 0x08); //enable P1 CLKD5 auto reset
3718  0443 4b08          	push	#8
3719  0445 ae0008        	ldw	x,#8
3720  0448 a61d          	ld	a,#29
3721  044a 95            	ld	xh,a
3722  044b 8db300b3      	callf	L76f_hdmirxset
3724  044f 84            	pop	a
3725                     ; 1036 	hdmirxwr(0x2B, 0x07);
3727  0450 ae0007        	ldw	x,#7
3728  0453 a62b          	ld	a,#43
3729  0455 95            	ld	xh,a
3730  0456 8d690069      	callf	L56f_hdmirxwr
3732                     ; 1038 	hdmirxwr(0x34, 0xE1);
3734  045a ae00e1        	ldw	x,#225
3735  045d a634          	ld	a,#52
3736  045f 95            	ld	xh,a
3737  0460 8d690069      	callf	L56f_hdmirxwr
3739                     ; 1039 	hdmirxset(0x35, 0x0C, DeltaNum<<2);
3741  0464 4b04          	push	#4
3742  0466 ae000c        	ldw	x,#12
3743  0469 a635          	ld	a,#53
3744  046b 95            	ld	xh,a
3745  046c 8db300b3      	callf	L76f_hdmirxset
3747  0470 84            	pop	a
3748                     ; 1042 	hdmirxwr(0x54, (1<<4)+RCLKFreqSel);
3750  0471 ae0011        	ldw	x,#17
3751  0474 a654          	ld	a,#84
3752  0476 95            	ld	xh,a
3753  0477 8d690069      	callf	L56f_hdmirxwr
3755                     ; 1043 	hdmirxwr(0x6A, GenPktRecType);
3757  047b ae0081        	ldw	x,#129
3758  047e a66a          	ld	a,#106
3759  0480 95            	ld	xh,a
3760  0481 8d690069      	callf	L56f_hdmirxwr
3762                     ; 1044 	hdmirxset(0x71, 0x08, 0x00); //disalbe ppcolmode
3764  0485 4b00          	push	#0
3765  0487 ae0008        	ldw	x,#8
3766  048a a671          	ld	a,#113
3767  048c 95            	ld	xh,a
3768  048d 8db300b3      	callf	L76f_hdmirxset
3770  0491 84            	pop	a
3771                     ; 1045 	hdmirxwr(0x74, 0xA0);
3773  0492 ae00a0        	ldw	x,#160
3774  0495 a674          	ld	a,#116
3775  0497 95            	ld	xh,a
3776  0498 8d690069      	callf	L56f_hdmirxwr
3778                     ; 1048 	hdmirxwr(0x37, 0x88);
3780  049c ae0088        	ldw	x,#136
3781  049f a637          	ld	a,#55
3782  04a1 95            	ld	xh,a
3783  04a2 8d690069      	callf	L56f_hdmirxwr
3785                     ; 1049 	hdmirxwr(0x4D, 0x88);
3787  04a6 ae0088        	ldw	x,#136
3788  04a9 a64d          	ld	a,#77
3789  04ab 95            	ld	xh,a
3790  04ac 8d690069      	callf	L56f_hdmirxwr
3792                     ; 1051     	chgbank(1);
3794  04b0 ae0001        	ldw	x,#1
3795  04b3 8d440544      	callf	L711f_chgbank
3797                     ; 1052 	hdmirxset(0xB5, 0x03, 0x03);
3799  04b7 4b03          	push	#3
3800  04b9 ae0003        	ldw	x,#3
3801  04bc a6b5          	ld	a,#181
3802  04be 95            	ld	xh,a
3803  04bf 8db300b3      	callf	L76f_hdmirxset
3805  04c3 84            	pop	a
3806                     ; 1053 	chgbank(0);
3808  04c4 5f            	clrw	x
3809  04c5 8d440544      	callf	L711f_chgbank
3811                     ; 1057 		hdmirxset(0x73, 0x08, 0x08);
3813  04c9 4b08          	push	#8
3814  04cb ae0008        	ldw	x,#8
3815  04ce a673          	ld	a,#115
3816  04d0 95            	ld	xh,a
3817  04d1 8db300b3      	callf	L76f_hdmirxset
3819  04d5 84            	pop	a
3820                     ; 1058 		hdmirxwr(0x90, 0x22);
3822  04d6 ae0022        	ldw	x,#34
3823  04d9 a690          	ld	a,#144
3824  04db 95            	ld	xh,a
3825  04dc 8d690069      	callf	L56f_hdmirxwr
3827                     ; 1059 		delay1ms(1);
3829  04e0 ae0001        	ldw	x,#1
3830  04e3 8d000000      	callf	f_IR_DelayNMiliseconds
3832                     ; 1060 		hdmirxwr(0x90, 0x22);
3834  04e7 ae0022        	ldw	x,#34
3835  04ea a690          	ld	a,#144
3836  04ec 95            	ld	xh,a
3837  04ed 8d690069      	callf	L56f_hdmirxwr
3839                     ; 1061 		delay1ms(1);
3841  04f1 ae0001        	ldw	x,#1
3842  04f4 8d000000      	callf	f_IR_DelayNMiliseconds
3844                     ; 1062 		hdmirxwr(0x90, 0x22);
3846  04f8 ae0022        	ldw	x,#34
3847  04fb a690          	ld	a,#144
3848  04fd 95            	ld	xh,a
3849  04fe 8d690069      	callf	L56f_hdmirxwr
3851                     ; 1075 		hdmirxset(REG_RX_0C0, 0x40, 0x00);
3853  0502 4b00          	push	#0
3854  0504 ae0040        	ldw	x,#64
3855  0507 a6c0          	ld	a,#192
3856  0509 95            	ld	xh,a
3857  050a 8db300b3      	callf	L76f_hdmirxset
3859  050e 84            	pop	a
3860                     ; 1078 		hdmirxset(REG_RX_0C0, 0x03, 0x00);
3862  050f 4b00          	push	#0
3863  0511 ae0003        	ldw	x,#3
3864  0514 a6c0          	ld	a,#192
3865  0516 95            	ld	xh,a
3866  0517 8db300b3      	callf	L76f_hdmirxset
3868  051b 84            	pop	a
3869                     ; 1079 		hdmirxset(REG_RX_087, 0x01, 0x01);
3871  051c 4b01          	push	#1
3872  051e ae0001        	ldw	x,#1
3873  0521 a687          	ld	a,#135
3874  0523 95            	ld	xh,a
3875  0524 8db300b3      	callf	L76f_hdmirxset
3877  0528 84            	pop	a
3878                     ; 1087 	mhlrxset(0x28, 0x09, CBUSFloatAdj<<3);
3880  0529 4b00          	push	#0
3881  052b ae0009        	ldw	x,#9
3882  052e a628          	ld	a,#40
3883  0530 95            	ld	xh,a
3884  0531 8daa01aa      	callf	L77f_mhlrxset
3886  0535 84            	pop	a
3887                     ; 1092 	EDIDRAMInitial(&Default_Edid_Block[0]);
3889  0536 ae023b        	ldw	x,#_Default_Edid_Block
3890  0539 8d842484      	callf	L313f_EDIDRAMInitial
3892                     ; 1096 	it6802PortSelect(0);	// select port 0
3894  053d 4f            	clr	a
3895  053e 8dd30cd3      	callf	f_it6802PortSelect
3897                     ; 1097 }
3900  0542 85            	popw	x
3901  0543 87            	retf
3933                     ; 1107 static void chgbank( int bank )
3933                     ; 1108 {
3934                     	switch	.text
3935  0544               L711f_chgbank:
3939                     ; 1109 	switch( bank ) {
3942                     ; 1122 	default :
3942                     ; 1123 		 break;
3943  0544 5d            	tnzw	x
3944  0545 270b          	jreq	L7361
3945  0547 5a            	decw	x
3946  0548 2717          	jreq	L1461
3947  054a 5a            	decw	x
3948  054b 2723          	jreq	L3461
3949  054d 5a            	decw	x
3950  054e 272f          	jreq	L5461
3951  0550 203a          	jra	L7661
3952  0552               L7361:
3953                     ; 1110 	case 0 :
3953                     ; 1111 		 hdmirxset(0x0F, 0x03, 0x00);
3955  0552 4b00          	push	#0
3956  0554 ae0003        	ldw	x,#3
3957  0557 a60f          	ld	a,#15
3958  0559 95            	ld	xh,a
3959  055a 8db300b3      	callf	L76f_hdmirxset
3961  055e 84            	pop	a
3962                     ; 1112 		 break;
3964  055f 202b          	jra	L7661
3965  0561               L1461:
3966                     ; 1113 	case 1 :
3966                     ; 1114 		 hdmirxset(0x0F, 0x03, 0x01);
3968  0561 4b01          	push	#1
3969  0563 ae0003        	ldw	x,#3
3970  0566 a60f          	ld	a,#15
3971  0568 95            	ld	xh,a
3972  0569 8db300b3      	callf	L76f_hdmirxset
3974  056d 84            	pop	a
3975                     ; 1115 		 break;
3977  056e 201c          	jra	L7661
3978  0570               L3461:
3979                     ; 1116 	case 2 :
3979                     ; 1117 		 hdmirxset(0x0F, 0x03, 0x02);
3981  0570 4b02          	push	#2
3982  0572 ae0003        	ldw	x,#3
3983  0575 a60f          	ld	a,#15
3984  0577 95            	ld	xh,a
3985  0578 8db300b3      	callf	L76f_hdmirxset
3987  057c 84            	pop	a
3988                     ; 1118 		 break;
3990  057d 200d          	jra	L7661
3991  057f               L5461:
3992                     ; 1119 	case 3:
3992                     ; 1120 		 hdmirxset(0x0F, 0x03, 0x03);
3994  057f 4b03          	push	#3
3995  0581 ae0003        	ldw	x,#3
3996  0584 a60f          	ld	a,#15
3997  0586 95            	ld	xh,a
3998  0587 8db300b3      	callf	L76f_hdmirxset
4000  058b 84            	pop	a
4001                     ; 1121 		 break;
4003  058c               L7461:
4004                     ; 1122 	default :
4004                     ; 1123 		 break;
4006  058c               L7661:
4007                     ; 1125 }
4010  058c 87            	retf
4061                     ; 1128 static unsigned char CheckSCDT(struct it6802_dev_data *it6802)
4061                     ; 1129 {
4062                     	switch	.text
4063  058d               L121f_CheckSCDT:
4065  058d 89            	pushw	x
4066  058e 89            	pushw	x
4067       00000002      OFST:	set	2
4070                     ; 1133 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4072  058f a651          	ld	a,#81
4073  0591 8d390039      	callf	L36f_hdmirxrd
4075  0595 a401          	and	a,#1
4076  0597 6b01          	ld	(OFST-1,sp),a
4077                     ; 1134 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS);
4079  0599 a60a          	ld	a,#10
4080  059b 8d390039      	callf	L36f_hdmirxrd
4082  059f 6b02          	ld	(OFST+0,sp),a
4083                     ; 1136 	if(ucPortSel == it6802->m_ucCurrentHDMIPort) {
4085  05a1 1e03          	ldw	x,(OFST+1,sp)
4086  05a3 e611          	ld	a,(17,x)
4087  05a5 1101          	cp	a,(OFST-1,sp)
4088  05a7 2612          	jrne	L5171
4089                     ; 1138 		if(sys_state_P0 & B_P0_SCDT)
4091  05a9 7b02          	ld	a,(OFST+0,sp)
4092  05ab a580          	bcp	a,#128
4093  05ad 2708          	jreq	L7171
4094                     ; 1141 			it6802->m_ucSCDTOffCount=0;
4096  05af 1e03          	ldw	x,(OFST+1,sp)
4097  05b1 6f14          	clr	(20,x)
4098                     ; 1142 			return TRUE;
4100  05b3 a601          	ld	a,#1
4102  05b5 2001          	jra	L66
4103  05b7               L7171:
4104                     ; 1147 			return FALSE;
4106  05b7 4f            	clr	a
4108  05b8               L66:
4110  05b8 5b04          	addw	sp,#4
4111  05ba 87            	retf
4112  05bb               L5171:
4113                     ; 1151 }
4115  05bb 20fb          	jra	L66
4176                     ; 1154 static void WaitingForSCDT(struct it6802_dev_data *it6802)
4176                     ; 1155 {
4177                     	switch	.text
4178  05bd               L321f_WaitingForSCDT:
4180  05bd 89            	pushw	x
4181  05be 5203          	subw	sp,#3
4182       00000003      OFST:	set	3
4185                     ; 1160 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & (B_P0_SCDT|B_P0_PWR5V_DET|B_P0_RXCK_VALID);
4187  05c0 a60a          	ld	a,#10
4188  05c2 8d390039      	callf	L36f_hdmirxrd
4190  05c6 a489          	and	a,#137
4191  05c8 6b02          	ld	(OFST-1,sp),a
4192                     ; 1161 	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & (B_P1_SCDT|B_P1_PWR5V_DET|B_P1_RXCK_VALID);
4194  05ca a60b          	ld	a,#11
4195  05cc 8d390039      	callf	L36f_hdmirxrd
4197  05d0 a489          	and	a,#137
4198  05d2 6b01          	ld	(OFST-2,sp),a
4199                     ; 1162 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4201  05d4 a651          	ld	a,#81
4202  05d6 8d390039      	callf	L36f_hdmirxrd
4204  05da a401          	and	a,#1
4205  05dc 6b03          	ld	(OFST+0,sp),a
4206                     ; 1164 	if(sys_state_P0 & B_P0_SCDT)
4208  05de 7b02          	ld	a,(OFST-1,sp)
4209  05e0 a580          	bcp	a,#128
4210  05e2 270f          	jreq	L1571
4211                     ; 1166 		it6802->m_ucSCDTOffCount=0;
4213  05e4 1e04          	ldw	x,(OFST+1,sp)
4214  05e6 6f14          	clr	(20,x)
4215                     ; 1167 		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);	//2013-0520
4217  05e8 4b06          	push	#6
4218  05ea 1e05          	ldw	x,(OFST+2,sp)
4219  05ec 8d7a107a      	callf	L702f_IT6802SwitchVideoState
4221  05f0 84            	pop	a
4222                     ; 1168 		return;
4224  05f1 2077          	jra	L27
4225  05f3               L1571:
4226                     ; 1172 		if(ucPortSel == F_PORT_SEL_0) {
4228  05f3 0d03          	tnz	(OFST+0,sp)
4229  05f5 2614          	jrne	L5571
4230                     ; 1173 			if((sys_state_P0 & (B_P0_PWR5V_DET|B_P0_RXCK_VALID)) == (B_P0_PWR5V_DET|B_P0_RXCK_VALID))
4232  05f7 7b02          	ld	a,(OFST-1,sp)
4233  05f9 a409          	and	a,#9
4234  05fb a109          	cp	a,#9
4235  05fd 2606          	jrne	L7571
4236                     ; 1175 					it6802->m_ucSCDTOffCount++;
4238  05ff 1e04          	ldw	x,(OFST+1,sp)
4239  0601 6c14          	inc	(20,x)
4241  0603 2018          	jra	L3671
4242  0605               L7571:
4243                     ; 1180 						it6802->m_ucSCDTOffCount=0;
4245  0605 1e04          	ldw	x,(OFST+1,sp)
4246  0607 6f14          	clr	(20,x)
4247  0609 2012          	jra	L3671
4248  060b               L5571:
4249                     ; 1184 				if((sys_state_P1 & (B_P1_PWR5V_DET|B_P1_RXCK_VALID)) == (B_P1_PWR5V_DET|B_P1_RXCK_VALID))
4251  060b 7b01          	ld	a,(OFST-2,sp)
4252  060d a409          	and	a,#9
4253  060f a109          	cp	a,#9
4254  0611 2606          	jrne	L5671
4255                     ; 1186 					it6802->m_ucSCDTOffCount++;
4257  0613 1e04          	ldw	x,(OFST+1,sp)
4258  0615 6c14          	inc	(20,x)
4260  0617 2004          	jra	L3671
4261  0619               L5671:
4262                     ; 1192 						it6802->m_ucSCDTOffCount=0;
4264  0619 1e04          	ldw	x,(OFST+1,sp)
4265  061b 6f14          	clr	(20,x)
4266  061d               L3671:
4267                     ; 1196 		if((it6802->m_ucSCDTOffCount)>SCDT_OFF_TIMEOUT)
4269  061d 1e04          	ldw	x,(OFST+1,sp)
4270  061f e614          	ld	a,(20,x)
4271  0621 a166          	cp	a,#102
4272  0623 2545          	jrult	L3571
4273                     ; 1198 			it6802->m_ucSCDTOffCount=0;
4275  0625 1e04          	ldw	x,(OFST+1,sp)
4276  0627 6f14          	clr	(20,x)
4277                     ; 1200 			MHLRX_DEBUG_PRINTF(printf("CDR reset for SCDT_OFF_TIMEOUT !!!\r\n"));
4279  0629 ae2bc7        	ldw	x,#L3771
4280  062c 8d000000      	callf	f_printf
4282                     ; 1202 			if(ucPortSel == F_PORT_SEL_0) {
4284  0630 0d03          	tnz	(OFST+0,sp)
4285  0632 261c          	jrne	L5771
4286                     ; 1203 				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
4288  0634 4b0c          	push	#12
4289  0636 ae000c        	ldw	x,#12
4290  0639 a611          	ld	a,#17
4291  063b 95            	ld	xh,a
4292  063c 8db300b3      	callf	L76f_hdmirxset
4294  0640 84            	pop	a
4295                     ; 1204 				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
4297  0641 4b00          	push	#0
4298  0643 ae000c        	ldw	x,#12
4299  0646 a611          	ld	a,#17
4300  0648 95            	ld	xh,a
4301  0649 8db300b3      	callf	L76f_hdmirxset
4303  064d 84            	pop	a
4305  064e 201a          	jra	L3571
4306  0650               L5771:
4307                     ; 1208 				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
4309  0650 4b0c          	push	#12
4310  0652 ae000c        	ldw	x,#12
4311  0655 a618          	ld	a,#24
4312  0657 95            	ld	xh,a
4313  0658 8db300b3      	callf	L76f_hdmirxset
4315  065c 84            	pop	a
4316                     ; 1209 				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
4318  065d 4b00          	push	#0
4319  065f ae000c        	ldw	x,#12
4320  0662 a618          	ld	a,#24
4321  0664 95            	ld	xh,a
4322  0665 8db300b3      	callf	L76f_hdmirxset
4324  0669 84            	pop	a
4325  066a               L3571:
4326                     ; 1214 }
4327  066a               L27:
4330  066a 5b05          	addw	sp,#5
4331  066c 87            	retf
4370                     ; 1216 static unsigned char CheckAVMute(void)
4370                     ; 1217 {
4371                     	switch	.text
4372  066d               L521f_CheckAVMute:
4374  066d 89            	pushw	x
4375       00000002      OFST:	set	2
4378                     ; 1222 	ucAVMute=hdmirxrd(REG_RX_0A8) & (B_P0_AVMUTE|B_P1_AVMUTE);
4380  066e a6a8          	ld	a,#168
4381  0670 8d390039      	callf	L36f_hdmirxrd
4383  0674 a411          	and	a,#17
4384  0676 6b01          	ld	(OFST-1,sp),a
4385                     ; 1223 	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;
4387  0678 a651          	ld	a,#81
4388  067a 8d390039      	callf	L36f_hdmirxrd
4390  067e a401          	and	a,#1
4391  0680 6b02          	ld	(OFST+0,sp),a
4392                     ; 1225 	if(((ucAVMute & B_P0_AVMUTE)&& (ucPortSel == F_PORT_SEL_0 ))||
4392                     ; 1226 	((ucAVMute & B_P1_AVMUTE)&& (ucPortSel == F_PORT_SEL_1 )))
4394  0682 7b01          	ld	a,(OFST-1,sp)
4395  0684 a501          	bcp	a,#1
4396  0686 2704          	jreq	L3202
4398  0688 0d02          	tnz	(OFST+0,sp)
4399  068a 270c          	jreq	L1202
4400  068c               L3202:
4402  068c 7b01          	ld	a,(OFST-1,sp)
4403  068e a510          	bcp	a,#16
4404  0690 270a          	jreq	L7102
4406  0692 7b02          	ld	a,(OFST+0,sp)
4407  0694 a101          	cp	a,#1
4408  0696 2604          	jrne	L7102
4409  0698               L1202:
4410                     ; 1228 		return TRUE;
4412  0698 a601          	ld	a,#1
4414  069a 2001          	jra	L67
4415  069c               L7102:
4416                     ; 1232 		return FALSE;
4418  069c 4f            	clr	a
4420  069d               L67:
4422  069d 85            	popw	x
4423  069e 87            	retf
4471                     ; 1239 static unsigned char CheckPlg5VPwr(unsigned char ucPortSel)
4471                     ; 1240 {
4472                     	switch	.text
4473  069f               L721f_CheckPlg5VPwr:
4475  069f 88            	push	a
4476       00000001      OFST:	set	1
4479                     ; 1244 	if(ucPortSel==0)
4481  06a0 4d            	tnz	a
4482  06a1 263c          	jrne	L7402
4483                     ; 1246 		sys_state_P0 = hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_PWR5V_DET;
4485  06a3 a60a          	ld	a,#10
4486  06a5 8d390039      	callf	L36f_hdmirxrd
4488  06a9 a401          	and	a,#1
4489  06ab 6b01          	ld	(OFST+0,sp),a
4490                     ; 1247 		if((sys_state_P0 & B_P0_PWR5V_DET))
4492  06ad 7b01          	ld	a,(OFST+0,sp)
4493  06af a501          	bcp	a,#1
4494  06b1 2728          	jreq	L1502
4495                     ; 1259 				 if((hdmirxrd(0x0A)&0x40)==0){
4497  06b3 a60a          	ld	a,#10
4498  06b5 8d390039      	callf	L36f_hdmirxrd
4500  06b9 a540          	bcp	a,#64
4501  06bb 2619          	jrne	L3502
4502                     ; 1260 					 chgbank(1);
4504  06bd ae0001        	ldw	x,#1
4505  06c0 8d440544      	callf	L711f_chgbank
4507                     ; 1261 					 hdmirxset(0xB0, 0x03, 0x03);
4509  06c4 4b03          	push	#3
4510  06c6 ae0003        	ldw	x,#3
4511  06c9 a6b0          	ld	a,#176
4512  06cb 95            	ld	xh,a
4513  06cc 8db300b3      	callf	L76f_hdmirxset
4515  06d0 84            	pop	a
4516                     ; 1262 					 chgbank(0);
4518  06d1 5f            	clrw	x
4519  06d2 8d440544      	callf	L711f_chgbank
4521  06d6               L3502:
4522                     ; 1265 			return TRUE;
4524  06d6 a601          	ld	a,#1
4527  06d8 5b01          	addw	sp,#1
4528  06da 87            	retf
4529  06db               L1502:
4530                     ; 1269 			return FALSE;
4532  06db 4f            	clr	a
4535  06dc 5b01          	addw	sp,#1
4536  06de 87            	retf
4537  06df               L7402:
4538                     ; 1274 		sys_state_P1 = hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_PWR5V_DET;
4540  06df a60b          	ld	a,#11
4541  06e1 8d390039      	callf	L36f_hdmirxrd
4543  06e5 a401          	and	a,#1
4544  06e7 6b01          	ld	(OFST+0,sp),a
4545                     ; 1275 		if((sys_state_P1 & B_P1_PWR5V_DET))
4547  06e9 7b01          	ld	a,(OFST+0,sp)
4548  06eb a501          	bcp	a,#1
4549  06ed 2705          	jreq	L1602
4550                     ; 1277 			return TRUE;
4552  06ef a601          	ld	a,#1
4555  06f1 5b01          	addw	sp,#1
4556  06f3 87            	retf
4557  06f4               L1602:
4558                     ; 1281 			return FALSE;
4560  06f4 4f            	clr	a
4563  06f5 5b01          	addw	sp,#1
4564  06f7 87            	retf
4610                     ; 1288 static unsigned char IsHDMIMode(void)
4610                     ; 1289 {
4611                     	switch	.text
4612  06f8               L131f_IsHDMIMode:
4614  06f8 5203          	subw	sp,#3
4615       00000003      OFST:	set	3
4618                     ; 1295 	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_HDMI_MODE;
4620  06fa a60a          	ld	a,#10
4621  06fc 8d390039      	callf	L36f_hdmirxrd
4623  0700 a402          	and	a,#2
4624  0702 6b01          	ld	(OFST-2,sp),a
4625                     ; 1296 	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_HDMI_MODE;
4627  0704 a60b          	ld	a,#11
4628  0706 8d390039      	callf	L36f_hdmirxrd
4630  070a a402          	and	a,#2
4631  070c 6b02          	ld	(OFST-1,sp),a
4632                     ; 1297 	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
4634  070e a651          	ld	a,#81
4635  0710 8d390039      	callf	L36f_hdmirxrd
4637  0714 a401          	and	a,#1
4638  0716 6b03          	ld	(OFST+0,sp),a
4639                     ; 1299 	if(((sys_state_P0 & B_P0_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_0 ))||
4639                     ; 1300 	((sys_state_P1 & B_P1_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_1 )))
4641  0718 7b01          	ld	a,(OFST-2,sp)
4642  071a a502          	bcp	a,#2
4643  071c 2704          	jreq	L1112
4645  071e 0d03          	tnz	(OFST+0,sp)
4646  0720 270c          	jreq	L7012
4647  0722               L1112:
4649  0722 7b02          	ld	a,(OFST-1,sp)
4650  0724 a502          	bcp	a,#2
4651  0726 270a          	jreq	L5012
4653  0728 7b03          	ld	a,(OFST+0,sp)
4654  072a a101          	cp	a,#1
4655  072c 2604          	jrne	L5012
4656  072e               L7012:
4657                     ; 1302 		return TRUE;
4659  072e a601          	ld	a,#1
4661  0730 2001          	jra	L401
4662  0732               L5012:
4663                     ; 1306 		return FALSE;
4665  0732 4f            	clr	a
4667  0733               L401:
4669  0733 5b03          	addw	sp,#3
4670  0735 87            	retf
4726                     ; 1312 static void SetVideoInputFormatWithInfoFrame(struct it6802_dev_data *it6802)
4726                     ; 1313 {
4727                     	switch	.text
4728  0736               L331f_SetVideoInputFormatWithInfoFrame:
4730  0736 89            	pushw	x
4731  0737 89            	pushw	x
4732       00000002      OFST:	set	2
4735                     ; 1315 	unsigned char bAVIColorModeIndicated=FALSE;
4737  0738 0f01          	clr	(OFST-1,sp)
4738                     ; 1318 	chgbank(2);
4740  073a ae0002        	ldw	x,#2
4741  073d 8d440544      	callf	L711f_chgbank
4743                     ; 1319 	i=hdmirxrd(REG_RX_215);	//REG_RX_AVI_DB1
4745  0741 a615          	ld	a,#21
4746  0743 8d390039      	callf	L36f_hdmirxrd
4748  0747 6b02          	ld	(OFST+0,sp),a
4749                     ; 1320 	chgbank(0);
4751  0749 5f            	clrw	x
4752  074a 8d440544      	callf	L711f_chgbank
4754                     ; 1321 	it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;
4756  074e 1e03          	ldw	x,(OFST+1,sp)
4757  0750 e613          	ld	a,(19,x)
4758  0752 a4fc          	and	a,#252
4759  0754 e713          	ld	(19,x),a
4760                     ; 1324 	switch((i>>O_AVI_COLOR_MODE)&M_AVI_COLOR_MASK)
4762  0756 7b02          	ld	a,(OFST+0,sp)
4763  0758 4e            	swap	a
4764  0759 44            	srl	a
4765  075a a407          	and	a,#7
4766  075c 5f            	clrw	x
4767  075d a403          	and	a,#3
4768  075f 5f            	clrw	x
4769  0760 5f            	clrw	x
4770  0761 97            	ld	xl,a
4772                     ; 1338 		default:
4772                     ; 1339 			return;
4773  0762 5d            	tnzw	x
4774  0763 272a          	jreq	L1212
4775  0765 5a            	decw	x
4776  0766 2716          	jreq	L7112
4777  0768 5a            	decw	x
4778  0769 2702          	jreq	L5112
4779  076b               L3212:
4782  076b 2055          	jra	L011
4783  076d               L5112:
4784                     ; 1326 		case B_AVI_COLOR_YUV444:
4784                     ; 1327 			HDMIRX_VIDEO_PRINTF(printf("input YUV444 mode "));
4786  076d ae2bb4        	ldw	x,#L5512
4787  0770 8d000000      	callf	f_printf
4789                     ; 1328 			it6802->m_bInputVideoMode |=F_MODE_YUV444;
4791  0774 1e03          	ldw	x,(OFST+1,sp)
4792  0776 e613          	ld	a,(19,x)
4793  0778 aa02          	or	a,#2
4794  077a e713          	ld	(19,x),a
4795                     ; 1329 			break;
4797  077c 201c          	jra	L3512
4798  077e               L7112:
4799                     ; 1330 		case B_AVI_COLOR_YUV422:
4799                     ; 1331 			HDMIRX_VIDEO_PRINTF(printf("input YUV422 mode "));
4801  077e ae2ba1        	ldw	x,#L7512
4802  0781 8d000000      	callf	f_printf
4804                     ; 1332 			it6802->m_bInputVideoMode |=F_MODE_YUV422;
4806  0785 1e03          	ldw	x,(OFST+1,sp)
4807  0787 e613          	ld	a,(19,x)
4808  0789 aa01          	or	a,#1
4809  078b e713          	ld	(19,x),a
4810                     ; 1333 			break;
4812  078d 200b          	jra	L3512
4813  078f               L1212:
4814                     ; 1334 		case B_AVI_COLOR_RGB24:
4814                     ; 1335 			HDMIRX_VIDEO_PRINTF(printf("input RGB24 mode "));
4816  078f ae2b8f        	ldw	x,#L1612
4817  0792 8d000000      	callf	f_printf
4819                     ; 1336 			it6802->m_bInputVideoMode |=F_MODE_RGB24;
4821  0796 1e03          	ldw	x,(OFST+1,sp)
4822  0798 e613          	ld	a,(19,x)
4823                     ; 1337 			break;
4825  079a               L3512:
4826                     ; 1343 	HDMIRX_DEBUG_PRINTF(printf("SetVideoInputFormatWithInfoFrame - RegAE=%x it6802->m_bInputVideoMode=%x\r\n",i,it6802->m_bInputVideoMode));
4828  079a 1e03          	ldw	x,(OFST+1,sp)
4829  079c e613          	ld	a,(19,x)
4830  079e 88            	push	a
4831  079f 7b03          	ld	a,(OFST+1,sp)
4832  07a1 88            	push	a
4833  07a2 ae2b44        	ldw	x,#L3612
4834  07a5 8d000000      	callf	f_printf
4836  07a9 85            	popw	x
4837                     ; 1344 	i=hdmirxrd(REG_RX_IN_CSC_CTRL);
4839  07aa a671          	ld	a,#113
4840  07ac 8d390039      	callf	L36f_hdmirxrd
4842  07b0 6b02          	ld	(OFST+0,sp),a
4843                     ; 1345 	i &=~B_IN_FORCE_COLOR_MODE;
4845  07b2 7b02          	ld	a,(OFST+0,sp)
4846  07b4 a4fb          	and	a,#251
4847  07b6 6b02          	ld	(OFST+0,sp),a
4848                     ; 1346 	mhlrxwr(REG_RX_IN_CSC_CTRL,i);
4850  07b8 7b02          	ld	a,(OFST+0,sp)
4851  07ba 97            	ld	xl,a
4852  07bb a671          	ld	a,#113
4853  07bd 95            	ld	xh,a
4854  07be 8d600160      	callf	L57f_mhlrxwr
4856                     ; 1347 }
4857  07c2               L011:
4860  07c2 5b04          	addw	sp,#4
4861  07c4 87            	retf
4907                     ; 1350 static void SetColorimetryByInfoFrame(struct it6802_dev_data *it6802)
4907                     ; 1351 {
4908                     	switch	.text
4909  07c5               L531f_SetColorimetryByInfoFrame:
4911  07c5 89            	pushw	x
4912  07c6 88            	push	a
4913       00000001      OFST:	set	1
4916                     ; 1357 	chgbank(2);
4918  07c7 ae0002        	ldw	x,#2
4919  07ca 8d440544      	callf	L711f_chgbank
4921                     ; 1358 	i=hdmirxrd(REG_RX_216);	//REG_RX_AVI_DB2
4923  07ce a616          	ld	a,#22
4924  07d0 8d390039      	callf	L36f_hdmirxrd
4926  07d4 6b01          	ld	(OFST+0,sp),a
4927                     ; 1359 	chgbank(0);
4929  07d6 5f            	clrw	x
4930  07d7 8d440544      	callf	L711f_chgbank
4932                     ; 1360         i &=M_AVI_CLRMET_MASK<<O_AVI_CLRMET;
4934  07db 7b01          	ld	a,(OFST+0,sp)
4935  07dd a4c0          	and	a,#192
4936  07df 6b01          	ld	(OFST+0,sp),a
4937                     ; 1362         if(i==(B_AVI_CLRMET_ITU601<<O_AVI_CLRMET))
4939  07e1 7b01          	ld	a,(OFST+0,sp)
4940  07e3 a140          	cp	a,#64
4941  07e5 260a          	jrne	L7022
4942                     ; 1364             it6802->m_bInputVideoMode &=~F_MODE_ITU709;
4944  07e7 1e02          	ldw	x,(OFST+1,sp)
4945  07e9 e613          	ld	a,(19,x)
4946  07eb a4ef          	and	a,#239
4947  07ed e713          	ld	(19,x),a
4949  07ef 200e          	jra	L1122
4950  07f1               L7022:
4951                     ; 1366         else if(i==(B_AVI_CLRMET_ITU709<<O_AVI_CLRMET))
4953  07f1 7b01          	ld	a,(OFST+0,sp)
4954  07f3 a180          	cp	a,#128
4955  07f5 2608          	jrne	L1122
4956                     ; 1368             it6802->m_bInputVideoMode |=F_MODE_ITU709;
4958  07f7 1e02          	ldw	x,(OFST+1,sp)
4959  07f9 e613          	ld	a,(19,x)
4960  07fb aa10          	or	a,#16
4961  07fd e713          	ld	(19,x),a
4962  07ff               L1122:
4963                     ; 1373 }
4966  07ff 5b03          	addw	sp,#3
4967  0801 87            	retf
5004                     ; 1375 static void SetCSCBYPASS(struct it6802_dev_data *it6802)
5004                     ; 1376 {
5005                     	switch	.text
5006  0802               L731f_SetCSCBYPASS:
5010                     ; 1378     it6802->m_bOutputVideoMode=it6802->m_bInputVideoMode;
5012  0802 e613          	ld	a,(19,x)
5013  0804 e712          	ld	(18,x),a
5014                     ; 1380     switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK) {
5016  0806 e613          	ld	a,(19,x)
5017  0808 a403          	and	a,#3
5019                     ; 1389 	break;
5020  080a 4d            	tnz	a
5021  080b 2708          	jreq	L5122
5022  080d 4a            	dec	a
5023  080e 2714          	jreq	L7122
5024  0810 4a            	dec	a
5025  0811 2720          	jreq	L1222
5026  0813 202b          	jra	L5422
5027  0815               L5122:
5028                     ; 1381     case F_MODE_RGB24 :
5028                     ; 1382 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
5030  0815 4b00          	push	#0
5031  0817 ae0030        	ldw	x,#48
5032  081a a665          	ld	a,#101
5033  081c 95            	ld	xh,a
5034  081d 8db300b3      	callf	L76f_hdmirxset
5036  0821 84            	pop	a
5037                     ; 1383 	break;
5039  0822 201c          	jra	L5422
5040  0824               L7122:
5041                     ; 1384     case F_MODE_YUV422 :
5041                     ; 1385 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
5043  0824 4b10          	push	#16
5044  0826 ae0030        	ldw	x,#48
5045  0829 a665          	ld	a,#101
5046  082b 95            	ld	xh,a
5047  082c 8db300b3      	callf	L76f_hdmirxset
5049  0830 84            	pop	a
5050                     ; 1386 	break;
5052  0831 200d          	jra	L5422
5053  0833               L1222:
5054                     ; 1387     case F_MODE_YUV444 :
5054                     ; 1388 	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
5056  0833 4b20          	push	#32
5057  0835 ae0030        	ldw	x,#48
5058  0838 a665          	ld	a,#101
5059  083a 95            	ld	xh,a
5060  083b 8db300b3      	callf	L76f_hdmirxset
5062  083f 84            	pop	a
5063                     ; 1389 	break;
5065  0840               L5422:
5066                     ; 1392 }
5069  0840 87            	retf
5132                     ; 1394 static void SetColorSpaceConvert(struct it6802_dev_data *it6802)
5132                     ; 1395 {
5133                     	switch	.text
5134  0841               L141f_SetColorSpaceConvert:
5136  0841 89            	pushw	x
5137  0842 89            	pushw	x
5138       00000002      OFST:	set	2
5141                     ; 1398 	unsigned char filter = 0 ; // filter is for Video CTRL DN_FREE_GO, EN_DITHER, and ENUDFILT
5143  0843 0f01          	clr	(OFST-1,sp)
5144                     ; 1407 	HDMIRX_VIDEO_PRINTF(printf("\r\n!!! SetColorSpaceConvert( ) !!!\r\n"));
5146  0845 ae2b20        	ldw	x,#L3232
5147  0848 8d000000      	callf	f_printf
5149                     ; 1410     switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK)
5151  084c 1e03          	ldw	x,(OFST+1,sp)
5152  084e e612          	ld	a,(18,x)
5153  0850 a403          	and	a,#3
5155                     ; 1507 	    break ;
5156  0852 4d            	tnz	a
5157  0853 2604          	jrne	L021
5158  0855 ac2e092e      	jpf	L7622
5159  0859               L021:
5160  0859 4a            	dec	a
5161  085a 276e          	jreq	L7522
5162  085c 4a            	dec	a
5163  085d 2704          	jreq	L221
5164  085f ac830983      	jpf	L7232
5165  0863               L221:
5166                     ; 1413     case F_MODE_YUV444:
5166                     ; 1414          HDMIRX_VIDEO_PRINTF(printf("Output mode is YUV444\r\n"));
5168  0863 ae2b08        	ldw	x,#L1332
5169  0866 8d000000      	callf	f_printf
5171                     ; 1415 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5173  086a 1e03          	ldw	x,(OFST+1,sp)
5174  086c e613          	ld	a,(19,x)
5175  086e a403          	and	a,#3
5177                     ; 1438             break ;
5178  0870 4d            	tnz	a
5179  0871 2744          	jreq	L5522
5180  0873 4a            	dec	a
5181  0874 2714          	jreq	L3522
5182  0876 4a            	dec	a
5183  0877 2704          	jreq	L421
5184  0879 ac830983      	jpf	L7232
5185  087d               L421:
5186                     ; 1417 	    case F_MODE_YUV444:
5186                     ; 1418              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5188  087d ae2af1        	ldw	x,#L7332
5189  0880 8d000000      	callf	f_printf
5191                     ; 1419 	        csc = B_CSC_BYPASS ;
5193  0884 0f02          	clr	(OFST+0,sp)
5194                     ; 1420 	        break ;
5196  0886 ac830983      	jpf	L7232
5197  088a               L3522:
5198                     ; 1421 	    case F_MODE_YUV422:
5198                     ; 1422              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5200  088a ae2ada        	ldw	x,#L1432
5201  088d 8d000000      	callf	f_printf
5203                     ; 1423             csc = B_CSC_BYPASS ;
5205  0891 0f02          	clr	(OFST+0,sp)
5206                     ; 1424             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5208  0893 1e03          	ldw	x,(OFST+1,sp)
5209  0895 e612          	ld	a,(18,x)
5210  0897 a540          	bcp	a,#64
5211  0899 2706          	jreq	L3432
5212                     ; 1426                 filter |= B_RX_EN_UDFILTER ;
5214  089b 7b01          	ld	a,(OFST-1,sp)
5215  089d aa01          	or	a,#1
5216  089f 6b01          	ld	(OFST-1,sp),a
5217  08a1               L3432:
5218                     ; 1429             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5220  08a1 1e03          	ldw	x,(OFST+1,sp)
5221  08a3 e612          	ld	a,(18,x)
5222  08a5 a580          	bcp	a,#128
5223  08a7 2604          	jrne	L621
5224  08a9 ac830983      	jpf	L7232
5225  08ad               L621:
5226                     ; 1431                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5228  08ad 7b01          	ld	a,(OFST-1,sp)
5229  08af aa05          	or	a,#5
5230  08b1 6b01          	ld	(OFST-1,sp),a
5231  08b3 ac830983      	jpf	L7232
5232  08b7               L5522:
5233                     ; 1435 	    case F_MODE_RGB24:
5233                     ; 1436              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5235  08b7 ae2ac3        	ldw	x,#L7432
5236  08ba 8d000000      	callf	f_printf
5238                     ; 1437             csc = B_CSC_RGB2YUV ;
5240  08be a601          	ld	a,#1
5241  08c0 6b02          	ld	(OFST+0,sp),a
5242                     ; 1438             break ;
5244  08c2 ac830983      	jpf	L7232
5245  08c6               L5332:
5246                     ; 1440         break ;
5248  08c6 ac830983      	jpf	L7232
5249  08ca               L7522:
5250                     ; 1445     case F_MODE_YUV422:
5250                     ; 1446 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5252  08ca 1e03          	ldw	x,(OFST+1,sp)
5253  08cc e613          	ld	a,(19,x)
5254  08ce a403          	and	a,#3
5256                     ; 1476 	    	break ;
5257  08d0 4d            	tnz	a
5258  08d1 273e          	jreq	L5622
5259  08d3 4a            	dec	a
5260  08d4 2722          	jreq	L3622
5261  08d6 4a            	dec	a
5262  08d7 2704          	jreq	L031
5263  08d9 ac830983      	jpf	L7232
5264  08dd               L031:
5265                     ; 1448 	    case F_MODE_YUV444:
5265                     ; 1449              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5267  08dd ae2af1        	ldw	x,#L7332
5268  08e0 8d000000      	callf	f_printf
5270                     ; 1450 	        if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)
5272  08e4 1e03          	ldw	x,(OFST+1,sp)
5273  08e6 e612          	ld	a,(18,x)
5274  08e8 a540          	bcp	a,#64
5275  08ea 2706          	jreq	L5532
5276                     ; 1452 	            filter |= B_RX_EN_UDFILTER ;
5278  08ec 7b01          	ld	a,(OFST-1,sp)
5279  08ee aa01          	or	a,#1
5280  08f0 6b01          	ld	(OFST-1,sp),a
5281  08f2               L5532:
5282                     ; 1454 	        csc = B_CSC_BYPASS ;
5284  08f2 0f02          	clr	(OFST+0,sp)
5285                     ; 1455 	        break ;
5287  08f4 ac830983      	jpf	L7232
5288  08f8               L3622:
5289                     ; 1456 	    case F_MODE_YUV422:
5289                     ; 1457              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5291  08f8 ae2ada        	ldw	x,#L1432
5292  08fb 8d000000      	callf	f_printf
5294                     ; 1458             csc = B_CSC_BYPASS ;
5296  08ff 0f02          	clr	(OFST+0,sp)
5297                     ; 1464             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5299  0901 1e03          	ldw	x,(OFST+1,sp)
5300  0903 e612          	ld	a,(18,x)
5301  0905 a580          	bcp	a,#128
5302  0907 277a          	jreq	L7232
5303                     ; 1466                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5305  0909 7b01          	ld	a,(OFST-1,sp)
5306  090b aa05          	or	a,#5
5307  090d 6b01          	ld	(OFST-1,sp),a
5308  090f 2072          	jra	L7232
5309  0911               L5622:
5310                     ; 1469 	    case F_MODE_RGB24:
5310                     ; 1470              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5312  0911 ae2ac3        	ldw	x,#L7432
5313  0914 8d000000      	callf	f_printf
5315                     ; 1471             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5317  0918 1e03          	ldw	x,(OFST+1,sp)
5318  091a e612          	ld	a,(18,x)
5319  091c a540          	bcp	a,#64
5320  091e 2706          	jreq	L1632
5321                     ; 1473                 filter |= B_RX_EN_UDFILTER ;
5323  0920 7b01          	ld	a,(OFST-1,sp)
5324  0922 aa01          	or	a,#1
5325  0924 6b01          	ld	(OFST-1,sp),a
5326  0926               L1632:
5327                     ; 1475             csc = B_CSC_RGB2YUV ;
5329  0926 a601          	ld	a,#1
5330  0928 6b02          	ld	(OFST+0,sp),a
5331                     ; 1476 	    	break ;
5333  092a 2057          	jra	L7232
5334  092c               L3532:
5335                     ; 1478 	    break ;
5337  092c 2055          	jra	L7232
5338  092e               L7622:
5339                     ; 1482     case F_MODE_RGB24:
5339                     ; 1483          HDMIRX_VIDEO_PRINTF(printf("Output mode is RGB24\r\n"));
5341  092e ae2aac        	ldw	x,#L3632
5342  0931 8d000000      	callf	f_printf
5344                     ; 1484 	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
5346  0935 1e03          	ldw	x,(OFST+1,sp)
5347  0937 e613          	ld	a,(19,x)
5348  0939 a403          	and	a,#3
5350                     ; 1505 	    	break ;
5351  093b 4d            	tnz	a
5352  093c 273c          	jreq	L5722
5353  093e 4a            	dec	a
5354  093f 2710          	jreq	L3722
5355  0941 4a            	dec	a
5356  0942 263f          	jrne	L7232
5357                     ; 1486 	    case F_MODE_YUV444:
5357                     ; 1487              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
5359  0944 ae2af1        	ldw	x,#L7332
5360  0947 8d000000      	callf	f_printf
5362                     ; 1488 	        csc = B_CSC_YUV2RGB ;
5364  094b a603          	ld	a,#3
5365  094d 6b02          	ld	(OFST+0,sp),a
5366                     ; 1489 	        break ;
5368  094f 2032          	jra	L7232
5369  0951               L3722:
5370                     ; 1490 	    case F_MODE_YUV422:
5370                     ; 1491              HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
5372  0951 ae2ada        	ldw	x,#L1432
5373  0954 8d000000      	callf	f_printf
5375                     ; 1492             csc = B_CSC_YUV2RGB ;
5377  0958 a603          	ld	a,#3
5378  095a 6b02          	ld	(OFST+0,sp),a
5379                     ; 1493             if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
5381  095c 1e03          	ldw	x,(OFST+1,sp)
5382  095e e612          	ld	a,(18,x)
5383  0960 a540          	bcp	a,#64
5384  0962 2706          	jreq	L1732
5385                     ; 1495                 filter |= B_RX_EN_UDFILTER ;
5387  0964 7b01          	ld	a,(OFST-1,sp)
5388  0966 aa01          	or	a,#1
5389  0968 6b01          	ld	(OFST-1,sp),a
5390  096a               L1732:
5391                     ; 1497             if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
5393  096a 1e03          	ldw	x,(OFST+1,sp)
5394  096c e612          	ld	a,(18,x)
5395  096e a580          	bcp	a,#128
5396  0970 2711          	jreq	L7232
5397                     ; 1499                 filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
5399  0972 7b01          	ld	a,(OFST-1,sp)
5400  0974 aa05          	or	a,#5
5401  0976 6b01          	ld	(OFST-1,sp),a
5402  0978 2009          	jra	L7232
5403  097a               L5722:
5404                     ; 1502 	    case F_MODE_RGB24:
5404                     ; 1503              HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
5406  097a ae2ac3        	ldw	x,#L7432
5407  097d 8d000000      	callf	f_printf
5409                     ; 1504             csc = B_CSC_BYPASS ;
5411  0981 0f02          	clr	(OFST+0,sp)
5412                     ; 1505 	    	break ;
5414  0983               L7632:
5415                     ; 1507 	    break ;
5417  0983               L7232:
5418                     ; 1514     if(csc == B_CSC_RGB2YUV)
5420  0983 7b02          	ld	a,(OFST+0,sp)
5421  0985 a101          	cp	a,#1
5422  0987 2704          	jreq	L231
5423  0989 ac2d0a2d      	jpf	L5732
5424  098d               L231:
5425                     ; 1517         if(it6802->m_bInputVideoMode & F_MODE_ITU709)
5427  098d 1e03          	ldw	x,(OFST+1,sp)
5428  098f e613          	ld	a,(19,x)
5429  0991 a510          	bcp	a,#16
5430  0993 274d          	jreq	L7732
5431                     ; 1519             HDMIRX_VIDEO_PRINTF(printf("ITU709 "));
5433  0995 ae2aa4        	ldw	x,#L1042
5434  0998 8d000000      	callf	f_printf
5436                     ; 1521             if(it6802->m_bInputVideoMode & F_MODE_16_235)
5438  099c 1e03          	ldw	x,(OFST+1,sp)
5439  099e e613          	ld	a,(19,x)
5440  09a0 a520          	bcp	a,#32
5441  09a2 271f          	jreq	L3042
5442                     ; 1523                 HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
5444  09a4 ae2a9a        	ldw	x,#L5042
5445  09a7 8d000000      	callf	f_printf
5447                     ; 1524 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5449  09ab ae0001        	ldw	x,#1
5450  09ae 8d440544      	callf	L711f_chgbank
5452                     ; 1525                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_16_235),bCSCMtx_RGB2YUV_ITU709_16_235);
5454  09b2 ae01bd        	ldw	x,#_bCSCMtx_RGB2YUV_ITU709_16_235
5455  09b5 89            	pushw	x
5456  09b6 ae0015        	ldw	x,#21
5457  09b9 a670          	ld	a,#112
5458  09bb 95            	ld	xh,a
5459  09bc 8dda00da      	callf	L17f_hdmirxbwr
5461  09c0 85            	popw	x
5463  09c1 206a          	jra	L5732
5464  09c3               L3042:
5465                     ; 1529                 HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
5467  09c3 ae2a91        	ldw	x,#L1142
5468  09c6 8d000000      	callf	f_printf
5470                     ; 1530 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5472  09ca ae0001        	ldw	x,#1
5473  09cd 8d440544      	callf	L711f_chgbank
5475                     ; 1531                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_0_255),bCSCMtx_RGB2YUV_ITU709_0_255);
5477  09d1 ae01d2        	ldw	x,#_bCSCMtx_RGB2YUV_ITU709_0_255
5478  09d4 89            	pushw	x
5479  09d5 ae0015        	ldw	x,#21
5480  09d8 a670          	ld	a,#112
5481  09da 95            	ld	xh,a
5482  09db 8dda00da      	callf	L17f_hdmirxbwr
5484  09df 85            	popw	x
5485  09e0 204b          	jra	L5732
5486  09e2               L7732:
5487                     ; 1536             HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
5489  09e2 ae2a89        	ldw	x,#L5142
5490  09e5 8d000000      	callf	f_printf
5492                     ; 1537             if(it6802->m_bInputVideoMode & F_MODE_16_235)
5494  09e9 1e03          	ldw	x,(OFST+1,sp)
5495  09eb e613          	ld	a,(19,x)
5496  09ed a520          	bcp	a,#32
5497  09ef 271f          	jreq	L7142
5498                     ; 1539 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5500  09f1 ae0001        	ldw	x,#1
5501  09f4 8d440544      	callf	L711f_chgbank
5503                     ; 1540                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_16_235),bCSCMtx_RGB2YUV_ITU601_16_235);
5505  09f8 ae0193        	ldw	x,#_bCSCMtx_RGB2YUV_ITU601_16_235
5506  09fb 89            	pushw	x
5507  09fc ae0015        	ldw	x,#21
5508  09ff a670          	ld	a,#112
5509  0a01 95            	ld	xh,a
5510  0a02 8dda00da      	callf	L17f_hdmirxbwr
5512  0a06 85            	popw	x
5513                     ; 1541                 HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
5515  0a07 ae2a9a        	ldw	x,#L5042
5516  0a0a 8d000000      	callf	f_printf
5519  0a0e 201d          	jra	L5732
5520  0a10               L7142:
5521                     ; 1545 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5523  0a10 ae0001        	ldw	x,#1
5524  0a13 8d440544      	callf	L711f_chgbank
5526                     ; 1546                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_0_255),bCSCMtx_RGB2YUV_ITU601_0_255);
5528  0a17 ae01a8        	ldw	x,#_bCSCMtx_RGB2YUV_ITU601_0_255
5529  0a1a 89            	pushw	x
5530  0a1b ae0015        	ldw	x,#21
5531  0a1e a670          	ld	a,#112
5532  0a20 95            	ld	xh,a
5533  0a21 8dda00da      	callf	L17f_hdmirxbwr
5535  0a25 85            	popw	x
5536                     ; 1547                 HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
5538  0a26 ae2a91        	ldw	x,#L1142
5539  0a29 8d000000      	callf	f_printf
5541  0a2d               L5732:
5542                     ; 1553 	if(csc == B_CSC_YUV2RGB)
5544  0a2d 7b02          	ld	a,(OFST+0,sp)
5545  0a2f a103          	cp	a,#3
5546  0a31 2704          	jreq	L431
5547  0a33 acde0ade      	jpf	L3242
5548  0a37               L431:
5549                     ; 1555         HDMIRX_VIDEO_PRINTF(printf("CSC = YUV2RGB "));
5551  0a37 ae2a7a        	ldw	x,#L5242
5552  0a3a 8d000000      	callf	f_printf
5554                     ; 1556         if(it6802->m_bInputVideoMode & F_MODE_ITU709)
5556  0a3e 1e03          	ldw	x,(OFST+1,sp)
5557  0a40 e613          	ld	a,(19,x)
5558  0a42 a510          	bcp	a,#16
5559  0a44 274d          	jreq	L7242
5560                     ; 1558             HDMIRX_VIDEO_PRINTF(printf("ITU709 "));
5562  0a46 ae2aa4        	ldw	x,#L1042
5563  0a49 8d000000      	callf	f_printf
5565                     ; 1559             if(it6802->m_bOutputVideoMode & F_MODE_16_235)
5567  0a4d 1e03          	ldw	x,(OFST+1,sp)
5568  0a4f e612          	ld	a,(18,x)
5569  0a51 a520          	bcp	a,#32
5570  0a53 271f          	jreq	L1342
5571                     ; 1561                 HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
5573  0a55 ae2a71        	ldw	x,#L3342
5574  0a58 8d000000      	callf	f_printf
5576                     ; 1562 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5578  0a5c ae0001        	ldw	x,#1
5579  0a5f 8d440544      	callf	L711f_chgbank
5581                     ; 1563                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_16_235),bCSCMtx_YUV2RGB_ITU709_16_235);
5583  0a63 ae0211        	ldw	x,#_bCSCMtx_YUV2RGB_ITU709_16_235
5584  0a66 89            	pushw	x
5585  0a67 ae0015        	ldw	x,#21
5586  0a6a a670          	ld	a,#112
5587  0a6c 95            	ld	xh,a
5588  0a6d 8dda00da      	callf	L17f_hdmirxbwr
5590  0a71 85            	popw	x
5592  0a72 206a          	jra	L3242
5593  0a74               L1342:
5594                     ; 1567                 HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
5596  0a74 ae2a69        	ldw	x,#L7342
5597  0a77 8d000000      	callf	f_printf
5599                     ; 1568 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5601  0a7b ae0001        	ldw	x,#1
5602  0a7e 8d440544      	callf	L711f_chgbank
5604                     ; 1569                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_0_255),bCSCMtx_YUV2RGB_ITU709_0_255);
5606  0a82 ae0226        	ldw	x,#_bCSCMtx_YUV2RGB_ITU709_0_255
5607  0a85 89            	pushw	x
5608  0a86 ae0015        	ldw	x,#21
5609  0a89 a670          	ld	a,#112
5610  0a8b 95            	ld	xh,a
5611  0a8c 8dda00da      	callf	L17f_hdmirxbwr
5613  0a90 85            	popw	x
5614  0a91 204b          	jra	L3242
5615  0a93               L7242:
5616                     ; 1574             HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
5618  0a93 ae2a89        	ldw	x,#L5142
5619  0a96 8d000000      	callf	f_printf
5621                     ; 1575             if(it6802->m_bOutputVideoMode & F_MODE_16_235)
5623  0a9a 1e03          	ldw	x,(OFST+1,sp)
5624  0a9c e612          	ld	a,(18,x)
5625  0a9e a520          	bcp	a,#32
5626  0aa0 271f          	jreq	L3442
5627                     ; 1577                 HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
5629  0aa2 ae2a71        	ldw	x,#L3342
5630  0aa5 8d000000      	callf	f_printf
5632                     ; 1578 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5634  0aa9 ae0001        	ldw	x,#1
5635  0aac 8d440544      	callf	L711f_chgbank
5637                     ; 1579                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_16_235),bCSCMtx_YUV2RGB_ITU601_16_235);
5639  0ab0 ae01e7        	ldw	x,#_bCSCMtx_YUV2RGB_ITU601_16_235
5640  0ab3 89            	pushw	x
5641  0ab4 ae0015        	ldw	x,#21
5642  0ab7 a670          	ld	a,#112
5643  0ab9 95            	ld	xh,a
5644  0aba 8dda00da      	callf	L17f_hdmirxbwr
5646  0abe 85            	popw	x
5648  0abf 201d          	jra	L3242
5649  0ac1               L3442:
5650                     ; 1583                 HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
5652  0ac1 ae2a69        	ldw	x,#L7342
5653  0ac4 8d000000      	callf	f_printf
5655                     ; 1584 		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
5657  0ac8 ae0001        	ldw	x,#1
5658  0acb 8d440544      	callf	L711f_chgbank
5660                     ; 1585                 hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_0_255),bCSCMtx_YUV2RGB_ITU601_0_255);
5662  0acf ae01fc        	ldw	x,#_bCSCMtx_YUV2RGB_ITU601_0_255
5663  0ad2 89            	pushw	x
5664  0ad3 ae0015        	ldw	x,#21
5665  0ad6 a670          	ld	a,#112
5666  0ad8 95            	ld	xh,a
5667  0ad9 8dda00da      	callf	L17f_hdmirxbwr
5669  0add 85            	popw	x
5670  0ade               L3242:
5671                     ; 1595 	chgbank(0);
5673  0ade 5f            	clrw	x
5674  0adf 8d440544      	callf	L711f_chgbank
5676                     ; 1596     	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_CSC_SEL_MASK),csc);
5678  0ae3 7b02          	ld	a,(OFST+0,sp)
5679  0ae5 88            	push	a
5680  0ae6 ae0003        	ldw	x,#3
5681  0ae9 a665          	ld	a,#101
5682  0aeb 95            	ld	xh,a
5683  0aec 8db300b3      	callf	L76f_hdmirxset
5685  0af0 84            	pop	a
5686                     ; 1599 	hdmirxset(REG_RX_VIDEO_CTRL1,(B_RX_DNFREE_GO|B_RX_EN_DITHER|B_RX_EN_UDFILTER),filter);
5688  0af1 7b01          	ld	a,(OFST-1,sp)
5689  0af3 88            	push	a
5690  0af4 ae0007        	ldw	x,#7
5691  0af7 a667          	ld	a,#103
5692  0af9 95            	ld	xh,a
5693  0afa 8db300b3      	callf	L76f_hdmirxset
5695  0afe 84            	pop	a
5696                     ; 1601 }
5699  0aff 5b04          	addw	sp,#4
5700  0b01 87            	retf
5742                     ; 1604 static void SetNewInfoVideoOutput(struct it6802_dev_data *it6802)
5742                     ; 1605 {
5743                     	switch	.text
5744  0b02               L341f_SetNewInfoVideoOutput:
5746  0b02 89            	pushw	x
5747       00000000      OFST:	set	0
5750                     ; 1607 	MHLRX_DEBUG_PRINTF(printf("SetNewInfoVideoOutput() \r\n"));
5752  0b03 ae2a4e        	ldw	x,#L7642
5753  0b06 8d000000      	callf	f_printf
5755                     ; 1609 	SetVideoInputFormatWithInfoFrame(it6802);
5757  0b0a 1e01          	ldw	x,(OFST+1,sp)
5758  0b0c 8d360736      	callf	L331f_SetVideoInputFormatWithInfoFrame
5760                     ; 1610 	SetColorimetryByInfoFrame(it6802);
5762  0b10 1e01          	ldw	x,(OFST+1,sp)
5763  0b12 8dc507c5      	callf	L531f_SetColorimetryByInfoFrame
5765                     ; 1611 	SetColorSpaceConvert(it6802);
5767  0b16 1e01          	ldw	x,(OFST+1,sp)
5768  0b18 8d410841      	callf	L141f_SetColorSpaceConvert
5770                     ; 1613 	SetVideoOutputColorFormat(it6802);	//2013-0502
5772  0b1c 1e01          	ldw	x,(OFST+1,sp)
5773  0b1e 8d980c98      	callf	L551f_SetVideoOutputColorFormat
5775                     ; 1614 }
5778  0b22 85            	popw	x
5779  0b23 87            	retf
5832                     ; 1617 static void SetVideoInputFormatWithoutInfoFrame(struct it6802_dev_data *it6802,unsigned char bInMode)
5832                     ; 1618 {
5833                     	switch	.text
5834  0b24               L541f_SetVideoInputFormatWithoutInfoFrame:
5836  0b24 89            	pushw	x
5837  0b25 88            	push	a
5838       00000001      OFST:	set	1
5841                     ; 1621     i=hdmirxrd(REG_RX_IN_CSC_CTRL);
5843  0b26 a671          	ld	a,#113
5844  0b28 8d390039      	callf	L36f_hdmirxrd
5846  0b2c 6b01          	ld	(OFST+0,sp),a
5847                     ; 1622     i |=B_IN_FORCE_COLOR_MODE;
5849  0b2e 7b01          	ld	a,(OFST+0,sp)
5850  0b30 aa04          	or	a,#4
5851  0b32 6b01          	ld	(OFST+0,sp),a
5852                     ; 1624     i &=(~M_INPUT_COLOR_MASK);
5854  0b34 7b01          	ld	a,(OFST+0,sp)
5855  0b36 a4fc          	and	a,#252
5856  0b38 6b01          	ld	(OFST+0,sp),a
5857                     ; 1625     it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;
5859  0b3a 1e02          	ldw	x,(OFST+1,sp)
5860  0b3c e613          	ld	a,(19,x)
5861  0b3e a4fc          	and	a,#252
5862  0b40 e713          	ld	(19,x),a
5863                     ; 1627     switch(bInMode)
5865  0b42 7b07          	ld	a,(OFST+6,sp)
5867                     ; 1641     default:
5867                     ; 1642         return;
5868  0b44 4d            	tnz	a
5869  0b45 2728          	jreq	L5742
5870  0b47 4a            	dec	a
5871  0b48 2715          	jreq	L3742
5872  0b4a 4a            	dec	a
5873  0b4b 2702          	jreq	L1742
5874  0b4d               L7742:
5877  0b4d 202e          	jra	L241
5878  0b4f               L1742:
5879                     ; 1629     case F_MODE_YUV444:
5879                     ; 1630 	i |=B_INPUT_YUV444;
5881  0b4f 7b01          	ld	a,(OFST+0,sp)
5882  0b51 aa02          	or	a,#2
5883  0b53 6b01          	ld	(OFST+0,sp),a
5884                     ; 1631 	it6802->m_bInputVideoMode |=F_MODE_YUV444;
5886  0b55 1e02          	ldw	x,(OFST+1,sp)
5887  0b57 e613          	ld	a,(19,x)
5888  0b59 aa02          	or	a,#2
5889  0b5b e713          	ld	(19,x),a
5890                     ; 1632 	break;
5892  0b5d 2014          	jra	L7252
5893  0b5f               L3742:
5894                     ; 1633     case F_MODE_YUV422:
5894                     ; 1634 	i |=B_INPUT_YUV422;
5896  0b5f 7b01          	ld	a,(OFST+0,sp)
5897  0b61 aa01          	or	a,#1
5898  0b63 6b01          	ld	(OFST+0,sp),a
5899                     ; 1635         it6802->m_bInputVideoMode |=F_MODE_YUV422;
5901  0b65 1e02          	ldw	x,(OFST+1,sp)
5902  0b67 e613          	ld	a,(19,x)
5903  0b69 aa01          	or	a,#1
5904  0b6b e713          	ld	(19,x),a
5905                     ; 1636         break;
5907  0b6d 2004          	jra	L7252
5908  0b6f               L5742:
5909                     ; 1637     case F_MODE_RGB24:
5909                     ; 1638 	i |=B_INPUT_RGB24;
5911                     ; 1639         it6802->m_bInputVideoMode |=F_MODE_RGB24;
5913  0b6f 1e02          	ldw	x,(OFST+1,sp)
5914  0b71 e613          	ld	a,(19,x)
5915                     ; 1640         break;
5917  0b73               L7252:
5918                     ; 1644     mhlrxwr(REG_RX_IN_CSC_CTRL,i);
5920  0b73 7b01          	ld	a,(OFST+0,sp)
5921  0b75 97            	ld	xl,a
5922  0b76 a671          	ld	a,#113
5923  0b78 95            	ld	xh,a
5924  0b79 8d600160      	callf	L57f_mhlrxwr
5926                     ; 1646 }
5927  0b7d               L241:
5930  0b7d 5b03          	addw	sp,#3
5931  0b7f 87            	retf
5977                     ; 1648 static void SetColorimetryByMode(struct it6802_dev_data *it6802)
5977                     ; 1649 {
5978                     	switch	.text
5979  0b80               L741f_SetColorimetryByMode:
5981  0b80 89            	pushw	x
5982  0b81 88            	push	a
5983       00000001      OFST:	set	1
5986                     ; 1651     RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);
5988  0b82 a69a          	ld	a,#154
5989  0b84 8d390039      	callf	L36f_hdmirxrd
5991  0b88 6b01          	ld	(OFST+0,sp),a
5992                     ; 1653    MHLRX_DEBUG_PRINTF(printf(" SetColorimetryByMode() REG_RX_PIXCLK_SPEED=%x \r\n", RxClkXCNT));
5994  0b8a 7b01          	ld	a,(OFST+0,sp)
5995  0b8c 88            	push	a
5996  0b8d ae2a1c        	ldw	x,#L3552
5997  0b90 8d000000      	callf	f_printf
5999  0b94 84            	pop	a
6000                     ; 1655     it6802->m_bInputVideoMode &=~F_MODE_ITU709;
6002  0b95 1e02          	ldw	x,(OFST+1,sp)
6003  0b97 e613          	ld	a,(19,x)
6004  0b99 a4ef          	and	a,#239
6005  0b9b e713          	ld	(19,x),a
6006                     ; 1657      if(RxClkXCNT <0x34)
6008  0b9d 7b01          	ld	a,(OFST+0,sp)
6009  0b9f a134          	cp	a,#52
6010  0ba1 240a          	jruge	L5552
6011                     ; 1660         it6802->m_bInputVideoMode |=F_MODE_ITU709;
6013  0ba3 1e02          	ldw	x,(OFST+1,sp)
6014  0ba5 e613          	ld	a,(19,x)
6015  0ba7 aa10          	or	a,#16
6016  0ba9 e713          	ld	(19,x),a
6018  0bab 2008          	jra	L7552
6019  0bad               L5552:
6020                     ; 1665         it6802->m_bInputVideoMode &=~F_MODE_ITU709;
6022  0bad 1e02          	ldw	x,(OFST+1,sp)
6023  0baf e613          	ld	a,(19,x)
6024  0bb1 a4ef          	and	a,#239
6025  0bb3 e713          	ld	(19,x),a
6026  0bb5               L7552:
6027                     ; 1668 }
6030  0bb5 5b03          	addw	sp,#3
6031  0bb7 87            	retf
6072                     ; 1670 static void SetDVIVideoOutput(struct it6802_dev_data *it6802)
6072                     ; 1671 {
6073                     	switch	.text
6074  0bb8               L151f_SetDVIVideoOutput:
6076  0bb8 89            	pushw	x
6077       00000000      OFST:	set	0
6080                     ; 1672 	MHLRX_DEBUG_PRINTF(printf("SetDVIVideoOutput() \r\n"));
6082  0bb9 ae2a05        	ldw	x,#L1062
6083  0bbc 8d000000      	callf	f_printf
6085                     ; 1674 	SetVideoInputFormatWithoutInfoFrame(it6802,F_MODE_RGB24);
6087  0bc0 4b00          	push	#0
6088  0bc2 1e02          	ldw	x,(OFST+2,sp)
6089  0bc4 8d240b24      	callf	L541f_SetVideoInputFormatWithoutInfoFrame
6091  0bc8 84            	pop	a
6092                     ; 1675 	SetColorimetryByMode(it6802);
6094  0bc9 1e01          	ldw	x,(OFST+1,sp)
6095  0bcb 8d800b80      	callf	L741f_SetColorimetryByMode
6097                     ; 1676 	SetColorSpaceConvert(it6802);
6099  0bcf 1e01          	ldw	x,(OFST+1,sp)
6100  0bd1 8d410841      	callf	L141f_SetColorSpaceConvert
6102                     ; 1678 	SetVideoOutputColorFormat(it6802);	//2013-0502
6104  0bd5 1e01          	ldw	x,(OFST+1,sp)
6105  0bd7 8d980c98      	callf	L551f_SetVideoOutputColorFormat
6107                     ; 1679 }
6110  0bdb 85            	popw	x
6111  0bdc 87            	retf
6160                     ; 1684 static void IT6802VideoOutputConfigure(struct it6802_dev_data *it6802)
6160                     ; 1685 {
6161                     	switch	.text
6162  0bdd               L351f_IT6802VideoOutputConfigure:
6164  0bdd 89            	pushw	x
6165  0bde 88            	push	a
6166       00000001      OFST:	set	1
6169                     ; 1689 	it6802->m_bOutputVideoMode = HDMIRX_OUTPUT_VID_MODE ;
6171  0bdf a640          	ld	a,#64
6172  0be1 e712          	ld	(18,x),a
6173                     ; 1691 	it6802->m_bUpHDMIMode =IsHDMIMode();
6175  0be3 8df806f8      	callf	L131f_IsHDMIMode
6177  0be7 1e02          	ldw	x,(OFST+1,sp)
6178  0be9 48            	sll	a
6179  0bea 48            	sll	a
6180  0beb 48            	sll	a
6181  0bec e875          	xor	a,(117,x)
6182  0bee a408          	and	a,#8
6183  0bf0 e875          	xor	a,(117,x)
6184  0bf2 e775          	ld	(117,x),a
6185                     ; 1692 	if(it6802->m_bUpHDMIMode==FALSE)
6187  0bf4 1e02          	ldw	x,(OFST+1,sp)
6188  0bf6 e675          	ld	a,(117,x)
6189  0bf8 a508          	bcp	a,#8
6190  0bfa 2608          	jrne	L3362
6191                     ; 1694 	SetDVIVideoOutput(it6802);
6193  0bfc 1e02          	ldw	x,(OFST+1,sp)
6194  0bfe 8db80bb8      	callf	L151f_SetDVIVideoOutput
6197  0c02 2006          	jra	L5362
6198  0c04               L3362:
6199                     ; 1698 	SetNewInfoVideoOutput(it6802);
6201  0c04 1e02          	ldw	x,(OFST+1,sp)
6202  0c06 8d020b02      	callf	L341f_SetNewInfoVideoOutput
6204  0c0a               L5362:
6205                     ; 1700 	it6802->m_NewAVIInfoFrameF=FALSE;
6207  0c0a 1e02          	ldw	x,(OFST+1,sp)
6208  0c0c e675          	ld	a,(117,x)
6209  0c0e a4df          	and	a,#223
6210  0c10 e775          	ld	(117,x),a
6211                     ; 1704 	it6802->GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
6213  0c12 a699          	ld	a,#153
6214  0c14 8d390039      	callf	L36f_hdmirxrd
6216  0c18 a4f0          	and	a,#240
6217  0c1a 4e            	swap	a
6218  0c1b a40f          	and	a,#15
6219  0c1d 1e02          	ldw	x,(OFST+1,sp)
6220  0c1f e736          	ld	(54,x),a
6221                     ; 1705 	switch( it6802->GCP_CD ) {
6223  0c21 1e02          	ldw	x,(OFST+1,sp)
6224  0c23 e636          	ld	a,(54,x)
6226                     ; 1717 	break;
6227  0c25 a005          	sub	a,#5
6228  0c27 2712          	jreq	L3062
6229  0c29 4a            	dec	a
6230  0c2a 271e          	jreq	L5062
6231  0c2c               L7062:
6232                     ; 1714 	default :
6232                     ; 1715 	//printf( "\r\n Output ColorDepth = 24 bits per pixel\r\n");
6232                     ; 1716 	hdmirxset(0x65, 0x0C, 0x00);
6234  0c2c 4b00          	push	#0
6235  0c2e ae000c        	ldw	x,#12
6236  0c31 a665          	ld	a,#101
6237  0c33 95            	ld	xh,a
6238  0c34 8db300b3      	callf	L76f_hdmirxset
6240  0c38 84            	pop	a
6241                     ; 1717 	break;
6243  0c39 201c          	jra	L1462
6244  0c3b               L3062:
6245                     ; 1706 	case 5 :
6245                     ; 1707 	//printf( "\r\n Output ColorDepth = 30 bits per pixel\r\n");
6245                     ; 1708 	hdmirxset(0x65, 0x0C, 0x04);
6247  0c3b 4b04          	push	#4
6248  0c3d ae000c        	ldw	x,#12
6249  0c40 a665          	ld	a,#101
6250  0c42 95            	ld	xh,a
6251  0c43 8db300b3      	callf	L76f_hdmirxset
6253  0c47 84            	pop	a
6254                     ; 1709 	break;
6256  0c48 200d          	jra	L1462
6257  0c4a               L5062:
6258                     ; 1710 	case 6 :
6258                     ; 1711 	//printf( "\r\n Output ColorDepth = 36 bits per pixel\r\n");
6258                     ; 1712 	hdmirxset(0x65, 0x0C, 0x08);
6260  0c4a 4b08          	push	#8
6261  0c4c ae000c        	ldw	x,#12
6262  0c4f a665          	ld	a,#101
6263  0c51 95            	ld	xh,a
6264  0c52 8db300b3      	callf	L76f_hdmirxset
6266  0c56 84            	pop	a
6267                     ; 1713 	break;
6269  0c57               L1462:
6270                     ; 1723 	RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);
6272  0c57 a69a          	ld	a,#154
6273  0c59 8d390039      	callf	L36f_hdmirxrd
6275  0c5d 6b01          	ld	(OFST+0,sp),a
6276                     ; 1724 	if(RxClkXCNT <0x12)	// 1600x1200@60Hz 165MHz = 0x13 ~ 0x14
6278  0c5f 7b01          	ld	a,(OFST+0,sp)
6279  0c61 a112          	cp	a,#18
6280  0c63 2408          	jruge	L3462
6281                     ; 1727 	it6802->pixelMode = DUAL_PIXEL;
6283  0c65 1e02          	ldw	x,(OFST+1,sp)
6284  0c67 a601          	ld	a,#1
6285  0c69 e735          	ld	(53,x),a
6287  0c6b 2004          	jra	L5462
6288  0c6d               L3462:
6289                     ; 1734 	it6802->pixelMode = SINGLE_PIXEL;
6291  0c6d 1e02          	ldw	x,(OFST+1,sp)
6292  0c6f 6f35          	clr	(53,x)
6293  0c71               L5462:
6294                     ; 1737 	if(it6802->pixelMode == DUAL_PIXEL)
6296  0c71 1e02          	ldw	x,(OFST+1,sp)
6297  0c73 e635          	ld	a,(53,x)
6298  0c75 a101          	cp	a,#1
6299  0c77 260f          	jrne	L7462
6300                     ; 1739 	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),(B_HALF_CLK|B_OUT_DDR));		// for output Dual Pixel mode
6302  0c79 4b30          	push	#48
6303  0c7b ae0030        	ldw	x,#48
6304  0c7e a651          	ld	a,#81
6305  0c80 95            	ld	xh,a
6306  0c81 8db300b3      	callf	L76f_hdmirxset
6308  0c85 84            	pop	a
6310  0c86 200d          	jra	L1562
6311  0c88               L7462:
6312                     ; 1744 	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),0x00);	// for output  single Pixel mode
6314  0c88 4b00          	push	#0
6315  0c8a ae0030        	ldw	x,#48
6316  0c8d a651          	ld	a,#81
6317  0c8f 95            	ld	xh,a
6318  0c90 8db300b3      	callf	L76f_hdmirxset
6320  0c94 84            	pop	a
6321  0c95               L1562:
6322                     ; 1748 }
6325  0c95 5b03          	addw	sp,#3
6326  0c97 87            	retf
6364                     ; 1751 static void SetVideoOutputColorFormat(struct it6802_dev_data *it6802)
6364                     ; 1752 {
6365                     	switch	.text
6366  0c98               L551f_SetVideoOutputColorFormat:
6370                     ; 1753 	switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK) {
6372  0c98 e612          	ld	a,(18,x)
6373  0c9a a403          	and	a,#3
6375                     ; 1762 			break;
6376  0c9c 4d            	tnz	a
6377  0c9d 2708          	jreq	L3562
6378  0c9f 4a            	dec	a
6379  0ca0 2714          	jreq	L5562
6380  0ca2 4a            	dec	a
6381  0ca3 2720          	jreq	L7562
6382  0ca5 202b          	jra	L3072
6383  0ca7               L3562:
6384                     ; 1754 		case F_MODE_RGB24 :
6384                     ; 1755 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
6386  0ca7 4b00          	push	#0
6387  0ca9 ae0030        	ldw	x,#48
6388  0cac a665          	ld	a,#101
6389  0cae 95            	ld	xh,a
6390  0caf 8db300b3      	callf	L76f_hdmirxset
6392  0cb3 84            	pop	a
6393                     ; 1756 			break;
6395  0cb4 201c          	jra	L3072
6396  0cb6               L5562:
6397                     ; 1757 		case F_MODE_YUV422 :
6397                     ; 1758 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
6399  0cb6 4b10          	push	#16
6400  0cb8 ae0030        	ldw	x,#48
6401  0cbb a665          	ld	a,#101
6402  0cbd 95            	ld	xh,a
6403  0cbe 8db300b3      	callf	L76f_hdmirxset
6405  0cc2 84            	pop	a
6406                     ; 1759 			break;
6408  0cc3 200d          	jra	L3072
6409  0cc5               L7562:
6410                     ; 1760 		case F_MODE_YUV444 :
6410                     ; 1761 			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
6412  0cc5 4b20          	push	#32
6413  0cc7 ae0030        	ldw	x,#48
6414  0cca a665          	ld	a,#101
6415  0ccc 95            	ld	xh,a
6416  0ccd 8db300b3      	callf	L76f_hdmirxset
6418  0cd1 84            	pop	a
6419                     ; 1762 			break;
6421  0cd2               L3072:
6422                     ; 1764 }
6425  0cd2 87            	retf
6471                     ; 1766 void it6802PortSelect(unsigned char ucPortSel)
6471                     ; 1767 {
6472                     	switch	.text
6473  0cd3               f_it6802PortSelect:
6475  0cd3 89            	pushw	x
6476       00000002      OFST:	set	2
6479                     ; 1768 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
6481  0cd4 8d030203      	callf	L501f_get_it6802_dev_data
6483  0cd8 1f01          	ldw	(OFST-1,sp),x
6484                     ; 1778 	hdmirxset(REG_RX_051, B_PORT_SEL, F_PORT_SEL_0); //select port 0
6486  0cda 4b00          	push	#0
6487  0cdc ae0001        	ldw	x,#1
6488  0cdf a651          	ld	a,#81
6489  0ce1 95            	ld	xh,a
6490  0ce2 8db300b3      	callf	L76f_hdmirxset
6492  0ce6 84            	pop	a
6493                     ; 1779 	it6802data->m_ucCurrentHDMIPort = F_PORT_SEL_0;
6495  0ce7 1e01          	ldw	x,(OFST-1,sp)
6496  0ce9 6f11          	clr	(17,x)
6497                     ; 1782 	IT6802SwitchVideoState(it6802data,VSTATE_SyncWait);
6499  0ceb 4b04          	push	#4
6500  0ced 1e02          	ldw	x,(OFST+0,sp)
6501  0cef 8d7a107a      	callf	L702f_IT6802SwitchVideoState
6503  0cf3 84            	pop	a
6504                     ; 1784 }
6507  0cf4 85            	popw	x
6508  0cf5 87            	retf
6531                     ; 1793 static void aud_fiforst( void )
6531                     ; 1794 {
6532                     	switch	.text
6533  0cf6               L751f_aud_fiforst:
6537                     ; 1795 	hdmirxset(REG_RX_010, 0x02, 0x02);
6539  0cf6 4b02          	push	#2
6540  0cf8 ae0002        	ldw	x,#2
6541  0cfb a610          	ld	a,#16
6542  0cfd 95            	ld	xh,a
6543  0cfe 8db300b3      	callf	L76f_hdmirxset
6545  0d02 84            	pop	a
6546                     ; 1796 	hdmirxset(REG_RX_010, 0x02, 0x00);
6548  0d03 4b00          	push	#0
6549  0d05 ae0002        	ldw	x,#2
6550  0d08 a610          	ld	a,#16
6551  0d0a 95            	ld	xh,a
6552  0d0b 8db300b3      	callf	L76f_hdmirxset
6554  0d0f 84            	pop	a
6555                     ; 1797 }
6558  0d10 87            	retf
6591                     ; 1800 static void IT6802AudioOutputEnable(unsigned char bEnable)
6591                     ; 1801 {
6592                     	switch	.text
6593  0d11               L161f_IT6802AudioOutputEnable:
6597                     ; 1802 	if(bEnable==TRUE)
6599  0d11 a101          	cp	a,#1
6600  0d13 260f          	jrne	L3572
6601                     ; 1804 		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),0x00);
6603  0d15 4b00          	push	#0
6604  0d17 ae001f        	ldw	x,#31
6605  0d1a a652          	ld	a,#82
6606  0d1c 95            	ld	xh,a
6607  0d1d 8db300b3      	callf	L76f_hdmirxset
6609  0d21 84            	pop	a
6611  0d22 200d          	jra	L5572
6612  0d24               L3572:
6613                     ; 1808 		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),(B_TriI2SIO|B_TriSPDIF));
6615  0d24 4b1f          	push	#31
6616  0d26 ae001f        	ldw	x,#31
6617  0d29 a652          	ld	a,#82
6618  0d2b 95            	ld	xh,a
6619  0d2c 8db300b3      	callf	L76f_hdmirxset
6621  0d30 84            	pop	a
6622  0d31               L5572:
6623                     ; 1810 }
6626  0d31 87            	retf
6649                     ; 1814 static void hdmirx_ResetAudio(void)
6649                     ; 1815 {
6650                     	switch	.text
6651  0d32               L361f_hdmirx_ResetAudio:
6655                     ; 1816 	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,B_AUDRST);
6657  0d32 4b02          	push	#2
6658  0d34 ae0002        	ldw	x,#2
6659  0d37 a610          	ld	a,#16
6660  0d39 95            	ld	xh,a
6661  0d3a 8db300b3      	callf	L76f_hdmirxset
6663  0d3e 84            	pop	a
6664                     ; 1817 	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,0x00);
6666  0d3f 4b00          	push	#0
6667  0d41 ae0002        	ldw	x,#2
6668  0d44 a610          	ld	a,#16
6669  0d46 95            	ld	xh,a
6670  0d47 8db300b3      	callf	L76f_hdmirxset
6672  0d4b 84            	pop	a
6673                     ; 1818 }
6676  0d4c 87            	retf
6700                     ; 1821 static void hdmirx_SetHWMuteClrMode(void)
6700                     ; 1822 {
6701                     	switch	.text
6702  0d4d               L561f_hdmirx_SetHWMuteClrMode:
6706                     ; 1823     hdmirxset(REG_RX_HWMuteCtrl,(B_HWAudMuteClrMode),(B_HWAudMuteClrMode));
6708  0d4d 4b20          	push	#32
6709  0d4f ae0020        	ldw	x,#32
6710  0d52 a67d          	ld	a,#125
6711  0d54 95            	ld	xh,a
6712  0d55 8db300b3      	callf	L76f_hdmirxset
6714  0d59 84            	pop	a
6715                     ; 1824 }
6718  0d5a 87            	retf
6742                     ; 1826 static void hdmirx_SetHWMuteClr(void)
6742                     ; 1827 {
6743                     	switch	.text
6744  0d5b               L761f_hdmirx_SetHWMuteClr:
6748                     ; 1828     hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),(B_HWMuteClr));
6750  0d5b 4b10          	push	#16
6751  0d5d ae0010        	ldw	x,#16
6752  0d60 a67d          	ld	a,#125
6753  0d62 95            	ld	xh,a
6754  0d63 8db300b3      	callf	L76f_hdmirxset
6756  0d67 84            	pop	a
6757                     ; 1829 }
6760  0d68 87            	retf
6784                     ; 1831 static void hdmirx_ClearHWMuteClr(void)
6784                     ; 1832 {
6785                     	switch	.text
6786  0d69               L171f_hdmirx_ClearHWMuteClr:
6790                     ; 1833     hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),0);
6792  0d69 4b00          	push	#0
6793  0d6b ae0010        	ldw	x,#16
6794  0d6e a67d          	ld	a,#125
6795  0d70 95            	ld	xh,a
6796  0d71 8db300b3      	callf	L76f_hdmirxset
6798  0d75 84            	pop	a
6799                     ; 1834 }
6802  0d76 87            	retf
6847                     ; 1839 static void getHDMIRXInputAudio(AUDIO_CAPS *pAudioCaps)
6847                     ; 1840 {
6848                     	switch	.text
6849  0d77               L371f_getHDMIRXInputAudio:
6851  0d77 89            	pushw	x
6852  0d78 88            	push	a
6853       00000001      OFST:	set	1
6856                     ; 1844     uc = hdmirxrd(REG_RX_0AE);	// REG_RX_AUD_CHSTAT3
6858  0d79 a6ae          	ld	a,#174
6859  0d7b 8d390039      	callf	L36f_hdmirxrd
6861  0d7f 6b01          	ld	(OFST+0,sp),a
6862                     ; 1845     pAudioCaps->SampleFreq = uc & M_FS;
6864  0d81 7b01          	ld	a,(OFST+0,sp)
6865  0d83 a40f          	and	a,#15
6866  0d85 1e02          	ldw	x,(OFST+1,sp)
6867  0d87 e702          	ld	(2,x),a
6868                     ; 1847     uc = hdmirxrd(REG_RX_0AA);	//REG_RX_AUDIO_CH_STAT
6870  0d89 a6aa          	ld	a,#170
6871  0d8b 8d390039      	callf	L36f_hdmirxrd
6873  0d8f 6b01          	ld	(OFST+0,sp),a
6874                     ; 1848     pAudioCaps->AudioFlag = uc & 0xF0;
6876  0d91 7b01          	ld	a,(OFST+0,sp)
6877  0d93 a4f0          	and	a,#240
6878  0d95 1e02          	ldw	x,(OFST+1,sp)
6879  0d97 f7            	ld	(x),a
6880                     ; 1849     pAudioCaps->AudSrcEnable=uc&M_AUDIO_CH;
6882  0d98 7b01          	ld	a,(OFST+0,sp)
6883  0d9a a40f          	and	a,#15
6884  0d9c 1e02          	ldw	x,(OFST+1,sp)
6885  0d9e e701          	ld	(1,x),a
6886                     ; 1850     pAudioCaps->AudSrcEnable|=hdmirxrd(REG_RX_0AA)&M_AUDIO_CH;
6888  0da0 a6aa          	ld	a,#170
6889  0da2 8d390039      	callf	L36f_hdmirxrd
6891  0da6 a40f          	and	a,#15
6892  0da8 1e02          	ldw	x,(OFST+1,sp)
6893  0daa ea01          	or	a,(1,x)
6894  0dac e701          	ld	(1,x),a
6895                     ; 1852     if( (uc & (B_HBRAUDIO|B_DSDAUDIO)) == 0)
6897  0dae 7b01          	ld	a,(OFST+0,sp)
6898  0db0 a560          	bcp	a,#96
6899  0db2 2614          	jrne	L1403
6900                     ; 1854         uc = hdmirxrd(REG_RX_0AB);	//REG_RX_AUD_CHSTAT0
6902  0db4 a6ab          	ld	a,#171
6903  0db6 8d390039      	callf	L36f_hdmirxrd
6905  0dba 6b01          	ld	(OFST+0,sp),a
6906                     ; 1856         if( (uc & B_NLPCM ) == 0 )
6908  0dbc 7b01          	ld	a,(OFST+0,sp)
6909  0dbe a501          	bcp	a,#1
6910  0dc0 2606          	jrne	L1403
6911                     ; 1858             pAudioCaps->AudioFlag |= B_CAP_LPCM;
6913  0dc2 1e02          	ldw	x,(OFST+1,sp)
6914  0dc4 f6            	ld	a,(x)
6915  0dc5 aa01          	or	a,#1
6916  0dc7 f7            	ld	(x),a
6917  0dc8               L1403:
6918                     ; 1862 }
6921  0dc8 5b03          	addw	sp,#3
6922  0dca 87            	retf
6975                     ; 1867 static void IT6802SwitchAudioState(struct it6802_dev_data *it6802,Audio_State_Type state)
6975                     ; 1868 {
6976                     	switch	.text
6977  0dcb               L571f_IT6802SwitchAudioState:
6979  0dcb 89            	pushw	x
6980       00000000      OFST:	set	0
6983                     ; 1871 	if( it6802->m_AState == state )
6985  0dcc e601          	ld	a,(1,x)
6986  0dce 1106          	cp	a,(OFST+6,sp)
6987  0dd0 2604ac530e53  	jreq	L671
6988                     ; 1873 	    return ;
6990                     ; 1876 	HDMIRX_AUDIO_PRINTF(printf(AStateStr[(unsigned char)state]));
6992  0dd6 7b06          	ld	a,(OFST+6,sp)
6993  0dd8 5f            	clrw	x
6994  0dd9 97            	ld	xl,a
6995  0dda 58            	sllw	x
6996  0ddb de002c        	ldw	x,(_AStateStr,x)
6997  0dde 8d000000      	callf	f_printf
6999                     ; 1877 	HDMIRX_AUDIO_PRINTF(printf("+++ \r\n"));
7001  0de2 ae29fe        	ldw	x,#L3013
7002  0de5 8d000000      	callf	f_printf
7004                     ; 1879 	it6802->m_AState=state;
7006  0de9 7b06          	ld	a,(OFST+6,sp)
7007  0deb 1e01          	ldw	x,(OFST+1,sp)
7008  0ded e701          	ld	(1,x),a
7009                     ; 1882 	switch(it6802->m_AState)
7011  0def 1e01          	ldw	x,(OFST+1,sp)
7012  0df1 e601          	ld	a,(1,x)
7014                     ; 1908     	break;
7015  0df3 4d            	tnz	a
7016  0df4 270c          	jreq	L5403
7017  0df6 4a            	dec	a
7018  0df7 271d          	jreq	L7403
7019  0df9 a002          	sub	a,#2
7020  0dfb 2720          	jreq	L1503
7021  0dfd 4a            	dec	a
7022  0dfe 272f          	jreq	L3503
7023  0e00 2051          	jra	L7013
7024  0e02               L5403:
7025                     ; 1884 	case ASTATE_AudioOff:
7025                     ; 1885 		hdmirxset(REG_RX_RST_CTRL, B_AUDRST, B_AUDRST);
7027  0e02 4b02          	push	#2
7028  0e04 ae0002        	ldw	x,#2
7029  0e07 a610          	ld	a,#16
7030  0e09 95            	ld	xh,a
7031  0e0a 8db300b3      	callf	L76f_hdmirxset
7033  0e0e 84            	pop	a
7034                     ; 1886 		IT6802AudioOutputEnable(OFF);
7036  0e0f 4f            	clr	a
7037  0e10 8d110d11      	callf	L161f_IT6802AudioOutputEnable
7039                     ; 1888 		break;
7041  0e14 203d          	jra	L7013
7042  0e16               L7403:
7043                     ; 1889 	case ASTATE_RequestAudio:
7043                     ; 1890 		IT6802AudioOutputEnable(OFF);
7045  0e16 4f            	clr	a
7046  0e17 8d110d11      	callf	L161f_IT6802AudioOutputEnable
7048                     ; 1892 	    break;
7050  0e1b 2036          	jra	L7013
7051  0e1d               L1503:
7052                     ; 1894 	case ASTATE_WaitForReady:
7052                     ; 1895 		hdmirx_SetHWMuteClr();
7054  0e1d 8d5b0d5b      	callf	L761f_hdmirx_SetHWMuteClr
7056                     ; 1896 		hdmirx_ClearHWMuteClr();
7058  0e21 8d690d69      	callf	L171f_hdmirx_ClearHWMuteClr
7060                     ; 1897 		it6802->m_AudioCountingTimer = AUDIO_READY_TIMEOUT;
7062  0e25 1e01          	ldw	x,(OFST+1,sp)
7063  0e27 90ae0015      	ldw	y,#21
7064  0e2b ef0f          	ldw	(15,x),y
7065                     ; 1898 	    break;
7067  0e2d 2024          	jra	L7013
7068  0e2f               L3503:
7069                     ; 1900 	case ASTATE_AudioOn:
7069                     ; 1901 
7069                     ; 1902 		IT6802AudioOutputEnable(ON);
7071  0e2f a601          	ld	a,#1
7072  0e31 8d110d11      	callf	L161f_IT6802AudioOutputEnable
7074                     ; 1904 		HDMIRX_AUDIO_PRINTF(printf("Cat6023 Audio--> Audio flag=%02X,Ch No=%02X,Fs=%02X ... \r\n",
7074                     ; 1905                         		(int)it6802->m_RxAudioCaps.AudioFlag,
7074                     ; 1906                         		(int)it6802->m_RxAudioCaps.AudSrcEnable,
7074                     ; 1907                         		(int)it6802->m_RxAudioCaps.SampleFreq));
7076  0e35 1e01          	ldw	x,(OFST+1,sp)
7077  0e37 e605          	ld	a,(5,x)
7078  0e39 5f            	clrw	x
7079  0e3a 97            	ld	xl,a
7080  0e3b 89            	pushw	x
7081  0e3c 1e03          	ldw	x,(OFST+3,sp)
7082  0e3e e604          	ld	a,(4,x)
7083  0e40 5f            	clrw	x
7084  0e41 97            	ld	xl,a
7085  0e42 89            	pushw	x
7086  0e43 1e05          	ldw	x,(OFST+5,sp)
7087  0e45 e603          	ld	a,(3,x)
7088  0e47 5f            	clrw	x
7089  0e48 97            	ld	xl,a
7090  0e49 89            	pushw	x
7091  0e4a ae29c3        	ldw	x,#L1113
7092  0e4d 8d000000      	callf	f_printf
7094  0e51 5b06          	addw	sp,#6
7095                     ; 1908     	break;
7097  0e53               L7013:
7098                     ; 1910 }
7099  0e53               L671:
7102  0e53 85            	popw	x
7103  0e54 87            	retf
7155                     ; 1912 static void IT6802AudioHandler(struct it6802_dev_data *it6802)
7155                     ; 1913 {
7156                     	switch	.text
7157  0e55               L771f_IT6802AudioHandler:
7159  0e55 89            	pushw	x
7160  0e56 5208          	subw	sp,#8
7161       00000008      OFST:	set	8
7164                     ; 1916    if(it6802->m_AudioCountingTimer > MS_LOOP)
7166  0e58 9093          	ldw	y,x
7167  0e5a 90ee0f        	ldw	y,(15,y)
7168  0e5d 90a30033      	cpw	y,#51
7169  0e61 250c          	jrult	L5413
7170                     ; 1918    it6802->m_AudioCountingTimer -= MS_LOOP;
7172  0e63 9093          	ldw	y,x
7173  0e65 ee0f          	ldw	x,(15,x)
7174  0e67 1d0032        	subw	x,#50
7175  0e6a 90ef0f        	ldw	(15,y),x
7177  0e6d 2006          	jra	L7413
7178  0e6f               L5413:
7179                     ; 1922    it6802->m_AudioCountingTimer = 0;
7181  0e6f 1e09          	ldw	x,(OFST+1,sp)
7182  0e71 905f          	clrw	y
7183  0e73 ef0f          	ldw	(15,x),y
7184  0e75               L7413:
7185                     ; 1926    if(it6802->m_RxHDCPState==RxHDCP_ModeCheck)
7187  0e75 1e09          	ldw	x,(OFST+1,sp)
7188  0e77 e602          	ld	a,(2,x)
7189  0e79 a101          	cp	a,#1
7190  0e7b 2604          	jrne	L402
7191  0e7d ac610f61      	jpf	L202
7192  0e81               L402:
7193                     ; 1927    	return;
7195                     ; 1929     switch(it6802->m_AState)
7197  0e81 1e09          	ldw	x,(OFST+1,sp)
7198  0e83 e601          	ld	a,(1,x)
7200                     ; 1997         break;
7201  0e85 4a            	dec	a
7202  0e86 2713          	jreq	L3113
7203  0e88 a002          	sub	a,#2
7204  0e8a 2604ac150f15  	jreq	L5113
7205  0e90 4a            	dec	a
7206  0e91 2604          	jrne	L602
7207  0e93 ac280f28      	jpf	L7113
7208  0e97               L602:
7209  0e97 ac610f61      	jpf	L5513
7210  0e9b               L3113:
7211                     ; 1931     case ASTATE_RequestAudio:
7211                     ; 1932 
7211                     ; 1933         getHDMIRXInputAudio(&(it6802->m_RxAudioCaps));
7213  0e9b 1e09          	ldw	x,(OFST+1,sp)
7214  0e9d 1c0003        	addw	x,#3
7215  0ea0 8d770d77      	callf	L371f_getHDMIRXInputAudio
7217                     ; 1935         if(it6802->m_RxAudioCaps.AudioFlag & B_CAP_AUDIO_ON)
7219  0ea4 1e09          	ldw	x,(OFST+1,sp)
7220  0ea6 e603          	ld	a,(3,x)
7221  0ea8 a580          	bcp	a,#128
7222  0eaa 2604          	jrne	L012
7223  0eac ac610f61      	jpf	L5513
7224  0eb0               L012:
7225                     ; 1938 		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_256FS);
7227  0eb0 4b10          	push	#16
7228  0eb2 ae0070        	ldw	x,#112
7229  0eb5 a654          	ld	a,#84
7230  0eb7 95            	ld	xh,a
7231  0eb8 8db300b3      	callf	L76f_hdmirxset
7233  0ebc 84            	pop	a
7234                     ; 1940             if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_HBR_AUDIO)
7236  0ebd 1e09          	ldw	x,(OFST+1,sp)
7237  0ebf e603          	ld	a,(3,x)
7238  0ec1 a540          	bcp	a,#64
7239  0ec3 271e          	jreq	L1613
7240                     ; 1942 		HDMIRX_AUDIO_PRINTF(printf("+++++++++++ B_CAP_HBR_AUDIO +++++++++++++++++\r\n"));
7242  0ec5 ae2993        	ldw	x,#L3613
7243  0ec8 8d000000      	callf	f_printf
7245                     ; 1944 		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_128FS);	// MCLK = 128fs only for HBR audio
7247  0ecc 4b00          	push	#0
7248  0ece ae0070        	ldw	x,#112
7249  0ed1 a654          	ld	a,#84
7250  0ed3 95            	ld	xh,a
7251  0ed4 8db300b3      	callf	L76f_hdmirxset
7253  0ed8 84            	pop	a
7254                     ; 1946 		hdmirx_SetHWMuteClrMode();
7256  0ed9 8d4d0d4d      	callf	L561f_hdmirx_SetHWMuteClrMode
7258                     ; 1947 		hdmirx_ResetAudio();
7260  0edd 8d320d32      	callf	L361f_hdmirx_ResetAudio
7263  0ee1 2027          	jra	L5613
7264  0ee3               L1613:
7265                     ; 1949             else if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_DSD_AUDIO )
7267  0ee3 1e09          	ldw	x,(OFST+1,sp)
7268  0ee5 e603          	ld	a,(3,x)
7269  0ee7 a520          	bcp	a,#32
7270  0ee9 270a          	jreq	L7613
7271                     ; 1952                 hdmirx_SetHWMuteClrMode();
7273  0eeb 8d4d0d4d      	callf	L561f_hdmirx_SetHWMuteClrMode
7275                     ; 1953                 hdmirx_ResetAudio();
7277  0eef 8d320d32      	callf	L361f_hdmirx_ResetAudio
7280  0ef3 2015          	jra	L5613
7281  0ef5               L7613:
7282                     ; 1958 		hdmirxset(REG_RX_HWMuteCtrl,B_HWMuteClr,0x00);
7284  0ef5 4b00          	push	#0
7285  0ef7 ae0010        	ldw	x,#16
7286  0efa a67d          	ld	a,#125
7287  0efc 95            	ld	xh,a
7288  0efd 8db300b3      	callf	L76f_hdmirxset
7290  0f01 84            	pop	a
7291                     ; 1959 		hdmirx_SetHWMuteClrMode();
7293  0f02 8d4d0d4d      	callf	L561f_hdmirx_SetHWMuteClrMode
7295                     ; 1960 		hdmirx_ResetAudio();
7297  0f06 8d320d32      	callf	L361f_hdmirx_ResetAudio
7299  0f0a               L5613:
7300                     ; 1964             IT6802SwitchAudioState(it6802,ASTATE_WaitForReady);
7302  0f0a 4b03          	push	#3
7303  0f0c 1e0a          	ldw	x,(OFST+2,sp)
7304  0f0e 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
7306  0f12 84            	pop	a
7307  0f13 204c          	jra	L5513
7308  0f15               L5113:
7309                     ; 1969     case ASTATE_WaitForReady:
7309                     ; 1970 
7309                     ; 1971 	//if(AudioTimeOutCheck(AUDIO_READY_TIMEOUT))
7309                     ; 1972 	if(it6802->m_AudioCountingTimer==0)
7311  0f15 1e09          	ldw	x,(OFST+1,sp)
7312  0f17 e610          	ld	a,(16,x)
7313  0f19 ea0f          	or	a,(15,x)
7314  0f1b 2644          	jrne	L5513
7315                     ; 1974             IT6802SwitchAudioState(it6802,ASTATE_AudioOn);
7317  0f1d 4b04          	push	#4
7318  0f1f 1e0a          	ldw	x,(OFST+2,sp)
7319  0f21 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
7321  0f25 84            	pop	a
7322  0f26 2039          	jra	L5513
7323  0f28               L7113:
7324                     ; 1978     case ASTATE_AudioOn:
7324                     ; 1979 	//if(AudioTimeOutCheck(AUDIO_MONITOR_TIMEOUT)==TRUE)
7324                     ; 1980 	if(it6802->m_AudioCountingTimer==0)
7326  0f28 1e09          	ldw	x,(OFST+1,sp)
7327  0f2a e610          	ld	a,(16,x)
7328  0f2c ea0f          	or	a,(15,x)
7329  0f2e 2631          	jrne	L5513
7330                     ; 1985 		it6802->m_AudioCountingTimer = AUDIO_MONITOR_TIMEOUT;
7332  0f30 1e09          	ldw	x,(OFST+1,sp)
7333  0f32 90ae0097      	ldw	y,#151
7334  0f36 ef0f          	ldw	(15,x),y
7335                     ; 1987 		getHDMIRXInputAudio(&CurAudioCaps);
7337  0f38 96            	ldw	x,sp
7338  0f39 1c0001        	addw	x,#OFST-7
7339  0f3c 8d770d77      	callf	L371f_getHDMIRXInputAudio
7341                     ; 1989 	        if(it6802->m_RxAudioCaps.AudioFlag != CurAudioCaps.AudioFlag
7341                     ; 1990 	           || it6802->m_RxAudioCaps.AudSrcEnable != CurAudioCaps.AudSrcEnable
7341                     ; 1991 	           || it6802->m_RxAudioCaps.SampleFreq != CurAudioCaps.SampleFreq)
7343  0f40 1e09          	ldw	x,(OFST+1,sp)
7344  0f42 e603          	ld	a,(3,x)
7345  0f44 1101          	cp	a,(OFST-7,sp)
7346  0f46 2610          	jrne	L1023
7348  0f48 1e09          	ldw	x,(OFST+1,sp)
7349  0f4a e604          	ld	a,(4,x)
7350  0f4c 1102          	cp	a,(OFST-6,sp)
7351  0f4e 2608          	jrne	L1023
7353  0f50 1e09          	ldw	x,(OFST+1,sp)
7354  0f52 e605          	ld	a,(5,x)
7355  0f54 1103          	cp	a,(OFST-5,sp)
7356  0f56 2709          	jreq	L5513
7357  0f58               L1023:
7358                     ; 1994 			IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
7360  0f58 4b01          	push	#1
7361  0f5a 1e0a          	ldw	x,(OFST+2,sp)
7362  0f5c 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
7364  0f60 84            	pop	a
7365  0f61               L5513:
7366                     ; 1999 }
7367  0f61               L202:
7370  0f61 5b0a          	addw	sp,#10
7371  0f63 87            	retf
7406                     ; 2009 static void IT6802_AFE_Rst( void )
7406                     ; 2010 {
7407                     	switch	.text
7408  0f64               L102f_IT6802_AFE_Rst:
7410  0f64 88            	push	a
7411       00000001      OFST:	set	1
7414                     ; 2013 	chgbank(0);
7416  0f65 5f            	clrw	x
7417  0f66 8d440544      	callf	L711f_chgbank
7419                     ; 2014 	Reg51h = hdmirxrd(0x51);
7421  0f6a a651          	ld	a,#81
7422  0f6c 8d390039      	callf	L36f_hdmirxrd
7424  0f70 6b01          	ld	(OFST+0,sp),a
7425                     ; 2015 	if( Reg51h&0x01 ) {
7427  0f72 7b01          	ld	a,(OFST+0,sp)
7428  0f74 a501          	bcp	a,#1
7429  0f76 2723          	jreq	L1223
7430                     ; 2016 		hdmirxset(0x11, 0x0C, 0x0C);
7432  0f78 4b0c          	push	#12
7433  0f7a ae000c        	ldw	x,#12
7434  0f7d a611          	ld	a,#17
7435  0f7f 95            	ld	xh,a
7436  0f80 8db300b3      	callf	L76f_hdmirxset
7438  0f84 84            	pop	a
7439                     ; 2017 		delay1ms(1);
7441  0f85 ae0001        	ldw	x,#1
7442  0f88 8d000000      	callf	f_IR_DelayNMiliseconds
7444                     ; 2018 		hdmirxset(0x11, 0x0C, 0x00);
7446  0f8c 4b00          	push	#0
7447  0f8e ae000c        	ldw	x,#12
7448  0f91 a611          	ld	a,#17
7449  0f93 95            	ld	xh,a
7450  0f94 8db300b3      	callf	L76f_hdmirxset
7452  0f98 84            	pop	a
7454  0f99 2021          	jra	L3223
7455  0f9b               L1223:
7456                     ; 2021 		hdmirxset(0x18, 0x0C, 0x0C);
7458  0f9b 4b0c          	push	#12
7459  0f9d ae000c        	ldw	x,#12
7460  0fa0 a618          	ld	a,#24
7461  0fa2 95            	ld	xh,a
7462  0fa3 8db300b3      	callf	L76f_hdmirxset
7464  0fa7 84            	pop	a
7465                     ; 2022 		delay1ms(1);
7467  0fa8 ae0001        	ldw	x,#1
7468  0fab 8d000000      	callf	f_IR_DelayNMiliseconds
7470                     ; 2023 		hdmirxset(0x18, 0x0C, 0x00);
7472  0faf 4b00          	push	#0
7473  0fb1 ae000c        	ldw	x,#12
7474  0fb4 a618          	ld	a,#24
7475  0fb6 95            	ld	xh,a
7476  0fb7 8db300b3      	callf	L76f_hdmirxset
7478  0fbb 84            	pop	a
7479  0fbc               L3223:
7480                     ; 2025 }
7483  0fbc 84            	pop	a
7484  0fbd 87            	retf
7530                     ; 2027 static void IT6802_SetVideoMute(struct it6802_dev_data *it6802,unsigned char bMute)
7530                     ; 2028 {
7531                     	switch	.text
7532  0fbe               L302f_IT6802_SetVideoMute:
7534  0fbe 89            	pushw	x
7535       00000000      OFST:	set	0
7538                     ; 2030     if(bMute)
7540  0fbf 0d06          	tnz	(OFST+6,sp)
7541  0fc1 2729          	jreq	L7423
7542                     ; 2033 	hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
7544  0fc3 4bc0          	push	#192
7545  0fc5 ae00c0        	ldw	x,#192
7546  0fc8 a653          	ld	a,#83
7547  0fca 95            	ld	xh,a
7548  0fcb 8db300b3      	callf	L76f_hdmirxset
7550  0fcf 84            	pop	a
7551                     ; 2034 	hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
7553  0fd0 4b20          	push	#32
7554  0fd2 ae0020        	ldw	x,#32
7555  0fd5 a652          	ld	a,#82
7556  0fd7 95            	ld	xh,a
7557  0fd8 8db300b3      	callf	L76f_hdmirxset
7559  0fdc 84            	pop	a
7560                     ; 2035 	hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output
7562  0fdd 4b00          	push	#0
7563  0fdf ae000e        	ldw	x,#14
7564  0fe2 a653          	ld	a,#83
7565  0fe4 95            	ld	xh,a
7566  0fe5 8db300b3      	callf	L76f_hdmirxset
7568  0fe9 84            	pop	a
7570  0fea 206c          	jra	L1523
7571  0fec               L7423:
7572                     ; 2039         if(it6802->m_VState == VSTATE_VideoOn)
7574  0fec 1e01          	ldw	x,(OFST+1,sp)
7575  0fee f6            	ld	a,(x)
7576  0fef a10a          	cp	a,#10
7577  0ff1 2665          	jrne	L1523
7578                     ; 2042 		hdmirxset(REG_RX_053,(B_TriSYNC),(0x00));								//Reg53[0] = 0;                 // for enable video sync
7580  0ff3 4b00          	push	#0
7581  0ff5 ae0001        	ldw	x,#1
7582  0ff8 a653          	ld	a,#83
7583  0ffa 95            	ld	xh,a
7584  0ffb 8db300b3      	callf	L76f_hdmirxset
7586  0fff 84            	pop	a
7587                     ; 2043 		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[3:1] = 000;         // 0 for enable video io data output
7589  1000 4b00          	push	#0
7590  1002 ae000e        	ldw	x,#14
7591  1005 a653          	ld	a,#83
7592  1007 95            	ld	xh,a
7593  1008 8db300b3      	callf	L76f_hdmirxset
7595  100c 84            	pop	a
7596                     ; 2045             if(CheckAVMute()==TRUE)
7598  100d 8d6d066d      	callf	L521f_CheckAVMute
7600  1011 a101          	cp	a,#1
7601  1013 260f          	jrne	L5523
7602                     ; 2047 		hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
7604  1015 4b20          	push	#32
7605  1017 ae0020        	ldw	x,#32
7606  101a a652          	ld	a,#82
7607  101c 95            	ld	xh,a
7608  101d 8db300b3      	callf	L76f_hdmirxset
7610  1021 84            	pop	a
7612  1022 2034          	jra	L1523
7613  1024               L5523:
7614                     ; 2052 		hdmirxset(REG_RX_053,(B_TriVDIO),(B_TriVDIO));							//Reg53[2:0] = 111;         // 1 for enable tri-state of video io data
7616  1024 4b0e          	push	#14
7617  1026 ae000e        	ldw	x,#14
7618  1029 a653          	ld	a,#83
7619  102b 95            	ld	xh,a
7620  102c 8db300b3      	callf	L76f_hdmirxset
7622  1030 84            	pop	a
7623                     ; 2053 		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output
7625  1031 4b00          	push	#0
7626  1033 ae000e        	ldw	x,#14
7627  1036 a653          	ld	a,#83
7628  1038 95            	ld	xh,a
7629  1039 8db300b3      	callf	L76f_hdmirxset
7631  103d 84            	pop	a
7632                     ; 2055 		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
7634  103e 4bc0          	push	#192
7635  1040 ae00c0        	ldw	x,#192
7636  1043 a653          	ld	a,#83
7637  1045 95            	ld	xh,a
7638  1046 8db300b3      	callf	L76f_hdmirxset
7640  104a 84            	pop	a
7641                     ; 2056 		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VIOSel));				//Reg53[7][5] = 01    // for disable B_VDIO_GATTING
7643  104b 4b40          	push	#64
7644  104d ae00c0        	ldw	x,#192
7645  1050 a653          	ld	a,#83
7646  1052 95            	ld	xh,a
7647  1053 8db300b3      	callf	L76f_hdmirxset
7649  1057 84            	pop	a
7650  1058               L1523:
7651                     ; 2063 }
7654  1058 85            	popw	x
7655  1059 87            	retf
7688                     ; 2091 static void IT6802VideoOutputEnable(unsigned char bEnableOutput)
7688                     ; 2092 {
7689                     	switch	.text
7690  105a               L502f_IT6802VideoOutputEnable:
7694                     ; 2093 	if(bEnableOutput)
7696  105a 4d            	tnz	a
7697  105b 270f          	jreq	L5723
7698                     ; 2096 		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(0x00));
7700  105d 4b00          	push	#0
7701  105f ae000f        	ldw	x,#15
7702  1062 a653          	ld	a,#83
7703  1064 95            	ld	xh,a
7704  1065 8db300b3      	callf	L76f_hdmirxset
7706  1069 84            	pop	a
7708  106a 200d          	jra	L7723
7709  106c               L5723:
7710                     ; 2102 		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(B_TriSYNC|B_TriVDIO));
7712  106c 4b0f          	push	#15
7713  106e ae000f        	ldw	x,#15
7714  1071 a653          	ld	a,#83
7715  1073 95            	ld	xh,a
7716  1074 8db300b3      	callf	L76f_hdmirxset
7718  1078 84            	pop	a
7719  1079               L7723:
7720                     ; 2104 }
7723  1079 87            	retf
7779                     ; 2108 static void IT6802SwitchVideoState(struct it6802_dev_data *it6802,Video_State_Type  eNewVState)
7779                     ; 2109 {
7780                     	switch	.text
7781  107a               L702f_IT6802SwitchVideoState:
7783  107a 89            	pushw	x
7784       00000000      OFST:	set	0
7787                     ; 2111 	if(it6802->m_VState==eNewVState)
7789  107b f6            	ld	a,(x)
7790  107c 1106          	cp	a,(OFST+6,sp)
7791  107e 2604ac011101  	jreq	L222
7792                     ; 2112 		return;
7794                     ; 2114 	HDMIRX_VIDEO_PRINTF(printf(VStateStr[(unsigned char)eNewVState]));
7796  1084 7b06          	ld	a,(OFST+6,sp)
7797  1086 5f            	clrw	x
7798  1087 97            	ld	xl,a
7799  1088 58            	sllw	x
7800  1089 de0010        	ldw	x,(_VStateStr,x)
7801  108c 8d000000      	callf	f_printf
7803                     ; 2115 	HDMIRX_VIDEO_PRINTF(printf("+++ \r\n"));
7805  1090 ae29fe        	ldw	x,#L3013
7806  1093 8d000000      	callf	f_printf
7808                     ; 2118 	it6802->m_VState=eNewVState;
7810  1097 7b06          	ld	a,(OFST+6,sp)
7811  1099 1e01          	ldw	x,(OFST+1,sp)
7812  109b f7            	ld	(x),a
7813                     ; 2121 	switch(it6802->m_VState)
7815  109c 1e01          	ldw	x,(OFST+1,sp)
7816  109e f6            	ld	a,(x)
7818                     ; 2176 			break;
7819  109f a004          	sub	a,#4
7820  10a1 2712          	jreq	L3033
7821  10a3 4a            	dec	a
7822  10a4 2709          	jreq	L1033
7823  10a6 4a            	dec	a
7824  10a7 2727          	jreq	L5033
7825  10a9 a004          	sub	a,#4
7826  10ab 272d          	jreq	L7033
7827  10ad 2052          	jra	L1433
7828  10af               L1033:
7829                     ; 2125 				IT6802_AFE_Rst();
7831  10af 8d640f64      	callf	L102f_IT6802_AFE_Rst
7833                     ; 2127 			break;
7835  10b3 204c          	jra	L1433
7836  10b5               L3033:
7837                     ; 2132 				IT6802VideoOutputEnable(FALSE);
7839  10b5 4f            	clr	a
7840  10b6 8d5a105a      	callf	L502f_IT6802VideoOutputEnable
7842                     ; 2133 				it6802->m_NewAVIInfoFrameF=FALSE;
7844  10ba 1e01          	ldw	x,(OFST+1,sp)
7845  10bc e675          	ld	a,(117,x)
7846  10be a4df          	and	a,#223
7847  10c0 e775          	ld	(117,x),a
7848                     ; 2134 				it6802->m_ucDeskew_P0=0;
7850  10c2 1e01          	ldw	x,(OFST+1,sp)
7851  10c4 6f17          	clr	(23,x)
7852                     ; 2135 				it6802->m_ucDeskew_P1=0;
7854  10c6 1e01          	ldw	x,(OFST+1,sp)
7855  10c8 6f18          	clr	(24,x)
7856                     ; 2136 				it6802->m_ucSCDTOffCount=0;
7858  10ca 1e01          	ldw	x,(OFST+1,sp)
7859  10cc 6f14          	clr	(20,x)
7860                     ; 2144 			break;
7862  10ce 2031          	jra	L1433
7863  10d0               L5033:
7864                     ; 2151 				it6802->m_VideoCountingTimer = VSATE_CONFIRM_SCDT_COUNT;
7866  10d0 1e01          	ldw	x,(OFST+1,sp)
7867  10d2 90ae0065      	ldw	y,#101
7868  10d6 ef0d          	ldw	(13,x),y
7869                     ; 2158 			break;
7871  10d8 2027          	jra	L1433
7872  10da               L7033:
7873                     ; 2161 				IT6802VideoOutputConfigure(it6802);
7875  10da 1e01          	ldw	x,(OFST+1,sp)
7876  10dc 8ddd0bdd      	callf	L351f_IT6802VideoOutputConfigure
7878                     ; 2162 				IT6802VideoOutputEnable(TRUE);
7880  10e0 a601          	ld	a,#1
7881  10e2 8d5a105a      	callf	L502f_IT6802VideoOutputEnable
7883                     ; 2163 				IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
7885  10e6 4b01          	push	#1
7886  10e8 1e02          	ldw	x,(OFST+2,sp)
7887  10ea 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
7889  10ee 84            	pop	a
7890                     ; 2165 				get_vid_info();
7892  10ef 8de634e6      	callf	f_get_vid_info
7894                     ; 2166 				show_vid_info();
7896  10f3 8d4d364d      	callf	f_show_vid_info
7898                     ; 2168 				hdmirxwr(0x84, 0x8F);	//2011/06/17 xxxxx, for enable Rx Chip count
7900  10f7 ae008f        	ldw	x,#143
7901  10fa a684          	ld	a,#132
7902  10fc 95            	ld	xh,a
7903  10fd 8d690069      	callf	L56f_hdmirxwr
7905                     ; 2176 			break;
7907  1101               L1433:
7908                     ; 2179 }
7909  1101               L222:
7912  1101 85            	popw	x
7913  1102 87            	retf
7955                     ; 2182 static void IT6802VideoHandler(struct it6802_dev_data *it6802)
7955                     ; 2183 {
7956                     	switch	.text
7957  1103               L112f_IT6802VideoHandler:
7959  1103 89            	pushw	x
7960       00000000      OFST:	set	0
7963                     ; 2186 	if(it6802->m_VideoCountingTimer > MS_LOOP)
7965  1104 9093          	ldw	y,x
7966  1106 90ee0d        	ldw	y,(13,y)
7967  1109 90a30033      	cpw	y,#51
7968  110d 250c          	jrult	L1733
7969                     ; 2188 	it6802->m_VideoCountingTimer -= MS_LOOP;
7971  110f 9093          	ldw	y,x
7972  1111 ee0d          	ldw	x,(13,x)
7973  1113 1d0032        	subw	x,#50
7974  1116 90ef0d        	ldw	(13,y),x
7976  1119 2006          	jra	L3733
7977  111b               L1733:
7978                     ; 2192 	it6802->m_VideoCountingTimer = 0;
7980  111b 1e01          	ldw	x,(OFST+1,sp)
7981  111d 905f          	clrw	y
7982  111f ef0d          	ldw	(13,x),y
7983  1121               L3733:
7984                     ; 2197 	switch(it6802->m_VState)
7986  1121 1e01          	ldw	x,(OFST+1,sp)
7987  1123 f6            	ld	a,(x)
7989                     ; 2252 			break;
7990  1124 a004          	sub	a,#4
7991  1126 270a          	jreq	L3433
7992  1128 a002          	sub	a,#2
7993  112a 270e          	jreq	L5433
7994  112c a004          	sub	a,#4
7995  112e 271d          	jreq	L7433
7996  1130 2053          	jra	L7733
7997  1132               L3433:
7998                     ; 2204 				WaitingForSCDT(it6802);
8000  1132 1e01          	ldw	x,(OFST+1,sp)
8001  1134 8dbd05bd      	callf	L321f_WaitingForSCDT
8003                     ; 2214 			break;
8005  1138 204b          	jra	L7733
8006  113a               L5433:
8007                     ; 2218 			        if(it6802->m_VideoCountingTimer == 0)
8009  113a 1e01          	ldw	x,(OFST+1,sp)
8010  113c e60e          	ld	a,(14,x)
8011  113e ea0d          	or	a,(13,x)
8012  1140 2643          	jrne	L7733
8013                     ; 2220 						IT6802SwitchVideoState(it6802,VSTATE_VideoOn);
8015  1142 4b0a          	push	#10
8016  1144 1e02          	ldw	x,(OFST+2,sp)
8017  1146 8d7a107a      	callf	L702f_IT6802SwitchVideoState
8019  114a 84            	pop	a
8020  114b 2038          	jra	L7733
8021  114d               L7433:
8022                     ; 2226 				if(it6802->m_NewAVIInfoFrameF==TRUE)
8024  114d 1e01          	ldw	x,(OFST+1,sp)
8025  114f e675          	ld	a,(117,x)
8026  1151 a520          	bcp	a,#32
8027  1153 2716          	jreq	L3043
8028                     ; 2228 					if(it6802->m_RxHDCPState != RxHDCP_ModeCheck)
8030  1155 1e01          	ldw	x,(OFST+1,sp)
8031  1157 e602          	ld	a,(2,x)
8032  1159 a101          	cp	a,#1
8033  115b 270e          	jreq	L3043
8034                     ; 2230 						IT6802VideoOutputConfigure(it6802);
8036  115d 1e01          	ldw	x,(OFST+1,sp)
8037  115f 8ddd0bdd      	callf	L351f_IT6802VideoOutputConfigure
8039                     ; 2231 						it6802->m_NewAVIInfoFrameF=FALSE;
8041  1163 1e01          	ldw	x,(OFST+1,sp)
8042  1165 e675          	ld	a,(117,x)
8043  1167 a4df          	and	a,#223
8044  1169 e775          	ld	(117,x),a
8045  116b               L3043:
8046                     ; 2236 				if(hdmirxrd(REG_RX_053)&B_VDGatting)
8048  116b a653          	ld	a,#83
8049  116d 8d390039      	callf	L36f_hdmirxrd
8051  1171 a580          	bcp	a,#128
8052  1173 2710          	jreq	L7733
8053                     ; 2238 			            if(CheckAVMute()==FALSE)
8055  1175 8d6d066d      	callf	L521f_CheckAVMute
8057  1179 4d            	tnz	a
8058  117a 2609          	jrne	L7733
8059                     ; 2240 						IT6802_SetVideoMute(it6802,OFF);
8061  117c 4b00          	push	#0
8062  117e 1e02          	ldw	x,(OFST+2,sp)
8063  1180 8dbe0fbe      	callf	L302f_IT6802_SetVideoMute
8065  1184 84            	pop	a
8066  1185               L7733:
8067                     ; 2254 }
8070  1185 85            	popw	x
8071  1186 87            	retf
8126                     ; 2263 static void hdmirx_INT_5V_Pwr_Chg(struct it6802_dev_data *it6802,unsigned char ucport)
8126                     ; 2264 {
8127                     	switch	.text
8128  1187               L312f_hdmirx_INT_5V_Pwr_Chg:
8130  1187 89            	pushw	x
8131  1188 88            	push	a
8132       00000001      OFST:	set	1
8135                     ; 2267 	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;
8137  1189 a651          	ld	a,#81
8138  118b 8d390039      	callf	L36f_hdmirxrd
8140  118f a401          	and	a,#1
8141  1191 6b01          	ld	(OFST+0,sp),a
8142                     ; 2269 	if(ucPortSel == ucport)
8144  1193 7b01          	ld	a,(OFST+0,sp)
8145  1195 1107          	cp	a,(OFST+6,sp)
8146  1197 262b          	jrne	L7343
8147                     ; 2271 		if(CheckPlg5VPwr(ucport)){
8149  1199 7b07          	ld	a,(OFST+6,sp)
8150  119b 8d9f069f      	callf	L721f_CheckPlg5VPwr
8152  119f 4d            	tnz	a
8153  11a0 2712          	jreq	L1443
8154                     ; 2272 			MHLRX_DEBUG_PRINTF(printf("#### Power 5V ON ####\r\n"));
8156  11a2 ae297b        	ldw	x,#L3443
8157  11a5 8d000000      	callf	f_printf
8159                     ; 2273 			IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
8161  11a9 4b04          	push	#4
8162  11ab 1e03          	ldw	x,(OFST+2,sp)
8163  11ad 8d7a107a      	callf	L702f_IT6802SwitchVideoState
8165  11b1 84            	pop	a
8167  11b2 2010          	jra	L7343
8168  11b4               L1443:
8169                     ; 2276 			MHLRX_DEBUG_PRINTF(printf("#### Power 5V OFF ####\r\n"));
8171  11b4 ae2962        	ldw	x,#L7443
8172  11b7 8d000000      	callf	f_printf
8174                     ; 2277 			IT6802SwitchVideoState(it6802,VSTATE_SWReset);
8176  11bb 4b05          	push	#5
8177  11bd 1e03          	ldw	x,(OFST+2,sp)
8178  11bf 8d7a107a      	callf	L702f_IT6802SwitchVideoState
8180  11c3 84            	pop	a
8181  11c4               L7343:
8182                     ; 2281 }
8185  11c4 5b03          	addw	sp,#3
8186  11c6 87            	retf
8224                     ; 2284 static void hdmirx_INT_P0_ECC(struct it6802_dev_data *it6802)
8224                     ; 2285 {
8225                     	switch	.text
8226  11c7               L512f_hdmirx_INT_P0_ECC:
8230                     ; 2286 	if((it6802->m_ucEccCount_P0++) > ECC_TIMEOUT)
8232  11c7 e615          	ld	a,(21,x)
8233  11c9 6c15          	inc	(21,x)
8234  11cb a12a          	cp	a,#42
8235  11cd 2523          	jrult	L1743
8236                     ; 2288 		it6802->m_ucEccCount_P0=0;
8238  11cf 6f15          	clr	(21,x)
8239                     ; 2290 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 ECC_TIMEOUT !!!\r\n"));
8241  11d1 ae293c        	ldw	x,#L3743
8242  11d4 8d000000      	callf	f_printf
8244                     ; 2292 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
8246  11d8 4b0c          	push	#12
8247  11da ae000c        	ldw	x,#12
8248  11dd a611          	ld	a,#17
8249  11df 95            	ld	xh,a
8250  11e0 8db300b3      	callf	L76f_hdmirxset
8252  11e4 84            	pop	a
8253                     ; 2293 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
8255  11e5 4b00          	push	#0
8256  11e7 ae000c        	ldw	x,#12
8257  11ea a611          	ld	a,#17
8258  11ec 95            	ld	xh,a
8259  11ed 8db300b3      	callf	L76f_hdmirxset
8261  11f1 84            	pop	a
8262  11f2               L1743:
8263                     ; 2296 }
8266  11f2 87            	retf
8304                     ; 2299 static void hdmirx_INT_P1_ECC(struct it6802_dev_data *it6802)
8304                     ; 2300 {
8305                     	switch	.text
8306  11f3               L712f_hdmirx_INT_P1_ECC:
8310                     ; 2301 	if((it6802->m_ucEccCount_P1++) > ECC_TIMEOUT)
8312  11f3 e616          	ld	a,(22,x)
8313  11f5 6c16          	inc	(22,x)
8314  11f7 a12a          	cp	a,#42
8315  11f9 2523          	jrult	L5153
8316                     ; 2303 		it6802->m_ucEccCount_P1=0;
8318  11fb 6f16          	clr	(22,x)
8319                     ; 2305 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 ECC_TIMEOUT !!!\r\n"));
8321  11fd ae2916        	ldw	x,#L7153
8322  1200 8d000000      	callf	f_printf
8324                     ; 2307 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
8326  1204 4b0c          	push	#12
8327  1206 ae000c        	ldw	x,#12
8328  1209 a618          	ld	a,#24
8329  120b 95            	ld	xh,a
8330  120c 8db300b3      	callf	L76f_hdmirxset
8332  1210 84            	pop	a
8333                     ; 2308 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
8335  1211 4b00          	push	#0
8336  1213 ae000c        	ldw	x,#12
8337  1216 a618          	ld	a,#24
8338  1218 95            	ld	xh,a
8339  1219 8db300b3      	callf	L76f_hdmirxset
8341  121d 84            	pop	a
8342  121e               L5153:
8343                     ; 2310 }
8346  121e 87            	retf
8385                     ; 2313 static void hdmirx_INT_P0_Deskew(struct it6802_dev_data *it6802)
8385                     ; 2314 {
8386                     	switch	.text
8387  121f               L122f_hdmirx_INT_P0_Deskew:
8391                     ; 2315 	if((it6802->m_ucDeskew_P0++) > DESKEW_TIMEOUT)
8393  121f e617          	ld	a,(23,x)
8394  1221 6c17          	inc	(23,x)
8395  1223 a12a          	cp	a,#42
8396  1225 2523          	jrult	L1453
8397                     ; 2317 		it6802->m_ucDeskew_P0=0;
8399  1227 6f17          	clr	(23,x)
8400                     ; 2319 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 DESKEW_TIMEOUT !!!\r\n"));
8402  1229 ae28ed        	ldw	x,#L3453
8403  122c 8d000000      	callf	f_printf
8405                     ; 2321 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
8407  1230 4b0c          	push	#12
8408  1232 ae000c        	ldw	x,#12
8409  1235 a611          	ld	a,#17
8410  1237 95            	ld	xh,a
8411  1238 8db300b3      	callf	L76f_hdmirxset
8413  123c 84            	pop	a
8414                     ; 2322 		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
8416  123d 4b00          	push	#0
8417  123f ae000c        	ldw	x,#12
8418  1242 a611          	ld	a,#17
8419  1244 95            	ld	xh,a
8420  1245 8db300b3      	callf	L76f_hdmirxset
8422  1249 84            	pop	a
8423  124a               L1453:
8424                     ; 2325 }
8427  124a 87            	retf
8466                     ; 2328 static void hdmirx_INT_P1_Deskew(struct it6802_dev_data *it6802)
8466                     ; 2329 {
8467                     	switch	.text
8468  124b               L322f_hdmirx_INT_P1_Deskew:
8472                     ; 2330 	if((it6802->m_ucDeskew_P1++) > DESKEW_TIMEOUT)
8474  124b e618          	ld	a,(24,x)
8475  124d 6c18          	inc	(24,x)
8476  124f a12a          	cp	a,#42
8477  1251 2523          	jrult	L5653
8478                     ; 2332 		it6802->m_ucDeskew_P1=0;
8480  1253 6f18          	clr	(24,x)
8481                     ; 2334 		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 DESKEW_TIMEOUT !!!\r\n"));
8483  1255 ae28c4        	ldw	x,#L7653
8484  1258 8d000000      	callf	f_printf
8486                     ; 2336 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
8488  125c 4b0c          	push	#12
8489  125e ae000c        	ldw	x,#12
8490  1261 a618          	ld	a,#24
8491  1263 95            	ld	xh,a
8492  1264 8db300b3      	callf	L76f_hdmirxset
8494  1268 84            	pop	a
8495                     ; 2337 		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
8497  1269 4b00          	push	#0
8498  126b ae000c        	ldw	x,#12
8499  126e a618          	ld	a,#24
8500  1270 95            	ld	xh,a
8501  1271 8db300b3      	callf	L76f_hdmirxset
8503  1275 84            	pop	a
8504  1276               L5653:
8505                     ; 2340 }
8508  1276 87            	retf
8549                     ; 2344 static void hdmirx_INT_HDMIMode_Chg(struct it6802_dev_data *it6802)
8549                     ; 2345 {
8550                     	switch	.text
8551  1277               L522f_hdmirx_INT_HDMIMode_Chg:
8553  1277 89            	pushw	x
8554       00000000      OFST:	set	0
8557                     ; 2346 	if(IsHDMIMode()){
8559  1278 8df806f8      	callf	L131f_IsHDMIMode
8561  127c 4d            	tnz	a
8562  127d 2721          	jreq	L1163
8563                     ; 2347 	    	if(it6802->m_VState==VSTATE_VideoOn)
8565  127f 1e01          	ldw	x,(OFST+1,sp)
8566  1281 f6            	ld	a,(x)
8567  1282 a10a          	cp	a,#10
8568  1284 2609          	jrne	L3163
8569                     ; 2349 			    IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
8571  1286 4b01          	push	#1
8572  1288 1e02          	ldw	x,(OFST+2,sp)
8573  128a 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
8575  128e 84            	pop	a
8576  128f               L3163:
8577                     ; 2351 		it6802->m_bUpHDMIMode = TRUE ;
8579  128f 1e01          	ldw	x,(OFST+1,sp)
8580  1291 e675          	ld	a,(117,x)
8581  1293 aa08          	or	a,#8
8582  1295 e775          	ld	(117,x),a
8583                     ; 2352 		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : HDMI ####\r\n"));
8585  1297 ae28a3        	ldw	x,#L5163
8586  129a 8d000000      	callf	f_printf
8589  129e 202d          	jra	L7163
8590  12a0               L1163:
8591                     ; 2356 		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
8593  12a0 4b00          	push	#0
8594  12a2 1e02          	ldw	x,(OFST+2,sp)
8595  12a4 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
8597  12a8 84            	pop	a
8598                     ; 2357 		it6802->m_NewAVIInfoFrameF=FALSE;
8600  12a9 1e01          	ldw	x,(OFST+1,sp)
8601  12ab e675          	ld	a,(117,x)
8602  12ad a4df          	and	a,#223
8603  12af e775          	ld	(117,x),a
8604                     ; 2358 	    	if(it6802->m_VState==VSTATE_VideoOn)
8606  12b1 1e01          	ldw	x,(OFST+1,sp)
8607  12b3 f6            	ld	a,(x)
8608  12b4 a10a          	cp	a,#10
8609  12b6 2606          	jrne	L1263
8610                     ; 2360 	    		SetDVIVideoOutput(it6802);
8612  12b8 1e01          	ldw	x,(OFST+1,sp)
8613  12ba 8db80bb8      	callf	L151f_SetDVIVideoOutput
8615  12be               L1263:
8616                     ; 2362 		it6802->m_bUpHDMIMode = FALSE ;
8618  12be 1e01          	ldw	x,(OFST+1,sp)
8619  12c0 e675          	ld	a,(117,x)
8620  12c2 a4f7          	and	a,#247
8621  12c4 e775          	ld	(117,x),a
8622                     ; 2363 		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : DVI ####\r\n"));
8624  12c6 ae2883        	ldw	x,#L3263
8625  12c9 8d000000      	callf	f_printf
8627  12cd               L7163:
8628                     ; 2365 }
8631  12cd 85            	popw	x
8632  12ce 87            	retf
8673                     ; 2368 static void hdmirx_INT_SCDT_Chg(struct it6802_dev_data *it6802)
8673                     ; 2369 {
8674                     	switch	.text
8675  12cf               L722f_hdmirx_INT_SCDT_Chg:
8677  12cf 89            	pushw	x
8678       00000000      OFST:	set	0
8681                     ; 2370 	if(CheckSCDT(it6802) == TRUE){
8683  12d0 8d8d058d      	callf	L121f_CheckSCDT
8685  12d4 a101          	cp	a,#1
8686  12d6 2612          	jrne	L5463
8687                     ; 2371 		MHLRX_DEBUG_PRINTF(printf("#### SCDT ON ####\r\n"));
8689  12d8 ae286f        	ldw	x,#L7463
8690  12db 8d000000      	callf	f_printf
8692                     ; 2372 		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);
8694  12df 4b06          	push	#6
8695  12e1 1e02          	ldw	x,(OFST+2,sp)
8696  12e3 8d7a107a      	callf	L702f_IT6802SwitchVideoState
8698  12e7 84            	pop	a
8700  12e8 2019          	jra	L1563
8701  12ea               L5463:
8702                     ; 2375 		MHLRX_DEBUG_PRINTF(printf("#### SCDT OFF ####\r\n"));
8704  12ea ae285a        	ldw	x,#L3563
8705  12ed 8d000000      	callf	f_printf
8707                     ; 2376 		IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
8709  12f1 4b04          	push	#4
8710  12f3 1e02          	ldw	x,(OFST+2,sp)
8711  12f5 8d7a107a      	callf	L702f_IT6802SwitchVideoState
8713  12f9 84            	pop	a
8714                     ; 2377 		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
8716  12fa 4b00          	push	#0
8717  12fc 1e02          	ldw	x,(OFST+2,sp)
8718  12fe 8dcb0dcb      	callf	L571f_IT6802SwitchAudioState
8720  1302 84            	pop	a
8721  1303               L1563:
8722                     ; 2379 }
8725  1303 85            	popw	x
8726  1304 87            	retf
8935                     ; 2388 static void hdcpsts( void )
8935                     ; 2389 {
8936                     	switch	.text
8937  1305               L132f_hdcpsts:
8939  1305 5224          	subw	sp,#36
8940       00000024      OFST:	set	36
8943                     ; 2395     chgbank(2);
8945  1307 ae0002        	ldw	x,#2
8946  130a 8d440544      	callf	L711f_chgbank
8948                     ; 2397 	BKSV1 = hdmirxrd(0x9F);
8950  130e a69f          	ld	a,#159
8951  1310 8d390039      	callf	L36f_hdmirxrd
8953  1314 5f            	clrw	x
8954  1315 97            	ld	xl,a
8955  1316 1f0b          	ldw	(OFST-25,sp),x
8956                     ; 2398 	BKSV2 = hdmirxrd(0xA0);
8958  1318 a6a0          	ld	a,#160
8959  131a 8d390039      	callf	L36f_hdmirxrd
8961  131e 5f            	clrw	x
8962  131f 97            	ld	xl,a
8963  1320 1f0d          	ldw	(OFST-23,sp),x
8964                     ; 2399 	BKSV3 = hdmirxrd(0xA1);
8966  1322 a6a1          	ld	a,#161
8967  1324 8d390039      	callf	L36f_hdmirxrd
8969  1328 5f            	clrw	x
8970  1329 97            	ld	xl,a
8971  132a 1f0f          	ldw	(OFST-21,sp),x
8972                     ; 2400 	BKSV4 = hdmirxrd(0xA2);
8974  132c a6a2          	ld	a,#162
8975  132e 8d390039      	callf	L36f_hdmirxrd
8977  1332 5f            	clrw	x
8978  1333 97            	ld	xl,a
8979  1334 1f11          	ldw	(OFST-19,sp),x
8980                     ; 2401 	BKSV5 = hdmirxrd(0xA3);
8982  1336 a6a3          	ld	a,#163
8983  1338 8d390039      	callf	L36f_hdmirxrd
8985  133c 5f            	clrw	x
8986  133d 97            	ld	xl,a
8987  133e 1f13          	ldw	(OFST-17,sp),x
8988                     ; 2403 	AKSV1 = hdmirxrd(0x9A);
8990  1340 a69a          	ld	a,#154
8991  1342 8d390039      	callf	L36f_hdmirxrd
8993  1346 5f            	clrw	x
8994  1347 97            	ld	xl,a
8995  1348 1f01          	ldw	(OFST-35,sp),x
8996                     ; 2404 	AKSV2 = hdmirxrd(0x9B);
8998  134a a69b          	ld	a,#155
8999  134c 8d390039      	callf	L36f_hdmirxrd
9001  1350 5f            	clrw	x
9002  1351 97            	ld	xl,a
9003  1352 1f03          	ldw	(OFST-33,sp),x
9004                     ; 2405 	AKSV3 = hdmirxrd(0x9C);
9006  1354 a69c          	ld	a,#156
9007  1356 8d390039      	callf	L36f_hdmirxrd
9009  135a 5f            	clrw	x
9010  135b 97            	ld	xl,a
9011  135c 1f05          	ldw	(OFST-31,sp),x
9012                     ; 2406 	AKSV4 = hdmirxrd(0x9D);
9014  135e a69d          	ld	a,#157
9015  1360 8d390039      	callf	L36f_hdmirxrd
9017  1364 5f            	clrw	x
9018  1365 97            	ld	xl,a
9019  1366 1f07          	ldw	(OFST-29,sp),x
9020                     ; 2407 	AKSV5 = hdmirxrd(0x9E);
9022  1368 a69e          	ld	a,#158
9023  136a 8d390039      	callf	L36f_hdmirxrd
9025  136e 5f            	clrw	x
9026  136f 97            	ld	xl,a
9027  1370 1f09          	ldw	(OFST-27,sp),x
9028                     ; 2409 	BMi1 = hdmirxrd(0xA4);
9030  1372 a6a4          	ld	a,#164
9031  1374 8d390039      	callf	L36f_hdmirxrd
9033  1378 5f            	clrw	x
9034  1379 97            	ld	xl,a
9035  137a 1f15          	ldw	(OFST-15,sp),x
9036                     ; 2410 	BMi2 = hdmirxrd(0xA5);
9038  137c a6a5          	ld	a,#165
9039  137e 8d390039      	callf	L36f_hdmirxrd
9041  1382 5f            	clrw	x
9042  1383 97            	ld	xl,a
9043  1384 1f17          	ldw	(OFST-13,sp),x
9044                     ; 2411 	BMi3 = hdmirxrd(0xA6);
9046  1386 a6a6          	ld	a,#166
9047  1388 8d390039      	callf	L36f_hdmirxrd
9049  138c 5f            	clrw	x
9050  138d 97            	ld	xl,a
9051  138e 1f19          	ldw	(OFST-11,sp),x
9052                     ; 2412 	BMi4 = hdmirxrd(0xA7);
9054  1390 a6a7          	ld	a,#167
9055  1392 8d390039      	callf	L36f_hdmirxrd
9057  1396 5f            	clrw	x
9058  1397 97            	ld	xl,a
9059  1398 1f1b          	ldw	(OFST-9,sp),x
9060                     ; 2413 	BMi5 = hdmirxrd(0xA8);
9062  139a a6a8          	ld	a,#168
9063  139c 8d390039      	callf	L36f_hdmirxrd
9065  13a0 5f            	clrw	x
9066  13a1 97            	ld	xl,a
9067  13a2 1f1d          	ldw	(OFST-7,sp),x
9068                     ; 2414 	BMi6 = hdmirxrd(0xA9);
9070  13a4 a6a9          	ld	a,#169
9071  13a6 8d390039      	callf	L36f_hdmirxrd
9073  13aa 5f            	clrw	x
9074  13ab 97            	ld	xl,a
9075  13ac 1f1f          	ldw	(OFST-5,sp),x
9076                     ; 2415 	BMi7 = hdmirxrd(0xAA);
9078  13ae a6aa          	ld	a,#170
9079  13b0 8d390039      	callf	L36f_hdmirxrd
9081  13b4 5f            	clrw	x
9082  13b5 97            	ld	xl,a
9083  13b6 1f21          	ldw	(OFST-3,sp),x
9084                     ; 2416 	BMi8 = hdmirxrd(0xAB);
9086  13b8 a6ab          	ld	a,#171
9087  13ba 8d390039      	callf	L36f_hdmirxrd
9089  13be 5f            	clrw	x
9090  13bf 97            	ld	xl,a
9091  13c0 1f23          	ldw	(OFST-1,sp),x
9092                     ; 2418 	Mi1 = (~BMi1)&0xFF;
9094  13c2 1e15          	ldw	x,(OFST-15,sp)
9095  13c4 53            	cplw	x
9096  13c5 01            	rrwa	x,a
9097  13c6 a4ff          	and	a,#255
9098  13c8 5f            	clrw	x
9099  13c9 02            	rlwa	x,a
9100  13ca 1f15          	ldw	(OFST-15,sp),x
9101  13cc 01            	rrwa	x,a
9102                     ; 2419 	Mi2 = (~BMi2)&0xFF;
9104  13cd 1e17          	ldw	x,(OFST-13,sp)
9105  13cf 53            	cplw	x
9106  13d0 01            	rrwa	x,a
9107  13d1 a4ff          	and	a,#255
9108  13d3 5f            	clrw	x
9109  13d4 02            	rlwa	x,a
9110  13d5 1f17          	ldw	(OFST-13,sp),x
9111  13d7 01            	rrwa	x,a
9112                     ; 2420 	Mi3 = (~BMi3)&0xFF;
9114  13d8 1e19          	ldw	x,(OFST-11,sp)
9115  13da 53            	cplw	x
9116  13db 01            	rrwa	x,a
9117  13dc a4ff          	and	a,#255
9118  13de 5f            	clrw	x
9119  13df 02            	rlwa	x,a
9120  13e0 1f19          	ldw	(OFST-11,sp),x
9121  13e2 01            	rrwa	x,a
9122                     ; 2421 	Mi4 = (~BMi4)&0xFF;
9124  13e3 1e1b          	ldw	x,(OFST-9,sp)
9125  13e5 53            	cplw	x
9126  13e6 01            	rrwa	x,a
9127  13e7 a4ff          	and	a,#255
9128  13e9 5f            	clrw	x
9129  13ea 02            	rlwa	x,a
9130  13eb 1f1b          	ldw	(OFST-9,sp),x
9131  13ed 01            	rrwa	x,a
9132                     ; 2422 	Mi5 = (~BMi5)&0xFF;
9134  13ee 1e1d          	ldw	x,(OFST-7,sp)
9135  13f0 53            	cplw	x
9136  13f1 01            	rrwa	x,a
9137  13f2 a4ff          	and	a,#255
9138  13f4 5f            	clrw	x
9139  13f5 02            	rlwa	x,a
9140  13f6 1f1d          	ldw	(OFST-7,sp),x
9141  13f8 01            	rrwa	x,a
9142                     ; 2423 	Mi6 = (~BMi6)&0xFF;
9144  13f9 1e1f          	ldw	x,(OFST-5,sp)
9145  13fb 53            	cplw	x
9146  13fc 01            	rrwa	x,a
9147  13fd a4ff          	and	a,#255
9148  13ff 5f            	clrw	x
9149  1400 02            	rlwa	x,a
9150  1401 1f1f          	ldw	(OFST-5,sp),x
9151  1403 01            	rrwa	x,a
9152                     ; 2424 	Mi7 = (~BMi7)&0xFF;
9154  1404 1e21          	ldw	x,(OFST-3,sp)
9155  1406 53            	cplw	x
9156  1407 01            	rrwa	x,a
9157  1408 a4ff          	and	a,#255
9158  140a 5f            	clrw	x
9159  140b 02            	rlwa	x,a
9160  140c 1f21          	ldw	(OFST-3,sp),x
9161  140e 01            	rrwa	x,a
9162                     ; 2425 	Mi8 = (~BMi8)&0xFF;
9164  140f 1e23          	ldw	x,(OFST-1,sp)
9165  1411 53            	cplw	x
9166  1412 01            	rrwa	x,a
9167  1413 a4ff          	and	a,#255
9168  1415 5f            	clrw	x
9169  1416 02            	rlwa	x,a
9170  1417 1f23          	ldw	(OFST-1,sp),x
9171  1419 01            	rrwa	x,a
9172                     ; 2427 	MHLRX_DEBUG_PRINTF(printf("AKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", AKSV5>>4, AKSV5&0x0F,
9172                     ; 2428 		                                       AKSV4>>4, AKSV4&0x0F,
9172                     ; 2429 											   AKSV3>>4, AKSV3&0x0F,
9172                     ; 2430 											   AKSV2>>4, AKSV2&0x0F,
9172                     ; 2431 											   AKSV1>>4, AKSV1&0x0F));
9174  141a 7b02          	ld	a,(OFST-34,sp)
9175  141c 5f            	clrw	x
9176  141d 4d            	tnz	a
9177  141e 2a01          	jrpl	L642
9178  1420 53            	cplw	x
9179  1421               L642:
9180  1421 a40f          	and	a,#15
9181  1423 5f            	clrw	x
9182  1424 02            	rlwa	x,a
9183  1425 89            	pushw	x
9184  1426 01            	rrwa	x,a
9185  1427 1e03          	ldw	x,(OFST-33,sp)
9186  1429 57            	sraw	x
9187  142a 57            	sraw	x
9188  142b 57            	sraw	x
9189  142c 57            	sraw	x
9190  142d 89            	pushw	x
9191  142e 7b08          	ld	a,(OFST-28,sp)
9192  1430 5f            	clrw	x
9193  1431 4d            	tnz	a
9194  1432 2a01          	jrpl	L052
9195  1434 53            	cplw	x
9196  1435               L052:
9197  1435 a40f          	and	a,#15
9198  1437 5f            	clrw	x
9199  1438 02            	rlwa	x,a
9200  1439 89            	pushw	x
9201  143a 01            	rrwa	x,a
9202  143b 1e09          	ldw	x,(OFST-27,sp)
9203  143d 57            	sraw	x
9204  143e 57            	sraw	x
9205  143f 57            	sraw	x
9206  1440 57            	sraw	x
9207  1441 89            	pushw	x
9208  1442 7b0e          	ld	a,(OFST-22,sp)
9209  1444 5f            	clrw	x
9210  1445 4d            	tnz	a
9211  1446 2a01          	jrpl	L252
9212  1448 53            	cplw	x
9213  1449               L252:
9214  1449 a40f          	and	a,#15
9215  144b 5f            	clrw	x
9216  144c 02            	rlwa	x,a
9217  144d 89            	pushw	x
9218  144e 01            	rrwa	x,a
9219  144f 1e0f          	ldw	x,(OFST-21,sp)
9220  1451 57            	sraw	x
9221  1452 57            	sraw	x
9222  1453 57            	sraw	x
9223  1454 57            	sraw	x
9224  1455 89            	pushw	x
9225  1456 7b14          	ld	a,(OFST-16,sp)
9226  1458 5f            	clrw	x
9227  1459 4d            	tnz	a
9228  145a 2a01          	jrpl	L452
9229  145c 53            	cplw	x
9230  145d               L452:
9231  145d a40f          	and	a,#15
9232  145f 5f            	clrw	x
9233  1460 02            	rlwa	x,a
9234  1461 89            	pushw	x
9235  1462 01            	rrwa	x,a
9236  1463 1e15          	ldw	x,(OFST-15,sp)
9237  1465 57            	sraw	x
9238  1466 57            	sraw	x
9239  1467 57            	sraw	x
9240  1468 57            	sraw	x
9241  1469 89            	pushw	x
9242  146a 7b1a          	ld	a,(OFST-10,sp)
9243  146c 5f            	clrw	x
9244  146d 4d            	tnz	a
9245  146e 2a01          	jrpl	L652
9246  1470 53            	cplw	x
9247  1471               L652:
9248  1471 a40f          	and	a,#15
9249  1473 5f            	clrw	x
9250  1474 02            	rlwa	x,a
9251  1475 89            	pushw	x
9252  1476 01            	rrwa	x,a
9253  1477 1e1b          	ldw	x,(OFST-9,sp)
9254  1479 57            	sraw	x
9255  147a 57            	sraw	x
9256  147b 57            	sraw	x
9257  147c 57            	sraw	x
9258  147d 89            	pushw	x
9259  147e ae2839        	ldw	x,#L3573
9260  1481 8d000000      	callf	f_printf
9262  1485 5b14          	addw	sp,#20
9263                     ; 2433 	MHLRX_DEBUG_PRINTF(printf("BKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", BKSV5>>4, BKSV5&0x0F,
9263                     ; 2434 		                                       BKSV4>>4, BKSV4&0x0F,
9263                     ; 2435 											   BKSV3>>4, BKSV3&0x0F,
9263                     ; 2436 											   BKSV2>>4, BKSV2&0x0F,
9263                     ; 2437 											   BKSV1>>4, BKSV1&0x0F));
9265  1487 7b0c          	ld	a,(OFST-24,sp)
9266  1489 5f            	clrw	x
9267  148a 4d            	tnz	a
9268  148b 2a01          	jrpl	L062
9269  148d 53            	cplw	x
9270  148e               L062:
9271  148e a40f          	and	a,#15
9272  1490 5f            	clrw	x
9273  1491 02            	rlwa	x,a
9274  1492 89            	pushw	x
9275  1493 01            	rrwa	x,a
9276  1494 1e0d          	ldw	x,(OFST-23,sp)
9277  1496 57            	sraw	x
9278  1497 57            	sraw	x
9279  1498 57            	sraw	x
9280  1499 57            	sraw	x
9281  149a 89            	pushw	x
9282  149b 7b12          	ld	a,(OFST-18,sp)
9283  149d 5f            	clrw	x
9284  149e 4d            	tnz	a
9285  149f 2a01          	jrpl	L262
9286  14a1 53            	cplw	x
9287  14a2               L262:
9288  14a2 a40f          	and	a,#15
9289  14a4 5f            	clrw	x
9290  14a5 02            	rlwa	x,a
9291  14a6 89            	pushw	x
9292  14a7 01            	rrwa	x,a
9293  14a8 1e13          	ldw	x,(OFST-17,sp)
9294  14aa 57            	sraw	x
9295  14ab 57            	sraw	x
9296  14ac 57            	sraw	x
9297  14ad 57            	sraw	x
9298  14ae 89            	pushw	x
9299  14af 7b18          	ld	a,(OFST-12,sp)
9300  14b1 5f            	clrw	x
9301  14b2 4d            	tnz	a
9302  14b3 2a01          	jrpl	L462
9303  14b5 53            	cplw	x
9304  14b6               L462:
9305  14b6 a40f          	and	a,#15
9306  14b8 5f            	clrw	x
9307  14b9 02            	rlwa	x,a
9308  14ba 89            	pushw	x
9309  14bb 01            	rrwa	x,a
9310  14bc 1e19          	ldw	x,(OFST-11,sp)
9311  14be 57            	sraw	x
9312  14bf 57            	sraw	x
9313  14c0 57            	sraw	x
9314  14c1 57            	sraw	x
9315  14c2 89            	pushw	x
9316  14c3 7b1e          	ld	a,(OFST-6,sp)
9317  14c5 5f            	clrw	x
9318  14c6 4d            	tnz	a
9319  14c7 2a01          	jrpl	L662
9320  14c9 53            	cplw	x
9321  14ca               L662:
9322  14ca a40f          	and	a,#15
9323  14cc 5f            	clrw	x
9324  14cd 02            	rlwa	x,a
9325  14ce 89            	pushw	x
9326  14cf 01            	rrwa	x,a
9327  14d0 1e1f          	ldw	x,(OFST-5,sp)
9328  14d2 57            	sraw	x
9329  14d3 57            	sraw	x
9330  14d4 57            	sraw	x
9331  14d5 57            	sraw	x
9332  14d6 89            	pushw	x
9333  14d7 7b24          	ld	a,(OFST+0,sp)
9334  14d9 5f            	clrw	x
9335  14da 4d            	tnz	a
9336  14db 2a01          	jrpl	L072
9337  14dd 53            	cplw	x
9338  14de               L072:
9339  14de a40f          	and	a,#15
9340  14e0 5f            	clrw	x
9341  14e1 02            	rlwa	x,a
9342  14e2 89            	pushw	x
9343  14e3 01            	rrwa	x,a
9344  14e4 1e25          	ldw	x,(OFST+1,sp)
9345  14e6 57            	sraw	x
9346  14e7 57            	sraw	x
9347  14e8 57            	sraw	x
9348  14e9 57            	sraw	x
9349  14ea 89            	pushw	x
9350  14eb ae2818        	ldw	x,#L5573
9351  14ee 8d000000      	callf	f_printf
9353  14f2 5b14          	addw	sp,#20
9354                     ; 2439 	MHLRX_DEBUG_PRINTF(printf("M0   = 0x%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X \r\n", Mi8>>4, Mi8&0x0F,
9354                     ; 2440 		                                                   Mi7>>4, Mi7&0x0F,
9354                     ; 2441 														   Mi6>>4, Mi6&0x0F,
9354                     ; 2442 														   Mi5>>4, Mi5&0x0F,
9354                     ; 2443 														   Mi4>>4, Mi4&0x0F,
9354                     ; 2444 														   Mi3>>4, Mi3&0x0F,
9354                     ; 2445 														   Mi2>>4, Mi2&0x0F,
9354                     ; 2446 														   Mi1>>4, Mi1&0x0F));
9356  14f4 7b16          	ld	a,(OFST-14,sp)
9357  14f6 5f            	clrw	x
9358  14f7 4d            	tnz	a
9359  14f8 2a01          	jrpl	L272
9360  14fa 53            	cplw	x
9361  14fb               L272:
9362  14fb a40f          	and	a,#15
9363  14fd 5f            	clrw	x
9364  14fe 02            	rlwa	x,a
9365  14ff 89            	pushw	x
9366  1500 01            	rrwa	x,a
9367  1501 1e17          	ldw	x,(OFST-13,sp)
9368  1503 57            	sraw	x
9369  1504 57            	sraw	x
9370  1505 57            	sraw	x
9371  1506 57            	sraw	x
9372  1507 89            	pushw	x
9373  1508 7b1c          	ld	a,(OFST-8,sp)
9374  150a 5f            	clrw	x
9375  150b 4d            	tnz	a
9376  150c 2a01          	jrpl	L472
9377  150e 53            	cplw	x
9378  150f               L472:
9379  150f a40f          	and	a,#15
9380  1511 5f            	clrw	x
9381  1512 02            	rlwa	x,a
9382  1513 89            	pushw	x
9383  1514 01            	rrwa	x,a
9384  1515 1e1d          	ldw	x,(OFST-7,sp)
9385  1517 57            	sraw	x
9386  1518 57            	sraw	x
9387  1519 57            	sraw	x
9388  151a 57            	sraw	x
9389  151b 89            	pushw	x
9390  151c 7b22          	ld	a,(OFST-2,sp)
9391  151e 5f            	clrw	x
9392  151f 4d            	tnz	a
9393  1520 2a01          	jrpl	L672
9394  1522 53            	cplw	x
9395  1523               L672:
9396  1523 a40f          	and	a,#15
9397  1525 5f            	clrw	x
9398  1526 02            	rlwa	x,a
9399  1527 89            	pushw	x
9400  1528 01            	rrwa	x,a
9401  1529 1e23          	ldw	x,(OFST-1,sp)
9402  152b 57            	sraw	x
9403  152c 57            	sraw	x
9404  152d 57            	sraw	x
9405  152e 57            	sraw	x
9406  152f 89            	pushw	x
9407  1530 7b28          	ld	a,(OFST+4,sp)
9408  1532 5f            	clrw	x
9409  1533 4d            	tnz	a
9410  1534 2a01          	jrpl	L003
9411  1536 53            	cplw	x
9412  1537               L003:
9413  1537 a40f          	and	a,#15
9414  1539 5f            	clrw	x
9415  153a 02            	rlwa	x,a
9416  153b 89            	pushw	x
9417  153c 01            	rrwa	x,a
9418  153d 1e29          	ldw	x,(OFST+5,sp)
9419  153f 57            	sraw	x
9420  1540 57            	sraw	x
9421  1541 57            	sraw	x
9422  1542 57            	sraw	x
9423  1543 89            	pushw	x
9424  1544 7b2e          	ld	a,(OFST+10,sp)
9425  1546 5f            	clrw	x
9426  1547 4d            	tnz	a
9427  1548 2a01          	jrpl	L203
9428  154a 53            	cplw	x
9429  154b               L203:
9430  154b a40f          	and	a,#15
9431  154d 5f            	clrw	x
9432  154e 02            	rlwa	x,a
9433  154f 89            	pushw	x
9434  1550 01            	rrwa	x,a
9435  1551 1e2f          	ldw	x,(OFST+11,sp)
9436  1553 57            	sraw	x
9437  1554 57            	sraw	x
9438  1555 57            	sraw	x
9439  1556 57            	sraw	x
9440  1557 89            	pushw	x
9441  1558 7b34          	ld	a,(OFST+16,sp)
9442  155a 5f            	clrw	x
9443  155b 4d            	tnz	a
9444  155c 2a01          	jrpl	L403
9445  155e 53            	cplw	x
9446  155f               L403:
9447  155f a40f          	and	a,#15
9448  1561 5f            	clrw	x
9449  1562 02            	rlwa	x,a
9450  1563 89            	pushw	x
9451  1564 01            	rrwa	x,a
9452  1565 1e35          	ldw	x,(OFST+17,sp)
9453  1567 57            	sraw	x
9454  1568 57            	sraw	x
9455  1569 57            	sraw	x
9456  156a 57            	sraw	x
9457  156b 89            	pushw	x
9458  156c 7b3a          	ld	a,(OFST+22,sp)
9459  156e 5f            	clrw	x
9460  156f 4d            	tnz	a
9461  1570 2a01          	jrpl	L603
9462  1572 53            	cplw	x
9463  1573               L603:
9464  1573 a40f          	and	a,#15
9465  1575 5f            	clrw	x
9466  1576 02            	rlwa	x,a
9467  1577 89            	pushw	x
9468  1578 01            	rrwa	x,a
9469  1579 1e3b          	ldw	x,(OFST+23,sp)
9470  157b 57            	sraw	x
9471  157c 57            	sraw	x
9472  157d 57            	sraw	x
9473  157e 57            	sraw	x
9474  157f 89            	pushw	x
9475  1580 7b40          	ld	a,(OFST+28,sp)
9476  1582 5f            	clrw	x
9477  1583 4d            	tnz	a
9478  1584 2a01          	jrpl	L013
9479  1586 53            	cplw	x
9480  1587               L013:
9481  1587 a40f          	and	a,#15
9482  1589 5f            	clrw	x
9483  158a 02            	rlwa	x,a
9484  158b 89            	pushw	x
9485  158c 01            	rrwa	x,a
9486  158d 1e41          	ldw	x,(OFST+29,sp)
9487  158f 57            	sraw	x
9488  1590 57            	sraw	x
9489  1591 57            	sraw	x
9490  1592 57            	sraw	x
9491  1593 89            	pushw	x
9492  1594 ae27eb        	ldw	x,#L7573
9493  1597 8d000000      	callf	f_printf
9495  159b 5b20          	addw	sp,#32
9496                     ; 2447 	chgbank(0);
9498  159d 5f            	clrw	x
9499  159e 8d440544      	callf	L711f_chgbank
9501                     ; 2448 }
9504  15a2 5b24          	addw	sp,#36
9505  15a4 87            	retf
9544                     ; 2463 static void parse_rcpkey( unsigned char rcpkey )
9544                     ; 2464 {
9545                     	switch	.text
9546  15a5               L332f_parse_rcpkey:
9548  15a5 88            	push	a
9549  15a6 88            	push	a
9550       00000001      OFST:	set	1
9553                     ; 2467      suppkey = TRUE;
9555  15a7 a601          	ld	a,#1
9556  15a9 6b01          	ld	(OFST+0,sp),a
9557                     ; 2469      MHLRX_DEBUG_PRINTF(printf("KeyCode=%x ==>", rcpkey&0x7F));
9559  15ab 7b02          	ld	a,(OFST+1,sp)
9560  15ad 5f            	clrw	x
9561  15ae a47f          	and	a,#127
9562  15b0 5f            	clrw	x
9563  15b1 02            	rlwa	x,a
9564  15b2 89            	pushw	x
9565  15b3 01            	rrwa	x,a
9566  15b4 ae27dc        	ldw	x,#L3024
9567  15b7 8d000000      	callf	f_printf
9569  15bb 85            	popw	x
9570                     ; 2471      switch( rcpkey&0x7F ) {
9572  15bc 7b02          	ld	a,(OFST+1,sp)
9573  15be a47f          	and	a,#127
9575                     ; 2544      default  : MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved RCP sub-command code !!!\r\n")); suppkey = FALSE;
9576  15c0 a020          	sub	a,#32
9577  15c2 a15f          	cp	a,#95
9578  15c4 2504ac8c168c  	jruge	L613
9579  15ca 8d000000      	callf	d_jctab
9581  15ce               L023:
9582  15ce 019f          	dc.w	L5104-L023
9583  15d0 01aa          	dc.w	L7104-L023
9584  15d2 01b5          	dc.w	L1204-L023
9585  15d4 01c0          	dc.w	L3204-L023
9586  15d6 01cb          	dc.w	L5204-L023
9587  15d8 01d6          	dc.w	L7204-L023
9588  15da 01e1          	dc.w	L1304-L023
9589  15dc 01ec          	dc.w	L3304-L023
9590  15de 01f7          	dc.w	L5304-L023
9591  15e0 0202          	dc.w	L7304-L023
9592  15e2 020d          	dc.w	L1404-L023
9593  15e4 0218          	dc.w	L3404-L023
9594  15e6 0223          	dc.w	L5404-L023
9595  15e8 03b6          	dc.w	L3614-L023
9596  15ea 03b6          	dc.w	L3614-L023
9597  15ec 03b6          	dc.w	L3614-L023
9598  15ee 022e          	dc.w	L7404-L023
9599  15f0 0239          	dc.w	L1504-L023
9600  15f2 0244          	dc.w	L3504-L023
9601  15f4 024f          	dc.w	L5504-L023
9602  15f6 025a          	dc.w	L7504-L023
9603  15f8 0265          	dc.w	L1604-L023
9604  15fa 0270          	dc.w	L3604-L023
9605  15fc 027b          	dc.w	L5604-L023
9606  15fe 0286          	dc.w	L7604-L023
9607  1600 03b6          	dc.w	L3614-L023
9608  1602 03b6          	dc.w	L3614-L023
9609  1604 03b6          	dc.w	L3614-L023
9610  1606 03b6          	dc.w	L3614-L023
9611  1608 03b6          	dc.w	L3614-L023
9612  160a 03b6          	dc.w	L3614-L023
9613  160c 03b6          	dc.w	L3614-L023
9614  160e 03b6          	dc.w	L3614-L023
9615  1610 0291          	dc.w	L1704-L023
9616  1612 029c          	dc.w	L3704-L023
9617  1614 02a7          	dc.w	L5704-L023
9618  1616 02b2          	dc.w	L7704-L023
9619  1618 02bd          	dc.w	L1014-L023
9620  161a 02c8          	dc.w	L3014-L023
9621  161c 02d3          	dc.w	L5014-L023
9622  161e 02de          	dc.w	L7014-L023
9623  1620 02e9          	dc.w	L1114-L023
9624  1622 02f4          	dc.w	L3114-L023
9625  1624 02ff          	dc.w	L5114-L023
9626  1626 030a          	dc.w	L7114-L023
9627  1628 03b6          	dc.w	L3614-L023
9628  162a 03b6          	dc.w	L3614-L023
9629  162c 03b6          	dc.w	L3614-L023
9630  162e 0315          	dc.w	L1214-L023
9631  1630 0320          	dc.w	L3214-L023
9632  1632 03b6          	dc.w	L3614-L023
9633  1634 03b6          	dc.w	L3614-L023
9634  1636 03b6          	dc.w	L3614-L023
9635  1638 03b6          	dc.w	L3614-L023
9636  163a 03b6          	dc.w	L3614-L023
9637  163c 03b6          	dc.w	L3614-L023
9638  163e 03b6          	dc.w	L3614-L023
9639  1640 03b6          	dc.w	L3614-L023
9640  1642 03b6          	dc.w	L3614-L023
9641  1644 03b6          	dc.w	L3614-L023
9642  1646 03b6          	dc.w	L3614-L023
9643  1648 03b6          	dc.w	L3614-L023
9644  164a 03b6          	dc.w	L3614-L023
9645  164c 03b6          	dc.w	L3614-L023
9646  164e 032b          	dc.w	L5214-L023
9647  1650 0336          	dc.w	L7214-L023
9648  1652 0341          	dc.w	L1314-L023
9649  1654 034a          	dc.w	L3314-L023
9650  1656 0353          	dc.w	L5314-L023
9651  1658 035c          	dc.w	L7314-L023
9652  165a 0365          	dc.w	L1414-L023
9653  165c 036e          	dc.w	L3414-L023
9654  165e 0377          	dc.w	L5414-L023
9655  1660 03b6          	dc.w	L3614-L023
9656  1662 03b6          	dc.w	L3614-L023
9657  1664 03b6          	dc.w	L3614-L023
9658  1666 03b6          	dc.w	L3614-L023
9659  1668 03b6          	dc.w	L3614-L023
9660  166a 03b6          	dc.w	L3614-L023
9661  166c 03b6          	dc.w	L3614-L023
9662  166e 03b6          	dc.w	L3614-L023
9663  1670 0380          	dc.w	L7414-L023
9664  1672 0389          	dc.w	L1514-L023
9665  1674 0392          	dc.w	L3514-L023
9666  1676 039b          	dc.w	L5514-L023
9667  1678 03a4          	dc.w	L7514-L023
9668  167a 03b6          	dc.w	L3614-L023
9669  167c 03b6          	dc.w	L3614-L023
9670  167e 03b6          	dc.w	L3614-L023
9671  1680 03b6          	dc.w	L3614-L023
9672  1682 03b6          	dc.w	L3614-L023
9673  1684 03b6          	dc.w	L3614-L023
9674  1686 03b6          	dc.w	L3614-L023
9675  1688 03b6          	dc.w	L3614-L023
9676  168a 03ad          	dc.w	L1614-L023
9677  168c               L613:
9678  168c a0e0          	sub	a,#-32
9679  168e 2743          	jreq	L1673
9680  1690 4a            	dec	a
9681  1691 274b          	jreq	L3673
9682  1693 4a            	dec	a
9683  1694 2753          	jreq	L5673
9684  1696 4a            	dec	a
9685  1697 275b          	jreq	L7673
9686  1699 4a            	dec	a
9687  169a 2763          	jreq	L1773
9688  169c 4a            	dec	a
9689  169d 276b          	jreq	L3773
9690  169f 4a            	dec	a
9691  16a0 2773          	jreq	L5773
9692  16a2 4a            	dec	a
9693  16a3 277b          	jreq	L7773
9694  16a5 4a            	dec	a
9695  16a6 2604ac2b172b  	jreq	L1004
9696  16ac 4a            	dec	a
9697  16ad 2604ac361736  	jreq	L3004
9698  16b3 4a            	dec	a
9699  16b4 2604ac411741  	jreq	L5004
9700  16ba 4a            	dec	a
9701  16bb 2604          	jrne	L223
9702  16bd ac4c174c      	jpf	L7004
9703  16c1               L223:
9704  16c1 4a            	dec	a
9705  16c2 2604          	jrne	L423
9706  16c4 ac571757      	jpf	L1104
9707  16c8               L423:
9708  16c8 4a            	dec	a
9709  16c9 2604          	jrne	L623
9710  16cb ac621762      	jpf	L3104
9711  16cf               L623:
9712  16cf ac841984      	jpf	L3614
9713  16d3               L1673:
9714                     ; 2472      case 0x00: MHLRX_DEBUG_PRINTF(printf("Select")); break;
9716  16d3 ae27d5        	ldw	x,#L1124
9717  16d6 8d000000      	callf	f_printf
9721  16da ac8d198d      	jpf	L7024
9722  16de               L3673:
9723                     ; 2473      case 0x01: MHLRX_DEBUG_PRINTF(printf("Up")); break;
9725  16de ae27d2        	ldw	x,#L3124
9726  16e1 8d000000      	callf	f_printf
9730  16e5 ac8d198d      	jpf	L7024
9731  16e9               L5673:
9732                     ; 2474      case 0x02: MHLRX_DEBUG_PRINTF(printf("Down")); break;
9734  16e9 ae27cd        	ldw	x,#L5124
9735  16ec 8d000000      	callf	f_printf
9739  16f0 ac8d198d      	jpf	L7024
9740  16f4               L7673:
9741                     ; 2475      case 0x03: MHLRX_DEBUG_PRINTF(printf("Left")); break;
9743  16f4 ae27c8        	ldw	x,#L7124
9744  16f7 8d000000      	callf	f_printf
9748  16fb ac8d198d      	jpf	L7024
9749  16ff               L1773:
9750                     ; 2476      case 0x04: MHLRX_DEBUG_PRINTF(printf("Right")); break;
9752  16ff ae27c2        	ldw	x,#L1224
9753  1702 8d000000      	callf	f_printf
9757  1706 ac8d198d      	jpf	L7024
9758  170a               L3773:
9759                     ; 2477      case 0x05: MHLRX_DEBUG_PRINTF(printf("Right-Up")); break;
9761  170a ae27b9        	ldw	x,#L3224
9762  170d 8d000000      	callf	f_printf
9766  1711 ac8d198d      	jpf	L7024
9767  1715               L5773:
9768                     ; 2478      case 0x06: MHLRX_DEBUG_PRINTF(printf("Right-Down")); break;
9770  1715 ae27ae        	ldw	x,#L5224
9771  1718 8d000000      	callf	f_printf
9775  171c ac8d198d      	jpf	L7024
9776  1720               L7773:
9777                     ; 2479      case 0x07: MHLRX_DEBUG_PRINTF(printf("Left-Up")); break;
9779  1720 ae27a6        	ldw	x,#L7224
9780  1723 8d000000      	callf	f_printf
9784  1727 ac8d198d      	jpf	L7024
9785  172b               L1004:
9786                     ; 2480      case 0x08: MHLRX_DEBUG_PRINTF(printf("Left-Down")); break;
9788  172b ae279c        	ldw	x,#L1324
9789  172e 8d000000      	callf	f_printf
9793  1732 ac8d198d      	jpf	L7024
9794  1736               L3004:
9795                     ; 2481      case 0x09: MHLRX_DEBUG_PRINTF(printf("Root Menu")); break;
9797  1736 ae2792        	ldw	x,#L3324
9798  1739 8d000000      	callf	f_printf
9802  173d ac8d198d      	jpf	L7024
9803  1741               L5004:
9804                     ; 2482      case 0x0A: MHLRX_DEBUG_PRINTF(printf("Setup Menu")); break;
9806  1741 ae2787        	ldw	x,#L5324
9807  1744 8d000000      	callf	f_printf
9811  1748 ac8d198d      	jpf	L7024
9812  174c               L7004:
9813                     ; 2483      case 0x0B: MHLRX_DEBUG_PRINTF(printf("Contents Menu")); break;
9815  174c ae2779        	ldw	x,#L7324
9816  174f 8d000000      	callf	f_printf
9820  1753 ac8d198d      	jpf	L7024
9821  1757               L1104:
9822                     ; 2484      case 0x0C: MHLRX_DEBUG_PRINTF(printf("Favorite Menu")); break;
9824  1757 ae276b        	ldw	x,#L1424
9825  175a 8d000000      	callf	f_printf
9829  175e ac8d198d      	jpf	L7024
9830  1762               L3104:
9831                     ; 2485      case 0x0D: MHLRX_DEBUG_PRINTF(printf("Exit")); break;
9833  1762 ae2766        	ldw	x,#L3424
9834  1765 8d000000      	callf	f_printf
9838  1769 ac8d198d      	jpf	L7024
9839  176d               L5104:
9840                     ; 2487      case 0x20: MHLRX_DEBUG_PRINTF(printf("Numeric 0")); break;
9842  176d ae275c        	ldw	x,#L5424
9843  1770 8d000000      	callf	f_printf
9847  1774 ac8d198d      	jpf	L7024
9848  1778               L7104:
9849                     ; 2488      case 0x21: MHLRX_DEBUG_PRINTF(printf("Numeric 1")); break;
9851  1778 ae2752        	ldw	x,#L7424
9852  177b 8d000000      	callf	f_printf
9856  177f ac8d198d      	jpf	L7024
9857  1783               L1204:
9858                     ; 2489      case 0x22: MHLRX_DEBUG_PRINTF(printf("Numeric 2")); break;
9860  1783 ae2748        	ldw	x,#L1524
9861  1786 8d000000      	callf	f_printf
9865  178a ac8d198d      	jpf	L7024
9866  178e               L3204:
9867                     ; 2490      case 0x23: MHLRX_DEBUG_PRINTF(printf("Numeric 3")); break;
9869  178e ae273e        	ldw	x,#L3524
9870  1791 8d000000      	callf	f_printf
9874  1795 ac8d198d      	jpf	L7024
9875  1799               L5204:
9876                     ; 2491      case 0x24: MHLRX_DEBUG_PRINTF(printf("Numeric 4")); break;
9878  1799 ae2734        	ldw	x,#L5524
9879  179c 8d000000      	callf	f_printf
9883  17a0 ac8d198d      	jpf	L7024
9884  17a4               L7204:
9885                     ; 2492      case 0x25: MHLRX_DEBUG_PRINTF(printf("Numeric 5")); break;
9887  17a4 ae272a        	ldw	x,#L7524
9888  17a7 8d000000      	callf	f_printf
9892  17ab ac8d198d      	jpf	L7024
9893  17af               L1304:
9894                     ; 2493      case 0x26: MHLRX_DEBUG_PRINTF(printf("Numeric 6")); break;
9896  17af ae2720        	ldw	x,#L1624
9897  17b2 8d000000      	callf	f_printf
9901  17b6 ac8d198d      	jpf	L7024
9902  17ba               L3304:
9903                     ; 2494      case 0x27: MHLRX_DEBUG_PRINTF(printf("Numeric 7")); break;
9905  17ba ae2716        	ldw	x,#L3624
9906  17bd 8d000000      	callf	f_printf
9910  17c1 ac8d198d      	jpf	L7024
9911  17c5               L5304:
9912                     ; 2495      case 0x28: MHLRX_DEBUG_PRINTF(printf("Numeric 8")); break;
9914  17c5 ae270c        	ldw	x,#L5624
9915  17c8 8d000000      	callf	f_printf
9919  17cc ac8d198d      	jpf	L7024
9920  17d0               L7304:
9921                     ; 2496      case 0x29: MHLRX_DEBUG_PRINTF(printf("Numeric 9")); break;
9923  17d0 ae2702        	ldw	x,#L7624
9924  17d3 8d000000      	callf	f_printf
9928  17d7 ac8d198d      	jpf	L7024
9929  17db               L1404:
9930                     ; 2497      case 0x2A: MHLRX_DEBUG_PRINTF(printf("Dot")); break;
9932  17db ae26fe        	ldw	x,#L1724
9933  17de 8d000000      	callf	f_printf
9937  17e2 ac8d198d      	jpf	L7024
9938  17e6               L3404:
9939                     ; 2498      case 0x2B: MHLRX_DEBUG_PRINTF(printf("Enter")); break;
9941  17e6 ae26f8        	ldw	x,#L3724
9942  17e9 8d000000      	callf	f_printf
9946  17ed ac8d198d      	jpf	L7024
9947  17f1               L5404:
9948                     ; 2499      case 0x2C: MHLRX_DEBUG_PRINTF(printf("Clear")); break;
9950  17f1 ae26f2        	ldw	x,#L5724
9951  17f4 8d000000      	callf	f_printf
9955  17f8 ac8d198d      	jpf	L7024
9956  17fc               L7404:
9957                     ; 2501      case 0x30: MHLRX_DEBUG_PRINTF(printf("Channel Up")); break;
9959  17fc ae26e7        	ldw	x,#L7724
9960  17ff 8d000000      	callf	f_printf
9964  1803 ac8d198d      	jpf	L7024
9965  1807               L1504:
9966                     ; 2502      case 0x31: MHLRX_DEBUG_PRINTF(printf("Channel Down")); break;
9968  1807 ae26da        	ldw	x,#L1034
9969  180a 8d000000      	callf	f_printf
9973  180e ac8d198d      	jpf	L7024
9974  1812               L3504:
9975                     ; 2503      case 0x32: MHLRX_DEBUG_PRINTF(printf("Previous Channel")); break;
9977  1812 ae26c9        	ldw	x,#L3034
9978  1815 8d000000      	callf	f_printf
9982  1819 ac8d198d      	jpf	L7024
9983  181d               L5504:
9984                     ; 2504      case 0x33: MHLRX_DEBUG_PRINTF(printf("Sound Select")); break;
9986  181d ae26bc        	ldw	x,#L5034
9987  1820 8d000000      	callf	f_printf
9991  1824 ac8d198d      	jpf	L7024
9992  1828               L7504:
9993                     ; 2505      case 0x34: MHLRX_DEBUG_PRINTF(printf("Input Select")); break;
9995  1828 ae26af        	ldw	x,#L7034
9996  182b 8d000000      	callf	f_printf
10000  182f ac8d198d      	jpf	L7024
10001  1833               L1604:
10002                     ; 2506      case 0x35: MHLRX_DEBUG_PRINTF(printf("Show Information")); break;
10004  1833 ae269e        	ldw	x,#L1134
10005  1836 8d000000      	callf	f_printf
10009  183a ac8d198d      	jpf	L7024
10010  183e               L3604:
10011                     ; 2507      case 0x36: MHLRX_DEBUG_PRINTF(printf("Help")); break;
10013  183e ae2699        	ldw	x,#L3134
10014  1841 8d000000      	callf	f_printf
10018  1845 ac8d198d      	jpf	L7024
10019  1849               L5604:
10020                     ; 2508      case 0x37: MHLRX_DEBUG_PRINTF(printf("Page Up")); break;
10022  1849 ae2691        	ldw	x,#L5134
10023  184c 8d000000      	callf	f_printf
10027  1850 ac8d198d      	jpf	L7024
10028  1854               L7604:
10029                     ; 2509      case 0x38: MHLRX_DEBUG_PRINTF(printf("Page Down")); break;
10031  1854 ae2687        	ldw	x,#L7134
10032  1857 8d000000      	callf	f_printf
10036  185b ac8d198d      	jpf	L7024
10037  185f               L1704:
10038                     ; 2511      case 0x41: MHLRX_DEBUG_PRINTF(printf("Volume Up")); break;
10040  185f ae267d        	ldw	x,#L1234
10041  1862 8d000000      	callf	f_printf
10045  1866 ac8d198d      	jpf	L7024
10046  186a               L3704:
10047                     ; 2512      case 0x42: MHLRX_DEBUG_PRINTF(printf("Volume Down")); break;
10049  186a ae2671        	ldw	x,#L3234
10050  186d 8d000000      	callf	f_printf
10054  1871 ac8d198d      	jpf	L7024
10055  1875               L5704:
10056                     ; 2513      case 0x43: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
10058  1875 ae266c        	ldw	x,#L5234
10059  1878 8d000000      	callf	f_printf
10063  187c ac8d198d      	jpf	L7024
10064  1880               L7704:
10065                     ; 2514      case 0x44: MHLRX_DEBUG_PRINTF(printf("Play")); break;
10067  1880 ae2667        	ldw	x,#L7234
10068  1883 8d000000      	callf	f_printf
10072  1887 ac8d198d      	jpf	L7024
10073  188b               L1014:
10074                     ; 2515      case 0x45: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
10076  188b ae2662        	ldw	x,#L1334
10077  188e 8d000000      	callf	f_printf
10081  1892 ac8d198d      	jpf	L7024
10082  1896               L3014:
10083                     ; 2516      case 0x46: MHLRX_DEBUG_PRINTF(printf("Pause")); break;
10085  1896 ae265c        	ldw	x,#L3334
10086  1899 8d000000      	callf	f_printf
10090  189d ac8d198d      	jpf	L7024
10091  18a1               L5014:
10092                     ; 2517      case 0x47: MHLRX_DEBUG_PRINTF(printf("Record")); break;
10094  18a1 ae2655        	ldw	x,#L5334
10095  18a4 8d000000      	callf	f_printf
10099  18a8 ac8d198d      	jpf	L7024
10100  18ac               L7014:
10101                     ; 2518      case 0x48: MHLRX_DEBUG_PRINTF(printf("Rewind")); break;
10103  18ac ae264e        	ldw	x,#L7334
10104  18af 8d000000      	callf	f_printf
10108  18b3 ac8d198d      	jpf	L7024
10109  18b7               L1114:
10110                     ; 2519      case 0x49: MHLRX_DEBUG_PRINTF(printf("Fast Forward")); break;
10112  18b7 ae2641        	ldw	x,#L1434
10113  18ba 8d000000      	callf	f_printf
10117  18be ac8d198d      	jpf	L7024
10118  18c2               L3114:
10119                     ; 2520      case 0x4A: MHLRX_DEBUG_PRINTF(printf("Eject")); break;
10121  18c2 ae263b        	ldw	x,#L3434
10122  18c5 8d000000      	callf	f_printf
10126  18c9 ac8d198d      	jpf	L7024
10127  18cd               L5114:
10128                     ; 2521      case 0x4B: MHLRX_DEBUG_PRINTF(printf("Forward")); break;
10130  18cd ae2633        	ldw	x,#L5434
10131  18d0 8d000000      	callf	f_printf
10135  18d4 ac8d198d      	jpf	L7024
10136  18d8               L7114:
10137                     ; 2522      case 0x4C: MHLRX_DEBUG_PRINTF(printf("Backward")); break;
10139  18d8 ae262a        	ldw	x,#L7434
10140  18db 8d000000      	callf	f_printf
10144  18df ac8d198d      	jpf	L7024
10145  18e3               L1214:
10146                     ; 2524      case 0x50: MHLRX_DEBUG_PRINTF(printf("Angle")); break;
10148  18e3 ae2624        	ldw	x,#L1534
10149  18e6 8d000000      	callf	f_printf
10153  18ea ac8d198d      	jpf	L7024
10154  18ee               L3214:
10155                     ; 2525      case 0x51: MHLRX_DEBUG_PRINTF(printf("Subpicture")); break;
10157  18ee ae2619        	ldw	x,#L3534
10158  18f1 8d000000      	callf	f_printf
10162  18f5 ac8d198d      	jpf	L7024
10163  18f9               L5214:
10164                     ; 2527      case 0x60: MHLRX_DEBUG_PRINTF(printf("Play_Function")); break;
10166  18f9 ae260b        	ldw	x,#L5534
10167  18fc 8d000000      	callf	f_printf
10171  1900 ac8d198d      	jpf	L7024
10172  1904               L7214:
10173                     ; 2528      case 0x61: MHLRX_DEBUG_PRINTF(printf("Pause_Play_Function")); break;
10175  1904 ae25f7        	ldw	x,#L7534
10176  1907 8d000000      	callf	f_printf
10180  190b ac8d198d      	jra	L7024
10181  190f               L1314:
10182                     ; 2529      case 0x62: MHLRX_DEBUG_PRINTF(printf("Record_Function")); break;
10184  190f ae25e7        	ldw	x,#L1634
10185  1912 8d000000      	callf	f_printf
10189  1916 2075          	jra	L7024
10190  1918               L3314:
10191                     ; 2530      case 0x63: MHLRX_DEBUG_PRINTF(printf("Pause_Record_Function")); break;
10193  1918 ae25d1        	ldw	x,#L3634
10194  191b 8d000000      	callf	f_printf
10198  191f 206c          	jra	L7024
10199  1921               L5314:
10200                     ; 2531      case 0x64: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
10202  1921 ae2662        	ldw	x,#L1334
10203  1924 8d000000      	callf	f_printf
10207  1928 2063          	jra	L7024
10208  192a               L7314:
10209                     ; 2532      case 0x65: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
10211  192a ae266c        	ldw	x,#L5234
10212  192d 8d000000      	callf	f_printf
10216  1931 205a          	jra	L7024
10217  1933               L1414:
10218                     ; 2533      case 0x66: MHLRX_DEBUG_PRINTF(printf("Restore_Volume_Function")); break;
10220  1933 ae25b9        	ldw	x,#L5634
10221  1936 8d000000      	callf	f_printf
10225  193a 2051          	jra	L7024
10226  193c               L3414:
10227                     ; 2534      case 0x67: MHLRX_DEBUG_PRINTF(printf("Tune_Function")); break;
10229  193c ae25ab        	ldw	x,#L7634
10230  193f 8d000000      	callf	f_printf
10234  1943 2048          	jra	L7024
10235  1945               L5414:
10236                     ; 2535      case 0x68: MHLRX_DEBUG_PRINTF(printf("Select_Media_Function")); break;
10238  1945 ae2595        	ldw	x,#L1734
10239  1948 8d000000      	callf	f_printf
10243  194c 203f          	jra	L7024
10244  194e               L7414:
10245                     ; 2537      case 0x71: MHLRX_DEBUG_PRINTF(printf("F1 (Blue)")); break;
10247  194e ae258b        	ldw	x,#L3734
10248  1951 8d000000      	callf	f_printf
10252  1955 2036          	jra	L7024
10253  1957               L1514:
10254                     ; 2538      case 0x72: MHLRX_DEBUG_PRINTF(printf("F2 (Red)")); break;
10256  1957 ae2582        	ldw	x,#L5734
10257  195a 8d000000      	callf	f_printf
10261  195e 202d          	jra	L7024
10262  1960               L3514:
10263                     ; 2539      case 0x73: MHLRX_DEBUG_PRINTF(printf("F3 (Green)")); break;
10265  1960 ae2577        	ldw	x,#L7734
10266  1963 8d000000      	callf	f_printf
10270  1967 2024          	jra	L7024
10271  1969               L5514:
10272                     ; 2540      case 0x74: MHLRX_DEBUG_PRINTF(printf("F4 (Yellow)")); break;
10274  1969 ae256b        	ldw	x,#L1044
10275  196c 8d000000      	callf	f_printf
10279  1970 201b          	jra	L7024
10280  1972               L7514:
10281                     ; 2541      case 0x75: MHLRX_DEBUG_PRINTF(printf("F5")); break;
10283  1972 ae2568        	ldw	x,#L3044
10284  1975 8d000000      	callf	f_printf
10288  1979 2012          	jra	L7024
10289  197b               L1614:
10290                     ; 2542      case 0x7E: MHLRX_DEBUG_PRINTF(printf("Vendor_Specific")); break;
10292  197b ae2558        	ldw	x,#L5044
10293  197e 8d000000      	callf	f_printf
10297  1982 2009          	jra	L7024
10298  1984               L3614:
10299                     ; 2544      default  : MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved RCP sub-command code !!!\r\n")); suppkey = FALSE;
10301  1984 ae252d        	ldw	x,#L7044
10302  1987 8d000000      	callf	f_printf
10306  198b 0f01          	clr	(OFST+0,sp)
10307  198d               L7024:
10308                     ; 2547      if( suppkey ) {
10310  198d 0d01          	tnz	(OFST+0,sp)
10311  198f 2716          	jreq	L1144
10312                     ; 2548          if( rcpkey&0x80 )
10314  1991 7b02          	ld	a,(OFST+1,sp)
10315  1993 a580          	bcp	a,#128
10316  1995 2709          	jreq	L3144
10317                     ; 2549              MHLRX_DEBUG_PRINTF(printf(" Key Release\r\n"));
10319  1997 ae251e        	ldw	x,#L5144
10320  199a 8d000000      	callf	f_printf
10323  199e 2007          	jra	L1144
10324  19a0               L3144:
10325                     ; 2551              MHLRX_DEBUG_PRINTF(printf(" Key Press\r\n"));
10327  19a0 ae2511        	ldw	x,#L1244
10328  19a3 8d000000      	callf	f_printf
10330  19a7               L1144:
10331                     ; 2553 }
10334  19a7 85            	popw	x
10335  19a8 87            	retf
10376                     ; 2561 static void mhl_parse_RCPkey(struct it6802_dev_data *it6802)
10376                     ; 2562 {
10377                     	switch	.text
10378  19a9               L532f_mhl_parse_RCPkey:
10380  19a9 89            	pushw	x
10381       00000000      OFST:	set	0
10384                     ; 2563 	parse_rcpkey( it6802->rxmsgdata[1]);
10386  19aa e64b          	ld	a,(75,x)
10387  19ac 8da515a5      	callf	L332f_parse_rcpkey
10389                     ; 2565 	if( SuppRCPCode[it6802->rxmsgdata[1]] ){
10391  19b0 1e01          	ldw	x,(OFST+1,sp)
10392  19b2 e64b          	ld	a,(75,x)
10393  19b4 5f            	clrw	x
10394  19b5 97            	ld	xl,a
10395  19b6 724d0113      	tnz	(_SuppRCPCode,x)
10396  19ba 271b          	jreq	L3444
10397                     ; 2567 		it6802->txmsgdata[0] = MSG_RCPK;
10399  19bc 1e01          	ldw	x,(OFST+1,sp)
10400  19be a611          	ld	a,#17
10401  19c0 e748          	ld	(72,x),a
10402                     ; 2568 		it6802->txmsgdata[1] = it6802->rxmsgdata[1];
10404  19c2 1e01          	ldw	x,(OFST+1,sp)
10405  19c4 e64b          	ld	a,(75,x)
10406  19c6 e749          	ld	(73,x),a
10407                     ; 2569 		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPK with action code = 0x%02X\r\n", it6802->txmsgdata[1]));
10409  19c8 1e01          	ldw	x,(OFST+1,sp)
10410  19ca e649          	ld	a,(73,x)
10411  19cc 88            	push	a
10412  19cd ae24e9        	ldw	x,#L5444
10413  19d0 8d000000      	callf	f_printf
10415  19d4 84            	pop	a
10417  19d5 2019          	jra	L7444
10418  19d7               L3444:
10419                     ; 2575 		it6802->txmsgdata[0] = MSG_RCPE;
10421  19d7 1e01          	ldw	x,(OFST+1,sp)
10422  19d9 a612          	ld	a,#18
10423  19db e748          	ld	(72,x),a
10424                     ; 2576 		it6802->txmsgdata[1] = 0x01;
10426  19dd 1e01          	ldw	x,(OFST+1,sp)
10427  19df a601          	ld	a,#1
10428  19e1 e749          	ld	(73,x),a
10429                     ; 2578 		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPE with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10431  19e3 1e01          	ldw	x,(OFST+1,sp)
10432  19e5 e649          	ld	a,(73,x)
10433  19e7 88            	push	a
10434  19e8 ae24c1        	ldw	x,#L1544
10435  19eb 8d000000      	callf	f_printf
10437  19ef 84            	pop	a
10438  19f0               L7444:
10439                     ; 2581 	cbus_send_mscmsg(it6802);
10441  19f0 1e01          	ldw	x,(OFST+1,sp)
10442  19f2 8d661c66      	callf	L352f_cbus_send_mscmsg
10444                     ; 2582 	SwitchRCPResult(it6802,RCP_Result_Finish);
10446  19f6 4b04          	push	#4
10447  19f8 1e02          	ldw	x,(OFST+2,sp)
10448  19fa 8d472947      	callf	L723f_SwitchRCPResult
10450  19fe 84            	pop	a
10451                     ; 2584 }
10454  19ff 85            	popw	x
10455  1a00 87            	retf
10495                     ; 2589 static void mhl_parse_RAPkey(struct it6802_dev_data *it6802)
10495                     ; 2590 {
10496                     	switch	.text
10497  1a01               L732f_mhl_parse_RAPkey:
10499  1a01 89            	pushw	x
10500       00000000      OFST:	set	0
10503                     ; 2593 	it6802->txmsgdata[0] = MSG_RAPK;
10505  1a02 a621          	ld	a,#33
10506  1a04 e748          	ld	(72,x),a
10507                     ; 2595 	if( SuppRAPCode[it6802->rxmsgdata[1]]) {
10509  1a06 e64b          	ld	a,(75,x)
10510  1a08 5f            	clrw	x
10511  1a09 97            	ld	xl,a
10512  1a0a 724d00f3      	tnz	(_SuppRAPCode,x)
10513  1a0e 2706          	jreq	L3054
10514                     ; 2596 		it6802->txmsgdata[1] = 0x00;
10516  1a10 1e01          	ldw	x,(OFST+1,sp)
10517  1a12 6f49          	clr	(73,x)
10519  1a14 2006          	jra	L5054
10520  1a16               L3054:
10521                     ; 2599 		it6802->txmsgdata[1] = 0x02;
10523  1a16 1e01          	ldw	x,(OFST+1,sp)
10524  1a18 a602          	ld	a,#2
10525  1a1a e749          	ld	(73,x),a
10526  1a1c               L5054:
10527                     ; 2602 	switch( it6802->rxmsgdata[1] ) {
10529  1a1c 1e01          	ldw	x,(OFST+1,sp)
10530  1a1e e64b          	ld	a,(75,x)
10532                     ; 2618 		MHL_MSC_DEBUG_PRINTF(printf("Send a RAPK with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10533  1a20 4d            	tnz	a
10534  1a21 2729          	jreq	L3544
10535  1a23 a010          	sub	a,#16
10536  1a25 272e          	jreq	L5544
10537  1a27 4a            	dec	a
10538  1a28 2741          	jreq	L7544
10539  1a2a               L1644:
10540                     ; 2614 		default  :
10540                     ; 2615 
10540                     ; 2616 		it6802->txmsgdata[1] = 0x01;
10542  1a2a 1e01          	ldw	x,(OFST+1,sp)
10543  1a2c a601          	ld	a,#1
10544  1a2e e749          	ld	(73,x),a
10545                     ; 2617 		MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP action code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10547  1a30 1e01          	ldw	x,(OFST+1,sp)
10548  1a32 e64b          	ld	a,(75,x)
10549  1a34 88            	push	a
10550  1a35 ae2453        	ldw	x,#L1254
10551  1a38 8d000000      	callf	f_printf
10553  1a3c 84            	pop	a
10554                     ; 2618 		MHL_MSC_DEBUG_PRINTF(printf("Send a RAPK with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
10556  1a3d 1e01          	ldw	x,(OFST+1,sp)
10557  1a3f e649          	ld	a,(73,x)
10558  1a41 88            	push	a
10559  1a42 ae242b        	ldw	x,#L3254
10560  1a45 8d000000      	callf	f_printf
10562  1a49 84            	pop	a
10563  1a4a 2033          	jra	L1154
10564  1a4c               L3544:
10565                     ; 2603 		case 0x00:
10565                     ; 2604 			MHL_MSC_DEBUG_PRINTF(printf("Poll\r\n"));
10567  1a4c ae24ba        	ldw	x,#L3154
10568  1a4f 8d000000      	callf	f_printf
10570                     ; 2605 			break;
10572  1a53 202a          	jra	L1154
10573  1a55               L5544:
10574                     ; 2606 		case 0x10:
10574                     ; 2607 			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_ON state\r\n"));
10576  1a55 ae249d        	ldw	x,#L5154
10577  1a58 8d000000      	callf	f_printf
10579                     ; 2608 			hdmirxset(0x61, 0x10, 0x00);
10581  1a5c 4b00          	push	#0
10582  1a5e ae0010        	ldw	x,#16
10583  1a61 a661          	ld	a,#97
10584  1a63 95            	ld	xh,a
10585  1a64 8db300b3      	callf	L76f_hdmirxset
10587  1a68 84            	pop	a
10588                     ; 2609 			break;
10590  1a69 2014          	jra	L1154
10591  1a6b               L7544:
10592                     ; 2610 		case 0x11:
10592                     ; 2611 			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_OFF state\r\n"));
10594  1a6b ae247f        	ldw	x,#L7154
10595  1a6e 8d000000      	callf	f_printf
10597                     ; 2612 			hdmirxset(0x61, 0x10, 0x10);
10599  1a72 4b10          	push	#16
10600  1a74 ae0010        	ldw	x,#16
10601  1a77 a661          	ld	a,#97
10602  1a79 95            	ld	xh,a
10603  1a7a 8db300b3      	callf	L76f_hdmirxset
10605  1a7e 84            	pop	a
10606                     ; 2613 			break;
10608  1a7f               L1154:
10609                     ; 2621 	cbus_send_mscmsg(it6802);
10611  1a7f 1e01          	ldw	x,(OFST+1,sp)
10612  1a81 8d661c66      	callf	L352f_cbus_send_mscmsg
10614                     ; 2622 }
10617  1a85 85            	popw	x
10618  1a86 87            	retf
10661                     ; 2663 static void mhl_read_mscmsg( struct it6802_dev_data *it6802 )
10661                     ; 2664 {
10662                     	switch	.text
10663  1a87               L542f_mhl_read_mscmsg:
10665  1a87 89            	pushw	x
10666       00000000      OFST:	set	0
10669                     ; 2668 	it6802->rxmsgdata[0] = mhlrxrd(0x60);
10671  1a88 a660          	ld	a,#96
10672  1a8a 8d1f011f      	callf	L37f_mhlrxrd
10674  1a8e 1e01          	ldw	x,(OFST+1,sp)
10675  1a90 e74a          	ld	(74,x),a
10676                     ; 2669 	it6802->rxmsgdata[1] = mhlrxrd(0x61);
10678  1a92 a661          	ld	a,#97
10679  1a94 8d1f011f      	callf	L37f_mhlrxrd
10681  1a98 1e01          	ldw	x,(OFST+1,sp)
10682  1a9a e74b          	ld	(75,x),a
10683                     ; 2671     switch( it6802->rxmsgdata[0] ) {
10685  1a9c 1e01          	ldw	x,(OFST+1,sp)
10686  1a9e e64a          	ld	a,(74,x)
10688                     ; 2739 			SwitchRCPResult(it6802,RCP_Result_Finish);
10689  1aa0 a002          	sub	a,#2
10690  1aa2 2751          	jreq	L5254
10691  1aa4 a00e          	sub	a,#14
10692  1aa6 2604ac311b31  	jreq	L5354
10693  1aac 4a            	dec	a
10694  1aad 2604ac3b1b3b  	jreq	L7354
10695  1ab3 4a            	dec	a
10696  1ab4 2604          	jrne	L053
10697  1ab6 ac571b57      	jpf	L1454
10698  1aba               L053:
10699  1aba a00e          	sub	a,#14
10700  1abc 2604          	jrne	L253
10701  1abe ac911b91      	jpf	L3554
10702  1ac2               L253:
10703  1ac2 4a            	dec	a
10704  1ac3 2604          	jrne	L453
10705  1ac5 ac991b99      	jpf	L5554
10706  1ac9               L453:
10707  1ac9               L1754:
10708                     ; 2734 		default :
10708                     ; 2735 			MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG sub-command code 0x%02X !!!\r\n", it6802->rxmsgdata[0]));
10710  1ac9 1e01          	ldw	x,(OFST+1,sp)
10711  1acb e64a          	ld	a,(74,x)
10712  1acd 88            	push	a
10713  1ace ae2298        	ldw	x,#L3664
10714  1ad1 8d000000      	callf	f_printf
10716  1ad5 84            	pop	a
10717                     ; 2736 			it6802->txmsgdata[0] = MSG_MSGE;
10719  1ad6 1e01          	ldw	x,(OFST+1,sp)
10720  1ad8 a602          	ld	a,#2
10721  1ada e748          	ld	(72,x),a
10722                     ; 2737 			it6802->txmsgdata[1] = 0x01;
10724  1adc 1e01          	ldw	x,(OFST+1,sp)
10725  1ade a601          	ld	a,#1
10726  1ae0 e749          	ld	(73,x),a
10727                     ; 2738 			cbus_send_mscmsg(it6802);
10729  1ae2 1e01          	ldw	x,(OFST+1,sp)
10730  1ae4 8d661c66      	callf	L352f_cbus_send_mscmsg
10732                     ; 2739 			SwitchRCPResult(it6802,RCP_Result_Finish);
10734  1ae8 4b04          	push	#4
10735  1aea 1e02          	ldw	x,(OFST+2,sp)
10736  1aec 8d472947      	callf	L723f_SwitchRCPResult
10738  1af0 84            	pop	a
10739  1af1 ace11be1      	jpf	L5164
10740  1af5               L5254:
10741                     ; 2672 		case MSG_MSGE :
10741                     ; 2673 			MHL_MSC_DEBUG_PRINTF(printf("RX MSGE => "));
10743  1af5 ae241f        	ldw	x,#L7164
10744  1af8 8d000000      	callf	f_printf
10746                     ; 2674 			switch( it6802->rxmsgdata[1] ) {
10748  1afc 1e01          	ldw	x,(OFST+1,sp)
10749  1afe e64b          	ld	a,(75,x)
10751                     ; 2681 				default  :
10751                     ; 2682 					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10752  1b00 4d            	tnz	a
10753  1b01 2714          	jreq	L7254
10754  1b03 4a            	dec	a
10755  1b04 271c          	jreq	L1354
10756  1b06               L3354:
10759  1b06 1e01          	ldw	x,(OFST+1,sp)
10760  1b08 e64b          	ld	a,(75,x)
10761  1b0a 88            	push	a
10762  1b0b ae23be        	ldw	x,#L1364
10763  1b0e 8d000000      	callf	f_printf
10765  1b12 84            	pop	a
10766  1b13 ace11be1      	jpf	L5164
10767  1b17               L7254:
10768                     ; 2675 				case 0x00:
10768                     ; 2676 					MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n"));
10770  1b17 ae2414        	ldw	x,#L5264
10771  1b1a 8d000000      	callf	f_printf
10773                     ; 2677 					break;
10775  1b1e ace11be1      	jpf	L5164
10776  1b22               L1354:
10777                     ; 2678 				case 0x01:
10777                     ; 2679 					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Invalid sub-command code !!!\r\n"));
10779  1b22 ae23ee        	ldw	x,#L7264
10780  1b25 8d000000      	callf	f_printf
10782                     ; 2680 					break;
10784  1b29 ace11be1      	jpf	L5164
10785  1b2d               L3264:
10786                     ; 2684 			 break;
10788  1b2d ace11be1      	jpf	L5164
10789  1b31               L5354:
10790                     ; 2686 		case MSG_RCP  :
10790                     ; 2687 			mhl_parse_RCPkey(it6802);
10792  1b31 1e01          	ldw	x,(OFST+1,sp)
10793  1b33 8da919a9      	callf	L532f_mhl_parse_RCPkey
10795                     ; 2688 			break;
10797  1b37 ace11be1      	jpf	L5164
10798  1b3b               L7354:
10799                     ; 2689 		case MSG_RCPK :
10799                     ; 2690 			 MHL_MSC_DEBUG_PRINTF(printf("RX RCPK  => "));
10801  1b3b ae23b1        	ldw	x,#L3364
10802  1b3e 8d000000      	callf	f_printf
10804                     ; 2691 			parse_rcpkey( it6802->rxmsgdata[1]);
10806  1b42 1e01          	ldw	x,(OFST+1,sp)
10807  1b44 e64b          	ld	a,(75,x)
10808  1b46 8da515a5      	callf	L332f_parse_rcpkey
10810                     ; 2692 			SwitchRCPResult(it6802,RCP_Result_Finish);
10812  1b4a 4b04          	push	#4
10813  1b4c 1e02          	ldw	x,(OFST+2,sp)
10814  1b4e 8d472947      	callf	L723f_SwitchRCPResult
10816  1b52 84            	pop	a
10817                     ; 2693 			 break;
10819  1b53 ace11be1      	jpf	L5164
10820  1b57               L1454:
10821                     ; 2694 		case MSG_RCPE :
10821                     ; 2695 			 switch( it6802->rxmsgdata[1] ){
10823  1b57 1e01          	ldw	x,(OFST+1,sp)
10824  1b59 e64b          	ld	a,(75,x)
10826                     ; 2699 				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RCP status code !!!\r\n"));
10827  1b5b 4d            	tnz	a
10828  1b5c 270f          	jreq	L3454
10829  1b5e 4a            	dec	a
10830  1b5f 2715          	jreq	L5454
10831  1b61 4a            	dec	a
10832  1b62 271b          	jreq	L7454
10833  1b64               L1554:
10836  1b64 ae2351        	ldw	x,#L5464
10837  1b67 8d000000      	callf	f_printf
10839  1b6b 2019          	jra	L7364
10840  1b6d               L3454:
10841                     ; 2696 				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
10843  1b6d ae2414        	ldw	x,#L5264
10844  1b70 8d000000      	callf	f_printf
10848  1b74 2010          	jra	L7364
10849  1b76               L5454:
10850                     ; 2697 				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Ineffective RCP Key Code !!!\r\n")); break;
10852  1b76 ae238b        	ldw	x,#L1464
10853  1b79 8d000000      	callf	f_printf
10857  1b7d 2007          	jra	L7364
10858  1b7f               L7454:
10859                     ; 2698 				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
10861  1b7f ae2376        	ldw	x,#L3464
10862  1b82 8d000000      	callf	f_printf
10866  1b86               L7364:
10867                     ; 2701 			SwitchRCPResult(it6802,RCP_Result_Finish);
10869  1b86 4b04          	push	#4
10870  1b88 1e02          	ldw	x,(OFST+2,sp)
10871  1b8a 8d472947      	callf	L723f_SwitchRCPResult
10873  1b8e 84            	pop	a
10874                     ; 2703 			 break;
10876  1b8f 2050          	jra	L5164
10877  1b91               L3554:
10878                     ; 2706 		case MSG_RAP  :
10878                     ; 2707 			mhl_parse_RAPkey(it6802);
10880  1b91 1e01          	ldw	x,(OFST+1,sp)
10881  1b93 8d011a01      	callf	L732f_mhl_parse_RAPkey
10883                     ; 2708 			break;
10885  1b97 2048          	jra	L5164
10886  1b99               L5554:
10887                     ; 2709 		case MSG_RAPK :
10887                     ; 2710 			 MHL_MSC_DEBUG_PRINTF(printf("RX RAPK  => "));
10889  1b99 ae2344        	ldw	x,#L7464
10890  1b9c 8d000000      	callf	f_printf
10892                     ; 2711 			 switch( it6802->rxmsgdata[1] ) {
10894  1ba0 1e01          	ldw	x,(OFST+1,sp)
10895  1ba2 e64b          	ld	a,(75,x)
10897                     ; 2716 				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
10898  1ba4 4d            	tnz	a
10899  1ba5 2718          	jreq	L7554
10900  1ba7 4a            	dec	a
10901  1ba8 271e          	jreq	L1654
10902  1baa 4a            	dec	a
10903  1bab 2724          	jreq	L3654
10904  1bad 4a            	dec	a
10905  1bae 272a          	jreq	L5654
10906  1bb0               L7654:
10909  1bb0 1e01          	ldw	x,(OFST+1,sp)
10910  1bb2 e64b          	ld	a,(75,x)
10911  1bb4 88            	push	a
10912  1bb5 ae22cd        	ldw	x,#L1664
10913  1bb8 8d000000      	callf	f_printf
10915  1bbc 84            	pop	a
10916  1bbd 2022          	jra	L5164
10917  1bbf               L7554:
10918                     ; 2712 				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
10920  1bbf ae2414        	ldw	x,#L5264
10921  1bc2 8d000000      	callf	f_printf
10925  1bc6 2019          	jra	L5164
10926  1bc8               L1654:
10927                     ; 2713 				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unrecognized Action Code !!!\r\n")); break;
10929  1bc8 ae231e        	ldw	x,#L5564
10930  1bcb 8d000000      	callf	f_printf
10934  1bcf 2010          	jra	L5164
10935  1bd1               L3654:
10936                     ; 2714 				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unsupported Action Code !!!\r\n")); break;
10938  1bd1 ae22f9        	ldw	x,#L7564
10939  1bd4 8d000000      	callf	f_printf
10943  1bd8 2007          	jra	L5164
10944  1bda               L5654:
10945                     ; 2715 				case 0x03: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
10947  1bda ae2376        	ldw	x,#L3464
10948  1bdd 8d000000      	callf	f_printf
10952  1be1               L3564:
10953                     ; 2718 			break;
10955  1be1               L5164:
10956                     ; 2741 }
10959  1be1 85            	popw	x
10960  1be2 87            	retf
11000                     ; 2749 static int mscwait( void )
11000                     ; 2750 {
11001                     	switch	.text
11002  1be3               L742f_mscwait:
11004  1be3 5203          	subw	sp,#3
11005       00000003      OFST:	set	3
11008                     ; 2754      cbuswaitcnt = 0;
11010  1be5 5f            	clrw	x
11011  1be6 1f02          	ldw	(OFST-1,sp),x
11012  1be8               L3074:
11013                     ; 2756          cbuswaitcnt++;
11015  1be8 1e02          	ldw	x,(OFST-1,sp)
11016  1bea 1c0001        	addw	x,#1
11017  1bed 1f02          	ldw	(OFST-1,sp),x
11018                     ; 2757 	delay1ms(CBUSWAITTIME);
11020  1bef ae000a        	ldw	x,#10
11021  1bf2 8d000000      	callf	f_IR_DelayNMiliseconds
11023                     ; 2759      } while( (mhlrxrd(0x1C)&0x02)==0x02 && cbuswaitcnt<CBUSWAITNUM   );
11025  1bf6 a61c          	ld	a,#28
11026  1bf8 8d1f011f      	callf	L37f_mhlrxrd
11028  1bfc a402          	and	a,#2
11029  1bfe a102          	cp	a,#2
11030  1c00 2608          	jrne	L1174
11032  1c02 9c            	rvf
11033  1c03 1e02          	ldw	x,(OFST-1,sp)
11034  1c05 a3000a        	cpw	x,#10
11035  1c08 2fde          	jrslt	L3074
11036  1c0a               L1174:
11037                     ; 2762      MHL05 = mhlrxrd(0x05);
11039  1c0a a605          	ld	a,#5
11040  1c0c 8d1f011f      	callf	L37f_mhlrxrd
11042  1c10 6b01          	ld	(OFST-2,sp),a
11043                     ; 2763      if( (cbuswaitcnt==CBUSWAITNUM) || MHL05&0x02 ) {
11045  1c12 1e02          	ldw	x,(OFST-1,sp)
11046  1c14 a3000a        	cpw	x,#10
11047  1c17 2706          	jreq	L5174
11049  1c19 7b01          	ld	a,(OFST-2,sp)
11050  1c1b a502          	bcp	a,#2
11051  1c1d 2705          	jreq	L3174
11052  1c1f               L5174:
11053                     ; 2764  	return FAIL;
11055  1c1f aeffff        	ldw	x,#65535
11057  1c22 2001          	jra	L063
11058  1c24               L3174:
11059                     ; 2767          return SUCCESS;
11061  1c24 5f            	clrw	x
11063  1c25               L063:
11065  1c25 5b03          	addw	sp,#3
11066  1c27 87            	retf
11128                     ; 2778 static int mscfire( int offset, int wdata )
11128                     ; 2779 {
11129                     	switch	.text
11130  1c28               L152f_mscfire:
11132  1c28 89            	pushw	x
11133  1c29 5206          	subw	sp,#6
11134       00000006      OFST:	set	6
11137                     ; 2780 	int  fwmodeflag = FALSE;
11139                     ; 2781 	int  wrburstflag = FALSE;
11141                     ; 2786 	if( offset==0x51)
11143  1c2b a30051        	cpw	x,#81
11144  1c2e 260e          	jrne	L5474
11145                     ; 2788 		if(wdata==0x80 )
11147  1c30 1e0c          	ldw	x,(OFST+6,sp)
11148  1c32 a30080        	cpw	x,#128
11149  1c35 2600          	jrne	L7474
11150                     ; 2789 			fwmodeflag  = TRUE;
11152  1c37               L7474:
11153                     ; 2790 		if(wdata==0x01 )
11155  1c37 1e0c          	ldw	x,(OFST+6,sp)
11156  1c39 a30001        	cpw	x,#1
11157  1c3c 2600          	jrne	L5474
11158                     ; 2791 			wrburstflag = TRUE;
11160  1c3e               L5474:
11161                     ; 2795 	mhlrxwr((unsigned char)offset, (unsigned char)wdata);
11163  1c3e 7b0d          	ld	a,(OFST+7,sp)
11164  1c40 97            	ld	xl,a
11165  1c41 7b08          	ld	a,(OFST+2,sp)
11166  1c43 95            	ld	xh,a
11167  1c44 8d600160      	callf	L57f_mhlrxwr
11169                     ; 2797 	mscreqsts = mscwait();
11171  1c48 8de31be3      	callf	L742f_mscwait
11173  1c4c 1f05          	ldw	(OFST-1,sp),x
11174                     ; 2798 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-MSC FIRE() %ld  \r\n",(int) mscreqsts));
11176  1c4e 1e05          	ldw	x,(OFST-1,sp)
11177  1c50 89            	pushw	x
11178  1c51 ae227e        	ldw	x,#L3574
11179  1c54 8d000000      	callf	f_printf
11181  1c58 85            	popw	x
11182                     ; 2800 	return (mscreqsts==SUCCESS)?SUCCESS:FAIL;
11184  1c59 1e05          	ldw	x,(OFST-1,sp)
11185  1c5b 2603          	jrne	L463
11186  1c5d 5f            	clrw	x
11187  1c5e 2003          	jra	L663
11188  1c60               L463:
11189  1c60 aeffff        	ldw	x,#65535
11190  1c63               L663:
11193  1c63 5b08          	addw	sp,#8
11194  1c65 87            	retf
11232                     ; 2805 static void cbus_send_mscmsg( struct it6802_dev_data *it6802 )
11232                     ; 2806 {
11233                     	switch	.text
11234  1c66               L352f_cbus_send_mscmsg:
11236  1c66 89            	pushw	x
11237       00000000      OFST:	set	0
11240                     ; 2807 	mhlrxwr(0x54, it6802->txmsgdata[0]);
11242  1c67 e648          	ld	a,(72,x)
11243  1c69 97            	ld	xl,a
11244  1c6a a654          	ld	a,#84
11245  1c6c 95            	ld	xh,a
11246  1c6d 8d600160      	callf	L57f_mhlrxwr
11248                     ; 2808 	mhlrxwr(0x55, it6802->txmsgdata[1]);
11250  1c71 1e01          	ldw	x,(OFST+1,sp)
11251  1c73 e649          	ld	a,(73,x)
11252  1c75 97            	ld	xl,a
11253  1c76 a655          	ld	a,#85
11254  1c78 95            	ld	xh,a
11255  1c79 8d600160      	callf	L57f_mhlrxwr
11257                     ; 2809 	mscfire(0x51, 0x02);
11259  1c7d ae0002        	ldw	x,#2
11260  1c80 89            	pushw	x
11261  1c81 ae0051        	ldw	x,#81
11262  1c84 8d281c28      	callf	L152f_mscfire
11264  1c88 85            	popw	x
11265                     ; 2810 }
11268  1c89 85            	popw	x
11269  1c8a 87            	retf
11304                     ; 2818 static void parse_devcap(unsigned char *devcap )
11304                     ; 2819 {
11305                     	switch	.text
11306  1c8b               L552f_parse_devcap:
11308  1c8b 89            	pushw	x
11309       00000000      OFST:	set	0
11312                     ; 2820     MHLRX_DEBUG_PRINTF(printf("\r\nParsing Device Capability Register ...\r\n"));
11314  1c8c ae2253        	ldw	x,#L5205
11315  1c8f 8d000000      	callf	f_printf
11317                     ; 2821     MHLRX_DEBUG_PRINTF(printf("DEV_STATE=%02bX\r\n", devcap[0]));
11319  1c93 1e01          	ldw	x,(OFST+1,sp)
11320  1c95 f6            	ld	a,(x)
11321  1c96 88            	push	a
11322  1c97 ae2241        	ldw	x,#L7205
11323  1c9a 8d000000      	callf	f_printf
11325  1c9e 84            	pop	a
11326                     ; 2823     MHLRX_DEBUG_PRINTF(printf("MHL_VER_MAJOR/MINOR=%02bX\r\n", devcap[1]));
11328  1c9f 1e01          	ldw	x,(OFST+1,sp)
11329  1ca1 e601          	ld	a,(1,x)
11330  1ca3 88            	push	a
11331  1ca4 ae2225        	ldw	x,#L1305
11332  1ca7 8d000000      	callf	f_printf
11334  1cab 84            	pop	a
11335                     ; 2825     MHLRX_DEBUG_PRINTF(printf("DEV_TYPE="));
11337  1cac ae221b        	ldw	x,#L3305
11338  1caf 8d000000      	callf	f_printf
11340                     ; 2826     switch(devcap[2]&0x0F){
11342  1cb3 1e01          	ldw	x,(OFST+1,sp)
11343  1cb5 e602          	ld	a,(2,x)
11344  1cb7 a40f          	and	a,#15
11346                     ; 2831         default: MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved for future use !!! ")); break;
11347  1cb9 4d            	tnz	a
11348  1cba 2712          	jreq	L5774
11349  1cbc 4a            	dec	a
11350  1cbd 2718          	jreq	L7774
11351  1cbf 4a            	dec	a
11352  1cc0 271e          	jreq	L1005
11353  1cc2 4a            	dec	a
11354  1cc3 2724          	jreq	L3005
11355  1cc5               L5005:
11358  1cc5 ae218a        	ldw	x,#L1505
11359  1cc8 8d000000      	callf	f_printf
11363  1ccc 2022          	jra	L7305
11364  1cce               L5774:
11365                     ; 2827         case 0: MHLRX_DEBUG_PRINTF(printf("ERROR: DEV_TYPE at least one bit must be set !!!\r\n")); break;
11367  1cce ae21e8        	ldw	x,#L1405
11368  1cd1 8d000000      	callf	f_printf
11372  1cd5 2019          	jra	L7305
11373  1cd7               L7774:
11374                     ; 2828         case 1: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Sink, ")); break;
11376  1cd7 ae21d6        	ldw	x,#L3405
11377  1cda 8d000000      	callf	f_printf
11381  1cde 2010          	jra	L7305
11382  1ce0               L1005:
11383                     ; 2829         case 2: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Source, ")); break;
11385  1ce0 ae21c2        	ldw	x,#L5405
11386  1ce3 8d000000      	callf	f_printf
11390  1ce7 2007          	jra	L7305
11391  1ce9               L3005:
11392                     ; 2830         case 3: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Dongle, ")); break;
11394  1ce9 ae21ae        	ldw	x,#L7405
11395  1cec 8d000000      	callf	f_printf
11399  1cf0               L7305:
11400                     ; 2833     MHLRX_DEBUG_PRINTF(printf("POW = %02bX\r\n", (devcap[2]&0x10)>>4));
11402  1cf0 1e01          	ldw	x,(OFST+1,sp)
11403  1cf2 e602          	ld	a,(2,x)
11404  1cf4 a410          	and	a,#16
11405  1cf6 4e            	swap	a
11406  1cf7 a40f          	and	a,#15
11407  1cf9 5f            	clrw	x
11408  1cfa 97            	ld	xl,a
11409  1cfb 89            	pushw	x
11410  1cfc ae217c        	ldw	x,#L3505
11411  1cff 8d000000      	callf	f_printf
11413  1d03 85            	popw	x
11414                     ; 2834     MHLRX_DEBUG_PRINTF(printf("PLIM = %02bX\r\n", (devcap[2]&0x60)>>5));
11416  1d04 1e01          	ldw	x,(OFST+1,sp)
11417  1d06 e602          	ld	a,(2,x)
11418  1d08 a460          	and	a,#96
11419  1d0a 4e            	swap	a
11420  1d0b 44            	srl	a
11421  1d0c a407          	and	a,#7
11422  1d0e 5f            	clrw	x
11423  1d0f 97            	ld	xl,a
11424  1d10 89            	pushw	x
11425  1d11 ae216d        	ldw	x,#L5505
11426  1d14 8d000000      	callf	f_printf
11428  1d18 85            	popw	x
11429                     ; 2836     MHLRX_DEBUG_PRINTF(printf("ADOPTER_ID_H=0x%02bX, ADOPTER_ID_L=0x%02bX\r\n", devcap[3], devcap[4]));
11431  1d19 1e01          	ldw	x,(OFST+1,sp)
11432  1d1b e604          	ld	a,(4,x)
11433  1d1d 88            	push	a
11434  1d1e 1e02          	ldw	x,(OFST+2,sp)
11435  1d20 e603          	ld	a,(3,x)
11436  1d22 88            	push	a
11437  1d23 ae2140        	ldw	x,#L7505
11438  1d26 8d000000      	callf	f_printf
11440  1d2a 85            	popw	x
11441                     ; 2838     MHLRX_DEBUG_PRINTF(printf("VID_LINK_MODE:\r\n"));
11443  1d2b ae212f        	ldw	x,#L1605
11444  1d2e 8d000000      	callf	f_printf
11446                     ; 2839     MHLRX_DEBUG_PRINTF(printf("    SUPP_RGB444   = %02bX\r\n", (devcap[5]&0x01)>>0));
11448  1d32 1e01          	ldw	x,(OFST+1,sp)
11449  1d34 e605          	ld	a,(5,x)
11450  1d36 5f            	clrw	x
11451  1d37 a401          	and	a,#1
11452  1d39 5f            	clrw	x
11453  1d3a 02            	rlwa	x,a
11454  1d3b 89            	pushw	x
11455  1d3c 01            	rrwa	x,a
11456  1d3d ae2113        	ldw	x,#L3605
11457  1d40 8d000000      	callf	f_printf
11459  1d44 85            	popw	x
11460                     ; 2840     MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR444 = %02bX\r\n", (devcap[5]&0x02)>>1));
11462  1d45 1e01          	ldw	x,(OFST+1,sp)
11463  1d47 e605          	ld	a,(5,x)
11464  1d49 a402          	and	a,#2
11465  1d4b 44            	srl	a
11466  1d4c 5f            	clrw	x
11467  1d4d 97            	ld	xl,a
11468  1d4e 89            	pushw	x
11469  1d4f ae20f7        	ldw	x,#L5605
11470  1d52 8d000000      	callf	f_printf
11472  1d56 85            	popw	x
11473                     ; 2841     MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR422 = %02bX\r\n", (devcap[5]&0x04)>>2));
11475  1d57 1e01          	ldw	x,(OFST+1,sp)
11476  1d59 e605          	ld	a,(5,x)
11477  1d5b a404          	and	a,#4
11478  1d5d 44            	srl	a
11479  1d5e 44            	srl	a
11480  1d5f 5f            	clrw	x
11481  1d60 97            	ld	xl,a
11482  1d61 89            	pushw	x
11483  1d62 ae20db        	ldw	x,#L7605
11484  1d65 8d000000      	callf	f_printf
11486  1d69 85            	popw	x
11487                     ; 2842     MHLRX_DEBUG_PRINTF(printf("    SUPP_PPIXEL   = %02bX\r\n", (devcap[5]&0x08)>>3));
11489  1d6a 1e01          	ldw	x,(OFST+1,sp)
11490  1d6c e605          	ld	a,(5,x)
11491  1d6e a408          	and	a,#8
11492  1d70 44            	srl	a
11493  1d71 44            	srl	a
11494  1d72 44            	srl	a
11495  1d73 5f            	clrw	x
11496  1d74 97            	ld	xl,a
11497  1d75 89            	pushw	x
11498  1d76 ae20bf        	ldw	x,#L1705
11499  1d79 8d000000      	callf	f_printf
11501  1d7d 85            	popw	x
11502                     ; 2843     MHLRX_DEBUG_PRINTF(printf("    SUPP_ISLANDS  = %02bX\r\n", (devcap[5]&0x10)>>4));
11504  1d7e 1e01          	ldw	x,(OFST+1,sp)
11505  1d80 e605          	ld	a,(5,x)
11506  1d82 a410          	and	a,#16
11507  1d84 4e            	swap	a
11508  1d85 a40f          	and	a,#15
11509  1d87 5f            	clrw	x
11510  1d88 97            	ld	xl,a
11511  1d89 89            	pushw	x
11512  1d8a ae20a3        	ldw	x,#L3705
11513  1d8d 8d000000      	callf	f_printf
11515  1d91 85            	popw	x
11516                     ; 2844     MHLRX_DEBUG_PRINTF(printf("    SUPP_VGA      = %02bX\r\n", (devcap[5]&0x20)>>5));
11518  1d92 1e01          	ldw	x,(OFST+1,sp)
11519  1d94 e605          	ld	a,(5,x)
11520  1d96 a420          	and	a,#32
11521  1d98 4e            	swap	a
11522  1d99 44            	srl	a
11523  1d9a a407          	and	a,#7
11524  1d9c 5f            	clrw	x
11525  1d9d 97            	ld	xl,a
11526  1d9e 89            	pushw	x
11527  1d9f ae2087        	ldw	x,#L5705
11528  1da2 8d000000      	callf	f_printf
11530  1da6 85            	popw	x
11531                     ; 2846     MHLRX_DEBUG_PRINTF(printf("AUD_LINK_MODE:\r\n"));
11533  1da7 ae2076        	ldw	x,#L7705
11534  1daa 8d000000      	callf	f_printf
11536                     ; 2847     MHLRX_DEBUG_PRINTF(printf("    SUPP_2CH  = %02bX\r\n", (devcap[6]&0x01)>>0));
11538  1dae 1e01          	ldw	x,(OFST+1,sp)
11539  1db0 e606          	ld	a,(6,x)
11540  1db2 5f            	clrw	x
11541  1db3 a401          	and	a,#1
11542  1db5 5f            	clrw	x
11543  1db6 02            	rlwa	x,a
11544  1db7 89            	pushw	x
11545  1db8 01            	rrwa	x,a
11546  1db9 ae205e        	ldw	x,#L1015
11547  1dbc 8d000000      	callf	f_printf
11549  1dc0 85            	popw	x
11550                     ; 2848     MHLRX_DEBUG_PRINTF(printf("    SUPP_8CH  = %02bX\r\n", (devcap[6]&0x02)>>1));
11552  1dc1 1e01          	ldw	x,(OFST+1,sp)
11553  1dc3 e606          	ld	a,(6,x)
11554  1dc5 a402          	and	a,#2
11555  1dc7 44            	srl	a
11556  1dc8 5f            	clrw	x
11557  1dc9 97            	ld	xl,a
11558  1dca 89            	pushw	x
11559  1dcb ae2046        	ldw	x,#L3015
11560  1dce 8d000000      	callf	f_printf
11562  1dd2 85            	popw	x
11563                     ; 2850     if( devcap[7]&0x80 ) {
11565  1dd3 1e01          	ldw	x,(OFST+1,sp)
11566  1dd5 e607          	ld	a,(7,x)
11567  1dd7 a580          	bcp	a,#128
11568  1dd9 2755          	jreq	L5015
11569                     ; 2851         MHLRX_DEBUG_PRINTF(printf("VIDEO_TYPE: \r\n"));
11571  1ddb ae2037        	ldw	x,#L7015
11572  1dde 8d000000      	callf	f_printf
11574                     ; 2852         MHLRX_DEBUG_PRINTF(printf("    VT_GRAPHICS = %02bX\r\n", (devcap[7]&0x01)>>0));
11576  1de2 1e01          	ldw	x,(OFST+1,sp)
11577  1de4 e607          	ld	a,(7,x)
11578  1de6 5f            	clrw	x
11579  1de7 a401          	and	a,#1
11580  1de9 5f            	clrw	x
11581  1dea 02            	rlwa	x,a
11582  1deb 89            	pushw	x
11583  1dec 01            	rrwa	x,a
11584  1ded ae201d        	ldw	x,#L1115
11585  1df0 8d000000      	callf	f_printf
11587  1df4 85            	popw	x
11588                     ; 2853         MHLRX_DEBUG_PRINTF(printf("    VT_PHOTO    = %02bX\r\n", (devcap[7]&0x02)>>1));
11590  1df5 1e01          	ldw	x,(OFST+1,sp)
11591  1df7 e607          	ld	a,(7,x)
11592  1df9 a402          	and	a,#2
11593  1dfb 44            	srl	a
11594  1dfc 5f            	clrw	x
11595  1dfd 97            	ld	xl,a
11596  1dfe 89            	pushw	x
11597  1dff ae2003        	ldw	x,#L3115
11598  1e02 8d000000      	callf	f_printf
11600  1e06 85            	popw	x
11601                     ; 2854         MHLRX_DEBUG_PRINTF(printf("    VT_CINEMA   = %02bX\r\n", (devcap[7]&0x04)>>2));
11603  1e07 1e01          	ldw	x,(OFST+1,sp)
11604  1e09 e607          	ld	a,(7,x)
11605  1e0b a404          	and	a,#4
11606  1e0d 44            	srl	a
11607  1e0e 44            	srl	a
11608  1e0f 5f            	clrw	x
11609  1e10 97            	ld	xl,a
11610  1e11 89            	pushw	x
11611  1e12 ae1fe9        	ldw	x,#L5115
11612  1e15 8d000000      	callf	f_printf
11614  1e19 85            	popw	x
11615                     ; 2855         MHLRX_DEBUG_PRINTF(printf("    VT_GAME     = %02bX\r\n", (devcap[7]&0x08)>>3));
11617  1e1a 1e01          	ldw	x,(OFST+1,sp)
11618  1e1c e607          	ld	a,(7,x)
11619  1e1e a408          	and	a,#8
11620  1e20 44            	srl	a
11621  1e21 44            	srl	a
11622  1e22 44            	srl	a
11623  1e23 5f            	clrw	x
11624  1e24 97            	ld	xl,a
11625  1e25 89            	pushw	x
11626  1e26 ae1fcf        	ldw	x,#L7115
11627  1e29 8d000000      	callf	f_printf
11629  1e2d 85            	popw	x
11631  1e2e 2007          	jra	L1215
11632  1e30               L5015:
11633                     ; 2858         MHLRX_DEBUG_PRINTF(printf("Not Support VIDEO_TYPE !!!\r\n"));
11635  1e30 ae1fb2        	ldw	x,#L3215
11636  1e33 8d000000      	callf	f_printf
11638  1e37               L1215:
11639                     ; 2860     MHLRX_DEBUG_PRINTF(printf("LOG_DEV_MAP:\r\n"));
11641  1e37 ae1fa3        	ldw	x,#L5215
11642  1e3a 8d000000      	callf	f_printf
11644                     ; 2861     MHLRX_DEBUG_PRINTF(printf("    LD_DISPLAY  = %02bX\r\n", (devcap[8]&0x01)>>0));
11646  1e3e 1e01          	ldw	x,(OFST+1,sp)
11647  1e40 e608          	ld	a,(8,x)
11648  1e42 5f            	clrw	x
11649  1e43 a401          	and	a,#1
11650  1e45 5f            	clrw	x
11651  1e46 02            	rlwa	x,a
11652  1e47 89            	pushw	x
11653  1e48 01            	rrwa	x,a
11654  1e49 ae1f89        	ldw	x,#L7215
11655  1e4c 8d000000      	callf	f_printf
11657  1e50 85            	popw	x
11658                     ; 2862     MHLRX_DEBUG_PRINTF(printf("    LD_VIDEO    = %02bX\r\n", (devcap[8]&0x02)>>1));
11660  1e51 1e01          	ldw	x,(OFST+1,sp)
11661  1e53 e608          	ld	a,(8,x)
11662  1e55 a402          	and	a,#2
11663  1e57 44            	srl	a
11664  1e58 5f            	clrw	x
11665  1e59 97            	ld	xl,a
11666  1e5a 89            	pushw	x
11667  1e5b ae1f6f        	ldw	x,#L1315
11668  1e5e 8d000000      	callf	f_printf
11670  1e62 85            	popw	x
11671                     ; 2863     MHLRX_DEBUG_PRINTF(printf("    LD_AUDIO    = %02bX\r\n", (devcap[8]&0x04)>>2));
11673  1e63 1e01          	ldw	x,(OFST+1,sp)
11674  1e65 e608          	ld	a,(8,x)
11675  1e67 a404          	and	a,#4
11676  1e69 44            	srl	a
11677  1e6a 44            	srl	a
11678  1e6b 5f            	clrw	x
11679  1e6c 97            	ld	xl,a
11680  1e6d 89            	pushw	x
11681  1e6e ae1f55        	ldw	x,#L3315
11682  1e71 8d000000      	callf	f_printf
11684  1e75 85            	popw	x
11685                     ; 2864     MHLRX_DEBUG_PRINTF(printf("    LD_MEDIA    = %02bX\r\n", (devcap[8]&0x08)>>3));
11687  1e76 1e01          	ldw	x,(OFST+1,sp)
11688  1e78 e608          	ld	a,(8,x)
11689  1e7a a408          	and	a,#8
11690  1e7c 44            	srl	a
11691  1e7d 44            	srl	a
11692  1e7e 44            	srl	a
11693  1e7f 5f            	clrw	x
11694  1e80 97            	ld	xl,a
11695  1e81 89            	pushw	x
11696  1e82 ae1f3b        	ldw	x,#L5315
11697  1e85 8d000000      	callf	f_printf
11699  1e89 85            	popw	x
11700                     ; 2865     MHLRX_DEBUG_PRINTF(printf("    LD_TUNER    = %02bX\r\n", (devcap[8]&0x10)>>4));
11702  1e8a 1e01          	ldw	x,(OFST+1,sp)
11703  1e8c e608          	ld	a,(8,x)
11704  1e8e a410          	and	a,#16
11705  1e90 4e            	swap	a
11706  1e91 a40f          	and	a,#15
11707  1e93 5f            	clrw	x
11708  1e94 97            	ld	xl,a
11709  1e95 89            	pushw	x
11710  1e96 ae1f21        	ldw	x,#L7315
11711  1e99 8d000000      	callf	f_printf
11713  1e9d 85            	popw	x
11714                     ; 2866     MHLRX_DEBUG_PRINTF(printf("    LD_RECORD   = %02bX\r\n", (devcap[8]&0x20)>>5));
11716  1e9e 1e01          	ldw	x,(OFST+1,sp)
11717  1ea0 e608          	ld	a,(8,x)
11718  1ea2 a420          	and	a,#32
11719  1ea4 4e            	swap	a
11720  1ea5 44            	srl	a
11721  1ea6 a407          	and	a,#7
11722  1ea8 5f            	clrw	x
11723  1ea9 97            	ld	xl,a
11724  1eaa 89            	pushw	x
11725  1eab ae1f07        	ldw	x,#L1415
11726  1eae 8d000000      	callf	f_printf
11728  1eb2 85            	popw	x
11729                     ; 2867     MHLRX_DEBUG_PRINTF(printf("    LD_SPEAKER  = %02bX\r\n", (devcap[8]&0x40)>>6));
11731  1eb3 1e01          	ldw	x,(OFST+1,sp)
11732  1eb5 e608          	ld	a,(8,x)
11733  1eb7 a440          	and	a,#64
11734  1eb9 4e            	swap	a
11735  1eba 44            	srl	a
11736  1ebb 44            	srl	a
11737  1ebc a403          	and	a,#3
11738  1ebe 5f            	clrw	x
11739  1ebf 97            	ld	xl,a
11740  1ec0 89            	pushw	x
11741  1ec1 ae1eed        	ldw	x,#L3415
11742  1ec4 8d000000      	callf	f_printf
11744  1ec8 85            	popw	x
11745                     ; 2868     MHLRX_DEBUG_PRINTF(printf("    LD_GUI      = %02bX\r\n", (devcap[8]&0x80)>>7));
11747  1ec9 1e01          	ldw	x,(OFST+1,sp)
11748  1ecb e608          	ld	a,(8,x)
11749  1ecd a480          	and	a,#128
11750  1ecf 49            	rlc	a
11751  1ed0 4f            	clr	a
11752  1ed1 49            	rlc	a
11753  1ed2 5f            	clrw	x
11754  1ed3 97            	ld	xl,a
11755  1ed4 89            	pushw	x
11756  1ed5 ae1ed3        	ldw	x,#L5415
11757  1ed8 8d000000      	callf	f_printf
11759  1edc 85            	popw	x
11760                     ; 2870     MHLRX_DEBUG_PRINTF(printf("BANDWIDTH = %XMHz\r\n", devcap[9]*5));
11762  1edd 1e01          	ldw	x,(OFST+1,sp)
11763  1edf e609          	ld	a,(9,x)
11764  1ee1 97            	ld	xl,a
11765  1ee2 a605          	ld	a,#5
11766  1ee4 42            	mul	x,a
11767  1ee5 89            	pushw	x
11768  1ee6 ae1ebf        	ldw	x,#L7415
11769  1ee9 8d000000      	callf	f_printf
11771  1eed 85            	popw	x
11772                     ; 2872     MHLRX_DEBUG_PRINTF(printf("FEATURE_FLAG:\r\n"));
11774  1eee ae1eaf        	ldw	x,#L1515
11775  1ef1 8d000000      	callf	f_printf
11777                     ; 2873     MHLRX_DEBUG_PRINTF(printf("         RCP_SUPPORT = %02bX\r\n", (devcap[10]&0x01)>>0));
11779  1ef5 1e01          	ldw	x,(OFST+1,sp)
11780  1ef7 e60a          	ld	a,(10,x)
11781  1ef9 5f            	clrw	x
11782  1efa a401          	and	a,#1
11783  1efc 5f            	clrw	x
11784  1efd 02            	rlwa	x,a
11785  1efe 89            	pushw	x
11786  1eff 01            	rrwa	x,a
11787  1f00 ae1e90        	ldw	x,#L3515
11788  1f03 8d000000      	callf	f_printf
11790  1f07 85            	popw	x
11791                     ; 2874     MHLRX_DEBUG_PRINTF(printf("         RAP_SUPPORT = %02bX\r\n", (devcap[10]&0x02)>>1));
11793  1f08 1e01          	ldw	x,(OFST+1,sp)
11794  1f0a e60a          	ld	a,(10,x)
11795  1f0c a402          	and	a,#2
11796  1f0e 44            	srl	a
11797  1f0f 5f            	clrw	x
11798  1f10 97            	ld	xl,a
11799  1f11 89            	pushw	x
11800  1f12 ae1e71        	ldw	x,#L5515
11801  1f15 8d000000      	callf	f_printf
11803  1f19 85            	popw	x
11804                     ; 2875     MHLRX_DEBUG_PRINTF(printf("         SP_SUPPORT  = %02bX\r\n", (devcap[10]&0x04)>>2));
11806  1f1a 1e01          	ldw	x,(OFST+1,sp)
11807  1f1c e60a          	ld	a,(10,x)
11808  1f1e a404          	and	a,#4
11809  1f20 44            	srl	a
11810  1f21 44            	srl	a
11811  1f22 5f            	clrw	x
11812  1f23 97            	ld	xl,a
11813  1f24 89            	pushw	x
11814  1f25 ae1e52        	ldw	x,#L7515
11815  1f28 8d000000      	callf	f_printf
11817  1f2c 85            	popw	x
11818                     ; 2876     MHLRX_DEBUG_PRINTF(printf("    UCP_SEND_SUPPORT = %02bX\r\n", (devcap[10]&0x08)>>3));
11820  1f2d 1e01          	ldw	x,(OFST+1,sp)
11821  1f2f e60a          	ld	a,(10,x)
11822  1f31 a408          	and	a,#8
11823  1f33 44            	srl	a
11824  1f34 44            	srl	a
11825  1f35 44            	srl	a
11826  1f36 5f            	clrw	x
11827  1f37 97            	ld	xl,a
11828  1f38 89            	pushw	x
11829  1f39 ae1e33        	ldw	x,#L1615
11830  1f3c 8d000000      	callf	f_printf
11832  1f40 85            	popw	x
11833                     ; 2877     MHLRX_DEBUG_PRINTF(printf("    UCP_RECV_SUPPORT = %02bX\r\n", (devcap[10]&0x10)>>4));
11835  1f41 1e01          	ldw	x,(OFST+1,sp)
11836  1f43 e60a          	ld	a,(10,x)
11837  1f45 a410          	and	a,#16
11838  1f47 4e            	swap	a
11839  1f48 a40f          	and	a,#15
11840  1f4a 5f            	clrw	x
11841  1f4b 97            	ld	xl,a
11842  1f4c 89            	pushw	x
11843  1f4d ae1e14        	ldw	x,#L3615
11844  1f50 8d000000      	callf	f_printf
11846  1f54 85            	popw	x
11847                     ; 2879     MHLRX_DEBUG_PRINTF(printf("DEVICE_ID_H=0x%02bX, DEVICE_ID_L=0x%02bX\r\n", devcap[11], devcap[12]));
11849  1f55 1e01          	ldw	x,(OFST+1,sp)
11850  1f57 e60c          	ld	a,(12,x)
11851  1f59 88            	push	a
11852  1f5a 1e02          	ldw	x,(OFST+2,sp)
11853  1f5c e60b          	ld	a,(11,x)
11854  1f5e 88            	push	a
11855  1f5f ae1de9        	ldw	x,#L5615
11856  1f62 8d000000      	callf	f_printf
11858  1f66 85            	popw	x
11859                     ; 2881     if( devcap[10]&0x04 )
11861  1f67 1e01          	ldw	x,(OFST+1,sp)
11862  1f69 e60a          	ld	a,(10,x)
11863  1f6b a504          	bcp	a,#4
11864  1f6d 270d          	jreq	L7615
11865                     ; 2882         MHLRX_DEBUG_PRINTF(printf("SCRATCHPAD_SIZE = %02bX Bytes\r\n", devcap[13]));
11867  1f6f 1e01          	ldw	x,(OFST+1,sp)
11868  1f71 e60d          	ld	a,(13,x)
11869  1f73 88            	push	a
11870  1f74 ae1dc9        	ldw	x,#L1715
11871  1f77 8d000000      	callf	f_printf
11873  1f7b 84            	pop	a
11874  1f7c               L7615:
11875                     ; 2884     MHLRX_DEBUG_PRINTF(printf("INT_SIZE  = %02bX Bytes\r\n", (devcap[14]&0x0F)+1));
11877  1f7c 1e01          	ldw	x,(OFST+1,sp)
11878  1f7e e60e          	ld	a,(14,x)
11879  1f80 a40f          	and	a,#15
11880  1f82 5f            	clrw	x
11881  1f83 97            	ld	xl,a
11882  1f84 5c            	incw	x
11883  1f85 89            	pushw	x
11884  1f86 ae1daf        	ldw	x,#L3715
11885  1f89 8d000000      	callf	f_printf
11887  1f8d 85            	popw	x
11888                     ; 2885     MHLRX_DEBUG_PRINTF(printf("STAT_SIZE = %02bX Bytes\r\n", ((devcap[14]&0xF0)>>4)+1));
11890  1f8e 1e01          	ldw	x,(OFST+1,sp)
11891  1f90 e60e          	ld	a,(14,x)
11892  1f92 a4f0          	and	a,#240
11893  1f94 4e            	swap	a
11894  1f95 a40f          	and	a,#15
11895  1f97 5f            	clrw	x
11896  1f98 97            	ld	xl,a
11897  1f99 5c            	incw	x
11898  1f9a 89            	pushw	x
11899  1f9b ae1d95        	ldw	x,#L5715
11900  1f9e 8d000000      	callf	f_printf
11902  1fa2 85            	popw	x
11903                     ; 2887 }
11906  1fa3 85            	popw	x
11907  1fa4 87            	retf
11955                     ; 2895 static int read_devcap_hw( struct it6802_dev_data *it6802 )
11955                     ; 2896 {
11956                     	switch	.text
11957  1fa5               L752f_read_devcap_hw:
11959  1fa5 89            	pushw	x
11960  1fa6 88            	push	a
11961       00000001      OFST:	set	1
11964                     ; 2899 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-\r\nRead Device Capability Start ...\r\n"));
11966  1fa7 ae1d69        	ldw	x,#L1225
11967  1faa 8d000000      	callf	f_printf
11969                     ; 2901 	for(offset=0; offset<0x10; offset++) {
11971  1fae 0f01          	clr	(OFST+0,sp)
11972  1fb0               L3225:
11973                     ; 2903 		mhlrxwr(0x54, offset);
11975  1fb0 7b01          	ld	a,(OFST+0,sp)
11976  1fb2 97            	ld	xl,a
11977  1fb3 a654          	ld	a,#84
11978  1fb5 95            	ld	xh,a
11979  1fb6 8d600160      	callf	L57f_mhlrxwr
11981                     ; 2905 		if( mscfire(0x50, 0x40) == SUCCESS )
11983  1fba ae0040        	ldw	x,#64
11984  1fbd 89            	pushw	x
11985  1fbe ae0050        	ldw	x,#80
11986  1fc1 8d281c28      	callf	L152f_mscfire
11988  1fc5 5b02          	addw	sp,#2
11989  1fc7 a30000        	cpw	x,#0
11990  1fca 264e          	jrne	L1325
11991                     ; 2906 			it6802->Mhl_devcap[offset] = mhlrxrd(0x56);
11993  1fcc 7b02          	ld	a,(OFST+1,sp)
11994  1fce 97            	ld	xl,a
11995  1fcf 7b03          	ld	a,(OFST+2,sp)
11996  1fd1 1b01          	add	a,(OFST+0,sp)
11997  1fd3 2401          	jrnc	L673
11998  1fd5 5c            	incw	x
11999  1fd6               L673:
12000  1fd6 02            	rlwa	x,a
12001  1fd7 89            	pushw	x
12002  1fd8 a656          	ld	a,#86
12003  1fda 8d1f011f      	callf	L37f_mhlrxrd
12005  1fde 85            	popw	x
12006  1fdf e738          	ld	(56,x),a
12008                     ; 2911 		IT6802_MHL_DEBUG_PRINTF(printf("IT6802-DevCap[%X]=%X\r\n", (int)offset, (int)it6802->Mhl_devcap[offset]));
12010  1fe1 7b02          	ld	a,(OFST+1,sp)
12011  1fe3 97            	ld	xl,a
12012  1fe4 7b03          	ld	a,(OFST+2,sp)
12013  1fe6 1b01          	add	a,(OFST+0,sp)
12014  1fe8 2401          	jrnc	L004
12015  1fea 5c            	incw	x
12016  1feb               L004:
12017  1feb 02            	rlwa	x,a
12018  1fec e638          	ld	a,(56,x)
12019  1fee 5f            	clrw	x
12020  1fef 97            	ld	xl,a
12021  1ff0 89            	pushw	x
12022  1ff1 7b03          	ld	a,(OFST+2,sp)
12023  1ff3 5f            	clrw	x
12024  1ff4 97            	ld	xl,a
12025  1ff5 89            	pushw	x
12026  1ff6 ae1d52        	ldw	x,#L5325
12027  1ff9 8d000000      	callf	f_printf
12029  1ffd 5b04          	addw	sp,#4
12030                     ; 2901 	for(offset=0; offset<0x10; offset++) {
12032  1fff 0c01          	inc	(OFST+0,sp)
12035  2001 7b01          	ld	a,(OFST+0,sp)
12036  2003 a110          	cp	a,#16
12037  2005 25a9          	jrult	L3225
12038                     ; 2914 	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-Read Device Capability End...\r\n"));
12040  2007 ae1d2b        	ldw	x,#L7325
12041  200a 8d000000      	callf	f_printf
12043                     ; 2916 	parse_devcap(&it6802->Mhl_devcap[0]);
12045  200e 1e02          	ldw	x,(OFST+1,sp)
12046  2010 1c0038        	addw	x,#56
12047  2013 8d8b1c8b      	callf	L552f_parse_devcap
12049                     ; 2918 	return 0;
12051  2017 5f            	clrw	x
12053  2018 2003          	jra	L204
12054  201a               L1325:
12055                     ; 2908 			return -1;
12057  201a aeffff        	ldw	x,#65535
12059  201d               L204:
12061  201d 5b03          	addw	sp,#3
12062  201f 87            	retf
12102                     ; 2923 static void set_mhlint( unsigned char offset, unsigned char field )
12102                     ; 2924 {
12103                     	switch	.text
12104  2020               L162f_set_mhlint:
12106  2020 89            	pushw	x
12107       00000000      OFST:	set	0
12110                     ; 2925     mhlrxwr(0x54, offset);
12112  2021 9e            	ld	a,xh
12113  2022 97            	ld	xl,a
12114  2023 a654          	ld	a,#84
12115  2025 95            	ld	xh,a
12116  2026 8d600160      	callf	L57f_mhlrxwr
12118                     ; 2926     mhlrxwr(0x55, field);
12120  202a 7b02          	ld	a,(OFST+2,sp)
12121  202c 97            	ld	xl,a
12122  202d a655          	ld	a,#85
12123  202f 95            	ld	xh,a
12124  2030 8d600160      	callf	L57f_mhlrxwr
12126                     ; 2927     mscfire(0x50, 0x80);
12128  2034 ae0080        	ldw	x,#128
12129  2037 89            	pushw	x
12130  2038 ae0050        	ldw	x,#80
12131  203b 8d281c28      	callf	L152f_mscfire
12133  203f 85            	popw	x
12134                     ; 2928 }
12137  2040 85            	popw	x
12138  2041 87            	retf
12178                     ; 2930 static void set_mhlsts( unsigned char offset, unsigned char status )
12178                     ; 2931 {
12179                     	switch	.text
12180  2042               L362f_set_mhlsts:
12182  2042 89            	pushw	x
12183       00000000      OFST:	set	0
12186                     ; 2932     mhlrxwr(0x54, offset);
12188  2043 9e            	ld	a,xh
12189  2044 97            	ld	xl,a
12190  2045 a654          	ld	a,#84
12191  2047 95            	ld	xh,a
12192  2048 8d600160      	callf	L57f_mhlrxwr
12194                     ; 2933     mhlrxwr(0x55, status);
12196  204c 7b02          	ld	a,(OFST+2,sp)
12197  204e 97            	ld	xl,a
12198  204f a655          	ld	a,#85
12199  2051 95            	ld	xh,a
12200  2052 8d600160      	callf	L57f_mhlrxwr
12202                     ; 2934     mscfire(0x50, 0x80);
12204  2056 ae0080        	ldw	x,#128
12205  2059 89            	pushw	x
12206  205a ae0050        	ldw	x,#80
12207  205d 8d281c28      	callf	L152f_mscfire
12209  2061 85            	popw	x
12210                     ; 2935 }
12213  2062 85            	popw	x
12214  2063 87            	retf
12267                     ; 2937 static void write_burst(struct it6802_dev_data *it6802, int offset, int byteno )
12267                     ; 2938 {
12268                     	switch	.text
12269  2064               L562f_write_burst:
12271  2064 89            	pushw	x
12272       00000000      OFST:	set	0
12275                     ; 2939     set_wrburst_data(it6802, offset, byteno);
12277  2065 1e08          	ldw	x,(OFST+8,sp)
12278  2067 89            	pushw	x
12279  2068 1e08          	ldw	x,(OFST+8,sp)
12280  206a 89            	pushw	x
12281  206b 1e05          	ldw	x,(OFST+5,sp)
12282  206d 8d8d208d      	callf	L762f_set_wrburst_data
12284  2071 5b04          	addw	sp,#4
12285                     ; 2942     mscfire(0x51, 0x01);        // fire WRITE_BURST
12287  2073 ae0001        	ldw	x,#1
12288  2076 89            	pushw	x
12289  2077 ae0051        	ldw	x,#81
12290  207a 8d281c28      	callf	L152f_mscfire
12292  207e 85            	popw	x
12293                     ; 2944     mhlrxset(0x00, 0x80, EnCBusDbgMode<<7);  // Restore setting
12295  207f 4b00          	push	#0
12296  2081 ae0080        	ldw	x,#128
12297  2084 4f            	clr	a
12298  2085 95            	ld	xh,a
12299  2086 8daa01aa      	callf	L77f_mhlrxset
12301  208a 84            	pop	a
12302                     ; 2945 }
12305  208b 85            	popw	x
12306  208c 87            	retf
12366                     ; 2947 static void set_wrburst_data(struct it6802_dev_data *it6802, int offset, int byteno )
12366                     ; 2948 {
12367                     	switch	.text
12368  208d               L762f_set_wrburst_data:
12370  208d 89            	pushw	x
12371  208e 89            	pushw	x
12372       00000002      OFST:	set	2
12375                     ; 2951     if( byteno<=2 || (offset+byteno)>16 ) {
12377  208f 9c            	rvf
12378  2090 1e0a          	ldw	x,(OFST+8,sp)
12379  2092 a30003        	cpw	x,#3
12380  2095 2f0b          	jrslt	L1535
12382  2097 9c            	rvf
12383  2098 1e08          	ldw	x,(OFST+6,sp)
12384  209a 72fb0a        	addw	x,(OFST+8,sp)
12385  209d a30011        	cpw	x,#17
12386  20a0 2f09          	jrslt	L7435
12387  20a2               L1535:
12388                     ; 2952         MHLRX_DEBUG_PRINTF(printf("ERROR: Set Burst Write Data Fail !!!\r\n"));
12390  20a2 ae1d04        	ldw	x,#L3535
12391  20a5 8d000000      	callf	f_printf
12393                     ; 2953         return;
12395  20a9 203c          	jra	L414
12396  20ab               L7435:
12397                     ; 2957     mhlrxwr(0x54, 0x40+offset);
12399  20ab 7b09          	ld	a,(OFST+7,sp)
12400  20ad ab40          	add	a,#64
12401  20af 97            	ld	xl,a
12402  20b0 a654          	ld	a,#84
12403  20b2 95            	ld	xh,a
12404  20b3 8d600160      	callf	L57f_mhlrxwr
12406                     ; 2960         mhlrxset(0x00, 0x80, 0x00); // Disable CBUS Debug Mode when using Burst Write
12408  20b7 4b00          	push	#0
12409  20b9 ae0080        	ldw	x,#128
12410  20bc 4f            	clr	a
12411  20bd 95            	ld	xh,a
12412  20be 8daa01aa      	callf	L77f_mhlrxset
12414  20c2 84            	pop	a
12415                     ; 2964             i = 2;
12417  20c3 ae0002        	ldw	x,#2
12418  20c6 1f01          	ldw	(OFST-1,sp),x
12420  20c8 2016          	jra	L1635
12421  20ca               L5535:
12422                     ; 2969             mhlrxwr(0x59, it6802->txscrpad[i]);
12424  20ca 1e03          	ldw	x,(OFST+1,sp)
12425  20cc 72fb01        	addw	x,(OFST-1,sp)
12426  20cf e64c          	ld	a,(76,x)
12427  20d1 97            	ld	xl,a
12428  20d2 a659          	ld	a,#89
12429  20d4 95            	ld	xh,a
12430  20d5 8d600160      	callf	L57f_mhlrxwr
12432                     ; 2968 		for(; i<byteno; i++)
12434  20d9 1e01          	ldw	x,(OFST-1,sp)
12435  20db 1c0001        	addw	x,#1
12436  20de 1f01          	ldw	(OFST-1,sp),x
12437  20e0               L1635:
12440  20e0 9c            	rvf
12441  20e1 1e01          	ldw	x,(OFST-1,sp)
12442  20e3 130a          	cpw	x,(OFST+8,sp)
12443  20e5 2fe3          	jrslt	L5535
12444                     ; 2974 }
12445  20e7               L414:
12448  20e7 5b04          	addw	sp,#4
12449  20e9 87            	retf
12493                     ; 2980 static void v3d_burst1st(struct it6802_dev_data *it6802)
12493                     ; 2981 {
12494                     	switch	.text
12495  20ea               L172f_v3d_burst1st:
12497  20ea 89            	pushw	x
12498       00000000      OFST:	set	0
12501                     ; 2982      it6802->txscrpad[0]  = 0x00;
12503  20eb 6f4c          	clr	(76,x)
12504                     ; 2983 	 it6802->txscrpad[1]  = 0x11;
12506  20ed a611          	ld	a,#17
12507  20ef e74d          	ld	(77,x),a
12508                     ; 2984 	 it6802->txscrpad[2]  = 0xC1;
12510  20f1 a6c1          	ld	a,#193
12511  20f3 e74e          	ld	(78,x),a
12512                     ; 2985 	 it6802->txscrpad[3]  = 0x05;
12514  20f5 a605          	ld	a,#5
12515  20f7 e74f          	ld	(79,x),a
12516                     ; 2986 	 it6802->txscrpad[4]  = 0x01;
12518  20f9 a601          	ld	a,#1
12519  20fb e750          	ld	(80,x),a
12520                     ; 2987 	 it6802->txscrpad[5]  = 0x05;
12522  20fd a605          	ld	a,#5
12523  20ff e751          	ld	(81,x),a
12524                     ; 2988 	 it6802->txscrpad[6]  = 0x00;
12526  2101 6f52          	clr	(82,x)
12527                     ; 2989 	 it6802->txscrpad[7]  = 0x07;
12529  2103 a607          	ld	a,#7
12530  2105 e753          	ld	(83,x),a
12531                     ; 2990 	 it6802->txscrpad[8]  = 0x00;
12533  2107 6f54          	clr	(84,x)
12534                     ; 2991 	 it6802->txscrpad[9]  = 0x07;
12536  2109 a607          	ld	a,#7
12537  210b e755          	ld	(85,x),a
12538                     ; 2992 	 it6802->txscrpad[10] = 0x00;
12540  210d 6f56          	clr	(86,x)
12541                     ; 2993 	 it6802->txscrpad[11] = 0x07;
12543  210f a607          	ld	a,#7
12544  2111 e757          	ld	(87,x),a
12545                     ; 2994 	 it6802->txscrpad[12] = 0x00;
12547  2113 6f58          	clr	(88,x)
12548                     ; 2995 	 it6802->txscrpad[13] = 0x07;
12550  2115 a607          	ld	a,#7
12551  2117 e759          	ld	(89,x),a
12552                     ; 2996 	 it6802->txscrpad[14] = 0x00;
12554  2119 6f5a          	clr	(90,x)
12555                     ; 2997 	 it6802->txscrpad[15] = 0x07;
12557  211b a607          	ld	a,#7
12558  211d e75b          	ld	(91,x),a
12559                     ; 2999 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12561  211f e64c          	ld	a,(76,x)
12562  2121 97            	ld	xl,a
12563  2122 a65e          	ld	a,#94
12564  2124 95            	ld	xh,a
12565  2125 8d600160      	callf	L57f_mhlrxwr
12567                     ; 3000 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12569  2129 1e01          	ldw	x,(OFST+1,sp)
12570  212b e64d          	ld	a,(77,x)
12571  212d 97            	ld	xl,a
12572  212e a65f          	ld	a,#95
12573  2130 95            	ld	xh,a
12574  2131 8d600160      	callf	L57f_mhlrxwr
12576                     ; 3001 	 wrburstoff = 0;
12578  2135 725f0030      	clr	_wrburstoff
12579                     ; 3002 	 wrburstnum = 16;
12581  2139 3510002f      	mov	_wrburstnum,#16
12582                     ; 3003 	 write_burst(it6802,wrburstoff, wrburstnum);
12584  213d ae0010        	ldw	x,#16
12585  2140 89            	pushw	x
12586  2141 5f            	clrw	x
12587  2142 89            	pushw	x
12588  2143 1e05          	ldw	x,(OFST+5,sp)
12589  2145 8d642064      	callf	L562f_write_burst
12591  2149 5b04          	addw	sp,#4
12592                     ; 3004 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12594  214b c60001        	ld	a,_TxWrBstSeq
12595  214e 97            	ld	xl,a
12596  214f 725c0001      	inc	_TxWrBstSeq
12597  2153 9f            	ld	a,xl
12598  2154 88            	push	a
12599  2155 ae1cde        	ldw	x,#L5045
12600  2158 8d000000      	callf	f_printf
12602  215c 84            	pop	a
12603                     ; 3005 	 set_mhlint(MHLInt00B, DSCR_CHG);
12605  215d ae0002        	ldw	x,#2
12606  2160 a620          	ld	a,#32
12607  2162 95            	ld	xh,a
12608  2163 8d202020      	callf	L162f_set_mhlint
12610                     ; 3006 	V3D_EntryCnt++;
12612  2167 725c0000      	inc	_V3D_EntryCnt
12613                     ; 3007 	 set_mhlint(MHLInt00B, REQ_WRT);
12615  216b ae0004        	ldw	x,#4
12616  216e a620          	ld	a,#32
12617  2170 95            	ld	xh,a
12618  2171 8d202020      	callf	L162f_set_mhlint
12620                     ; 3008 }
12623  2175 85            	popw	x
12624  2176 87            	retf
12668                     ; 3010 static void v3d_burst2nd(struct it6802_dev_data *it6802)
12668                     ; 3011 {
12669                     	switch	.text
12670  2177               L372f_v3d_burst2nd:
12672  2177 89            	pushw	x
12673       00000000      OFST:	set	0
12676                     ; 3012 	 it6802->txscrpad[0]  = 0x00;
12678  2178 6f4c          	clr	(76,x)
12679                     ; 3013 	 it6802->txscrpad[1]  = 0x10;
12681  217a a610          	ld	a,#16
12682  217c e74d          	ld	(77,x),a
12683                     ; 3014 	 it6802->txscrpad[2]  = 0xB8;
12685  217e a6b8          	ld	a,#184
12686  2180 e74e          	ld	(78,x),a
12687                     ; 3015 	 it6802->txscrpad[3]  = 0x0F;
12689  2182 a60f          	ld	a,#15
12690  2184 e74f          	ld	(79,x),a
12691                     ; 3016 	 it6802->txscrpad[4]  = 0x01;
12693  2186 a601          	ld	a,#1
12694  2188 e750          	ld	(80,x),a
12695                     ; 3017 	 it6802->txscrpad[5]  = 0x05;
12697  218a a605          	ld	a,#5
12698  218c e751          	ld	(81,x),a
12699                     ; 3018 	 it6802->txscrpad[6]  = 0x00;
12701  218e 6f52          	clr	(82,x)
12702                     ; 3019 	 it6802->txscrpad[7]  = 0x07;
12704  2190 a607          	ld	a,#7
12705  2192 e753          	ld	(83,x),a
12706                     ; 3020 	 it6802->txscrpad[8]  = 0x00;
12708  2194 6f54          	clr	(84,x)
12709                     ; 3021 	 it6802->txscrpad[9]  = 0x07;
12711  2196 a607          	ld	a,#7
12712  2198 e755          	ld	(85,x),a
12713                     ; 3022 	 it6802->txscrpad[10] = 0x00;
12715  219a 6f56          	clr	(86,x)
12716                     ; 3023 	 it6802->txscrpad[11] = 0x07;
12718  219c a607          	ld	a,#7
12719  219e e757          	ld	(87,x),a
12720                     ; 3024 	 it6802->txscrpad[12] = 0x00;
12722  21a0 6f58          	clr	(88,x)
12723                     ; 3025 	 it6802->txscrpad[13] = 0x07;
12725  21a2 a607          	ld	a,#7
12726  21a4 e759          	ld	(89,x),a
12727                     ; 3026 	 it6802->txscrpad[14] = 0x00;
12729  21a6 6f5a          	clr	(90,x)
12730                     ; 3027 	 it6802->txscrpad[15] = 0x07;
12732  21a8 a607          	ld	a,#7
12733  21aa e75b          	ld	(91,x),a
12734                     ; 3029 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12736  21ac e64c          	ld	a,(76,x)
12737  21ae 97            	ld	xl,a
12738  21af a65e          	ld	a,#94
12739  21b1 95            	ld	xh,a
12740  21b2 8d600160      	callf	L57f_mhlrxwr
12742                     ; 3030 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12744  21b6 1e01          	ldw	x,(OFST+1,sp)
12745  21b8 e64d          	ld	a,(77,x)
12746  21ba 97            	ld	xl,a
12747  21bb a65f          	ld	a,#95
12748  21bd 95            	ld	xh,a
12749  21be 8d600160      	callf	L57f_mhlrxwr
12751                     ; 3031 	 wrburstoff = 0;
12753  21c2 725f0030      	clr	_wrburstoff
12754                     ; 3032 	 wrburstnum = 16;
12756  21c6 3510002f      	mov	_wrburstnum,#16
12757                     ; 3033 	 write_burst(it6802,wrburstoff, wrburstnum);
12759  21ca ae0010        	ldw	x,#16
12760  21cd 89            	pushw	x
12761  21ce 5f            	clrw	x
12762  21cf 89            	pushw	x
12763  21d0 1e05          	ldw	x,(OFST+5,sp)
12764  21d2 8d642064      	callf	L562f_write_burst
12766  21d6 5b04          	addw	sp,#4
12767                     ; 3034 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12769  21d8 c60001        	ld	a,_TxWrBstSeq
12770  21db 97            	ld	xl,a
12771  21dc 725c0001      	inc	_TxWrBstSeq
12772  21e0 9f            	ld	a,xl
12773  21e1 88            	push	a
12774  21e2 ae1cde        	ldw	x,#L5045
12775  21e5 8d000000      	callf	f_printf
12777  21e9 84            	pop	a
12778                     ; 3035 	 set_mhlint(MHLInt00B, DSCR_CHG);
12780  21ea ae0002        	ldw	x,#2
12781  21ed a620          	ld	a,#32
12782  21ef 95            	ld	xh,a
12783  21f0 8d202020      	callf	L162f_set_mhlint
12785                     ; 3036 	V3D_EntryCnt++;
12787  21f4 725c0000      	inc	_V3D_EntryCnt
12788                     ; 3037 	 set_mhlint(MHLInt00B, REQ_WRT);
12790  21f8 ae0004        	ldw	x,#4
12791  21fb a620          	ld	a,#32
12792  21fd 95            	ld	xh,a
12793  21fe 8d202020      	callf	L162f_set_mhlint
12795                     ; 3038 }
12798  2202 85            	popw	x
12799  2203 87            	retf
12843                     ; 3040 static void v3d_burst3rd(struct it6802_dev_data *it6802)
12843                     ; 3041 {
12844                     	switch	.text
12845  2204               L572f_v3d_burst3rd:
12847  2204 89            	pushw	x
12848       00000000      OFST:	set	0
12851                     ; 3042 	 it6802->txscrpad[0]  = 0x00;
12853  2205 6f4c          	clr	(76,x)
12854                     ; 3043 	 it6802->txscrpad[1]  = 0x10;
12856  2207 a610          	ld	a,#16
12857  2209 e74d          	ld	(77,x),a
12858                     ; 3044 	 it6802->txscrpad[2]  = 0xB7;
12860  220b a6b7          	ld	a,#183
12861  220d e74e          	ld	(78,x),a
12862                     ; 3045 	 it6802->txscrpad[3]  = 0x0F;
12864  220f a60f          	ld	a,#15
12865  2211 e74f          	ld	(79,x),a
12866                     ; 3046 	 it6802->txscrpad[4]  = 0x02;
12868  2213 a602          	ld	a,#2
12869  2215 e750          	ld	(80,x),a
12870                     ; 3047 	 it6802->txscrpad[5]  = 0x05;
12872  2217 a605          	ld	a,#5
12873  2219 e751          	ld	(81,x),a
12874                     ; 3048 	 it6802->txscrpad[6]  = 0x00;
12876  221b 6f52          	clr	(82,x)
12877                     ; 3049 	 it6802->txscrpad[7]  = 0x07;
12879  221d a607          	ld	a,#7
12880  221f e753          	ld	(83,x),a
12881                     ; 3050 	 it6802->txscrpad[8]  = 0x00;
12883  2221 6f54          	clr	(84,x)
12884                     ; 3051 	 it6802->txscrpad[9]  = 0x07;
12886  2223 a607          	ld	a,#7
12887  2225 e755          	ld	(85,x),a
12888                     ; 3052 	 it6802->txscrpad[10] = 0x00;
12890  2227 6f56          	clr	(86,x)
12891                     ; 3053 	 it6802->txscrpad[11] = 0x07;
12893  2229 a607          	ld	a,#7
12894  222b e757          	ld	(87,x),a
12895                     ; 3054 	 it6802->txscrpad[12] = 0x00;
12897  222d 6f58          	clr	(88,x)
12898                     ; 3055 	 it6802->txscrpad[13] = 0x07;
12900  222f a607          	ld	a,#7
12901  2231 e759          	ld	(89,x),a
12902                     ; 3056 	 it6802->txscrpad[14] = 0x00;
12904  2233 6f5a          	clr	(90,x)
12905                     ; 3057 	 it6802->txscrpad[15] = 0x07;
12907  2235 a607          	ld	a,#7
12908  2237 e75b          	ld	(91,x),a
12909                     ; 3059 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
12911  2239 e64c          	ld	a,(76,x)
12912  223b 97            	ld	xl,a
12913  223c a65e          	ld	a,#94
12914  223e 95            	ld	xh,a
12915  223f 8d600160      	callf	L57f_mhlrxwr
12917                     ; 3060 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
12919  2243 1e01          	ldw	x,(OFST+1,sp)
12920  2245 e64d          	ld	a,(77,x)
12921  2247 97            	ld	xl,a
12922  2248 a65f          	ld	a,#95
12923  224a 95            	ld	xh,a
12924  224b 8d600160      	callf	L57f_mhlrxwr
12926                     ; 3061 	 wrburstoff = 0;
12928  224f 725f0030      	clr	_wrburstoff
12929                     ; 3062 	 wrburstnum = 16;
12931  2253 3510002f      	mov	_wrburstnum,#16
12932                     ; 3063 	 write_burst(it6802,wrburstoff, wrburstnum);
12934  2257 ae0010        	ldw	x,#16
12935  225a 89            	pushw	x
12936  225b 5f            	clrw	x
12937  225c 89            	pushw	x
12938  225d 1e05          	ldw	x,(OFST+5,sp)
12939  225f 8d642064      	callf	L562f_write_burst
12941  2263 5b04          	addw	sp,#4
12942                     ; 3064 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
12944  2265 c60001        	ld	a,_TxWrBstSeq
12945  2268 97            	ld	xl,a
12946  2269 725c0001      	inc	_TxWrBstSeq
12947  226d 9f            	ld	a,xl
12948  226e 88            	push	a
12949  226f ae1cde        	ldw	x,#L5045
12950  2272 8d000000      	callf	f_printf
12952  2276 84            	pop	a
12953                     ; 3065 	 set_mhlint(MHLInt00B, DSCR_CHG);
12955  2277 ae0002        	ldw	x,#2
12956  227a a620          	ld	a,#32
12957  227c 95            	ld	xh,a
12958  227d 8d202020      	callf	L162f_set_mhlint
12960                     ; 3066 	V3D_EntryCnt++;
12962  2281 725c0000      	inc	_V3D_EntryCnt
12963                     ; 3067 	 set_mhlint(MHLInt00B, REQ_WRT);
12965  2285 ae0004        	ldw	x,#4
12966  2288 a620          	ld	a,#32
12967  228a 95            	ld	xh,a
12968  228b 8d202020      	callf	L162f_set_mhlint
12970                     ; 3068 }
12973  228f 85            	popw	x
12974  2290 87            	retf
13018                     ; 3070 static void v3d_burst4th(struct it6802_dev_data *it6802)
13018                     ; 3071 {
13019                     	switch	.text
13020  2291               L772f_v3d_burst4th:
13022  2291 89            	pushw	x
13023       00000000      OFST:	set	0
13026                     ; 3072 	 it6802->txscrpad[0]  = 0x00;
13028  2292 6f4c          	clr	(76,x)
13029                     ; 3073 	 it6802->txscrpad[1]  = 0x10;
13031  2294 a610          	ld	a,#16
13032  2296 e74d          	ld	(77,x),a
13033                     ; 3074 	 it6802->txscrpad[2]  = 0xB6;
13035  2298 a6b6          	ld	a,#182
13036  229a e74e          	ld	(78,x),a
13037                     ; 3075 	 it6802->txscrpad[3]  = 0x0F;
13039  229c a60f          	ld	a,#15
13040  229e e74f          	ld	(79,x),a
13041                     ; 3076 	 it6802->txscrpad[4]  = 0x03;
13043  22a0 a603          	ld	a,#3
13044  22a2 e750          	ld	(80,x),a
13045                     ; 3077 	 it6802->txscrpad[5]  = 0x05;
13047  22a4 a605          	ld	a,#5
13048  22a6 e751          	ld	(81,x),a
13049                     ; 3078 	 it6802->txscrpad[6]  = 0x00;
13051  22a8 6f52          	clr	(82,x)
13052                     ; 3079 	 it6802->txscrpad[7]  = 0x07;
13054  22aa a607          	ld	a,#7
13055  22ac e753          	ld	(83,x),a
13056                     ; 3080 	 it6802->txscrpad[8]  = 0x00;
13058  22ae 6f54          	clr	(84,x)
13059                     ; 3081 	 it6802->txscrpad[9]  = 0x07;
13061  22b0 a607          	ld	a,#7
13062  22b2 e755          	ld	(85,x),a
13063                     ; 3082 	 it6802->txscrpad[10] = 0x00;
13065  22b4 6f56          	clr	(86,x)
13066                     ; 3083 	 it6802->txscrpad[11] = 0x07;
13068  22b6 a607          	ld	a,#7
13069  22b8 e757          	ld	(87,x),a
13070                     ; 3084 	 it6802->txscrpad[12] = 0x00;
13072  22ba 6f58          	clr	(88,x)
13073                     ; 3085 	 it6802->txscrpad[13] = 0x07;
13075  22bc a607          	ld	a,#7
13076  22be e759          	ld	(89,x),a
13077                     ; 3086 	 it6802->txscrpad[14] = 0x00;
13079  22c0 6f5a          	clr	(90,x)
13080                     ; 3087 	 it6802->txscrpad[15] = 0x07;
13082  22c2 a607          	ld	a,#7
13083  22c4 e75b          	ld	(91,x),a
13084                     ; 3089 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13086  22c6 e64c          	ld	a,(76,x)
13087  22c8 97            	ld	xl,a
13088  22c9 a65e          	ld	a,#94
13089  22cb 95            	ld	xh,a
13090  22cc 8d600160      	callf	L57f_mhlrxwr
13092                     ; 3090 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13094  22d0 1e01          	ldw	x,(OFST+1,sp)
13095  22d2 e64d          	ld	a,(77,x)
13096  22d4 97            	ld	xl,a
13097  22d5 a65f          	ld	a,#95
13098  22d7 95            	ld	xh,a
13099  22d8 8d600160      	callf	L57f_mhlrxwr
13101                     ; 3091 	 wrburstoff = 0;
13103  22dc 725f0030      	clr	_wrburstoff
13104                     ; 3092 	 wrburstnum = 16;
13106  22e0 3510002f      	mov	_wrburstnum,#16
13107                     ; 3093 	 write_burst(it6802,wrburstoff, wrburstnum);
13109  22e4 ae0010        	ldw	x,#16
13110  22e7 89            	pushw	x
13111  22e8 5f            	clrw	x
13112  22e9 89            	pushw	x
13113  22ea 1e05          	ldw	x,(OFST+5,sp)
13114  22ec 8d642064      	callf	L562f_write_burst
13116  22f0 5b04          	addw	sp,#4
13117                     ; 3094 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13119  22f2 c60001        	ld	a,_TxWrBstSeq
13120  22f5 97            	ld	xl,a
13121  22f6 725c0001      	inc	_TxWrBstSeq
13122  22fa 9f            	ld	a,xl
13123  22fb 88            	push	a
13124  22fc ae1cde        	ldw	x,#L5045
13125  22ff 8d000000      	callf	f_printf
13127  2303 84            	pop	a
13128                     ; 3095 	 set_mhlint(MHLInt00B, DSCR_CHG);
13130  2304 ae0002        	ldw	x,#2
13131  2307 a620          	ld	a,#32
13132  2309 95            	ld	xh,a
13133  230a 8d202020      	callf	L162f_set_mhlint
13135                     ; 3096 	V3D_EntryCnt++;
13137  230e 725c0000      	inc	_V3D_EntryCnt
13138                     ; 3097 }
13141  2312 85            	popw	x
13142  2313 87            	retf
13186                     ; 3099 static void v3d_unsupport1st(struct it6802_dev_data *it6802)
13186                     ; 3100 {
13187                     	switch	.text
13188  2314               L103f_v3d_unsupport1st:
13190  2314 89            	pushw	x
13191       00000000      OFST:	set	0
13194                     ; 3101 	 it6802->txscrpad[0]  = 0x00;
13196  2315 6f4c          	clr	(76,x)
13197                     ; 3102 	 it6802->txscrpad[1]  = 0x02;
13199  2317 a602          	ld	a,#2
13200  2319 e74d          	ld	(77,x),a
13201                     ; 3103 	 it6802->txscrpad[2]  = 0xFE;
13203  231b a6fe          	ld	a,#254
13204  231d e74e          	ld	(78,x),a
13205                     ; 3104 	 it6802->txscrpad[3]  = 0x00;
13207  231f 6f4f          	clr	(79,x)
13208                     ; 3106 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13210  2321 e64c          	ld	a,(76,x)
13211  2323 97            	ld	xl,a
13212  2324 a65e          	ld	a,#94
13213  2326 95            	ld	xh,a
13214  2327 8d600160      	callf	L57f_mhlrxwr
13216                     ; 3107 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13218  232b 1e01          	ldw	x,(OFST+1,sp)
13219  232d e64d          	ld	a,(77,x)
13220  232f 97            	ld	xl,a
13221  2330 a65f          	ld	a,#95
13222  2332 95            	ld	xh,a
13223  2333 8d600160      	callf	L57f_mhlrxwr
13225                     ; 3108 	 wrburstoff = 0;
13227  2337 725f0030      	clr	_wrburstoff
13228                     ; 3109 	 wrburstnum = 4;
13230  233b 3504002f      	mov	_wrburstnum,#4
13231                     ; 3110 	 write_burst(it6802,wrburstoff, wrburstnum);
13233  233f ae0004        	ldw	x,#4
13234  2342 89            	pushw	x
13235  2343 5f            	clrw	x
13236  2344 89            	pushw	x
13237  2345 1e05          	ldw	x,(OFST+5,sp)
13238  2347 8d642064      	callf	L562f_write_burst
13240  234b 5b04          	addw	sp,#4
13241                     ; 3112 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13243  234d c60001        	ld	a,_TxWrBstSeq
13244  2350 97            	ld	xl,a
13245  2351 725c0001      	inc	_TxWrBstSeq
13246  2355 9f            	ld	a,xl
13247  2356 88            	push	a
13248  2357 ae1cde        	ldw	x,#L5045
13249  235a 8d000000      	callf	f_printf
13251  235e 84            	pop	a
13252                     ; 3113 	 set_mhlint(MHLInt00B, DSCR_CHG);
13254  235f ae0002        	ldw	x,#2
13255  2362 a620          	ld	a,#32
13256  2364 95            	ld	xh,a
13257  2365 8d202020      	callf	L162f_set_mhlint
13259                     ; 3114 	V3D_EntryCnt++;
13261  2369 725c0000      	inc	_V3D_EntryCnt
13262                     ; 3115  	 set_mhlint(MHLInt00B, REQ_WRT);
13264  236d ae0004        	ldw	x,#4
13265  2370 a620          	ld	a,#32
13266  2372 95            	ld	xh,a
13267  2373 8d202020      	callf	L162f_set_mhlint
13269                     ; 3116 }
13272  2377 85            	popw	x
13273  2378 87            	retf
13317                     ; 3118 static void v3d_unsupport2nd(struct it6802_dev_data *it6802)
13317                     ; 3119 {
13318                     	switch	.text
13319  2379               L303f_v3d_unsupport2nd:
13321  2379 89            	pushw	x
13322       00000000      OFST:	set	0
13325                     ; 3120 	 it6802->txscrpad[0]  = 0x00;
13327  237a 6f4c          	clr	(76,x)
13328                     ; 3121 	 it6802->txscrpad[1]  = 0x03;
13330  237c a603          	ld	a,#3
13331  237e e74d          	ld	(77,x),a
13332                     ; 3122 	 it6802->txscrpad[2]  = 0xFD;
13334  2380 a6fd          	ld	a,#253
13335  2382 e74e          	ld	(78,x),a
13336                     ; 3123 	 it6802->txscrpad[3]  = 0x00;
13338  2384 6f4f          	clr	(79,x)
13339                     ; 3125 	 mhlrxwr(0x5E, it6802->txscrpad[0]);
13341  2386 e64c          	ld	a,(76,x)
13342  2388 97            	ld	xl,a
13343  2389 a65e          	ld	a,#94
13344  238b 95            	ld	xh,a
13345  238c 8d600160      	callf	L57f_mhlrxwr
13347                     ; 3126 	 mhlrxwr(0x5F, it6802->txscrpad[1]);
13349  2390 1e01          	ldw	x,(OFST+1,sp)
13350  2392 e64d          	ld	a,(77,x)
13351  2394 97            	ld	xl,a
13352  2395 a65f          	ld	a,#95
13353  2397 95            	ld	xh,a
13354  2398 8d600160      	callf	L57f_mhlrxwr
13356                     ; 3127 	 wrburstoff = 0;
13358  239c 725f0030      	clr	_wrburstoff
13359                     ; 3128 	 wrburstnum = 4;
13361  23a0 3504002f      	mov	_wrburstnum,#4
13362                     ; 3129 	 write_burst(it6802,wrburstoff, wrburstnum);
13364  23a4 ae0004        	ldw	x,#4
13365  23a7 89            	pushw	x
13366  23a8 5f            	clrw	x
13367  23a9 89            	pushw	x
13368  23aa 1e05          	ldw	x,(OFST+5,sp)
13369  23ac 8d642064      	callf	L562f_write_burst
13371  23b0 5b04          	addw	sp,#4
13372                     ; 3130 	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
13374  23b2 c60001        	ld	a,_TxWrBstSeq
13375  23b5 97            	ld	xl,a
13376  23b6 725c0001      	inc	_TxWrBstSeq
13377  23ba 9f            	ld	a,xl
13378  23bb 88            	push	a
13379  23bc ae1cde        	ldw	x,#L5045
13380  23bf 8d000000      	callf	f_printf
13382  23c3 84            	pop	a
13383                     ; 3131 	 set_mhlint(MHLInt00B, DSCR_CHG);
13385  23c4 ae0002        	ldw	x,#2
13386  23c7 a620          	ld	a,#32
13387  23c9 95            	ld	xh,a
13388  23ca 8d202020      	callf	L162f_set_mhlint
13390                     ; 3132 	V3D_EntryCnt++;
13392  23ce 725c0000      	inc	_V3D_EntryCnt
13393                     ; 3133 }
13396  23d2 85            	popw	x
13397  23d3 87            	retf
13461                     ; 3145 static unsigned char UpdateEDIDRAM(unsigned char *pEDID,unsigned char BlockNUM)
13461                     ; 3146 {
13462                     	switch	.text
13463  23d4               L503f_UpdateEDIDRAM:
13465  23d4 89            	pushw	x
13466  23d5 5203          	subw	sp,#3
13467       00000003      OFST:	set	3
13470                     ; 3147 	unsigned char  i,offset,sum =0;
13472  23d7 0f01          	clr	(OFST-2,sp)
13473                     ; 3149 	if ( BlockNUM == 0x02 )
13475  23d9 7b09          	ld	a,(OFST+6,sp)
13476  23db a102          	cp	a,#2
13477  23dd 2606          	jrne	L5555
13478                     ; 3150 		offset = 0x00+128*0x01;
13480  23df a680          	ld	a,#128
13481  23e1 6b03          	ld	(OFST+0,sp),a
13483  23e3 2009          	jra	L7555
13484  23e5               L5555:
13485                     ; 3152 		offset = 0x00+128*BlockNUM;
13487  23e5 7b09          	ld	a,(OFST+6,sp)
13488  23e7 97            	ld	xl,a
13489  23e8 a680          	ld	a,#128
13490  23ea 42            	mul	x,a
13491  23eb 9f            	ld	a,xl
13492  23ec 6b03          	ld	(OFST+0,sp),a
13493  23ee               L7555:
13494                     ; 3154 	MHLRX_DEBUG_PRINTF(printf("block No =%x offset = %x \r\n",BlockNUM,offset));
13496  23ee 7b03          	ld	a,(OFST+0,sp)
13497  23f0 88            	push	a
13498  23f1 7b0a          	ld	a,(OFST+7,sp)
13499  23f3 88            	push	a
13500  23f4 ae1cc2        	ldw	x,#L1655
13501  23f7 8d000000      	callf	f_printf
13503  23fb 85            	popw	x
13504                     ; 3157 	for(i=0;i<0x7F;i++)
13506  23fc 0f02          	clr	(OFST-1,sp)
13507  23fe               L3655:
13508                     ; 3159 		EDID_RAM_Write(offset,1 ,(pEDID+offset));
13510  23fe 7b04          	ld	a,(OFST+1,sp)
13511  2400 97            	ld	xl,a
13512  2401 7b05          	ld	a,(OFST+2,sp)
13513  2403 1b03          	add	a,(OFST+0,sp)
13514  2405 2401          	jrnc	L434
13515  2407 5c            	incw	x
13516  2408               L434:
13517  2408 02            	rlwa	x,a
13518  2409 89            	pushw	x
13519  240a 01            	rrwa	x,a
13520  240b ae0001        	ldw	x,#1
13521  240e 7b05          	ld	a,(OFST+2,sp)
13522  2410 95            	ld	xh,a
13523  2411 8d000000      	callf	L75f_EDID_RAM_Write
13525  2415 85            	popw	x
13526                     ; 3161 		sum += *(pEDID+offset);
13528  2416 7b04          	ld	a,(OFST+1,sp)
13529  2418 97            	ld	xl,a
13530  2419 7b05          	ld	a,(OFST+2,sp)
13531  241b 1b03          	add	a,(OFST+0,sp)
13532  241d 2401          	jrnc	L634
13533  241f 5c            	incw	x
13534  2420               L634:
13535  2420 02            	rlwa	x,a
13536  2421 7b01          	ld	a,(OFST-2,sp)
13537  2423 fb            	add	a,(x)
13538  2424 6b01          	ld	(OFST-2,sp),a
13539                     ; 3162 		offset ++;
13541  2426 0c03          	inc	(OFST+0,sp)
13542                     ; 3157 	for(i=0;i<0x7F;i++)
13544  2428 0c02          	inc	(OFST-1,sp)
13547  242a 7b02          	ld	a,(OFST-1,sp)
13548  242c a17f          	cp	a,#127
13549  242e 25ce          	jrult	L3655
13550                     ; 3165 	sum = 0x00- sum;
13552  2430 0001          	neg	(OFST-2,sp)
13553                     ; 3167 	return 	sum;
13555  2432 7b01          	ld	a,(OFST-2,sp)
13558  2434 5b05          	addw	sp,#5
13559  2436 87            	retf
13585                     ; 3170 static void EnableEDIDupdata(void)
13585                     ; 3171 {
13586                     	switch	.text
13587  2437               L703f_EnableEDIDupdata:
13591                     ; 3172 	MHLRX_DEBUG_PRINTF(printf("EnableEDIDupdata() \r\n"));
13593  2437 ae1cac        	ldw	x,#L1065
13594  243a 8d000000      	callf	f_printf
13596                     ; 3174 	HDMI_HotPlug(0);	//clear port 1 HPD=0 for Enable EDID update
13598  243e 4f            	clr	a
13599  243f 8d000000      	callf	f_HDMI_HotPlug
13601                     ; 3176 	chgbank(1);
13603  2443 ae0001        	ldw	x,#1
13604  2446 8d440544      	callf	L711f_chgbank
13606                     ; 3177 	hdmirxset(REG_RX_1B0, 0x03, 0x01); //clear port 0 HPD=1 for EDID update
13608  244a 4b01          	push	#1
13609  244c ae0003        	ldw	x,#3
13610  244f a6b0          	ld	a,#176
13611  2451 95            	ld	xh,a
13612  2452 8db300b3      	callf	L76f_hdmirxset
13614  2456 84            	pop	a
13615                     ; 3178 	chgbank(0);
13617  2457 5f            	clrw	x
13618  2458 8d440544      	callf	L711f_chgbank
13620                     ; 3179 }
13623  245c 87            	retf
13649                     ; 3181 static void DisableEDIDupdata(void)
13649                     ; 3182 {
13650                     	switch	.text
13651  245d               L113f_DisableEDIDupdata:
13655                     ; 3183 	MHLRX_DEBUG_PRINTF(printf("DisableEDIDupdata() \r\n"));
13657  245d ae1c95        	ldw	x,#L3165
13658  2460 8d000000      	callf	f_printf
13660                     ; 3185 	HDMI_HotPlug(1);	//set port 1 HPD=1
13662  2464 a601          	ld	a,#1
13663  2466 8d000000      	callf	f_HDMI_HotPlug
13665                     ; 3187 	chgbank(1);
13667  246a ae0001        	ldw	x,#1
13668  246d 8d440544      	callf	L711f_chgbank
13670                     ; 3188 	hdmirxset(REG_RX_1B0, 0x03, 0x03); //set port 0 HPD=1
13672  2471 4b03          	push	#3
13673  2473 ae0003        	ldw	x,#3
13674  2476 a6b0          	ld	a,#176
13675  2478 95            	ld	xh,a
13676  2479 8db300b3      	callf	L76f_hdmirxset
13678  247d 84            	pop	a
13679                     ; 3189 	chgbank(0);
13681  247e 5f            	clrw	x
13682  247f 8d440544      	callf	L711f_chgbank
13684                     ; 3191 }
13687  2483 87            	retf
13757                     ; 3194 static void EDIDRAMInitial(unsigned char *pIT6802EDID)
13757                     ; 3195 {
13758                     	switch	.text
13759  2484               L313f_EDIDRAMInitial:
13761  2484 89            	pushw	x
13762  2485 5203          	subw	sp,#3
13763       00000003      OFST:	set	3
13766                     ; 3202 	u8_VSDB_Addr=0;
13768                     ; 3204 	EnableEDIDupdata();
13770  2487 8d372437      	callf	L703f_EnableEDIDupdata
13772                     ; 3206 	for(BlockNo=0;BlockNo<2;BlockNo++){
13774  248b 0f02          	clr	(OFST-1,sp)
13775  248d               L3465:
13776                     ; 3208 		MHLRX_DEBUG_PRINTF(printf("IT6802 EDIDRAMInitial = %x\r\n", BlockNo));
13778  248d 7b02          	ld	a,(OFST-1,sp)
13779  248f 88            	push	a
13780  2490 ae1c78        	ldw	x,#L1565
13781  2493 8d000000      	callf	f_printf
13783  2497 84            	pop	a
13784                     ; 3210 		if(BlockNo==0)
13786  2498 0d02          	tnz	(OFST-1,sp)
13787  249a 262d          	jrne	L3565
13788                     ; 3212 			Block0_CheckSum =  UpdateEDIDRAM(pIT6802EDID,0);
13790  249c 4b00          	push	#0
13791  249e 1e05          	ldw	x,(OFST+2,sp)
13792  24a0 8dd423d4      	callf	L503f_UpdateEDIDRAM
13794  24a4 5b01          	addw	sp,#1
13795  24a6 6b03          	ld	(OFST+0,sp),a
13796                     ; 3213 			hdmirxwr(REG_RX_0C4,Block0_CheckSum);		//Port 0 Bank 0 CheckSum
13798  24a8 7b03          	ld	a,(OFST+0,sp)
13799  24aa 97            	ld	xl,a
13800  24ab a6c4          	ld	a,#196
13801  24ad 95            	ld	xh,a
13802  24ae 8d690069      	callf	L56f_hdmirxwr
13804                     ; 3214 			hdmirxwr(REG_RX_0C8,Block0_CheckSum);		//Port 1 Bank 0 CheckSum
13806  24b2 7b03          	ld	a,(OFST+0,sp)
13807  24b4 97            	ld	xl,a
13808  24b5 a6c8          	ld	a,#200
13809  24b7 95            	ld	xh,a
13810  24b8 8d690069      	callf	L56f_hdmirxwr
13812                     ; 3216 			MHLRX_DEBUG_PRINTF(printf(" Block0_CheckSum = %x\r\n", Block0_CheckSum));
13814  24bc 7b03          	ld	a,(OFST+0,sp)
13815  24be 88            	push	a
13816  24bf ae1c60        	ldw	x,#L5565
13817  24c2 8d000000      	callf	f_printf
13819  24c6 84            	pop	a
13821  24c7 205f          	jra	L7565
13822  24c9               L3565:
13823                     ; 3220 			Block1_CheckSum =  UpdateEDIDRAM(pIT6802EDID,1);
13825  24c9 4b01          	push	#1
13826  24cb 1e05          	ldw	x,(OFST+2,sp)
13827  24cd 8dd423d4      	callf	L503f_UpdateEDIDRAM
13829  24d1 5b01          	addw	sp,#1
13830  24d3 6b01          	ld	(OFST-2,sp),a
13831                     ; 3221 			MHLRX_DEBUG_PRINTF(printf(" Block1_CheckSum = %x\r\n", Block1_CheckSum));
13833  24d5 7b01          	ld	a,(OFST-2,sp)
13834  24d7 88            	push	a
13835  24d8 ae1c48        	ldw	x,#L1665
13836  24db 8d000000      	callf	f_printf
13838  24df 84            	pop	a
13839                     ; 3222 			u8_VSDB_Addr=Find_Phyaddress_Location(pIT6802EDID,1);
13841  24e0 4b01          	push	#1
13842  24e2 1e05          	ldw	x,(OFST+2,sp)
13843  24e4 8d3b253b      	callf	L513f_Find_Phyaddress_Location
13845  24e8 5b01          	addw	sp,#1
13846  24ea 6b03          	ld	(OFST+0,sp),a
13847                     ; 3224 			MHLRX_DEBUG_PRINTF(printf("u8_VSDB_Addr = %x\r\n", u8_VSDB_Addr));
13849  24ec 7b03          	ld	a,(OFST+0,sp)
13850  24ee 88            	push	a
13851  24ef ae1c34        	ldw	x,#L3665
13852  24f2 8d000000      	callf	f_printf
13854  24f6 84            	pop	a
13855                     ; 3225 			PhyAdrSet();
13857  24f7 8de226e2      	callf	L123f_PhyAdrSet
13859                     ; 3227 			if(u8_VSDB_Addr!=0)
13861  24fb 0d03          	tnz	(OFST+0,sp)
13862  24fd 2729          	jreq	L7565
13863                     ; 3230 				UpdateEDIDReg(u8_VSDB_Addr, pIT6802EDID[u8_VSDB_Addr],pIT6802EDID[u8_VSDB_Addr+1], Block1_CheckSum);
13865  24ff 7b01          	ld	a,(OFST-2,sp)
13866  2501 88            	push	a
13867  2502 7b04          	ld	a,(OFST+1,sp)
13868  2504 5f            	clrw	x
13869  2505 97            	ld	xl,a
13870  2506 72fb05        	addw	x,(OFST+2,sp)
13871  2509 e601          	ld	a,(1,x)
13872  250b 88            	push	a
13873  250c 7b06          	ld	a,(OFST+3,sp)
13874  250e 97            	ld	xl,a
13875  250f 7b07          	ld	a,(OFST+4,sp)
13876  2511 1b05          	add	a,(OFST+2,sp)
13877  2513 2401          	jrnc	L644
13878  2515 5c            	incw	x
13879  2516               L644:
13880  2516 02            	rlwa	x,a
13881  2517 f6            	ld	a,(x)
13882  2518 97            	ld	xl,a
13883  2519 7b05          	ld	a,(OFST+2,sp)
13884  251b 95            	ld	xh,a
13885  251c 8d382638      	callf	L713f_UpdateEDIDReg
13887  2520 85            	popw	x
13888                     ; 3231 				MHLRX_DEBUG_PRINTF(printf("EDID Parsing OK\r\n"));
13890  2521 ae1c22        	ldw	x,#L7665
13891  2524 8d000000      	callf	f_printf
13893  2528               L7565:
13894                     ; 3206 	for(BlockNo=0;BlockNo<2;BlockNo++){
13896  2528 0c02          	inc	(OFST-1,sp)
13899  252a 7b02          	ld	a,(OFST-1,sp)
13900  252c a102          	cp	a,#2
13901  252e 2404          	jruge	L054
13902  2530 ac8d248d      	jpf	L3465
13903  2534               L054:
13904                     ; 3236 	DisableEDIDupdata();
13906  2534 8d5d245d      	callf	L113f_DisableEDIDupdata
13908                     ; 3237 }
13911  2538 5b05          	addw	sp,#5
13912  253a 87            	retf
13997                     ; 3240 static unsigned char Find_Phyaddress_Location(unsigned char *pEDID,unsigned char Block_Number)
13997                     ; 3241 {
13998                     	switch	.text
13999  253b               L513f_Find_Phyaddress_Location:
14001  253b 89            	pushw	x
14002  253c 5207          	subw	sp,#7
14003       00000007      OFST:	set	7
14006                     ; 3247 	if ( Block_Number == 0x02 )
14008  253e 7b0d          	ld	a,(OFST+6,sp)
14009  2540 a102          	cp	a,#2
14010  2542 2606          	jrne	L5275
14011                     ; 3248 		AddStart = 0x00+128*0x01;
14013  2544 a680          	ld	a,#128
14014  2546 6b06          	ld	(OFST-1,sp),a
14016  2548 2009          	jra	L7275
14017  254a               L5275:
14018                     ; 3250 		AddStart = 0x00+128*Block_Number;
14020  254a 7b0d          	ld	a,(OFST+6,sp)
14021  254c 97            	ld	xl,a
14022  254d a680          	ld	a,#128
14023  254f 42            	mul	x,a
14024  2550 9f            	ld	a,xl
14025  2551 6b06          	ld	(OFST-1,sp),a
14026  2553               L7275:
14027                     ; 3252 	if((*(pEDID+AddStart))!=0x2 || (*(pEDID+AddStart+1))!=0x3)
14029  2553 7b08          	ld	a,(OFST+1,sp)
14030  2555 97            	ld	xl,a
14031  2556 7b09          	ld	a,(OFST+2,sp)
14032  2558 1b06          	add	a,(OFST-1,sp)
14033  255a 2401          	jrnc	L454
14034  255c 5c            	incw	x
14035  255d               L454:
14036  255d 02            	rlwa	x,a
14037  255e f6            	ld	a,(x)
14038  255f a102          	cp	a,#2
14039  2561 2611          	jrne	L3375
14041  2563 7b08          	ld	a,(OFST+1,sp)
14042  2565 97            	ld	xl,a
14043  2566 7b09          	ld	a,(OFST+2,sp)
14044  2568 1b06          	add	a,(OFST-1,sp)
14045  256a 2401          	jrnc	L654
14046  256c 5c            	incw	x
14047  256d               L654:
14048  256d 02            	rlwa	x,a
14049  256e e601          	ld	a,(1,x)
14050  2570 a103          	cp	a,#3
14051  2572 2705          	jreq	L1375
14052  2574               L3375:
14053                     ; 3253 		return 0;
14055  2574 4f            	clr	a
14057  2575 ac142614      	jpf	L205
14058  2579               L1375:
14059                     ; 3254 	End = (*(pEDID+AddStart+2));
14061  2579 7b08          	ld	a,(OFST+1,sp)
14062  257b 97            	ld	xl,a
14063  257c 7b09          	ld	a,(OFST+2,sp)
14064  257e 1b06          	add	a,(OFST-1,sp)
14065  2580 2401          	jrnc	L064
14066  2582 5c            	incw	x
14067  2583               L064:
14068  2583 02            	rlwa	x,a
14069  2584 e602          	ld	a,(2,x)
14070  2586 6b03          	ld	(OFST-4,sp),a
14071                     ; 3255 	u8_VSDB_Addr=0;
14073                     ; 3256 	for(offset=(AddStart+0x04);offset<(AddStart+End); )
14075  2588 7b06          	ld	a,(OFST-1,sp)
14076  258a ab04          	add	a,#4
14077  258c 6b07          	ld	(OFST+0,sp),a
14079  258e ac1d261d      	jpf	L1475
14080  2592               L5375:
14081                     ; 3261 		tag=(*(pEDID+offset))>>5;
14083  2592 7b08          	ld	a,(OFST+1,sp)
14084  2594 97            	ld	xl,a
14085  2595 7b09          	ld	a,(OFST+2,sp)
14086  2597 1b07          	add	a,(OFST+0,sp)
14087  2599 2401          	jrnc	L264
14088  259b 5c            	incw	x
14089  259c               L264:
14090  259c 02            	rlwa	x,a
14091  259d f6            	ld	a,(x)
14092  259e 4e            	swap	a
14093  259f 44            	srl	a
14094  25a0 a407          	and	a,#7
14095  25a2 6b04          	ld	(OFST-3,sp),a
14096                     ; 3262 		count=(*(pEDID+offset)) & 0x1f;
14098  25a4 7b08          	ld	a,(OFST+1,sp)
14099  25a6 97            	ld	xl,a
14100  25a7 7b09          	ld	a,(OFST+2,sp)
14101  25a9 1b07          	add	a,(OFST+0,sp)
14102  25ab 2401          	jrnc	L464
14103  25ad 5c            	incw	x
14104  25ae               L464:
14105  25ae 02            	rlwa	x,a
14106  25af f6            	ld	a,(x)
14107  25b0 a41f          	and	a,#31
14108  25b2 6b05          	ld	(OFST-2,sp),a
14109                     ; 3263 		offset++;
14111  25b4 0c07          	inc	(OFST+0,sp)
14112                     ; 3264         if(tag==0x03)
14114  25b6 7b04          	ld	a,(OFST-3,sp)
14115  25b8 a103          	cp	a,#3
14116  25ba 265b          	jrne	L5475
14117                     ; 3269 			if(	(*(pEDID+offset  ))==0x03 &&
14117                     ; 3270 				(*(pEDID+offset+1))==0x0C &&
14117                     ; 3271 				(*(pEDID+offset+2))==0x0    )
14119  25bc 7b08          	ld	a,(OFST+1,sp)
14120  25be 97            	ld	xl,a
14121  25bf 7b09          	ld	a,(OFST+2,sp)
14122  25c1 1b07          	add	a,(OFST+0,sp)
14123  25c3 2401          	jrnc	L664
14124  25c5 5c            	incw	x
14125  25c6               L664:
14126  25c6 02            	rlwa	x,a
14127  25c7 f6            	ld	a,(x)
14128  25c8 a103          	cp	a,#3
14129  25ca 264b          	jrne	L5475
14131  25cc 7b08          	ld	a,(OFST+1,sp)
14132  25ce 97            	ld	xl,a
14133  25cf 7b09          	ld	a,(OFST+2,sp)
14134  25d1 1b07          	add	a,(OFST+0,sp)
14135  25d3 2401          	jrnc	L074
14136  25d5 5c            	incw	x
14137  25d6               L074:
14138  25d6 02            	rlwa	x,a
14139  25d7 e601          	ld	a,(1,x)
14140  25d9 a10c          	cp	a,#12
14141  25db 263a          	jrne	L5475
14143  25dd 7b08          	ld	a,(OFST+1,sp)
14144  25df 97            	ld	xl,a
14145  25e0 7b09          	ld	a,(OFST+2,sp)
14146  25e2 1b07          	add	a,(OFST+0,sp)
14147  25e4 2401          	jrnc	L274
14148  25e6 5c            	incw	x
14149  25e7               L274:
14150  25e7 02            	rlwa	x,a
14151  25e8 6d02          	tnz	(2,x)
14152  25ea 262b          	jrne	L5475
14153                     ; 3273 				u8_VSDB_Addr=offset+3;
14155  25ec 7b07          	ld	a,(OFST+0,sp)
14156  25ee ab03          	add	a,#3
14157  25f0 6b06          	ld	(OFST-1,sp),a
14158                     ; 3274 				txphyadr[0]=(*(pEDID+offset+3));
14160  25f2 7b08          	ld	a,(OFST+1,sp)
14161  25f4 97            	ld	xl,a
14162  25f5 7b09          	ld	a,(OFST+2,sp)
14163  25f7 1b07          	add	a,(OFST+0,sp)
14164  25f9 2401          	jrnc	L474
14165  25fb 5c            	incw	x
14166  25fc               L474:
14167  25fc 02            	rlwa	x,a
14168  25fd e603          	ld	a,(3,x)
14169  25ff c7000e        	ld	_txphyadr,a
14170                     ; 3275 				txphyadr[1]=(*(pEDID+offset+4));
14172  2602 7b08          	ld	a,(OFST+1,sp)
14173  2604 97            	ld	xl,a
14174  2605 7b09          	ld	a,(OFST+2,sp)
14175  2607 1b07          	add	a,(OFST+0,sp)
14176  2609 2401          	jrnc	L674
14177  260b 5c            	incw	x
14178  260c               L674:
14179  260c 02            	rlwa	x,a
14180  260d e604          	ld	a,(4,x)
14181  260f c7000f        	ld	_txphyadr+1,a
14182                     ; 3280 				return u8_VSDB_Addr;
14184  2612 7b06          	ld	a,(OFST-1,sp)
14186  2614               L205:
14188  2614 5b09          	addw	sp,#9
14189  2616 87            	retf
14190  2617               L5475:
14191                     ; 3283 		offset=offset+count;
14193  2617 7b07          	ld	a,(OFST+0,sp)
14194  2619 1b05          	add	a,(OFST-2,sp)
14195  261b 6b07          	ld	(OFST+0,sp),a
14196  261d               L1475:
14197                     ; 3256 	for(offset=(AddStart+0x04);offset<(AddStart+End); )
14199  261d 9c            	rvf
14200  261e 7b07          	ld	a,(OFST+0,sp)
14201  2620 5f            	clrw	x
14202  2621 97            	ld	xl,a
14203  2622 1f01          	ldw	(OFST-6,sp),x
14204  2624 7b06          	ld	a,(OFST-1,sp)
14205  2626 5f            	clrw	x
14206  2627 1b03          	add	a,(OFST-4,sp)
14207  2629 2401          	jrnc	L005
14208  262b 5c            	incw	x
14209  262c               L005:
14210  262c 02            	rlwa	x,a
14211  262d 1301          	cpw	x,(OFST-6,sp)
14212  262f 2d04          	jrsle	L405
14213  2631 ac922592      	jpf	L5375
14214  2635               L405:
14215                     ; 3285     return 0;
14217  2635 4f            	clr	a
14219  2636 20dc          	jra	L205
14315                     ; 3290 static void UpdateEDIDReg(unsigned char u8_VSDB_Addr, unsigned char CEC_AB, unsigned char CEC_CD, unsigned char Block1_CheckSum)
14315                     ; 3291 {
14316                     	switch	.text
14317  2638               L713f_UpdateEDIDReg:
14319  2638 89            	pushw	x
14320  2639 5206          	subw	sp,#6
14321       00000006      OFST:	set	6
14324                     ; 3296 	A_Addr_AB=rxphyadr[0][0];
14326  263b c60005        	ld	a,_rxphyadr
14327  263e 6b03          	ld	(OFST-3,sp),a
14328                     ; 3297 	A_Addr_CD=rxphyadr[0][1];
14330  2640 c60006        	ld	a,_rxphyadr+1
14331  2643 6b04          	ld	(OFST-2,sp),a
14332                     ; 3299 	B_Addr_AB=rxphyadr[1][0];
14334  2645 c60007        	ld	a,_rxphyadr+2
14335  2648 6b05          	ld	(OFST-1,sp),a
14336                     ; 3300 	B_Addr_CD=rxphyadr[1][1];
14338  264a c60008        	ld	a,_rxphyadr+3
14339  264d 6b06          	ld	(OFST+0,sp),a
14340                     ; 3303 	A_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -A_Addr_AB-A_Addr_CD)%0x100;
14342  264f 7b0d          	ld	a,(OFST+7,sp)
14343  2651 5f            	clrw	x
14344  2652 1b08          	add	a,(OFST+2,sp)
14345  2654 2401          	jrnc	L015
14346  2656 5c            	incw	x
14347  2657               L015:
14348  2657 1b0c          	add	a,(OFST+6,sp)
14349  2659 2401          	jrnc	L215
14350  265b 5c            	incw	x
14351  265c               L215:
14352  265c 1003          	sub	a,(OFST-3,sp)
14353  265e 2401          	jrnc	L415
14354  2660 5a            	decw	x
14355  2661               L415:
14356  2661 1004          	sub	a,(OFST-2,sp)
14357  2663 2401          	jrnc	L615
14358  2665 5a            	decw	x
14359  2666               L615:
14360  2666 02            	rlwa	x,a
14361  2667 90ae0100      	ldw	y,#256
14362  266b 8d000000      	callf	d_idiv
14364  266f 51            	exgw	x,y
14365  2670 01            	rrwa	x,a
14366  2671 6b01          	ld	(OFST-5,sp),a
14367  2673 02            	rlwa	x,a
14368                     ; 3304 	B_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -B_Addr_AB-B_Addr_CD)%0x100;
14370  2674 7b0d          	ld	a,(OFST+7,sp)
14371  2676 5f            	clrw	x
14372  2677 1b08          	add	a,(OFST+2,sp)
14373  2679 2401          	jrnc	L025
14374  267b 5c            	incw	x
14375  267c               L025:
14376  267c 1b0c          	add	a,(OFST+6,sp)
14377  267e 2401          	jrnc	L225
14378  2680 5c            	incw	x
14379  2681               L225:
14380  2681 1005          	sub	a,(OFST-1,sp)
14381  2683 2401          	jrnc	L425
14382  2685 5a            	decw	x
14383  2686               L425:
14384  2686 1006          	sub	a,(OFST+0,sp)
14385  2688 2401          	jrnc	L625
14386  268a 5a            	decw	x
14387  268b               L625:
14388  268b 02            	rlwa	x,a
14389  268c 90ae0100      	ldw	y,#256
14390  2690 8d000000      	callf	d_idiv
14392  2694 51            	exgw	x,y
14393  2695 01            	rrwa	x,a
14394  2696 6b02          	ld	(OFST-4,sp),a
14395  2698 02            	rlwa	x,a
14396                     ; 3307 	hdmirxwr(REG_RX_0C1,u8_VSDB_Addr);			//VSDB Start Address
14398  2699 7b07          	ld	a,(OFST+1,sp)
14399  269b 97            	ld	xl,a
14400  269c a6c1          	ld	a,#193
14401  269e 95            	ld	xh,a
14402  269f 8d690069      	callf	L56f_hdmirxwr
14404                     ; 3308 	hdmirxwr(REG_RX_0C2,A_Addr_AB);					//Port 0 AB
14406  26a3 7b03          	ld	a,(OFST-3,sp)
14407  26a5 97            	ld	xl,a
14408  26a6 a6c2          	ld	a,#194
14409  26a8 95            	ld	xh,a
14410  26a9 8d690069      	callf	L56f_hdmirxwr
14412                     ; 3309 	hdmirxwr(REG_RX_0C3,A_Addr_CD);				//Port 0 CD
14414  26ad 7b04          	ld	a,(OFST-2,sp)
14415  26af 97            	ld	xl,a
14416  26b0 a6c3          	ld	a,#195
14417  26b2 95            	ld	xh,a
14418  26b3 8d690069      	callf	L56f_hdmirxwr
14420                     ; 3310 	hdmirxwr(REG_RX_0C5,A_Block1_CheckSum);		//Port 0 Bank 1 CheckSum
14422  26b7 7b01          	ld	a,(OFST-5,sp)
14423  26b9 97            	ld	xl,a
14424  26ba a6c5          	ld	a,#197
14425  26bc 95            	ld	xh,a
14426  26bd 8d690069      	callf	L56f_hdmirxwr
14428                     ; 3312 	hdmirxwr(REG_RX_0C6,B_Addr_AB);					//Port 1 AB
14430  26c1 7b05          	ld	a,(OFST-1,sp)
14431  26c3 97            	ld	xl,a
14432  26c4 a6c6          	ld	a,#198
14433  26c6 95            	ld	xh,a
14434  26c7 8d690069      	callf	L56f_hdmirxwr
14436                     ; 3313 	hdmirxwr(REG_RX_0C7,B_Addr_CD);				//Port 1 CD
14438  26cb 7b06          	ld	a,(OFST+0,sp)
14439  26cd 97            	ld	xl,a
14440  26ce a6c7          	ld	a,#199
14441  26d0 95            	ld	xh,a
14442  26d1 8d690069      	callf	L56f_hdmirxwr
14444                     ; 3314 	hdmirxwr(REG_RX_0C9,B_Block1_CheckSum);		//Port 1 Bank 1 CheckSum
14446  26d5 7b02          	ld	a,(OFST-4,sp)
14447  26d7 97            	ld	xl,a
14448  26d8 a6c9          	ld	a,#201
14449  26da 95            	ld	xh,a
14450  26db 8d690069      	callf	L56f_hdmirxwr
14452                     ; 3318 }
14455  26df 5b08          	addw	sp,#8
14456  26e1 87            	retf
14491                     ; 3319 static void PhyAdrSet(void)
14491                     ; 3320 {
14492                     	switch	.text
14493  26e2               L123f_PhyAdrSet:
14497                     ; 3321 	txphyA = (txphyadr[0]&0xF0)>>4;
14499  26e2 c6000e        	ld	a,_txphyadr
14500  26e5 a4f0          	and	a,#240
14501  26e7 4e            	swap	a
14502  26e8 a40f          	and	a,#15
14503  26ea c7000d        	ld	_txphyA,a
14504                     ; 3322 	txphyB = (txphyadr[0]&0x0F);
14506  26ed c6000e        	ld	a,_txphyadr
14507  26f0 a40f          	and	a,#15
14508  26f2 c7000c        	ld	_txphyB,a
14509                     ; 3323 	txphyC = (txphyadr[1]&0xF0)>>4;
14511  26f5 c6000f        	ld	a,_txphyadr+1
14512  26f8 a4f0          	and	a,#240
14513  26fa 4e            	swap	a
14514  26fb a40f          	and	a,#15
14515  26fd c7000b        	ld	_txphyC,a
14516                     ; 3324 	txphyD = (txphyadr[1]&0x0F);
14518  2700 c6000f        	ld	a,_txphyadr+1
14519  2703 a40f          	and	a,#15
14520  2705 c7000a        	ld	_txphyD,a
14521                     ; 3326 	if( txphyA==0 && txphyB==0 && txphyC==0 && txphyD==0 )
14523  2708 725d000d      	tnz	_txphyA
14524  270c 2618          	jrne	L1306
14526  270e 725d000c      	tnz	_txphyB
14527  2712 2612          	jrne	L1306
14529  2714 725d000b      	tnz	_txphyC
14530  2718 260c          	jrne	L1306
14532  271a 725d000a      	tnz	_txphyD
14533  271e 2606          	jrne	L1306
14534                     ; 3327 		txphylevel = 0;
14536  2720 725f0009      	clr	_txphylevel
14538  2724 203a          	jra	L3306
14539  2726               L1306:
14540                     ; 3328 	else if( txphyB==0 && txphyC==0 && txphyD==0 )
14542  2726 725d000c      	tnz	_txphyB
14543  272a 2612          	jrne	L5306
14545  272c 725d000b      	tnz	_txphyC
14546  2730 260c          	jrne	L5306
14548  2732 725d000a      	tnz	_txphyD
14549  2736 2606          	jrne	L5306
14550                     ; 3329 		txphylevel = 1;
14552  2738 35010009      	mov	_txphylevel,#1
14554  273c 2022          	jra	L3306
14555  273e               L5306:
14556                     ; 3330 	else if( txphyC==0 && txphyD==0 )
14558  273e 725d000b      	tnz	_txphyC
14559  2742 260c          	jrne	L1406
14561  2744 725d000a      	tnz	_txphyD
14562  2748 2606          	jrne	L1406
14563                     ; 3331 		txphylevel = 2;
14565  274a 35020009      	mov	_txphylevel,#2
14567  274e 2010          	jra	L3306
14568  2750               L1406:
14569                     ; 3332 	else if( txphyD==0 )
14571  2750 725d000a      	tnz	_txphyD
14572  2754 2606          	jrne	L5406
14573                     ; 3333 		txphylevel = 3;
14575  2756 35030009      	mov	_txphylevel,#3
14577  275a 2004          	jra	L3306
14578  275c               L5406:
14579                     ; 3335 		txphylevel = 4;
14581  275c 35040009      	mov	_txphylevel,#4
14582  2760               L3306:
14583                     ; 3337 	rxcurport = 0;
14585  2760 725f0000      	clr	_rxcurport
14586                     ; 3338 	switch( txphylevel )
14588  2764 c60009        	ld	a,_txphylevel
14590                     ; 3369 			break;
14591  2767 4d            	tnz	a
14592  2768 271b          	jreq	L7006
14593  276a 4a            	dec	a
14594  276b 272a          	jreq	L1106
14595  276d 4a            	dec	a
14596  276e 274a          	jreq	L3106
14597  2770 4a            	dec	a
14598  2771 275b          	jreq	L5106
14599  2773               L7106:
14600                     ; 3364 		default:
14600                     ; 3365 			rxphyadr[0][0] = 0xFF;
14602  2773 35ff0005      	mov	_rxphyadr,#255
14603                     ; 3366 			rxphyadr[0][1] = 0xFF;
14605  2777 35ff0006      	mov	_rxphyadr+1,#255
14606                     ; 3367 			rxphyadr[1][0] = 0xFF;
14608  277b 35ff0007      	mov	_rxphyadr+2,#255
14609                     ; 3368 			rxphyadr[1][1] = 0xFF;
14611  277f 35ff0008      	mov	_rxphyadr+3,#255
14612                     ; 3369 			break;
14614  2783 206c          	jra	L3506
14615  2785               L7006:
14616                     ; 3340 		case 0:
14616                     ; 3341 			rxphyadr[0][0] = 0x10;
14618  2785 35100005      	mov	_rxphyadr,#16
14619                     ; 3342 			rxphyadr[0][1] = 0x00;
14621  2789 725f0006      	clr	_rxphyadr+1
14622                     ; 3343 			rxphyadr[1][0] = 0x20;
14624  278d 35200007      	mov	_rxphyadr+2,#32
14625                     ; 3344 			rxphyadr[1][1] = 0x00;
14627  2791 725f0008      	clr	_rxphyadr+3
14628                     ; 3345 			break;
14630  2795 205a          	jra	L3506
14631  2797               L1106:
14632                     ; 3346 		case 1:
14632                     ; 3347 			rxphyadr[0][0] = (txphyA<<4)+0x01;
14634  2797 c6000d        	ld	a,_txphyA
14635  279a 97            	ld	xl,a
14636  279b a610          	ld	a,#16
14637  279d 42            	mul	x,a
14638  279e 9f            	ld	a,xl
14639  279f 4c            	inc	a
14640  27a0 c70005        	ld	_rxphyadr,a
14641                     ; 3348 			rxphyadr[0][1] = 0x00;
14643  27a3 725f0006      	clr	_rxphyadr+1
14644                     ; 3349 			rxphyadr[1][0] = (txphyA<<4)+0x02;
14646  27a7 c6000d        	ld	a,_txphyA
14647  27aa 97            	ld	xl,a
14648  27ab a610          	ld	a,#16
14649  27ad 42            	mul	x,a
14650  27ae 9f            	ld	a,xl
14651  27af ab02          	add	a,#2
14652  27b1 c70007        	ld	_rxphyadr+2,a
14653                     ; 3350 			rxphyadr[1][1] = 0x00;
14655  27b4 725f0008      	clr	_rxphyadr+3
14656                     ; 3351 			break;
14658  27b8 2037          	jra	L3506
14659  27ba               L3106:
14660                     ; 3352 		case 2:
14660                     ; 3353 			rxphyadr[0][0] = txphyadr[0];
14662  27ba 55000e0005    	mov	_rxphyadr,_txphyadr
14663                     ; 3354 			rxphyadr[0][1] = 0x10;
14665  27bf 35100006      	mov	_rxphyadr+1,#16
14666                     ; 3355 			rxphyadr[1][0] = txphyadr[0];
14668  27c3 55000e0007    	mov	_rxphyadr+2,_txphyadr
14669                     ; 3356 			rxphyadr[1][1] = 0x20;
14671  27c8 35200008      	mov	_rxphyadr+3,#32
14672                     ; 3357 			break;
14674  27cc 2023          	jra	L3506
14675  27ce               L5106:
14676                     ; 3358 		case 3:
14676                     ; 3359 			rxphyadr[0][0] = txphyadr[0];
14678  27ce 55000e0005    	mov	_rxphyadr,_txphyadr
14679                     ; 3360 			rxphyadr[0][1] = (txphyC<<4)+0x01;
14681  27d3 c6000b        	ld	a,_txphyC
14682  27d6 97            	ld	xl,a
14683  27d7 a610          	ld	a,#16
14684  27d9 42            	mul	x,a
14685  27da 9f            	ld	a,xl
14686  27db 4c            	inc	a
14687  27dc c70006        	ld	_rxphyadr+1,a
14688                     ; 3361 			rxphyadr[1][0] = txphyadr[0];
14690  27df 55000e0007    	mov	_rxphyadr+2,_txphyadr
14691                     ; 3362 			rxphyadr[1][1] = (txphyC<<4)+0x02;
14693  27e4 c6000b        	ld	a,_txphyC
14694  27e7 97            	ld	xl,a
14695  27e8 a610          	ld	a,#16
14696  27ea 42            	mul	x,a
14697  27eb 9f            	ld	a,xl
14698  27ec ab02          	add	a,#2
14699  27ee c70008        	ld	_rxphyadr+3,a
14700                     ; 3363 			break;
14702  27f1               L3506:
14703                     ; 3382 	MHLRX_DEBUG_PRINTF(printf("\r\nDnStrm PhyAdr = %x, %x, %x, %x\r\n", txphyA, txphyB, txphyC, txphyD));
14705  27f1 3b000a        	push	_txphyD
14706  27f4 3b000b        	push	_txphyC
14707  27f7 3b000c        	push	_txphyB
14708  27fa 3b000d        	push	_txphyA
14709  27fd ae1bff        	ldw	x,#L5506
14710  2800 8d000000      	callf	f_printf
14712  2804 5b04          	addw	sp,#4
14713                     ; 3384 	rxphyA = (rxphyadr[0][0]&0xF0)>>4;
14715  2806 c60005        	ld	a,_rxphyadr
14716  2809 a4f0          	and	a,#240
14717  280b 4e            	swap	a
14718  280c a40f          	and	a,#15
14719  280e c70004        	ld	_rxphyA,a
14720                     ; 3385 	rxphyB = (rxphyadr[0][0]&0x0F);
14722  2811 c60005        	ld	a,_rxphyadr
14723  2814 a40f          	and	a,#15
14724  2816 c70003        	ld	_rxphyB,a
14725                     ; 3386 	rxphyC = (rxphyadr[0][1]&0xF0)>>4;
14727  2819 c60006        	ld	a,_rxphyadr+1
14728  281c a4f0          	and	a,#240
14729  281e 4e            	swap	a
14730  281f a40f          	and	a,#15
14731  2821 c70002        	ld	_rxphyC,a
14732                     ; 3387 	rxphyD = (rxphyadr[0][1]&0x0F);
14734  2824 c60006        	ld	a,_rxphyadr+1
14735  2827 a40f          	and	a,#15
14736  2829 c70001        	ld	_rxphyD,a
14737                     ; 3388 	MHLRX_DEBUG_PRINTF(printf(" PortA PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));
14739  282c 3b0001        	push	_rxphyD
14740  282f 3b0002        	push	_rxphyC
14741  2832 3b0003        	push	_rxphyB
14742  2835 3b0004        	push	_rxphyA
14743  2838 ae1bde        	ldw	x,#L7506
14744  283b 8d000000      	callf	f_printf
14746  283f 5b04          	addw	sp,#4
14747                     ; 3390 	rxphyA = (rxphyadr[1][0]&0xF0)>>4;
14749  2841 c60007        	ld	a,_rxphyadr+2
14750  2844 a4f0          	and	a,#240
14751  2846 4e            	swap	a
14752  2847 a40f          	and	a,#15
14753  2849 c70004        	ld	_rxphyA,a
14754                     ; 3391 	rxphyB = (rxphyadr[1][0]&0x0F);
14756  284c c60007        	ld	a,_rxphyadr+2
14757  284f a40f          	and	a,#15
14758  2851 c70003        	ld	_rxphyB,a
14759                     ; 3392 	rxphyC = (rxphyadr[1][1]&0xF0)>>4;
14761  2854 c60008        	ld	a,_rxphyadr+3
14762  2857 a4f0          	and	a,#240
14763  2859 4e            	swap	a
14764  285a a40f          	and	a,#15
14765  285c c70002        	ld	_rxphyC,a
14766                     ; 3393 	rxphyD = (rxphyadr[1][1]&0x0F);
14768  285f c60008        	ld	a,_rxphyadr+3
14769  2862 a40f          	and	a,#15
14770  2864 c70001        	ld	_rxphyD,a
14771                     ; 3394 	MHLRX_DEBUG_PRINTF(printf(" PortB PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));
14773  2867 3b0001        	push	_rxphyD
14774  286a 3b0002        	push	_rxphyC
14775  286d 3b0003        	push	_rxphyB
14776  2870 3b0004        	push	_rxphyA
14777  2873 ae1bbd        	ldw	x,#L1606
14778  2876 8d000000      	callf	f_printf
14780  287a 5b04          	addw	sp,#4
14781                     ; 3396 }
14784  287c 87            	retf
14820                     ; 3408 static void RCPinitQ(struct it6802_dev_data *it6802)
14820                     ; 3409 {
14821                     	switch	.text
14822  287d               L323f_RCPinitQ:
14826                     ; 3410 	it6802->RCPhead = 0;
14828  287d 6f71          	clr	(113,x)
14829                     ; 3411 	it6802->RCPtail = 0;
14831  287f 6f72          	clr	(114,x)
14832                     ; 3412 	it6802->RCPResult = RCP_Result_Finish;
14834  2881 a604          	ld	a,#4
14835  2883 e774          	ld	(116,x),a
14836                     ; 3413 }
14839  2885 87            	retf
14891                     ; 3415 void RCPKeyPush(unsigned char ucKey)
14891                     ; 3416 {
14892                     	switch	.text
14893  2886               f_RCPKeyPush:
14895  2886 88            	push	a
14896  2887 5203          	subw	sp,#3
14897       00000003      OFST:	set	3
14900                     ; 3419 	struct it6802_dev_data *it6802 = get_it6802_dev_data();
14902  2889 8d030203      	callf	L501f_get_it6802_dev_data
14904  288d 1f02          	ldw	(OFST-1,sp),x
14905                     ; 3423 	if( ( it6802->RCPhead % MAXRCPINDEX ) == ( ( it6802->RCPtail+1 ) % MAXRCPINDEX ) )
14907  288f 1e02          	ldw	x,(OFST-1,sp)
14908  2891 e671          	ld	a,(113,x)
14909  2893 5f            	clrw	x
14910  2894 97            	ld	xl,a
14911  2895 a605          	ld	a,#5
14912  2897 8d000000      	callf	d_smodx
14914  289b 1602          	ldw	y,(OFST-1,sp)
14915  289d 90e672        	ld	a,(114,y)
14916  28a0 905f          	clrw	y
14917  28a2 9097          	ld	yl,a
14918  28a4 905c          	incw	y
14919  28a6 a605          	ld	a,#5
14920  28a8 8d000000      	callf	d_smody
14922  28ac 90bf00        	ldw	c_y,y
14923  28af b300          	cpw	x,c_y
14924  28b1 272c          	jreq	L045
14925                     ; 3425 		return;
14927                     ; 3429 	it6802->RCPtail += 1;
14929  28b3 1e02          	ldw	x,(OFST-1,sp)
14930  28b5 6c72          	inc	(114,x)
14931                     ; 3430 	i=it6802->RCPtail % MAXRCPINDEX;
14933  28b7 1e02          	ldw	x,(OFST-1,sp)
14934  28b9 e672          	ld	a,(114,x)
14935  28bb 5f            	clrw	x
14936  28bc 97            	ld	xl,a
14937  28bd a605          	ld	a,#5
14938  28bf 8d000000      	callf	d_smodx
14940  28c3 01            	rrwa	x,a
14941  28c4 6b01          	ld	(OFST-2,sp),a
14942  28c6 02            	rlwa	x,a
14943                     ; 3431 	it6802->RCPTxArray[i]=ucKey;
14945  28c7 7b02          	ld	a,(OFST-1,sp)
14946  28c9 97            	ld	xl,a
14947  28ca 7b03          	ld	a,(OFST+0,sp)
14948  28cc 1b01          	add	a,(OFST-2,sp)
14949  28ce 2401          	jrnc	L635
14950  28d0 5c            	incw	x
14951  28d1               L635:
14952  28d1 02            	rlwa	x,a
14953  28d2 7b04          	ld	a,(OFST+1,sp)
14954  28d4 e76c          	ld	(108,x),a
14955                     ; 3433 	SwitchRCPStatus(it6802,RCP_Transfer);
14957  28d6 4b03          	push	#3
14958  28d8 1e03          	ldw	x,(OFST+0,sp)
14959  28da 8d8e298e      	callf	L133f_SwitchRCPStatus
14961  28de 84            	pop	a
14962                     ; 3435 }
14963  28df               L045:
14966  28df 5b04          	addw	sp,#4
14967  28e1 87            	retf
15006                     ; 3437 static int RCPKeyPop(struct it6802_dev_data *it6802)
15006                     ; 3438 {
15007                     	switch	.text
15008  28e2               L523f_RCPKeyPop:
15010  28e2 89            	pushw	x
15011       00000000      OFST:	set	0
15014                     ; 3441 	if( (it6802->RCPhead % MAXRCPINDEX) == (it6802->RCPtail % MAXRCPINDEX) )
15016  28e3 e671          	ld	a,(113,x)
15017  28e5 5f            	clrw	x
15018  28e6 97            	ld	xl,a
15019  28e7 a605          	ld	a,#5
15020  28e9 8d000000      	callf	d_smodx
15022  28ed 1601          	ldw	y,(OFST+1,sp)
15023  28ef 90e672        	ld	a,(114,y)
15024  28f2 905f          	clrw	y
15025  28f4 9097          	ld	yl,a
15026  28f6 a605          	ld	a,#5
15027  28f8 8d000000      	callf	d_smody
15029  28fc 90bf00        	ldw	c_y,y
15030  28ff b300          	cpw	x,c_y
15031  2901 2605          	jrne	L1516
15032                     ; 3443 		return FAIL;
15034  2903 aeffff        	ldw	x,#65535
15036  2906 203c          	jra	L445
15037  2908               L1516:
15038                     ; 3446 	it6802->RCPhead += 1;
15040  2908 1e01          	ldw	x,(OFST+1,sp)
15041  290a 6c71          	inc	(113,x)
15042                     ; 3448 	it6802->txmsgdata[0]=MSG_RCP;
15044  290c 1e01          	ldw	x,(OFST+1,sp)
15045  290e a610          	ld	a,#16
15046  2910 e748          	ld	(72,x),a
15047                     ; 3449 	it6802->txmsgdata[1]=it6802->RCPTxArray[ it6802->RCPhead % MAXRCPINDEX ];	//tx new key to peer
15049  2912 1e01          	ldw	x,(OFST+1,sp)
15050  2914 e671          	ld	a,(113,x)
15051  2916 5f            	clrw	x
15052  2917 97            	ld	xl,a
15053  2918 a605          	ld	a,#5
15054  291a 8d000000      	callf	d_smodx
15056  291e 72fb01        	addw	x,(OFST+1,sp)
15057  2921 e66c          	ld	a,(108,x)
15058  2923 1e01          	ldw	x,(OFST+1,sp)
15059  2925 e749          	ld	(73,x),a
15060                     ; 3451 	MHLRX_DEBUG_PRINTF(printf("RCPKeyPop() key = %x \r\n",it6802->txmsgdata[1]));
15062  2927 1e01          	ldw	x,(OFST+1,sp)
15063  2929 e649          	ld	a,(73,x)
15064  292b 88            	push	a
15065  292c ae1ba5        	ldw	x,#L3516
15066  292f 8d000000      	callf	f_printf
15068  2933 84            	pop	a
15069                     ; 3453 	cbus_send_mscmsg(it6802);
15071  2934 1e01          	ldw	x,(OFST+1,sp)
15072  2936 8d661c66      	callf	L352f_cbus_send_mscmsg
15074                     ; 3454 	SwitchRCPResult(it6802,RCP_Result_Transfer);
15076  293a 4b03          	push	#3
15077  293c 1e02          	ldw	x,(OFST+2,sp)
15078  293e 8d472947      	callf	L723f_SwitchRCPResult
15080  2942 84            	pop	a
15081                     ; 3456 	return SUCCESS;
15083  2943 5f            	clrw	x
15085  2944               L445:
15087  2944 5b02          	addw	sp,#2
15088  2946 87            	retf
15135                     ; 3459 static void SwitchRCPResult(struct it6802_dev_data *it6802,RCPResult_Type RCPResult)
15135                     ; 3460 {
15136                     	switch	.text
15137  2947               L723f_SwitchRCPResult:
15139  2947 89            	pushw	x
15140       00000000      OFST:	set	0
15143                     ; 3461 	it6802->RCPResult = RCPResult;
15145  2948 7b06          	ld	a,(OFST+6,sp)
15146  294a 1e01          	ldw	x,(OFST+1,sp)
15147  294c e774          	ld	(116,x),a
15148                     ; 3462 	switch(RCPResult)
15150  294e 7b06          	ld	a,(OFST+6,sp)
15152                     ; 3469 		case RCP_Result_Unknown:	break;
15153  2950 4d            	tnz	a
15154  2951 270e          	jreq	L5516
15155  2953 4a            	dec	a
15156  2954 2714          	jreq	L7516
15157  2956 4a            	dec	a
15158  2957 271a          	jreq	L1616
15159  2959 4a            	dec	a
15160  295a 2720          	jreq	L3616
15161  295c 4a            	dec	a
15162  295d 2726          	jreq	L5616
15163  295f 202b          	jra	L7126
15164  2961               L5516:
15165                     ; 3464 		case RCP_Result_OK:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_OK \r\n"));   break;
15167  2961 ae1b94        	ldw	x,#L1226
15168  2964 8d000000      	callf	f_printf
15172  2968 2022          	jra	L7126
15173  296a               L7516:
15174                     ; 3465 		case RCP_Result_FAIL:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_FAIL \r\n"));   break;
15176  296a ae1b81        	ldw	x,#L3226
15177  296d 8d000000      	callf	f_printf
15181  2971 2019          	jra	L7126
15182  2973               L1616:
15183                     ; 3466 		case RCP_Result_ABORT:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_ABORT \r\n"));   break;
15185  2973 ae1b6d        	ldw	x,#L5226
15186  2976 8d000000      	callf	f_printf
15190  297a 2010          	jra	L7126
15191  297c               L3616:
15192                     ; 3467 		case RCP_Result_Transfer:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Transfer \r\n"));   break;
15194  297c ae1b56        	ldw	x,#L7226
15195  297f 8d000000      	callf	f_printf
15199  2983 2007          	jra	L7126
15200  2985               L5616:
15201                     ; 3468 		case RCP_Result_Finish:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Finish \r\n"));   break;
15203  2985 ae1b41        	ldw	x,#L1326
15204  2988 8d000000      	callf	f_printf
15208  298c               L7616:
15209                     ; 3469 		case RCP_Result_Unknown:	break;
15211  298c               L7126:
15212                     ; 3472 }
15215  298c 85            	popw	x
15216  298d 87            	retf
15262                     ; 3474 static void SwitchRCPStatus(struct it6802_dev_data *it6802,RCPState_Type RCPState)
15262                     ; 3475 {
15263                     	switch	.text
15264  298e               L133f_SwitchRCPStatus:
15266  298e 89            	pushw	x
15267       00000000      OFST:	set	0
15270                     ; 3476 	it6802->RCPState = RCPState;
15272  298f 7b06          	ld	a,(OFST+6,sp)
15273  2991 1e01          	ldw	x,(OFST+1,sp)
15274  2993 e773          	ld	(115,x),a
15275                     ; 3477 }
15278  2995 85            	popw	x
15279  2996 87            	retf
15317                     ; 3479 static void RCPManager(struct it6802_dev_data *it6802)
15317                     ; 3480 {
15318                     	switch	.text
15319  2997               L333f_RCPManager:
15321  2997 89            	pushw	x
15322       00000000      OFST:	set	0
15325                     ; 3482 	switch(it6802->RCPState)
15327  2998 e673          	ld	a,(115,x)
15328  299a a103          	cp	a,#3
15329  299c 261c          	jrne	L5036
15332  299e               L7526:
15333                     ; 3487 				if(it6802->RCPResult == RCP_Result_Finish)
15335  299e 1e01          	ldw	x,(OFST+1,sp)
15336  29a0 e674          	ld	a,(116,x)
15337  29a2 a104          	cp	a,#4
15338  29a4 2614          	jrne	L5036
15339                     ; 3489 					if(RCPKeyPop(it6802)==FAIL)
15341  29a6 1e01          	ldw	x,(OFST+1,sp)
15342  29a8 8de228e2      	callf	L523f_RCPKeyPop
15344  29ac a3ffff        	cpw	x,#65535
15345  29af 2609          	jrne	L5036
15346                     ; 3490 						SwitchRCPStatus(it6802,RCP_Empty);
15348  29b1 4b04          	push	#4
15349  29b3 1e02          	ldw	x,(OFST+2,sp)
15350  29b5 8d8e298e      	callf	L133f_SwitchRCPStatus
15352  29b9 84            	pop	a
15353  29ba               L1626:
15354                     ; 3495 		default :
15354                     ; 3496 			break;
15356  29ba               L5036:
15357                     ; 3498 }
15360  29ba 85            	popw	x
15361  29bb 87            	retf
15484                     ; 3508 static void IT6802MHLInterruptHandler(struct it6802_dev_data *it6802)
15484                     ; 3509 {
15485                     	switch	.text
15486  29bc               L533f_IT6802MHLInterruptHandler:
15488  29bc 89            	pushw	x
15489  29bd 5208          	subw	sp,#8
15490       00000008      OFST:	set	8
15493                     ; 3514 	MHL04 = 0x00;
15495                     ; 3515 	MHL05 = 0x00;
15497                     ; 3516 	MHL06 = 0x00;
15499                     ; 3517 	MHLA0 = 0x00;
15501                     ; 3518 	MHLA1 = 0x00;
15503                     ; 3519 	MHLA2 = 0x00;
15505                     ; 3520 	MHLA3 = 0x00;
15507                     ; 3522 	MHL04 = mhlrxrd(0x04);
15509  29bf a604          	ld	a,#4
15510  29c1 8d1f011f      	callf	L37f_mhlrxrd
15512  29c5 6b05          	ld	(OFST-3,sp),a
15513                     ; 3523 	MHL05 = mhlrxrd(0x05);
15515  29c7 a605          	ld	a,#5
15516  29c9 8d1f011f      	callf	L37f_mhlrxrd
15518  29cd 6b06          	ld	(OFST-2,sp),a
15519                     ; 3524 	MHL06 = mhlrxrd(0x06);
15521  29cf a606          	ld	a,#6
15522  29d1 8d1f011f      	callf	L37f_mhlrxrd
15524  29d5 6b08          	ld	(OFST+0,sp),a
15525                     ; 3526 	mhlrxwr(0x04,MHL04);
15527  29d7 7b05          	ld	a,(OFST-3,sp)
15528  29d9 97            	ld	xl,a
15529  29da a604          	ld	a,#4
15530  29dc 95            	ld	xh,a
15531  29dd 8d600160      	callf	L57f_mhlrxwr
15533                     ; 3527 	mhlrxwr(0x05,MHL05);
15535  29e1 7b06          	ld	a,(OFST-2,sp)
15536  29e3 97            	ld	xl,a
15537  29e4 a605          	ld	a,#5
15538  29e6 95            	ld	xh,a
15539  29e7 8d600160      	callf	L57f_mhlrxwr
15541                     ; 3528 	mhlrxwr(0x06,MHL06);
15543  29eb 7b08          	ld	a,(OFST+0,sp)
15544  29ed 97            	ld	xl,a
15545  29ee a606          	ld	a,#6
15546  29f0 95            	ld	xh,a
15547  29f1 8d600160      	callf	L57f_mhlrxwr
15549                     ; 3530 	MHLA0 = mhlrxrd(0xA0);
15551  29f5 a6a0          	ld	a,#160
15552  29f7 8d1f011f      	callf	L37f_mhlrxrd
15554  29fb 6b04          	ld	(OFST-4,sp),a
15555                     ; 3531 	MHLA1 = mhlrxrd(0xA1);
15557  29fd a6a1          	ld	a,#161
15558  29ff 8d1f011f      	callf	L37f_mhlrxrd
15560  2a03 6b03          	ld	(OFST-5,sp),a
15561                     ; 3532 	MHLA2 = mhlrxrd(0xA2);
15563  2a05 a6a2          	ld	a,#162
15564  2a07 8d1f011f      	callf	L37f_mhlrxrd
15566  2a0b 6b02          	ld	(OFST-6,sp),a
15567                     ; 3533 	MHLA3 = mhlrxrd(0xA3);
15569  2a0d a6a3          	ld	a,#163
15570  2a0f 8d1f011f      	callf	L37f_mhlrxrd
15572  2a13 6b07          	ld	(OFST-1,sp),a
15573                     ; 3535 	mhlrxwr(0xA0,MHLA0);
15575  2a15 7b04          	ld	a,(OFST-4,sp)
15576  2a17 97            	ld	xl,a
15577  2a18 a6a0          	ld	a,#160
15578  2a1a 95            	ld	xh,a
15579  2a1b 8d600160      	callf	L57f_mhlrxwr
15581                     ; 3536 	mhlrxwr(0xA1,MHLA1);
15583  2a1f 7b03          	ld	a,(OFST-5,sp)
15584  2a21 97            	ld	xl,a
15585  2a22 a6a1          	ld	a,#161
15586  2a24 95            	ld	xh,a
15587  2a25 8d600160      	callf	L57f_mhlrxwr
15589                     ; 3537 	mhlrxwr(0xA2,MHLA2);
15591  2a29 7b02          	ld	a,(OFST-6,sp)
15592  2a2b 97            	ld	xl,a
15593  2a2c a6a2          	ld	a,#162
15594  2a2e 95            	ld	xh,a
15595  2a2f 8d600160      	callf	L57f_mhlrxwr
15597                     ; 3538 	mhlrxwr(0xA3,MHLA3);
15599  2a33 7b07          	ld	a,(OFST-1,sp)
15600  2a35 97            	ld	xl,a
15601  2a36 a6a3          	ld	a,#163
15602  2a38 95            	ld	xh,a
15603  2a39 8d600160      	callf	L57f_mhlrxwr
15605                     ; 3542 	if( MHL04&0x01 ) {
15607  2a3d 7b05          	ld	a,(OFST-3,sp)
15608  2a3f a501          	bcp	a,#1
15609  2a41 2707          	jreq	L5536
15610                     ; 3544 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer TX Packet Done Interrupt ...\r\n"));
15612  2a43 ae1b0b        	ldw	x,#L7536
15613  2a46 8d000000      	callf	f_printf
15615  2a4a               L5536:
15616                     ; 3548 	if( MHL04&0x02 ) {
15618  2a4a 7b05          	ld	a,(OFST-3,sp)
15619  2a4c a502          	bcp	a,#2
15620  2a4e 272c          	jreq	L1636
15621                     ; 3550 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer TX Packet Fail Interrupt ... \r\n"));
15623  2a50 ae1acd        	ldw	x,#L3636
15624  2a53 8d000000      	callf	f_printf
15626                     ; 3551 		IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));
15628  2a57 a615          	ld	a,#21
15629  2a59 8d1f011f      	callf	L37f_mhlrxrd
15631  2a5d 5f            	clrw	x
15632  2a5e 97            	ld	xl,a
15633  2a5f 89            	pushw	x
15634  2a60 ae1aa3        	ldw	x,#L5636
15635  2a63 8d000000      	callf	f_printf
15637  2a67 85            	popw	x
15638                     ; 3553 		rddata = mhlrxrd(0x15);
15640  2a68 a615          	ld	a,#21
15641  2a6a 8d1f011f      	callf	L37f_mhlrxrd
15643  2a6e 6b07          	ld	(OFST-1,sp),a
15644                     ; 3555 		mhlrxwr(0x15, rddata&0xF0);
15646  2a70 7b07          	ld	a,(OFST-1,sp)
15647  2a72 a4f0          	and	a,#240
15648  2a74 97            	ld	xl,a
15649  2a75 a615          	ld	a,#21
15650  2a77 95            	ld	xh,a
15651  2a78 8d600160      	callf	L57f_mhlrxwr
15653  2a7c               L1636:
15654                     ; 3559 	if( MHL04&0x04 ) {
15656  2a7c 7b05          	ld	a,(OFST-3,sp)
15657  2a7e a504          	bcp	a,#4
15658  2a80 2707          	jreq	L7636
15659                     ; 3561 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer RX Packet Done Interrupt ...\r\n"));
15661  2a82 ae1a6d        	ldw	x,#L1736
15662  2a85 8d000000      	callf	f_printf
15664  2a89               L7636:
15665                     ; 3565 	if( MHL04&0x08 ) {
15667  2a89 7b05          	ld	a,(OFST-3,sp)
15668  2a8b a508          	bcp	a,#8
15669  2a8d 272c          	jreq	L3736
15670                     ; 3567 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer RX Packet Fail Interrupt ... \r\n"));
15672  2a8f ae1a2f        	ldw	x,#L5736
15673  2a92 8d000000      	callf	f_printf
15675                     ; 3569 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));
15677  2a96 a615          	ld	a,#21
15678  2a98 8d1f011f      	callf	L37f_mhlrxrd
15680  2a9c 5f            	clrw	x
15681  2a9d 97            	ld	xl,a
15682  2a9e 89            	pushw	x
15683  2a9f ae1aa3        	ldw	x,#L5636
15684  2aa2 8d000000      	callf	f_printf
15686  2aa6 85            	popw	x
15687                     ; 3571 		 rddata = mhlrxrd(0x15);
15689  2aa7 a615          	ld	a,#21
15690  2aa9 8d1f011f      	callf	L37f_mhlrxrd
15692  2aad 6b07          	ld	(OFST-1,sp),a
15693                     ; 3573 		 mhlrxwr(0x15, rddata&0x0F);
15695  2aaf 7b07          	ld	a,(OFST-1,sp)
15696  2ab1 a40f          	and	a,#15
15697  2ab3 97            	ld	xl,a
15698  2ab4 a615          	ld	a,#21
15699  2ab6 95            	ld	xh,a
15700  2ab7 8d600160      	callf	L57f_mhlrxwr
15702  2abb               L3736:
15703                     ; 3578 	if( MHL04&0x10 ) {
15705  2abb 7b05          	ld	a,(OFST-3,sp)
15706  2abd a510          	bcp	a,#16
15707  2abf 270d          	jreq	L7736
15708                     ; 3579 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX MSC_MSG Interrupt ...\r\n"));
15710  2ac1 ae1a09        	ldw	x,#L1046
15711  2ac4 8d000000      	callf	f_printf
15713                     ; 3581 	    mhl_read_mscmsg(it6802 );
15715  2ac8 1e09          	ldw	x,(OFST+1,sp)
15716  2aca 8d871a87      	callf	L542f_mhl_read_mscmsg
15718  2ace               L7736:
15719                     ; 3585 	if( MHL04&0x20 ) {
15721  2ace 7b05          	ld	a,(OFST-3,sp)
15722  2ad0 a520          	bcp	a,#32
15723  2ad2 2707          	jreq	L3046
15724                     ; 3586 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_STAT Interrupt ...\r\n"));
15726  2ad4 ae19e0        	ldw	x,#L5046
15727  2ad7 8d000000      	callf	f_printf
15729  2adb               L3046:
15730                     ; 3588 	if( MHL04&0x40 ) {
15732  2adb 7b05          	ld	a,(OFST-3,sp)
15733  2add a540          	bcp	a,#64
15734  2adf 2707          	jreq	L7046
15735                     ; 3590 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_BURST Interrupt  ...\r\n"));
15737  2ae1 ae19b5        	ldw	x,#L1146
15738  2ae4 8d000000      	callf	f_printf
15740  2ae8               L7046:
15741                     ; 3594 	if( MHL05&0x01 ) {
15743  2ae8 7b06          	ld	a,(OFST-2,sp)
15744  2aea a501          	bcp	a,#1
15745  2aec 2707          	jreq	L3146
15746                     ; 3596 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Done Interrupt ...\r\n"));
15748  2aee ae1991        	ldw	x,#L5146
15749  2af1 8d000000      	callf	f_printf
15751  2af5               L3146:
15752                     ; 3600 	if( MHL05&0x02 )
15754  2af5 7b06          	ld	a,(OFST-2,sp)
15755  2af7 a502          	bcp	a,#2
15756  2af9 2756          	jreq	L7146
15757                     ; 3603 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail Interrupt (Unexpected) ...\r\n"));
15759  2afb ae1960        	ldw	x,#L1246
15760  2afe 8d000000      	callf	f_printf
15762                     ; 3604 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail reg18= %02X \r\n",(int)mhlrxrd(0x18)));
15764  2b02 a618          	ld	a,#24
15765  2b04 8d1f011f      	callf	L37f_mhlrxrd
15767  2b08 5f            	clrw	x
15768  2b09 97            	ld	xl,a
15769  2b0a 89            	pushw	x
15770  2b0b ae193d        	ldw	x,#L3246
15771  2b0e 8d000000      	callf	f_printf
15773  2b12 85            	popw	x
15774                     ; 3606 		rddata = mhlrxrd(0x18);
15776  2b13 a618          	ld	a,#24
15777  2b15 8d1f011f      	callf	L37f_mhlrxrd
15779  2b19 6b07          	ld	(OFST-1,sp),a
15780                     ; 3607 		mhlrxwr(0x18, rddata);
15782  2b1b 7b07          	ld	a,(OFST-1,sp)
15783  2b1d 97            	ld	xl,a
15784  2b1e a618          	ld	a,#24
15785  2b20 95            	ld	xh,a
15786  2b21 8d600160      	callf	L57f_mhlrxwr
15788                     ; 3609 		rddata = mhlrxrd(0x19);
15790  2b25 a619          	ld	a,#25
15791  2b27 8d1f011f      	callf	L37f_mhlrxrd
15793  2b2b 6b07          	ld	(OFST-1,sp),a
15794                     ; 3611 		if( rddata&0x01 )
15796  2b2d 7b07          	ld	a,(OFST-1,sp)
15797  2b2f a501          	bcp	a,#1
15798  2b31 2707          	jreq	L5246
15799                     ; 3612 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX FW Fail in the middle of the command sequence !!!\r\n"));
15801  2b33 ae18f8        	ldw	x,#L7246
15802  2b36 8d000000      	callf	f_printf
15804  2b3a               L5246:
15805                     ; 3613 		if( rddata&0x02 )
15807  2b3a 7b07          	ld	a,(OFST-1,sp)
15808  2b3c a502          	bcp	a,#2
15809  2b3e 2707          	jreq	L1346
15810                     ; 3614 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX Fail because FW mode RxPktFIFO not empty !!!\r\n"));
15812  2b40 ae18b8        	ldw	x,#L3346
15813  2b43 8d000000      	callf	f_printf
15815  2b47               L1346:
15816                     ; 3616 		mhlrxwr(0x19, rddata);
15818  2b47 7b07          	ld	a,(OFST-1,sp)
15819  2b49 97            	ld	xl,a
15820  2b4a a619          	ld	a,#25
15821  2b4c 95            	ld	xh,a
15822  2b4d 8d600160      	callf	L57f_mhlrxwr
15824  2b51               L7146:
15825                     ; 3621 	if( MHL05&0x04 ) {
15827  2b51 7b06          	ld	a,(OFST-2,sp)
15828  2b53 a504          	bcp	a,#4
15829  2b55 2711          	jreq	L5346
15830                     ; 3622 		 mhlrxwr(0x05, 0x04);
15832  2b57 ae0004        	ldw	x,#4
15833  2b5a a605          	ld	a,#5
15834  2b5c 95            	ld	xh,a
15835  2b5d 8d600160      	callf	L57f_mhlrxwr
15837                     ; 3624 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Done Interrupt ...\r\n"));
15839  2b61 ae1894        	ldw	x,#L7346
15840  2b64 8d000000      	callf	f_printf
15842  2b68               L5346:
15843                     ; 3627 	if( MHL05&0x08 ) {
15845  2b68 7b06          	ld	a,(OFST-2,sp)
15846  2b6a a508          	bcp	a,#8
15847  2b6c 2760          	jreq	L1446
15848                     ; 3628 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail Interrupt ...\r\n" ));
15850  2b6e ae1870        	ldw	x,#L3446
15851  2b71 8d000000      	callf	f_printf
15853                     ; 3629 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail status reg1A=%X reg1B=%X\r\n", (int)mhlrxrd(0x1A),(int)mhlrxrd(0x1B)));
15855  2b75 a61b          	ld	a,#27
15856  2b77 8d1f011f      	callf	L37f_mhlrxrd
15858  2b7b 5f            	clrw	x
15859  2b7c 97            	ld	xl,a
15860  2b7d 89            	pushw	x
15861  2b7e a61a          	ld	a,#26
15862  2b80 8d1f011f      	callf	L37f_mhlrxrd
15864  2b84 5f            	clrw	x
15865  2b85 97            	ld	xl,a
15866  2b86 89            	pushw	x
15867  2b87 ae1841        	ldw	x,#L5446
15868  2b8a 8d000000      	callf	f_printf
15870  2b8e 5b04          	addw	sp,#4
15871                     ; 3631 		 rddata = mhlrxrd(0x1A);
15873  2b90 a61a          	ld	a,#26
15874  2b92 8d1f011f      	callf	L37f_mhlrxrd
15876  2b96 6b07          	ld	(OFST-1,sp),a
15877                     ; 3633 		mhlrxwr(0x1A, rddata);
15879  2b98 7b07          	ld	a,(OFST-1,sp)
15880  2b9a 97            	ld	xl,a
15881  2b9b a61a          	ld	a,#26
15882  2b9d 95            	ld	xh,a
15883  2b9e 8d600160      	callf	L57f_mhlrxwr
15885                     ; 3635 		 rddata = mhlrxrd(0x1B);
15887  2ba2 a61b          	ld	a,#27
15888  2ba4 8d1f011f      	callf	L37f_mhlrxrd
15890  2ba8 6b07          	ld	(OFST-1,sp),a
15891                     ; 3636 		 if( rddata&0x01 )
15893  2baa 7b07          	ld	a,(OFST-1,sp)
15894  2bac a501          	bcp	a,#1
15895  2bae 2707          	jreq	L7446
15896                     ; 3637 			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Retry > 32 times !!!\r\n"));
15898  2bb0 ae181c        	ldw	x,#L1546
15899  2bb3 8d000000      	callf	f_printf
15901  2bb7               L7446:
15902                     ; 3638 		 if( rddata&0x02 ) {
15904  2bb7 7b07          	ld	a,(OFST-1,sp)
15905  2bb9 a502          	bcp	a,#2
15906  2bbb 2707          	jreq	L3546
15907                     ; 3639 			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Receive ABORT Packet !!!\r\n"));
15909  2bbd ae17f3        	ldw	x,#L5546
15910  2bc0 8d000000      	callf	f_printf
15912  2bc4               L3546:
15913                     ; 3643 		 mhlrxwr(0x1B, rddata);
15915  2bc4 7b07          	ld	a,(OFST-1,sp)
15916  2bc6 97            	ld	xl,a
15917  2bc7 a61b          	ld	a,#27
15918  2bc9 95            	ld	xh,a
15919  2bca 8d600160      	callf	L57f_mhlrxwr
15921  2bce               L1446:
15922                     ; 3648 	if( MHL05&0x10 ) {
15924  2bce 7b06          	ld	a,(OFST-2,sp)
15925  2bd0 a510          	bcp	a,#16
15926  2bd2 2726          	jreq	L7546
15927                     ; 3650 	         mhlrxwr(0x05, 0x10);
15929  2bd4 ae0010        	ldw	x,#16
15930  2bd7 a605          	ld	a,#5
15931  2bd9 95            	ld	xh,a
15932  2bda 8d600160      	callf	L57f_mhlrxwr
15934                     ; 3652 		 if( (mhlrxrd(0xB1)&0x07)==2 ) {
15936  2bde a6b1          	ld	a,#177
15937  2be0 8d1f011f      	callf	L37f_mhlrxrd
15939  2be4 a407          	and	a,#7
15940  2be6 a102          	cp	a,#2
15941  2be8 2609          	jrne	L1646
15942                     ; 3653 			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : PackPixel Mode ...\r\n"));
15944  2bea ae17cd        	ldw	x,#L3646
15945  2bed 8d000000      	callf	f_printf
15948  2bf1 2007          	jra	L7546
15949  2bf3               L1646:
15950                     ; 3656 			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : 24 bits Mode ...\r\n"));
15952  2bf3 ae17a9        	ldw	x,#L7646
15953  2bf6 8d000000      	callf	f_printf
15955  2bfa               L7546:
15956                     ; 3661 	if( MHL05&0x20 ) {
15958  2bfa 7b06          	ld	a,(OFST-2,sp)
15959  2bfc a520          	bcp	a,#32
15960  2bfe 2707          	jreq	L1746
15961                     ; 3663 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Req Fail Interrupt (Hardware) ... \r\n"));
15963  2c00 ae1779        	ldw	x,#L3746
15964  2c03 8d000000      	callf	f_printf
15966  2c07               L1746:
15967                     ; 3667 	if( MHL05&0x40 ) {
15969  2c07 7b06          	ld	a,(OFST-2,sp)
15970  2c09 a540          	bcp	a,#64
15971  2c0b 2707          	jreq	L5746
15972                     ; 3669 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Done Interrupt ...\r\n"));
15974  2c0d ae1755        	ldw	x,#L7746
15975  2c10 8d000000      	callf	f_printf
15977  2c14               L5746:
15978                     ; 3672 	if( MHL05&0x80 ) {
15980  2c14 7b06          	ld	a,(OFST-2,sp)
15981  2c16 a580          	bcp	a,#128
15982  2c18 272b          	jreq	L1056
15983                     ; 3674 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Fail Interrupt ...\r\n"));
15985  2c1a ae1731        	ldw	x,#L3056
15986  2c1d 8d000000      	callf	f_printf
15988                     ; 3676 		rddata  = mhlrxrd(0x16);
15990  2c21 a616          	ld	a,#22
15991  2c23 8d1f011f      	callf	L37f_mhlrxrd
15993  2c27 6b07          	ld	(OFST-1,sp),a
15994                     ; 3677 		mhlrxwr(0x16, rddata);
15996  2c29 7b07          	ld	a,(OFST-1,sp)
15997  2c2b 97            	ld	xl,a
15998  2c2c a616          	ld	a,#22
15999  2c2e 95            	ld	xh,a
16000  2c2f 8d600160      	callf	L57f_mhlrxwr
16002                     ; 3679 		rddata = mhlrxrd(0x17);
16004  2c33 a617          	ld	a,#23
16005  2c35 8d1f011f      	callf	L37f_mhlrxrd
16007  2c39 6b07          	ld	(OFST-1,sp),a
16008                     ; 3680 		mhlrxwr(0x17, rddata);
16010  2c3b 7b07          	ld	a,(OFST-1,sp)
16011  2c3d 97            	ld	xl,a
16012  2c3e a617          	ld	a,#23
16013  2c40 95            	ld	xh,a
16014  2c41 8d600160      	callf	L57f_mhlrxwr
16016  2c45               L1056:
16017                     ; 3685 	 if( MHL06&0x01 ) {
16019  2c45 7b08          	ld	a,(OFST+0,sp)
16020  2c47 a501          	bcp	a,#1
16021  2c49 270e          	jreq	L5056
16022                     ; 3686 		 mhlrxwr(0x06, 0x01);
16024  2c4b ae0001        	ldw	x,#1
16025  2c4e a606          	ld	a,#6
16026  2c50 95            	ld	xh,a
16027  2c51 8d600160      	callf	L57f_mhlrxwr
16029                     ; 3687 		 wakeupfailcnt = 0;
16031  2c55 725f0004      	clr	_wakeupfailcnt
16032  2c59               L5056:
16033                     ; 3690 	 if( MHL06&0x02 ) {
16035  2c59 7b08          	ld	a,(OFST+0,sp)
16036  2c5b a502          	bcp	a,#2
16037  2c5d 2746          	jreq	L7056
16038                     ; 3691 		 mhlrxwr(0x06, 0x02);
16040  2c5f ae0002        	ldw	x,#2
16041  2c62 a606          	ld	a,#6
16042  2c64 95            	ld	xh,a
16043  2c65 8d600160      	callf	L57f_mhlrxwr
16045                     ; 3692 		 wakeupfailcnt++;
16047  2c69 725c0004      	inc	_wakeupfailcnt
16048                     ; 3693 		 MHLRX_DEBUG_PRINTF(printf("WakeUp Fail Interrupt\r\n"));
16050  2c6d ae1719        	ldw	x,#L1156
16051  2c70 8d000000      	callf	f_printf
16053                     ; 3695 		 if( wakeupfailcnt==8 ) {
16055  2c74 c60004        	ld	a,_wakeupfailcnt
16056  2c77 a108          	cp	a,#8
16057  2c79 262a          	jrne	L7056
16058                     ; 3696              if( mhlrxrd(0x28)&0x08 ) {
16060  2c7b a628          	ld	a,#40
16061  2c7d 8d1f011f      	callf	L37f_mhlrxrd
16063  2c81 a508          	bcp	a,#8
16064  2c83 270f          	jreq	L5156
16065                     ; 3697 			     mhlrxset(0x28, 0x08, 0x00);
16067  2c85 4b00          	push	#0
16068  2c87 ae0008        	ldw	x,#8
16069  2c8a a628          	ld	a,#40
16070  2c8c 95            	ld	xh,a
16071  2c8d 8daa01aa      	callf	L77f_mhlrxset
16073  2c91 84            	pop	a
16075  2c92 200d          	jra	L7156
16076  2c94               L5156:
16077                     ; 3700 				 mhlrxset(0x28, 0x08, 0x08);
16079  2c94 4b08          	push	#8
16080  2c96 ae0008        	ldw	x,#8
16081  2c99 a628          	ld	a,#40
16082  2c9b 95            	ld	xh,a
16083  2c9c 8daa01aa      	callf	L77f_mhlrxset
16085  2ca0 84            	pop	a
16086  2ca1               L7156:
16087                     ; 3702 			 wakeupfailcnt=0;
16089  2ca1 725f0004      	clr	_wakeupfailcnt
16090  2ca5               L7056:
16091                     ; 3707 	if( MHL06&0x04 ) {
16093  2ca5 7b08          	ld	a,(OFST+0,sp)
16094  2ca7 a504          	bcp	a,#4
16095  2ca9 2747          	jreq	L1256
16096                     ; 3709 		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS Discovery Done Interrupt ...\r\n"));
16098  2cab ae16ee        	ldw	x,#L3256
16099  2cae 8d000000      	callf	f_printf
16101                     ; 3710 		MHLRX_DEBUG_PRINTF(printf("CBUS Discovery Done Interrupt ...\r\n"));
16103  2cb2 ae16ca        	ldw	x,#L5256
16104  2cb5 8d000000      	callf	f_printf
16106                     ; 3711 		TxWrBstSeq = 0;
16108  2cb9 725f0001      	clr	_TxWrBstSeq
16109                     ; 3716 			MHLRX_DEBUG_PRINTF(printf("Set DCAP_RDY to 1 ...\r\n"));
16111  2cbd ae16b2        	ldw	x,#L7256
16112  2cc0 8d000000      	callf	f_printf
16114                     ; 3717 			set_mhlsts(MHLSts00B, DCAP_RDY);
16116  2cc4 ae0001        	ldw	x,#1
16117  2cc7 a630          	ld	a,#48
16118  2cc9 95            	ld	xh,a
16119  2cca 8d422042      	callf	L362f_set_mhlsts
16121                     ; 3719 			MHLRX_DEBUG_PRINTF(printf("Set HPD to 1 ...\r\n"));
16123  2cce ae169f        	ldw	x,#L1356
16124  2cd1 8d000000      	callf	f_printf
16126                     ; 3721 			 mscfire(0x50, 0x04);
16128  2cd5 ae0004        	ldw	x,#4
16129  2cd8 89            	pushw	x
16130  2cd9 ae0050        	ldw	x,#80
16131  2cdc 8d281c28      	callf	L152f_mscfire
16133  2ce0 85            	popw	x
16134                     ; 3724 			MHLRX_DEBUG_PRINTF(printf("Set PATH_EN to 1 ...\r\n"));
16136  2ce1 ae1688        	ldw	x,#L3356
16137  2ce4 8d000000      	callf	f_printf
16139                     ; 3725 			set_mhlsts(MHLSts01B, PATH_EN);
16141  2ce8 ae0008        	ldw	x,#8
16142  2ceb a631          	ld	a,#49
16143  2ced 95            	ld	xh,a
16144  2cee 8d422042      	callf	L362f_set_mhlsts
16146  2cf2               L1256:
16147                     ; 3729 	if( MHL06&0x08 ) {
16149  2cf2 7b08          	ld	a,(OFST+0,sp)
16150  2cf4 a508          	bcp	a,#8
16151                     ; 3735 	if( MHL06&0x10 ) {
16153  2cf6 7b08          	ld	a,(OFST+0,sp)
16154  2cf8 a510          	bcp	a,#16
16155  2cfa 2735          	jreq	L7356
16156                     ; 3737 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS PATH_EN Change Interrupt ...\r\n"));
16158  2cfc ae165d        	ldw	x,#L1456
16159  2cff 8d000000      	callf	f_printf
16161                     ; 3742 		hdmirxset(0x26, 0x80, 0x00);
16163  2d03 4b00          	push	#0
16164  2d05 ae0080        	ldw	x,#128
16165  2d08 a626          	ld	a,#38
16166  2d0a 95            	ld	xh,a
16167  2d0b 8db300b3      	callf	L76f_hdmirxset
16169  2d0f 84            	pop	a
16170                     ; 3743 		delay1ms(1);
16172  2d10 ae0001        	ldw	x,#1
16173  2d13 8d000000      	callf	f_IR_DelayNMiliseconds
16175                     ; 3744 		hdmirxset(0x26, 0x80, 0x80);
16177  2d17 4b80          	push	#128
16178  2d19 ae0080        	ldw	x,#128
16179  2d1c a626          	ld	a,#38
16180  2d1e 95            	ld	xh,a
16181  2d1f 8db300b3      	callf	L76f_hdmirxset
16183  2d23 84            	pop	a
16184                     ; 3745 		hdmirxset(0x22, 0x04, 0x04);
16186  2d24 4b04          	push	#4
16187  2d26 ae0004        	ldw	x,#4
16188  2d29 a622          	ld	a,#34
16189  2d2b 95            	ld	xh,a
16190  2d2c 8db300b3      	callf	L76f_hdmirxset
16192  2d30 84            	pop	a
16193  2d31               L7356:
16194                     ; 3752 	if( MHL06&0x20 ) {
16196  2d31 7b08          	ld	a,(OFST+0,sp)
16197  2d33 a520          	bcp	a,#32
16198  2d35 271f          	jreq	L3456
16199                     ; 3754 		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS MUTE Change Interrupt ...\r\n"));
16201  2d37 ae1635        	ldw	x,#L5456
16202  2d3a 8d000000      	callf	f_printf
16204                     ; 3755 		IT6802_DEBUG_INT_PRINTF(printf("it6802-Current CBUS MUTE Status = %X \r\n", (int)(mhlrxrd(0xB1)&0x10)>>4));
16206  2d3e a6b1          	ld	a,#177
16207  2d40 8d1f011f      	callf	L37f_mhlrxrd
16209  2d44 5f            	clrw	x
16210  2d45 a410          	and	a,#16
16211  2d47 5f            	clrw	x
16212  2d48 02            	rlwa	x,a
16213  2d49 57            	sraw	x
16214  2d4a 57            	sraw	x
16215  2d4b 57            	sraw	x
16216  2d4c 57            	sraw	x
16217  2d4d 89            	pushw	x
16218  2d4e ae160d        	ldw	x,#L7456
16219  2d51 8d000000      	callf	f_printf
16221  2d55 85            	popw	x
16222  2d56               L3456:
16223                     ; 3758 	if( MHL06&0x40 ) {
16225  2d56 7b08          	ld	a,(OFST+0,sp)
16226  2d58 a540          	bcp	a,#64
16227  2d5a 2731          	jreq	L1556
16228                     ; 3760 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS DCapRdy Change Interrupt ...\r\n"));
16230  2d5c ae15e2        	ldw	x,#L3556
16231  2d5f 8d000000      	callf	f_printf
16233                     ; 3762 		if( mhlrxrd(0xB0)&0x01 )
16235  2d63 a6b0          	ld	a,#176
16236  2d65 8d1f011f      	callf	L37f_mhlrxrd
16238  2d69 a501          	bcp	a,#1
16239  2d6b 2719          	jreq	L5556
16240                     ; 3765 			read_devcap_hw(it6802);  // READ_DEVCAP hardware mode
16242  2d6d 1e09          	ldw	x,(OFST+1,sp)
16243  2d6f 8da51fa5      	callf	L752f_read_devcap_hw
16245                     ; 3767 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set DCAP_RDY to 1 ...\r\n"));
16247  2d73 ae15c3        	ldw	x,#L7556
16248  2d76 8d000000      	callf	f_printf
16250                     ; 3769 			set_mhlsts(MHLSts00B, DCAP_RDY);
16252  2d7a ae0001        	ldw	x,#1
16253  2d7d a630          	ld	a,#48
16254  2d7f 95            	ld	xh,a
16255  2d80 8d422042      	callf	L362f_set_mhlsts
16258  2d84 2007          	jra	L1556
16259  2d86               L5556:
16260                     ; 3773 			IT6802_DEBUG_INT_PRINTF(printf("IT6802-DCapRdy Change from '1' to '0'\r\n"));
16262  2d86 ae159b        	ldw	x,#L3656
16263  2d89 8d000000      	callf	f_printf
16265  2d8d               L1556:
16266                     ; 3776 	if( MHL06&0x80 ) {
16268  2d8d 7b08          	ld	a,(OFST+0,sp)
16269  2d8f a580          	bcp	a,#128
16270  2d91 271e          	jreq	L5656
16271                     ; 3778 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-VBUS Status Change Interrupt ...\r\n"));
16273  2d93 ae1571        	ldw	x,#L7656
16274  2d96 8d000000      	callf	f_printf
16276                     ; 3779 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Current VBUS Status = %X\r\n",(int) (mhlrxrd(0x10)&0x08)>>3));
16278  2d9a a610          	ld	a,#16
16279  2d9c 8d1f011f      	callf	L37f_mhlrxrd
16281  2da0 5f            	clrw	x
16282  2da1 a408          	and	a,#8
16283  2da3 5f            	clrw	x
16284  2da4 02            	rlwa	x,a
16285  2da5 57            	sraw	x
16286  2da6 57            	sraw	x
16287  2da7 57            	sraw	x
16288  2da8 89            	pushw	x
16289  2da9 ae154f        	ldw	x,#L1756
16290  2dac 8d000000      	callf	f_printf
16292  2db0 85            	popw	x
16293  2db1               L5656:
16294                     ; 3784 	if( MHLA0&0x01 ) {
16296  2db1 7b04          	ld	a,(OFST-4,sp)
16297  2db3 a501          	bcp	a,#1
16298  2db5 2720          	jreq	L3756
16299                     ; 3785 		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability Change Interrupt ...\r\n"));
16301  2db7 ae151b        	ldw	x,#L5756
16302  2dba 8d000000      	callf	f_printf
16304                     ; 3787 			if( mhlrxrd(0xB0)&0x01 ){
16306  2dbe a6b0          	ld	a,#176
16307  2dc0 8d1f011f      	callf	L37f_mhlrxrd
16309  2dc4 a501          	bcp	a,#1
16310  2dc6 2708          	jreq	L7756
16311                     ; 3788 				read_devcap_hw(it6802);	  // READ_DEVCAP HardWare mode
16313  2dc8 1e09          	ldw	x,(OFST+1,sp)
16314  2dca 8da51fa5      	callf	L752f_read_devcap_hw
16317  2dce 2007          	jra	L3756
16318  2dd0               L7756:
16319                     ; 3791 				IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability is still not Ready !!! \r\n"));
16321  2dd0 ae14e4        	ldw	x,#L3066
16322  2dd3 8d000000      	callf	f_printf
16324  2dd7               L3756:
16325                     ; 3794 	if( MHLA0&0x02 ) {
16327  2dd7 7b04          	ld	a,(OFST-4,sp)
16328  2dd9 a502          	bcp	a,#2
16329  2ddb 2604          	jrne	L065
16330  2ddd ac702e70      	jpf	L5066
16331  2de1               L065:
16332                     ; 3795 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL DSCR_CHG Interrupt ......\r\n"));
16334  2de1 ae14bd        	ldw	x,#L7066
16335  2de4 8d000000      	callf	f_printf
16337                     ; 3797          mhlrxbrd(0xC0, 16, &(it6802->rxscrpad[0]));
16339  2de8 1e09          	ldw	x,(OFST+1,sp)
16340  2dea 1c005c        	addw	x,#92
16341  2ded 89            	pushw	x
16342  2dee ae0010        	ldw	x,#16
16343  2df1 a6c0          	ld	a,#192
16344  2df3 95            	ld	xh,a
16345  2df4 8dd101d1      	callf	L101f_mhlrxbrd
16347  2df8 85            	popw	x
16348                     ; 3799          rddata = mhlrxrd(0x64);
16350  2df9 a664          	ld	a,#100
16351  2dfb 8d1f011f      	callf	L37f_mhlrxrd
16353  2dff 6b07          	ld	(OFST-1,sp),a
16354                     ; 3801          for(i=0; i<rddata; i++)
16356  2e01 0f08          	clr	(OFST+0,sp)
16358  2e03 201b          	jra	L5166
16359  2e05               L1166:
16360                     ; 3802              MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, it6802->rxscrpad[i]));
16362  2e05 7b09          	ld	a,(OFST+1,sp)
16363  2e07 97            	ld	xl,a
16364  2e08 7b0a          	ld	a,(OFST+2,sp)
16365  2e0a 1b08          	add	a,(OFST+0,sp)
16366  2e0c 2401          	jrnc	L655
16367  2e0e 5c            	incw	x
16368  2e0f               L655:
16369  2e0f 02            	rlwa	x,a
16370  2e10 e65c          	ld	a,(92,x)
16371  2e12 88            	push	a
16372  2e13 7b09          	ld	a,(OFST+1,sp)
16373  2e15 88            	push	a
16374  2e16 ae149c        	ldw	x,#L1266
16375  2e19 8d000000      	callf	f_printf
16377  2e1d 85            	popw	x
16378                     ; 3801          for(i=0; i<rddata; i++)
16380  2e1e 0c08          	inc	(OFST+0,sp)
16381  2e20               L5166:
16384  2e20 7b08          	ld	a,(OFST+0,sp)
16385  2e22 1107          	cp	a,(OFST-1,sp)
16386  2e24 25df          	jrult	L1166
16387                     ; 3804          if( rddata>16 )
16389  2e26 7b07          	ld	a,(OFST-1,sp)
16390  2e28 a111          	cp	a,#17
16391  2e2a 2507          	jrult	L3266
16392                     ; 3805              MHLRX_DEBUG_PRINTF(printf("ERROR: Receive Scratch Pad Data > 16 bytes !!!\r\n"));
16394  2e2c ae146b        	ldw	x,#L5266
16395  2e2f 8d000000      	callf	f_printf
16397  2e33               L3266:
16398                     ; 3807          if( it6802->rxscrpad[0]!=mhlrxrd(0x83) || it6802->rxscrpad[1]!=mhlrxrd(0x84) ) {
16400  2e33 a683          	ld	a,#131
16401  2e35 8d1f011f      	callf	L37f_mhlrxrd
16403  2e39 6b01          	ld	(OFST-7,sp),a
16404  2e3b 1e09          	ldw	x,(OFST+1,sp)
16405  2e3d e65c          	ld	a,(92,x)
16406  2e3f 1101          	cp	a,(OFST-7,sp)
16407  2e41 2610          	jrne	L1366
16409  2e43 a684          	ld	a,#132
16410  2e45 8d1f011f      	callf	L37f_mhlrxrd
16412  2e49 6b01          	ld	(OFST-7,sp),a
16413  2e4b 1e09          	ldw	x,(OFST+1,sp)
16414  2e4d e65d          	ld	a,(93,x)
16415  2e4f 1101          	cp	a,(OFST-7,sp)
16416  2e51 271d          	jreq	L5066
16417  2e53               L1366:
16418                     ; 3808              MHLRX_DEBUG_PRINTF(printf("Adopter ID = 0x%02X %02X\r\n", mhlrxrd(0x83), mhlrxrd(0x84)));
16420  2e53 a684          	ld	a,#132
16421  2e55 8d1f011f      	callf	L37f_mhlrxrd
16423  2e59 88            	push	a
16424  2e5a a683          	ld	a,#131
16425  2e5c 8d1f011f      	callf	L37f_mhlrxrd
16427  2e60 88            	push	a
16428  2e61 ae1450        	ldw	x,#L3366
16429  2e64 8d000000      	callf	f_printf
16431  2e68 85            	popw	x
16432                     ; 3809              MHLRX_DEBUG_PRINTF(printf("ERROR: Adopter ID Mismatch !!!\r\n"));
16434  2e69 ae142f        	ldw	x,#L5366
16435  2e6c 8d000000      	callf	f_printf
16437  2e70               L5066:
16438                     ; 3815 	if( MHLA0&0x04 ) {
16440  2e70 7b04          	ld	a,(OFST-4,sp)
16441  2e72 a504          	bcp	a,#4
16442  2e74 2740          	jreq	L7366
16443                     ; 3817 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL REQ_WRT Interrupt  ...\r\n"));
16445  2e76 ae140b        	ldw	x,#L1466
16446  2e79 8d000000      	callf	f_printf
16448                     ; 3819 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set GRT_WRT to 1  ...\r\n"));
16450  2e7d ae13ec        	ldw	x,#L3466
16451  2e80 8d000000      	callf	f_printf
16453                     ; 3821 		set_mhlint(MHLInt00B, GRT_WRT);
16455  2e84 ae0008        	ldw	x,#8
16456  2e87 a620          	ld	a,#32
16457  2e89 95            	ld	xh,a
16458  2e8a 8d202020      	callf	L162f_set_mhlint
16460                     ; 3823          rddata = mhlrxrd(0x64);
16462  2e8e a664          	ld	a,#100
16463  2e90 8d1f011f      	callf	L37f_mhlrxrd
16465  2e94 6b07          	ld	(OFST-1,sp),a
16466                     ; 3825          for(i=0; i<rddata; i++)
16468  2e96 0f08          	clr	(OFST+0,sp)
16470  2e98 2016          	jra	L1566
16471  2e9a               L5466:
16472                     ; 3826              MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, mhlrxrd(0xc0+i)));
16474  2e9a 7b08          	ld	a,(OFST+0,sp)
16475  2e9c abc0          	add	a,#192
16476  2e9e 8d1f011f      	callf	L37f_mhlrxrd
16478  2ea2 88            	push	a
16479  2ea3 7b09          	ld	a,(OFST+1,sp)
16480  2ea5 88            	push	a
16481  2ea6 ae149c        	ldw	x,#L1266
16482  2ea9 8d000000      	callf	f_printf
16484  2ead 85            	popw	x
16485                     ; 3825          for(i=0; i<rddata; i++)
16487  2eae 0c08          	inc	(OFST+0,sp)
16488  2eb0               L1566:
16491  2eb0 7b08          	ld	a,(OFST+0,sp)
16492  2eb2 1107          	cp	a,(OFST-1,sp)
16493  2eb4 25e4          	jrult	L5466
16494  2eb6               L7366:
16495                     ; 3831 	if( MHLA0&0x08 ) {
16497  2eb6 7b04          	ld	a,(OFST-4,sp)
16498  2eb8 a508          	bcp	a,#8
16499  2eba 2604ac3d2f3d  	jreq	L5566
16500                     ; 3833 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-[**]MHL GNT_WRT Interrupt  ...\r\n"));
16502  2ec0 ae13c4        	ldw	x,#L7566
16503  2ec3 8d000000      	callf	f_printf
16505                     ; 3836          MHLRX_DEBUG_PRINTF(printf("MHL GNT_WRT Interrupt (TxSeqNum=%d) ...\r\n", TxWrBstSeq));
16507  2ec7 3b0001        	push	_TxWrBstSeq
16508  2eca ae139a        	ldw	x,#L1666
16509  2ecd 8d000000      	callf	f_printf
16511  2ed1 84            	pop	a
16512                     ; 3837 		 if( EnMHL3DSupport==TRUE ) {
16514  2ed2 c60003        	ld	a,_EnMHL3DSupport
16515  2ed5 a101          	cp	a,#1
16516  2ed7 2642          	jrne	L3666
16517                     ; 3838 		     if( V3D_EntryCnt==0 )
16519  2ed9 725d0000      	tnz	_V3D_EntryCnt
16520  2edd 2608          	jrne	L5666
16521                     ; 3839                  v3d_burst1st(it6802);
16523  2edf 1e09          	ldw	x,(OFST+1,sp)
16524  2ee1 8dea20ea      	callf	L172f_v3d_burst1st
16527  2ee5 2056          	jra	L5566
16528  2ee7               L5666:
16529                     ; 3840 		     else if( V3D_EntryCnt==1 )
16531  2ee7 c60000        	ld	a,_V3D_EntryCnt
16532  2eea a101          	cp	a,#1
16533  2eec 2608          	jrne	L1766
16534                     ; 3841 				      v3d_burst2nd(it6802);
16536  2eee 1e09          	ldw	x,(OFST+1,sp)
16537  2ef0 8d772177      	callf	L372f_v3d_burst2nd
16540  2ef4 2047          	jra	L5566
16541  2ef6               L1766:
16542                     ; 3842 		     else if( V3D_EntryCnt==2 )
16544  2ef6 c60000        	ld	a,_V3D_EntryCnt
16545  2ef9 a102          	cp	a,#2
16546  2efb 2608          	jrne	L5766
16547                     ; 3843 				      v3d_burst3rd(it6802);
16549  2efd 1e09          	ldw	x,(OFST+1,sp)
16550  2eff 8d042204      	callf	L572f_v3d_burst3rd
16553  2f03 2038          	jra	L5566
16554  2f05               L5766:
16555                     ; 3844 			 else if( V3D_EntryCnt==3 ) {
16557  2f05 c60000        	ld	a,_V3D_EntryCnt
16558  2f08 a103          	cp	a,#3
16559  2f0a 2631          	jrne	L5566
16560                     ; 3845 				      v3d_burst4th(it6802);
16562  2f0c 1e09          	ldw	x,(OFST+1,sp)
16563  2f0e 8d912291      	callf	L772f_v3d_burst4th
16565                     ; 3846 			 		  MHLRX_DEBUG_PRINTF(printf(" ### 3D supporpt Write_Burst End ###\r\n"));
16567  2f12 ae1373        	ldw	x,#L3076
16568  2f15 8d000000      	callf	f_printf
16570  2f19 2022          	jra	L5566
16571  2f1b               L3666:
16572                     ; 3850 			 if( V3D_EntryCnt==0 )
16574  2f1b 725d0000      	tnz	_V3D_EntryCnt
16575  2f1f 2608          	jrne	L7076
16576                     ; 3851 				 v3d_unsupport1st(it6802);
16578  2f21 1e09          	ldw	x,(OFST+1,sp)
16579  2f23 8d142314      	callf	L103f_v3d_unsupport1st
16582  2f27 2014          	jra	L5566
16583  2f29               L7076:
16584                     ; 3852 			 else if( V3D_EntryCnt==1 ) {
16586  2f29 c60000        	ld	a,_V3D_EntryCnt
16587  2f2c a101          	cp	a,#1
16588  2f2e 260d          	jrne	L5566
16589                     ; 3853 				      v3d_unsupport2nd(it6802);
16591  2f30 1e09          	ldw	x,(OFST+1,sp)
16592  2f32 8d792379      	callf	L303f_v3d_unsupport2nd
16594                     ; 3854 				      MHLRX_DEBUG_PRINTF(printf(" ### 3D Un-Support Write_Burst End ###\r\n"));
16596  2f36 ae134a        	ldw	x,#L5176
16597  2f39 8d000000      	callf	f_printf
16599  2f3d               L5566:
16600                     ; 3862      if( MHLA0&0x10 ) {
16602  2f3d 7b04          	ld	a,(OFST-4,sp)
16603  2f3f a510          	bcp	a,#16
16604  2f41 2726          	jreq	L7176
16605                     ; 3863          mhlrxwr(0xA0, 0x10);
16607  2f43 ae0010        	ldw	x,#16
16608  2f46 a6a0          	ld	a,#160
16609  2f48 95            	ld	xh,a
16610  2f49 8d600160      	callf	L57f_mhlrxwr
16612                     ; 3865          MHLRX_DEBUG_PRINTF(printf("3D Request Interrupt ...\r\n"));
16614  2f4d ae132f        	ldw	x,#L1276
16615  2f50 8d000000      	callf	f_printf
16617                     ; 3867 		 if( EnMSCWrBurst3D==TRUE ) {
16619  2f54 c60002        	ld	a,_EnMSCWrBurst3D
16620  2f57 a101          	cp	a,#1
16621  2f59 260e          	jrne	L7176
16622                     ; 3868 			 V3D_EntryCnt = 0;
16624  2f5b 725f0000      	clr	_V3D_EntryCnt
16625                     ; 3869 		     set_mhlint(MHLInt00B, REQ_WRT);
16627  2f5f ae0004        	ldw	x,#4
16628  2f62 a620          	ld	a,#32
16629  2f64 95            	ld	xh,a
16630  2f65 8d202020      	callf	L162f_set_mhlint
16632  2f69               L7176:
16633                     ; 3874 	if( MHLA1&0x02 ) {
16635  2f69 7b03          	ld	a,(OFST-5,sp)
16636  2f6b a502          	bcp	a,#2
16637  2f6d 2707          	jreq	L5276
16638                     ; 3875 		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL EDID Change Interrupt ...\r\n"));
16640  2f6f ae1308        	ldw	x,#L7276
16641  2f72 8d000000      	callf	f_printf
16643  2f76               L5276:
16644                     ; 3878 }
16647  2f76 5b0a          	addw	sp,#10
16648  2f78 87            	retf
16756                     ; 3882 static void IT6802HDMIInterruptHandler(struct it6802_dev_data *it6802)
16756                     ; 3883 {
16757                     	switch	.text
16758  2f79               L733f_IT6802HDMIInterruptHandler:
16760  2f79 89            	pushw	x
16761  2f7a 5208          	subw	sp,#8
16762       00000008      OFST:	set	8
16765                     ; 3893 	chgbank(0);
16767  2f7c 5f            	clrw	x
16768  2f7d 8d440544      	callf	L711f_chgbank
16770                     ; 3895 	Reg05h = hdmirxrd(REG_RX_005);
16772  2f81 a605          	ld	a,#5
16773  2f83 8d390039      	callf	L36f_hdmirxrd
16775  2f87 6b04          	ld	(OFST-4,sp),a
16776                     ; 3896 	Reg06h = hdmirxrd(REG_RX_006);
16778  2f89 a606          	ld	a,#6
16779  2f8b 8d390039      	callf	L36f_hdmirxrd
16781  2f8f 6b05          	ld	(OFST-3,sp),a
16782                     ; 3897 	Reg07h = hdmirxrd(REG_RX_007);
16784  2f91 a607          	ld	a,#7
16785  2f93 8d390039      	callf	L36f_hdmirxrd
16787  2f97 6b06          	ld	(OFST-2,sp),a
16788                     ; 3898 	Reg08h = hdmirxrd(REG_RX_008);
16790  2f99 a608          	ld	a,#8
16791  2f9b 8d390039      	callf	L36f_hdmirxrd
16793  2f9f 6b07          	ld	(OFST-1,sp),a
16794                     ; 3899 	Reg09h = hdmirxrd(REG_RX_009);
16796  2fa1 a609          	ld	a,#9
16797  2fa3 8d390039      	callf	L36f_hdmirxrd
16799  2fa7 6b08          	ld	(OFST+0,sp),a
16800                     ; 3901 	Reg0Ah = hdmirxrd(REG_RX_P0_SYS_STATUS);
16802  2fa9 a60a          	ld	a,#10
16803  2fab 8d390039      	callf	L36f_hdmirxrd
16805  2faf 6b02          	ld	(OFST-6,sp),a
16806                     ; 3902 	Reg0Bh = hdmirxrd(REG_RX_P1_SYS_STATUS);
16808  2fb1 a60b          	ld	a,#11
16809  2fb3 8d390039      	callf	L36f_hdmirxrd
16811                     ; 3903 	RegD0h = hdmirxrd(REG_RX_0D0);
16813  2fb7 a6d0          	ld	a,#208
16814  2fb9 8d390039      	callf	L36f_hdmirxrd
16816  2fbd 6b03          	ld	(OFST-5,sp),a
16817                     ; 3905 	hdmirxwr(REG_RX_005, Reg05h);
16819  2fbf 7b04          	ld	a,(OFST-4,sp)
16820  2fc1 97            	ld	xl,a
16821  2fc2 a605          	ld	a,#5
16822  2fc4 95            	ld	xh,a
16823  2fc5 8d690069      	callf	L56f_hdmirxwr
16825                     ; 3906 	hdmirxwr(REG_RX_006, Reg06h);
16827  2fc9 7b05          	ld	a,(OFST-3,sp)
16828  2fcb 97            	ld	xl,a
16829  2fcc a606          	ld	a,#6
16830  2fce 95            	ld	xh,a
16831  2fcf 8d690069      	callf	L56f_hdmirxwr
16833                     ; 3907 	hdmirxwr(REG_RX_007, Reg07h);
16835  2fd3 7b06          	ld	a,(OFST-2,sp)
16836  2fd5 97            	ld	xl,a
16837  2fd6 a607          	ld	a,#7
16838  2fd8 95            	ld	xh,a
16839  2fd9 8d690069      	callf	L56f_hdmirxwr
16841                     ; 3908 	hdmirxwr(REG_RX_008, Reg08h);
16843  2fdd 7b07          	ld	a,(OFST-1,sp)
16844  2fdf 97            	ld	xl,a
16845  2fe0 a608          	ld	a,#8
16846  2fe2 95            	ld	xh,a
16847  2fe3 8d690069      	callf	L56f_hdmirxwr
16849                     ; 3909 	hdmirxwr(REG_RX_009, Reg09h);
16851  2fe7 7b08          	ld	a,(OFST+0,sp)
16852  2fe9 97            	ld	xl,a
16853  2fea a609          	ld	a,#9
16854  2fec 95            	ld	xh,a
16855  2fed 8d690069      	callf	L56f_hdmirxwr
16857                     ; 3910 	hdmirxwr(REG_RX_0D0, RegD0h);
16859  2ff1 7b03          	ld	a,(OFST-5,sp)
16860  2ff3 97            	ld	xl,a
16861  2ff4 a6d0          	ld	a,#208
16862  2ff6 95            	ld	xh,a
16863  2ff7 8d690069      	callf	L56f_hdmirxwr
16865                     ; 3912      if( Reg05h!=0x00 ) {
16867  2ffb 0d04          	tnz	(OFST-4,sp)
16868  2ffd 2604          	jrne	L465
16869  2fff ac903090      	jpf	L1776
16870  3003               L465:
16871                     ; 3913 		 if( Reg05h&0x80 ) {
16873  3003 7b04          	ld	a,(OFST-4,sp)
16874  3005 a580          	bcp	a,#128
16875  3007 270b          	jreq	L3776
16876                     ; 3914 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Off Detected ###\r\n"));
16878  3009 ae12e4        	ldw	x,#L5776
16879  300c 8d000000      	callf	f_printf
16881                     ; 3915 			it6802->m_ucEccCount_P0=0;
16883  3010 1e09          	ldw	x,(OFST+1,sp)
16884  3012 6f15          	clr	(21,x)
16885  3014               L3776:
16886                     ; 3918 		 if( Reg05h&0x40 ) {
16888  3014 7b04          	ld	a,(OFST-4,sp)
16889  3016 a540          	bcp	a,#64
16890  3018 270d          	jreq	L7776
16891                     ; 3919 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 ECC Error ####\r\n"));
16893  301a ae12c7        	ldw	x,#L1007
16894  301d 8d000000      	callf	f_printf
16896                     ; 3920 			hdmirx_INT_P0_ECC(it6802);
16898  3021 1e09          	ldw	x,(OFST+1,sp)
16899  3023 8dc711c7      	callf	L512f_hdmirx_INT_P0_ECC
16901  3027               L7776:
16902                     ; 3923 		 if( Reg05h&0x20 ) {
16904  3027 7b04          	ld	a,(OFST-4,sp)
16905  3029 a520          	bcp	a,#32
16906  302b 270d          	jreq	L3007
16907                     ; 3925 		     MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDMI/DVI Mode change ####\r\n"));
16909  302d ae129f        	ldw	x,#L5007
16910  3030 8d000000      	callf	f_printf
16912                     ; 3926 			hdmirx_INT_HDMIMode_Chg(it6802);
16914  3034 1e09          	ldw	x,(OFST+1,sp)
16915  3036 8d771277      	callf	L522f_hdmirx_INT_HDMIMode_Chg
16917  303a               L3007:
16918                     ; 3930 		 if( Reg05h&0x08 ) {
16920  303a 7b04          	ld	a,(OFST-4,sp)
16921  303c a508          	bcp	a,#8
16922  303e 270b          	jreq	L7007
16923                     ; 3931 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Start ####\r\n"));
16925  3040 ae1272        	ldw	x,#L1107
16926  3043 8d000000      	callf	f_printf
16928                     ; 3932 			it6802->m_ucEccCount_P0=0;
16930  3047 1e09          	ldw	x,(OFST+1,sp)
16931  3049 6f15          	clr	(21,x)
16932  304b               L7007:
16933                     ; 3935 		 if( Reg05h&0x10 ) {
16935  304b 7b04          	ld	a,(OFST-4,sp)
16936  304d a510          	bcp	a,#16
16937  304f 2707          	jreq	L3107
16938                     ; 3936 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Done ####\r\n"));
16940  3051 ae1246        	ldw	x,#L5107
16941  3054 8d000000      	callf	f_printf
16943  3058               L3107:
16944                     ; 3939 		 if( Reg05h&0x04 ) {
16946  3058 7b04          	ld	a,(OFST-4,sp)
16947  305a a504          	bcp	a,#4
16948  305c 2707          	jreq	L7107
16949                     ; 3940 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Input Clock Change Detect ####\r\n"));
16951  305e ae1219        	ldw	x,#L1207
16952  3061 8d000000      	callf	f_printf
16954  3065               L7107:
16955                     ; 3943 		 if( Reg05h&0x02 ) {
16957  3065 7b04          	ld	a,(OFST-4,sp)
16958  3067 a502          	bcp	a,#2
16959  3069 270f          	jreq	L3207
16960                     ; 3944 	             MHLRX_DEBUG_PRINTF(printf("#### Port 0 Rx CKOn Detect ####\r\n"));
16962  306b ae11f7        	ldw	x,#L5207
16963  306e 8d000000      	callf	f_printf
16965                     ; 3945 			it6802->m_ucEccCount_P0=0;
16967  3072 1e09          	ldw	x,(OFST+1,sp)
16968  3074 6f15          	clr	(21,x)
16969                     ; 3946 			it6802->m_ucDeskew_P0=0;
16971  3076 1e09          	ldw	x,(OFST+1,sp)
16972  3078 6f17          	clr	(23,x)
16973  307a               L3207:
16974                     ; 3952 		 if( Reg05h&0x01 ) {
16976  307a 7b04          	ld	a,(OFST-4,sp)
16977  307c a501          	bcp	a,#1
16978  307e 2710          	jreq	L1776
16979                     ; 3953 			MHLRX_DEBUG_PRINTF(printf("#### Port 0 Power 5V change ####\r\n"));
16981  3080 ae11d4        	ldw	x,#L1307
16982  3083 8d000000      	callf	f_printf
16984                     ; 3954 			hdmirx_INT_5V_Pwr_Chg(it6802,0);
16986  3087 4b00          	push	#0
16987  3089 1e0a          	ldw	x,(OFST+2,sp)
16988  308b 8d871187      	callf	L312f_hdmirx_INT_5V_Pwr_Chg
16990  308f 84            	pop	a
16991  3090               L1776:
16992                     ; 3958      if( Reg06h!=0x00 ) {
16994  3090 0d05          	tnz	(OFST-3,sp)
16995  3092 2604          	jrne	L665
16996  3094 ac253125      	jpf	L3307
16997  3098               L665:
16998                     ; 3959 		 if( Reg06h&0x80 ) {
17000  3098 7b05          	ld	a,(OFST-3,sp)
17001  309a a580          	bcp	a,#128
17002  309c 270b          	jreq	L5307
17003                     ; 3960 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Off Detected ###\r\n"));
17005  309e ae11b0        	ldw	x,#L7307
17006  30a1 8d000000      	callf	f_printf
17008                     ; 3961 			it6802->m_ucEccCount_P1=0;
17010  30a5 1e09          	ldw	x,(OFST+1,sp)
17011  30a7 6f16          	clr	(22,x)
17012  30a9               L5307:
17013                     ; 3965 		 if( Reg06h&0x40 ) {
17015  30a9 7b05          	ld	a,(OFST-3,sp)
17016  30ab a540          	bcp	a,#64
17017  30ad 270d          	jreq	L1407
17018                     ; 3966 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 ECC Error ####\r\n"));
17020  30af ae1193        	ldw	x,#L3407
17021  30b2 8d000000      	callf	f_printf
17023                     ; 3967 			hdmirx_INT_P1_ECC(it6802);
17025  30b6 1e09          	ldw	x,(OFST+1,sp)
17026  30b8 8df311f3      	callf	L712f_hdmirx_INT_P1_ECC
17028  30bc               L1407:
17029                     ; 3970 		 if( Reg06h&0x20 ) {
17031  30bc 7b05          	ld	a,(OFST-3,sp)
17032  30be a520          	bcp	a,#32
17033  30c0 270d          	jreq	L5407
17034                     ; 3971 		     MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDMI/DVI Mode change ####\r\n"));
17036  30c2 ae116b        	ldw	x,#L7407
17037  30c5 8d000000      	callf	f_printf
17039                     ; 3972 			hdmirx_INT_HDMIMode_Chg(it6802);
17041  30c9 1e09          	ldw	x,(OFST+1,sp)
17042  30cb 8d771277      	callf	L522f_hdmirx_INT_HDMIMode_Chg
17044  30cf               L5407:
17045                     ; 3975 		 if( Reg06h&0x10 ) {
17047  30cf 7b05          	ld	a,(OFST-3,sp)
17048  30d1 a510          	bcp	a,#16
17049  30d3 2707          	jreq	L1507
17050                     ; 3976 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Done ####\r\n"));
17052  30d5 ae113f        	ldw	x,#L3507
17053  30d8 8d000000      	callf	f_printf
17055  30dc               L1507:
17056                     ; 3979 		 if( Reg06h&0x08 ) {
17058  30dc 7b05          	ld	a,(OFST-3,sp)
17059  30de a508          	bcp	a,#8
17060  30e0 270b          	jreq	L5507
17061                     ; 3980 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Start ####\r\n"));
17063  30e2 ae1112        	ldw	x,#L7507
17064  30e5 8d000000      	callf	f_printf
17066                     ; 3981 			it6802->m_ucEccCount_P1=0;
17068  30e9 1e09          	ldw	x,(OFST+1,sp)
17069  30eb 6f16          	clr	(22,x)
17070  30ed               L5507:
17071                     ; 3985 		 if( Reg06h&0x04 ) {
17073  30ed 7b05          	ld	a,(OFST-3,sp)
17074  30ef a504          	bcp	a,#4
17075  30f1 2707          	jreq	L1607
17076                     ; 3986 			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 Input Clock Change Detect ####\r\n"));
17078  30f3 ae10e5        	ldw	x,#L3607
17079  30f6 8d000000      	callf	f_printf
17081  30fa               L1607:
17082                     ; 3989 		 if( Reg06h&0x02 ) {
17084  30fa 7b05          	ld	a,(OFST-3,sp)
17085  30fc a502          	bcp	a,#2
17086  30fe 270f          	jreq	L5607
17087                     ; 3990 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Rx CKOn Detect ####\r\n"));
17089  3100 ae10c3        	ldw	x,#L7607
17090  3103 8d000000      	callf	f_printf
17092                     ; 3993 			it6802->m_ucDeskew_P1=0;
17094  3107 1e09          	ldw	x,(OFST+1,sp)
17095  3109 6f18          	clr	(24,x)
17096                     ; 3994 			it6802->m_ucEccCount_P1=0;
17098  310b 1e09          	ldw	x,(OFST+1,sp)
17099  310d 6f16          	clr	(22,x)
17100  310f               L5607:
17101                     ; 3998 		 if( Reg06h&0x01 ) {
17103  310f 7b05          	ld	a,(OFST-3,sp)
17104  3111 a501          	bcp	a,#1
17105  3113 2710          	jreq	L3307
17106                     ; 3999 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Power 5V change ####\r\n"));
17108  3115 ae10a0        	ldw	x,#L3707
17109  3118 8d000000      	callf	f_printf
17111                     ; 4000 			hdmirx_INT_5V_Pwr_Chg(it6802,1);
17113  311c 4b01          	push	#1
17114  311e 1e0a          	ldw	x,(OFST+2,sp)
17115  3120 8d871187      	callf	L312f_hdmirx_INT_5V_Pwr_Chg
17117  3124 84            	pop	a
17118  3125               L3307:
17119                     ; 4005 	 if( Reg07h!=0x00) {
17121  3125 0d06          	tnz	(OFST-2,sp)
17122  3127 2604          	jrne	L075
17123  3129 acb031b0      	jpf	L5707
17124  312d               L075:
17125                     ; 4006 		 if( Reg07h&0x80 ) {
17127  312d 7b06          	ld	a,(OFST-2,sp)
17128  312f a580          	bcp	a,#128
17129  3131 270b          	jreq	L7707
17130                     ; 4007 			 MHLRX_DEBUG_PRINTF(printf("#### Audio FIFO Error ####\r\n"));
17132  3133 ae1083        	ldw	x,#L1017
17133  3136 8d000000      	callf	f_printf
17135                     ; 4008 			 aud_fiforst();
17137  313a 8df60cf6      	callf	L751f_aud_fiforst
17139  313e               L7707:
17140                     ; 4011 		 if( Reg07h&0x40 ) {
17142  313e 7b06          	ld	a,(OFST-2,sp)
17143  3140 a540          	bcp	a,#64
17144  3142 2707          	jreq	L3017
17145                     ; 4012 			 MHLRX_DEBUG_PRINTF(printf("#### Audio Auto Mute ####\r\n"));
17147  3144 ae1067        	ldw	x,#L5017
17148  3147 8d000000      	callf	f_printf
17150  314b               L3017:
17151                     ; 4015 		 if( Reg07h&0x20 ) {
17153  314b 7b06          	ld	a,(OFST-2,sp)
17154  314d a520          	bcp	a,#32
17155  314f 2710          	jreq	L7017
17156                     ; 4016 			 MHLRX_DEBUG_PRINTF(printf("#### Packet Left Mute ####\r\n"));
17158  3151 ae104a        	ldw	x,#L1117
17159  3154 8d000000      	callf	f_printf
17161                     ; 4017 			 IT6802_SetVideoMute(it6802,OFF);
17163  3158 4b00          	push	#0
17164  315a 1e0a          	ldw	x,(OFST+2,sp)
17165  315c 8dbe0fbe      	callf	L302f_IT6802_SetVideoMute
17167  3160 84            	pop	a
17168  3161               L7017:
17169                     ; 4020 		 if( Reg07h&0x10 ) {
17171  3161 7b06          	ld	a,(OFST-2,sp)
17172  3163 a510          	bcp	a,#16
17173  3165 2710          	jreq	L3117
17174                     ; 4021 			 MHLRX_DEBUG_PRINTF(printf("#### Set Mute Packet Received ####\r\n"));
17176  3167 ae1025        	ldw	x,#L5117
17177  316a 8d000000      	callf	f_printf
17179                     ; 4023 			 IT6802_SetVideoMute(it6802,ON);
17181  316e 4b01          	push	#1
17182  3170 1e0a          	ldw	x,(OFST+2,sp)
17183  3172 8dbe0fbe      	callf	L302f_IT6802_SetVideoMute
17185  3176 84            	pop	a
17186  3177               L3117:
17187                     ; 4026 		 if( Reg07h&0x08 ) {
17189  3177 7b06          	ld	a,(OFST-2,sp)
17190  3179 a508          	bcp	a,#8
17191                     ; 4031 		 if( Reg07h&0x04 ) {
17193  317b 7b06          	ld	a,(OFST-2,sp)
17194  317d a504          	bcp	a,#4
17195  317f 2707          	jreq	L1217
17196                     ; 4032 			 MHLRX_DEBUG_PRINTF(printf("#### Video Mode Changed ####\r\n"));
17198  3181 ae1006        	ldw	x,#L3217
17199  3184 8d000000      	callf	f_printf
17201  3188               L1217:
17202                     ; 4035 		 if( Reg07h&0x02 ) {
17204  3188 7b06          	ld	a,(OFST-2,sp)
17205  318a a502          	bcp	a,#2
17206  318c 2706          	jreq	L5217
17207                     ; 4036 			hdmirx_INT_SCDT_Chg(it6802);
17209  318e 1e09          	ldw	x,(OFST+1,sp)
17210  3190 8dcf12cf      	callf	L722f_hdmirx_INT_SCDT_Chg
17212  3194               L5217:
17213                     ; 4039 		 if( Reg07h&0x01 ) {
17215  3194 7b06          	ld	a,(OFST-2,sp)
17216  3196 a501          	bcp	a,#1
17217  3198 2716          	jreq	L5707
17218                     ; 4040 			 if( (Reg0Ah&0x40)>>6 ) {
17220  319a 7b02          	ld	a,(OFST-6,sp)
17221  319c a540          	bcp	a,#64
17222  319e 2709          	jreq	L1317
17223                     ; 4041 				 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : MHL ####\r\n"));
17225  31a0 ae0fe4        	ldw	x,#L3317
17226  31a3 8d000000      	callf	f_printf
17229  31a7 2007          	jra	L5707
17230  31a9               L1317:
17231                     ; 4044 		                 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : HDMI ####\r\n"));
17233  31a9 ae0fc1        	ldw	x,#L7317
17234  31ac 8d000000      	callf	f_printf
17236  31b0               L5707:
17237                     ; 4049 	 if( Reg08h!=0x00) {
17239  31b0 0d07          	tnz	(OFST-1,sp)
17240  31b2 2756          	jreq	L1417
17241                     ; 4050 		 if( Reg08h&0x80 ) {
17243  31b4 7b07          	ld	a,(OFST-1,sp)
17244  31b6 a580          	bcp	a,#128
17245                     ; 4054 		 if( Reg08h&0x40 ) {
17247  31b8 7b07          	ld	a,(OFST-1,sp)
17248  31ba a540          	bcp	a,#64
17249                     ; 4058 		 if( Reg08h&0x20 ) {
17251  31bc 7b07          	ld	a,(OFST-1,sp)
17252  31be a520          	bcp	a,#32
17253  31c0 2707          	jreq	L7417
17254                     ; 4059 			 MHLRX_DEBUG_PRINTF(printf("#### No Audio InfoFrame Received ####\r\n"));
17256  31c2 ae0f99        	ldw	x,#L1517
17257  31c5 8d000000      	callf	f_printf
17259  31c9               L7417:
17260                     ; 4062 		 if( Reg08h&0x10) {
17262  31c9 7b07          	ld	a,(OFST-1,sp)
17263  31cb a510          	bcp	a,#16
17264  31cd 2707          	jreq	L3517
17265                     ; 4063 			 MHLRX_DEBUG_PRINTF(printf("#### No AVI InfoFrame Received ####\r\n"));
17267  31cf ae0f73        	ldw	x,#L5517
17268  31d2 8d000000      	callf	f_printf
17270  31d6               L3517:
17271                     ; 4066 		 if( Reg08h&0x08 ) {
17273  31d6 7b07          	ld	a,(OFST-1,sp)
17274  31d8 a508          	bcp	a,#8
17275  31da 2707          	jreq	L7517
17276                     ; 4067 			 MHLRX_DEBUG_PRINTF(printf("#### CD Detect ####\r\n"));
17278  31dc ae0f5d        	ldw	x,#L1617
17279  31df 8d000000      	callf	f_printf
17281  31e3               L7517:
17282                     ; 4071 		 if( Reg08h&0x04 ) {
17284  31e3 7b07          	ld	a,(OFST-1,sp)
17285  31e5 a504          	bcp	a,#4
17286  31e7 2707          	jreq	L3617
17287                     ; 4073 			 MHLRX_DEBUG_PRINTF(printf("#### 3D InfoFrame Detect ####\r\n"));
17289  31e9 ae0f3d        	ldw	x,#L5617
17290  31ec 8d000000      	callf	f_printf
17292  31f0               L3617:
17293                     ; 4084 		 if( Reg08h&0x02 ) {
17295  31f0 7b07          	ld	a,(OFST-1,sp)
17296  31f2 a502          	bcp	a,#2
17297  31f4 2707          	jreq	L7617
17298                     ; 4085 			 MHLRX_DEBUG_PRINTF(printf("#### ISRC2 Detect ####\r\n"));
17300  31f6 ae0f24        	ldw	x,#L1717
17301  31f9 8d000000      	callf	f_printf
17303  31fd               L7617:
17304                     ; 4088 		 if( Reg08h&0x01 ) {
17306  31fd 7b07          	ld	a,(OFST-1,sp)
17307  31ff a501          	bcp	a,#1
17308  3201 2707          	jreq	L1417
17309                     ; 4089 			 MHLRX_DEBUG_PRINTF(printf("#### ISRC1 Detect ####\r\n"));
17311  3203 ae0f0b        	ldw	x,#L5717
17312  3206 8d000000      	callf	f_printf
17314  320a               L1417:
17315                     ; 4093 	 if( Reg09h!=0x00 ) {
17317  320a 0d08          	tnz	(OFST+0,sp)
17318  320c 2604          	jrne	L275
17319  320e aca232a2      	jpf	L7717
17320  3212               L275:
17321                     ; 4094          if( Reg09h&0x80 ) {
17323  3212 7b08          	ld	a,(OFST+0,sp)
17324  3214 a580          	bcp	a,#128
17325  3216 2707          	jreq	L1027
17326                     ; 4095 			 MHLRX_DEBUG_PRINTF(printf("#### H2V Buffer Skew Fail ####\r\n"));
17328  3218 ae0eea        	ldw	x,#L3027
17329  321b 8d000000      	callf	f_printf
17331  321f               L1027:
17332                     ; 4098 		 if( Reg09h&0x40 ) {
17334  321f 7b08          	ld	a,(OFST+0,sp)
17335  3221 a540          	bcp	a,#64
17336  3223 2717          	jreq	L5027
17337                     ; 4100 			hdmirxwr(0x09, 0x20); //bug ~ need to update by Andrew
17339  3225 ae0020        	ldw	x,#32
17340  3228 a609          	ld	a,#9
17341  322a 95            	ld	xh,a
17342  322b 8d690069      	callf	L56f_hdmirxwr
17344                     ; 4101 			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Deskew Error ####\r\n"));
17346  322f ae0eca        	ldw	x,#L7027
17347  3232 8d000000      	callf	f_printf
17349                     ; 4102 			hdmirx_INT_P1_Deskew(it6802);
17351  3236 1e09          	ldw	x,(OFST+1,sp)
17352  3238 8d4b124b      	callf	L322f_hdmirx_INT_P1_Deskew
17354  323c               L5027:
17355                     ; 4105 		 if( Reg09h&0x20 ) {
17357  323c 7b08          	ld	a,(OFST+0,sp)
17358  323e a520          	bcp	a,#32
17359  3240 2717          	jreq	L1127
17360                     ; 4106 			 hdmirxwr(0x09, 0x20);
17362  3242 ae0020        	ldw	x,#32
17363  3245 a609          	ld	a,#9
17364  3247 95            	ld	xh,a
17365  3248 8d690069      	callf	L56f_hdmirxwr
17367                     ; 4107 			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Deskew Error ####\r\n"));
17369  324c ae0eaa        	ldw	x,#L3127
17370  324f 8d000000      	callf	f_printf
17372                     ; 4108 			hdmirx_INT_P0_Deskew(it6802);
17374  3253 1e09          	ldw	x,(OFST+1,sp)
17375  3255 8d1f121f      	callf	L122f_hdmirx_INT_P0_Deskew
17377  3259               L1127:
17378                     ; 4111 		 if( Reg09h&0x10 ) {
17380  3259 7b08          	ld	a,(OFST+0,sp)
17381  325b a510          	bcp	a,#16
17382  325d 2707          	jreq	L5127
17383                     ; 4112 			 MHLRX_DEBUG_PRINTF(printf("#### New Audio Packet Received ####\r\n"));
17385  325f ae0e84        	ldw	x,#L7127
17386  3262 8d000000      	callf	f_printf
17388  3266               L5127:
17389                     ; 4115 		 if( Reg09h&0x08 ) {
17391  3266 7b08          	ld	a,(OFST+0,sp)
17392  3268 a508          	bcp	a,#8
17393  326a 2707          	jreq	L1227
17394                     ; 4116 			 MHLRX_DEBUG_PRINTF(printf("#### New ACP Packet Received ####\r\n"));
17396  326c ae0e60        	ldw	x,#L3227
17397  326f 8d000000      	callf	f_printf
17399  3273               L1227:
17400                     ; 4119 		 if( Reg09h&0x04 ) {
17402  3273 7b08          	ld	a,(OFST+0,sp)
17403  3275 a504          	bcp	a,#4
17404  3277 2707          	jreq	L5227
17405                     ; 4120 			 MHLRX_DEBUG_PRINTF(printf("#### New SPD Packet Received ####\r\n"));
17407  3279 ae0e3c        	ldw	x,#L7227
17408  327c 8d000000      	callf	f_printf
17410  3280               L5227:
17411                     ; 4123 		 if( Reg09h&0x02) {
17413  3280 7b08          	ld	a,(OFST+0,sp)
17414  3282 a502          	bcp	a,#2
17415  3284 2707          	jreq	L1327
17416                     ; 4124 			 MHLRX_DEBUG_PRINTF(printf("#### New MPEG InfoFrame Received ####\r\n"));
17418  3286 ae0e14        	ldw	x,#L3327
17419  3289 8d000000      	callf	f_printf
17421  328d               L1327:
17422                     ; 4127 		 if( Reg09h&0x01) {
17424  328d 7b08          	ld	a,(OFST+0,sp)
17425  328f a501          	bcp	a,#1
17426  3291 270f          	jreq	L7717
17427                     ; 4128 			 MHLRX_DEBUG_PRINTF(printf("#### New AVI InfoFrame Received ####\r\n"));
17429  3293 ae0ded        	ldw	x,#L7327
17430  3296 8d000000      	callf	f_printf
17432                     ; 4130 			it6802->m_NewAVIInfoFrameF=TRUE;
17434  329a 1e09          	ldw	x,(OFST+1,sp)
17435  329c e675          	ld	a,(117,x)
17436  329e aa20          	or	a,#32
17437  32a0 e775          	ld	(117,x),a
17438  32a2               L7717:
17439                     ; 4136  if( RegD0h&0x10 ) {
17441  32a2 7b03          	ld	a,(OFST-5,sp)
17442  32a4 a510          	bcp	a,#16
17443  32a6 2604ac2b332b  	jreq	L1427
17444                     ; 4137 	 MHLRX_DEBUG_PRINTF(printf("#### Port 0 EQ done interrupt ####\r\n"));
17446  32ac ae0dc8        	ldw	x,#L3427
17447  32af 8d000000      	callf	f_printf
17449                     ; 4138 	chgbank(1);
17451  32b3 ae0001        	ldw	x,#1
17452  32b6 8d440544      	callf	L711f_chgbank
17454                     ; 4139 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_B_CS=%02bX  P0_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D5)&0x80)>>7 , (hdmirxrd(REG_RX_1D5)&0x7F)));
17456  32ba a6d5          	ld	a,#213
17457  32bc 8d390039      	callf	L36f_hdmirxrd
17459  32c0 5f            	clrw	x
17460  32c1 a47f          	and	a,#127
17461  32c3 5f            	clrw	x
17462  32c4 02            	rlwa	x,a
17463  32c5 89            	pushw	x
17464  32c6 01            	rrwa	x,a
17465  32c7 a6d5          	ld	a,#213
17466  32c9 8d390039      	callf	L36f_hdmirxrd
17468  32cd a480          	and	a,#128
17469  32cf 49            	rlc	a
17470  32d0 4f            	clr	a
17471  32d1 49            	rlc	a
17472  32d2 5f            	clrw	x
17473  32d3 97            	ld	xl,a
17474  32d4 89            	pushw	x
17475  32d5 ae0d9e        	ldw	x,#L5427
17476  32d8 8d000000      	callf	f_printf
17478  32dc 5b04          	addw	sp,#4
17479                     ; 4140 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_G_CS=%02bX  P0_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D6)&0x80)>>7 , (hdmirxrd(REG_RX_1D6)&0x7F)));
17481  32de a6d6          	ld	a,#214
17482  32e0 8d390039      	callf	L36f_hdmirxrd
17484  32e4 5f            	clrw	x
17485  32e5 a47f          	and	a,#127
17486  32e7 5f            	clrw	x
17487  32e8 02            	rlwa	x,a
17488  32e9 89            	pushw	x
17489  32ea 01            	rrwa	x,a
17490  32eb a6d6          	ld	a,#214
17491  32ed 8d390039      	callf	L36f_hdmirxrd
17493  32f1 a480          	and	a,#128
17494  32f3 49            	rlc	a
17495  32f4 4f            	clr	a
17496  32f5 49            	rlc	a
17497  32f6 5f            	clrw	x
17498  32f7 97            	ld	xl,a
17499  32f8 89            	pushw	x
17500  32f9 ae0d74        	ldw	x,#L7427
17501  32fc 8d000000      	callf	f_printf
17503  3300 5b04          	addw	sp,#4
17504                     ; 4141 	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_R_CS=%02bX  P0_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D7)&0x80)>>7 , (hdmirxrd(REG_RX_1D7)&0x7F)));
17506  3302 a6d7          	ld	a,#215
17507  3304 8d390039      	callf	L36f_hdmirxrd
17509  3308 5f            	clrw	x
17510  3309 a47f          	and	a,#127
17511  330b 5f            	clrw	x
17512  330c 02            	rlwa	x,a
17513  330d 89            	pushw	x
17514  330e 01            	rrwa	x,a
17515  330f a6d7          	ld	a,#215
17516  3311 8d390039      	callf	L36f_hdmirxrd
17518  3315 a480          	and	a,#128
17519  3317 49            	rlc	a
17520  3318 4f            	clr	a
17521  3319 49            	rlc	a
17522  331a 5f            	clrw	x
17523  331b 97            	ld	xl,a
17524  331c 89            	pushw	x
17525  331d ae0d4a        	ldw	x,#L1527
17526  3320 8d000000      	callf	f_printf
17528  3324 5b04          	addw	sp,#4
17529                     ; 4142 	chgbank(0);
17531  3326 5f            	clrw	x
17532  3327 8d440544      	callf	L711f_chgbank
17534  332b               L1427:
17535                     ; 4146  if( RegD0h&0x40 ) {
17537  332b 7b03          	ld	a,(OFST-5,sp)
17538  332d a540          	bcp	a,#64
17539  332f 2604acb433b4  	jreq	L3527
17540                     ; 4147 	chgbank(1);
17542  3335 ae0001        	ldw	x,#1
17543  3338 8d440544      	callf	L711f_chgbank
17545                     ; 4148 	 MHLRX_DEBUG_PRINTF(printf("#### Port 1 EQ done interrupt ####\r\n"));
17547  333c ae0d25        	ldw	x,#L5527
17548  333f 8d000000      	callf	f_printf
17550                     ; 4149 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_B_CS=%02bX  P1_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DD)&0x80)>>7 , (hdmirxrd(REG_RX_1DD)&0x7F)));
17552  3343 a6dd          	ld	a,#221
17553  3345 8d390039      	callf	L36f_hdmirxrd
17555  3349 5f            	clrw	x
17556  334a a47f          	and	a,#127
17557  334c 5f            	clrw	x
17558  334d 02            	rlwa	x,a
17559  334e 89            	pushw	x
17560  334f 01            	rrwa	x,a
17561  3350 a6dd          	ld	a,#221
17562  3352 8d390039      	callf	L36f_hdmirxrd
17564  3356 a480          	and	a,#128
17565  3358 49            	rlc	a
17566  3359 4f            	clr	a
17567  335a 49            	rlc	a
17568  335b 5f            	clrw	x
17569  335c 97            	ld	xl,a
17570  335d 89            	pushw	x
17571  335e ae0cfb        	ldw	x,#L7527
17572  3361 8d000000      	callf	f_printf
17574  3365 5b04          	addw	sp,#4
17575                     ; 4150 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_G_CS=%02bX  P1_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DE)&0x80)>>7 , (hdmirxrd(REG_RX_1DE)&0x7F)));
17577  3367 a6de          	ld	a,#222
17578  3369 8d390039      	callf	L36f_hdmirxrd
17580  336d 5f            	clrw	x
17581  336e a47f          	and	a,#127
17582  3370 5f            	clrw	x
17583  3371 02            	rlwa	x,a
17584  3372 89            	pushw	x
17585  3373 01            	rrwa	x,a
17586  3374 a6de          	ld	a,#222
17587  3376 8d390039      	callf	L36f_hdmirxrd
17589  337a a480          	and	a,#128
17590  337c 49            	rlc	a
17591  337d 4f            	clr	a
17592  337e 49            	rlc	a
17593  337f 5f            	clrw	x
17594  3380 97            	ld	xl,a
17595  3381 89            	pushw	x
17596  3382 ae0cd1        	ldw	x,#L1627
17597  3385 8d000000      	callf	f_printf
17599  3389 5b04          	addw	sp,#4
17600                     ; 4151 	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_R_CS=%02bX  P1_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DF)&0x80)>>7 , (hdmirxrd(REG_RX_1DF)&0x7F)));
17602  338b a6df          	ld	a,#223
17603  338d 8d390039      	callf	L36f_hdmirxrd
17605  3391 5f            	clrw	x
17606  3392 a47f          	and	a,#127
17607  3394 5f            	clrw	x
17608  3395 02            	rlwa	x,a
17609  3396 89            	pushw	x
17610  3397 01            	rrwa	x,a
17611  3398 a6df          	ld	a,#223
17612  339a 8d390039      	callf	L36f_hdmirxrd
17614  339e a480          	and	a,#128
17615  33a0 49            	rlc	a
17616  33a1 4f            	clr	a
17617  33a2 49            	rlc	a
17618  33a3 5f            	clrw	x
17619  33a4 97            	ld	xl,a
17620  33a5 89            	pushw	x
17621  33a6 ae0ca7        	ldw	x,#L3627
17622  33a9 8d000000      	callf	f_printf
17624  33ad 5b04          	addw	sp,#4
17625                     ; 4152 	chgbank(0);
17627  33af 5f            	clrw	x
17628  33b0 8d440544      	callf	L711f_chgbank
17630  33b4               L3527:
17631                     ; 4155 if( RegD0h&0x20) {
17633  33b4 7b03          	ld	a,(OFST-5,sp)
17634  33b6 a520          	bcp	a,#32
17635  33b8 2738          	jreq	L5627
17636                     ; 4156 hdmirxwr(0xD0, 0x20);
17638  33ba ae0020        	ldw	x,#32
17639  33bd a6d0          	ld	a,#208
17640  33bf 95            	ld	xh,a
17641  33c0 8d690069      	callf	L56f_hdmirxwr
17643                     ; 4159 hdmirxset(0x26, 0x80, 0x00);
17645  33c4 4b00          	push	#0
17646  33c6 ae0080        	ldw	x,#128
17647  33c9 a626          	ld	a,#38
17648  33cb 95            	ld	xh,a
17649  33cc 8db300b3      	callf	L76f_hdmirxset
17651  33d0 84            	pop	a
17652                     ; 4161 delay1ms(1);
17654  33d1 ae0001        	ldw	x,#1
17655  33d4 8d000000      	callf	f_IR_DelayNMiliseconds
17657                     ; 4162 hdmirxset(0x26, 0x80, 0x80);
17659  33d8 4b80          	push	#128
17660  33da ae0080        	ldw	x,#128
17661  33dd a626          	ld	a,#38
17662  33df 95            	ld	xh,a
17663  33e0 8db300b3      	callf	L76f_hdmirxset
17665  33e4 84            	pop	a
17666                     ; 4163 hdmirxset(0x22, 0x04, 0x04);
17668  33e5 4b04          	push	#4
17669  33e7 ae0004        	ldw	x,#4
17670  33ea a622          	ld	a,#34
17671  33ec 95            	ld	xh,a
17672  33ed 8db300b3      	callf	L76f_hdmirxset
17674  33f1 84            	pop	a
17675  33f2               L5627:
17676                     ; 4167 if( RegD0h&0x80) {
17678  33f2 7b03          	ld	a,(OFST-5,sp)
17679  33f4 a580          	bcp	a,#128
17680  33f6 2738          	jreq	L7627
17681                     ; 4168 hdmirxwr(0xD0, 0x80);
17683  33f8 ae0080        	ldw	x,#128
17684  33fb a6d0          	ld	a,#208
17685  33fd 95            	ld	xh,a
17686  33fe 8d690069      	callf	L56f_hdmirxwr
17688                     ; 4171 hdmirxset(0x3E, 0x80, 0x00);
17690  3402 4b00          	push	#0
17691  3404 ae0080        	ldw	x,#128
17692  3407 a63e          	ld	a,#62
17693  3409 95            	ld	xh,a
17694  340a 8db300b3      	callf	L76f_hdmirxset
17696  340e 84            	pop	a
17697                     ; 4173 delay1ms(1);
17699  340f ae0001        	ldw	x,#1
17700  3412 8d000000      	callf	f_IR_DelayNMiliseconds
17702                     ; 4174 hdmirxset(0x3E, 0x80, 0x80);
17704  3416 4b80          	push	#128
17705  3418 ae0080        	ldw	x,#128
17706  341b a63e          	ld	a,#62
17707  341d 95            	ld	xh,a
17708  341e 8db300b3      	callf	L76f_hdmirxset
17710  3422 84            	pop	a
17711                     ; 4175 hdmirxset(0x3A, 0x04, 0x04);
17713  3423 4b04          	push	#4
17714  3425 ae0004        	ldw	x,#4
17715  3428 a63a          	ld	a,#58
17716  342a 95            	ld	xh,a
17717  342b 8db300b3      	callf	L76f_hdmirxset
17719  342f 84            	pop	a
17720  3430               L7627:
17721                     ; 4182 }
17724  3430 5b0a          	addw	sp,#10
17725  3432 87            	retf
17769                     ; 4184 void IT6802_fsm(void)
17769                     ; 4185 {
17770                     	switch	.text
17771  3433               f_IT6802_fsm:
17773  3433 89            	pushw	x
17774       00000002      OFST:	set	2
17777                     ; 4187 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
17779  3434 8d030203      	callf	L501f_get_it6802_dev_data
17781  3438 1f01          	ldw	(OFST-1,sp),x
17782                     ; 4189 	IT6802MHLInterruptHandler(it6802data);
17784  343a 1e01          	ldw	x,(OFST-1,sp)
17785  343c 8dbc29bc      	callf	L533f_IT6802MHLInterruptHandler
17787                     ; 4190 	IT6802HDMIInterruptHandler(it6802data);
17789  3440 1e01          	ldw	x,(OFST-1,sp)
17790  3442 8d792f79      	callf	L733f_IT6802HDMIInterruptHandler
17792                     ; 4191 	IT6802VideoHandler(it6802data);
17794  3446 1e01          	ldw	x,(OFST-1,sp)
17795  3448 8d031103      	callf	L112f_IT6802VideoHandler
17797                     ; 4192 	IT6802AudioHandler(it6802data);
17799  344c 1e01          	ldw	x,(OFST-1,sp)
17800  344e 8d550e55      	callf	L771f_IT6802AudioHandler
17802                     ; 4194 	RCPManager(it6802data);
17804  3452 1e01          	ldw	x,(OFST-1,sp)
17805  3454 8d972997      	callf	L333f_RCPManager
17807                     ; 4198 	it6802AutoPortSelect(it6802data);
17809  3458 1e01          	ldw	x,(OFST-1,sp)
17810  345a 8de534e5      	callf	L143f_it6802AutoPortSelect
17812                     ; 4200 	it6802ShowErrorCount();
17814  345e 8d643464      	callf	L343f_it6802ShowErrorCount
17816                     ; 4203 }
17819  3462 85            	popw	x
17820  3463 87            	retf
17879                     ; 4205 static void it6802ShowErrorCount(void)
17879                     ; 4206 {
17880                     	switch	.text
17881  3464               L343f_it6802ShowErrorCount:
17883  3464 5204          	subw	sp,#4
17884       00000004      OFST:	set	4
17887                     ; 4213 	RegB4 = hdmirxrd(REG_RX_0B4);
17889  3466 a6b4          	ld	a,#180
17890  3468 8d390039      	callf	L36f_hdmirxrd
17892  346c 6b01          	ld	(OFST-3,sp),a
17893                     ; 4214 	RegB5 = hdmirxrd(REG_RX_0B5);
17895  346e a6b5          	ld	a,#181
17896  3470 8d390039      	callf	L36f_hdmirxrd
17898  3474 6b02          	ld	(OFST-2,sp),a
17899                     ; 4215 	RegB9 = hdmirxrd(REG_RX_0B9);
17901  3476 a6b9          	ld	a,#185
17902  3478 8d390039      	callf	L36f_hdmirxrd
17904  347c 6b03          	ld	(OFST-1,sp),a
17905                     ; 4216 	RegBA = hdmirxrd(REG_RX_0BA);
17907  347e a6ba          	ld	a,#186
17908  3480 8d390039      	callf	L36f_hdmirxrd
17910  3484 6b04          	ld	(OFST+0,sp),a
17911                     ; 4218 	if(OldRegB4!=RegB4)
17913  3486 c6000c        	ld	a,_OldRegB4
17914  3489 1101          	cp	a,(OFST-3,sp)
17915  348b 2710          	jreq	L3337
17916                     ; 4220 		MHLRX_DEBUG_PRINTF(printf("11111111 RegB4=%x \r\n",RegB4));
17918  348d 7b01          	ld	a,(OFST-3,sp)
17919  348f 88            	push	a
17920  3490 ae0c92        	ldw	x,#L5337
17921  3493 8d000000      	callf	f_printf
17923  3497 84            	pop	a
17924                     ; 4221 		OldRegB4=RegB4;
17926  3498 7b01          	ld	a,(OFST-3,sp)
17927  349a c7000c        	ld	_OldRegB4,a
17928  349d               L3337:
17929                     ; 4224 	if(OldRegB5!=RegB5)
17931  349d c6000d        	ld	a,_OldRegB5
17932  34a0 1102          	cp	a,(OFST-2,sp)
17933  34a2 2710          	jreq	L7337
17934                     ; 4227 		MHLRX_DEBUG_PRINTF(printf("22222222 RegB5=%x \r\n",RegB5));
17936  34a4 7b02          	ld	a,(OFST-2,sp)
17937  34a6 88            	push	a
17938  34a7 ae0c7d        	ldw	x,#L1437
17939  34aa 8d000000      	callf	f_printf
17941  34ae 84            	pop	a
17942                     ; 4228 		OldRegB5=RegB5;
17944  34af 7b02          	ld	a,(OFST-2,sp)
17945  34b1 c7000d        	ld	_OldRegB5,a
17946  34b4               L7337:
17947                     ; 4231 	if(OldRegB9!=RegB9)
17949  34b4 c6000e        	ld	a,_OldRegB9
17950  34b7 1103          	cp	a,(OFST-1,sp)
17951  34b9 2710          	jreq	L3437
17952                     ; 4233 		MHLRX_DEBUG_PRINTF(printf("33333333 RegB9=%x \r\n",RegB9));
17954  34bb 7b03          	ld	a,(OFST-1,sp)
17955  34bd 88            	push	a
17956  34be ae0c68        	ldw	x,#L5437
17957  34c1 8d000000      	callf	f_printf
17959  34c5 84            	pop	a
17960                     ; 4234 		OldRegB9=RegB9;
17962  34c6 7b03          	ld	a,(OFST-1,sp)
17963  34c8 c7000e        	ld	_OldRegB9,a
17964  34cb               L3437:
17965                     ; 4237 	if(OldRegBA!=RegBA)
17967  34cb c6000f        	ld	a,_OldRegBA
17968  34ce 1104          	cp	a,(OFST+0,sp)
17969  34d0 2710          	jreq	L7437
17970                     ; 4239 		MHLRX_DEBUG_PRINTF(printf("44444444 RegBA=%x \r\n",RegBA));
17972  34d2 7b04          	ld	a,(OFST+0,sp)
17973  34d4 88            	push	a
17974  34d5 ae0c53        	ldw	x,#L1537
17975  34d8 8d000000      	callf	f_printf
17977  34dc 84            	pop	a
17978                     ; 4240 		OldRegBA=RegBA;
17980  34dd 7b04          	ld	a,(OFST+0,sp)
17981  34df c7000f        	ld	_OldRegBA,a
17982  34e2               L7437:
17983                     ; 4244 }
17986  34e2 5b04          	addw	sp,#4
17987  34e4 87            	retf
18024                     ; 4246 static void it6802AutoPortSelect(struct it6802_dev_data *it6802)
18024                     ; 4247 {
18025                     	switch	.text
18026  34e5               L143f_it6802AutoPortSelect:
18030                     ; 4265 }
18033  34e5 87            	retf
18144                     ; 4268 void get_vid_info( void )
18144                     ; 4269 {
18145                     	switch	.text
18146  34e6               f_get_vid_info:
18148  34e6 521b          	subw	sp,#27
18149       0000001b      OFST:	set	27
18152                     ; 4335 	InterLaced = (hdmirxrd(0x99)&0x02)>>1;
18154  34e8 a699          	ld	a,#153
18155  34ea 8d390039      	callf	L36f_hdmirxrd
18157  34ee a402          	and	a,#2
18158  34f0 44            	srl	a
18159  34f1 5f            	clrw	x
18160  34f2 97            	ld	xl,a
18161  34f3 1f0a          	ldw	(OFST-17,sp),x
18162                     ; 4337 	HTotal   = ((hdmirxrd(0x9D)&0x3F)<<8) + hdmirxrd(0x9C);
18164  34f5 a69c          	ld	a,#156
18165  34f7 8d390039      	callf	L36f_hdmirxrd
18167  34fb 6b01          	ld	(OFST-26,sp),a
18168  34fd a69d          	ld	a,#157
18169  34ff 8d390039      	callf	L36f_hdmirxrd
18171  3503 a43f          	and	a,#63
18172  3505 5f            	clrw	x
18173  3506 97            	ld	xl,a
18174  3507 4f            	clr	a
18175  3508 02            	rlwa	x,a
18176  3509 01            	rrwa	x,a
18177  350a 1b01          	add	a,(OFST-26,sp)
18178  350c 2401          	jrnc	L406
18179  350e 5c            	incw	x
18180  350f               L406:
18181  350f 02            	rlwa	x,a
18182  3510 1f0c          	ldw	(OFST-15,sp),x
18183  3512 01            	rrwa	x,a
18184                     ; 4338 	HActive  = ((hdmirxrd(0x9F)&0x3F)<<8) + hdmirxrd(0x9E);
18186  3513 a69e          	ld	a,#158
18187  3515 8d390039      	callf	L36f_hdmirxrd
18189  3519 6b01          	ld	(OFST-26,sp),a
18190  351b a69f          	ld	a,#159
18191  351d 8d390039      	callf	L36f_hdmirxrd
18193  3521 a43f          	and	a,#63
18194  3523 5f            	clrw	x
18195  3524 97            	ld	xl,a
18196  3525 4f            	clr	a
18197  3526 02            	rlwa	x,a
18198  3527 01            	rrwa	x,a
18199  3528 1b01          	add	a,(OFST-26,sp)
18200  352a 2401          	jrnc	L606
18201  352c 5c            	incw	x
18202  352d               L606:
18203  352d 02            	rlwa	x,a
18204  352e 1f0e          	ldw	(OFST-13,sp),x
18205  3530 01            	rrwa	x,a
18206                     ; 4339 	HFP      = ((hdmirxrd(0xA1)&0xF0)<<4) + hdmirxrd(0xA2);
18208  3531 a6a2          	ld	a,#162
18209  3533 8d390039      	callf	L36f_hdmirxrd
18211  3537 6b01          	ld	(OFST-26,sp),a
18212  3539 a6a1          	ld	a,#161
18213  353b 8d390039      	callf	L36f_hdmirxrd
18215  353f a4f0          	and	a,#240
18216  3541 97            	ld	xl,a
18217  3542 a610          	ld	a,#16
18218  3544 42            	mul	x,a
18219  3545 01            	rrwa	x,a
18220  3546 1b01          	add	a,(OFST-26,sp)
18221  3548 2401          	jrnc	L016
18222  354a 5c            	incw	x
18223  354b               L016:
18224  354b 02            	rlwa	x,a
18225  354c 1f10          	ldw	(OFST-11,sp),x
18226  354e 01            	rrwa	x,a
18227                     ; 4340 	HSYNCW   = ((hdmirxrd(0xA1)&0x01)<<8) + hdmirxrd(0xA0);
18229  354f a6a0          	ld	a,#160
18230  3551 8d390039      	callf	L36f_hdmirxrd
18232  3555 6b01          	ld	(OFST-26,sp),a
18233  3557 a6a1          	ld	a,#161
18234  3559 8d390039      	callf	L36f_hdmirxrd
18236  355d a401          	and	a,#1
18237  355f 5f            	clrw	x
18238  3560 97            	ld	xl,a
18239  3561 4f            	clr	a
18240  3562 02            	rlwa	x,a
18241  3563 01            	rrwa	x,a
18242  3564 1b01          	add	a,(OFST-26,sp)
18243  3566 2401          	jrnc	L216
18244  3568 5c            	incw	x
18245  3569               L216:
18246  3569 02            	rlwa	x,a
18247  356a 1f12          	ldw	(OFST-9,sp),x
18248  356c 01            	rrwa	x,a
18249                     ; 4341 	HSyncPol = hdmirxrd(0xA8)&0x04>>2;
18251  356d a6a8          	ld	a,#168
18252  356f 8d390039      	callf	L36f_hdmirxrd
18254  3573 a401          	and	a,#1
18255  3575 5f            	clrw	x
18256  3576 97            	ld	xl,a
18257  3577 1f06          	ldw	(OFST-21,sp),x
18258                     ; 4343 	VTotal   = ((hdmirxrd(0xA4)&0x0F)<<8) + hdmirxrd(0xA3);
18260  3579 a6a3          	ld	a,#163
18261  357b 8d390039      	callf	L36f_hdmirxrd
18263  357f 6b01          	ld	(OFST-26,sp),a
18264  3581 a6a4          	ld	a,#164
18265  3583 8d390039      	callf	L36f_hdmirxrd
18267  3587 a40f          	and	a,#15
18268  3589 5f            	clrw	x
18269  358a 97            	ld	xl,a
18270  358b 4f            	clr	a
18271  358c 02            	rlwa	x,a
18272  358d 01            	rrwa	x,a
18273  358e 1b01          	add	a,(OFST-26,sp)
18274  3590 2401          	jrnc	L416
18275  3592 5c            	incw	x
18276  3593               L416:
18277  3593 02            	rlwa	x,a
18278  3594 1f14          	ldw	(OFST-7,sp),x
18279  3596 01            	rrwa	x,a
18280                     ; 4344 	VActive  = ((hdmirxrd(0xA4)&0xF0)<<4) + hdmirxrd(0xA5);
18282  3597 a6a5          	ld	a,#165
18283  3599 8d390039      	callf	L36f_hdmirxrd
18285  359d 6b01          	ld	(OFST-26,sp),a
18286  359f a6a4          	ld	a,#164
18287  35a1 8d390039      	callf	L36f_hdmirxrd
18289  35a5 a4f0          	and	a,#240
18290  35a7 97            	ld	xl,a
18291  35a8 a610          	ld	a,#16
18292  35aa 42            	mul	x,a
18293  35ab 01            	rrwa	x,a
18294  35ac 1b01          	add	a,(OFST-26,sp)
18295  35ae 2401          	jrnc	L616
18296  35b0 5c            	incw	x
18297  35b1               L616:
18298  35b1 02            	rlwa	x,a
18299  35b2 1f16          	ldw	(OFST-5,sp),x
18300  35b4 01            	rrwa	x,a
18301                     ; 4345 	VFP      = hdmirxrd(0xA7)&0x3F;
18303  35b5 a6a7          	ld	a,#167
18304  35b7 8d390039      	callf	L36f_hdmirxrd
18306  35bb a43f          	and	a,#63
18307  35bd 5f            	clrw	x
18308  35be 97            	ld	xl,a
18309  35bf 1f18          	ldw	(OFST-3,sp),x
18310                     ; 4346 	VSYNCW   = hdmirxrd(0xA6)&0x1F;
18312  35c1 a6a6          	ld	a,#166
18313  35c3 8d390039      	callf	L36f_hdmirxrd
18315  35c7 a41f          	and	a,#31
18316  35c9 5f            	clrw	x
18317  35ca 97            	ld	xl,a
18318  35cb 1f1a          	ldw	(OFST-1,sp),x
18319                     ; 4347 	VSyncPol = (hdmirxrd(0xA8)&0x08)>>3;
18321  35cd a6a8          	ld	a,#168
18322  35cf 8d390039      	callf	L36f_hdmirxrd
18324  35d3 a408          	and	a,#8
18325  35d5 44            	srl	a
18326  35d6 44            	srl	a
18327  35d7 44            	srl	a
18328  35d8 5f            	clrw	x
18329  35d9 97            	ld	xl,a
18330  35da 1f08          	ldw	(OFST-19,sp),x
18331                     ; 4350 	CurTMDSCLK             = (int)TMDSCLK;
18333  35dc 96            	ldw	x,sp
18334  35dd 1c0002        	addw	x,#OFST-25
18335  35e0 8d000000      	callf	d_ltor
18337  35e4 8d000000      	callf	d_ftoi
18339  35e8 cf002d        	ldw	_CurTMDSCLK,x
18340                     ; 4352 	CurVTiming.HActive     = HActive;
18342  35eb 1e0e          	ldw	x,(OFST-13,sp)
18343  35ed cf0013        	ldw	_CurVTiming,x
18344                     ; 4353 	CurVTiming.HTotal      = HTotal;
18346  35f0 1e0c          	ldw	x,(OFST-15,sp)
18347  35f2 cf0017        	ldw	_CurVTiming+4,x
18348                     ; 4354 	CurVTiming.HFrontPorch = HFP;
18350  35f5 1e10          	ldw	x,(OFST-11,sp)
18351  35f7 cf0020        	ldw	_CurVTiming+13,x
18352                     ; 4355 	CurVTiming.HSyncWidth  = HSYNCW;
18354  35fa 1e12          	ldw	x,(OFST-9,sp)
18355  35fc cf0022        	ldw	_CurVTiming+15,x
18356                     ; 4356 	CurVTiming.HBackPorch  = HTotal - HActive - HFP - HSYNCW;
18358  35ff 1e0c          	ldw	x,(OFST-15,sp)
18359  3601 72f00e        	subw	x,(OFST-13,sp)
18360  3604 72f010        	subw	x,(OFST-11,sp)
18361  3607 72f012        	subw	x,(OFST-9,sp)
18362  360a cf0024        	ldw	_CurVTiming+17,x
18363                     ; 4357 	CurVTiming.VActive     = VActive;
18365  360d 1e16          	ldw	x,(OFST-5,sp)
18366  360f cf0015        	ldw	_CurVTiming+2,x
18367                     ; 4358 	CurVTiming.VTotal      = VTotal;
18369  3612 1e14          	ldw	x,(OFST-7,sp)
18370  3614 cf0019        	ldw	_CurVTiming+6,x
18371                     ; 4359 	CurVTiming.VFrontPorch = VFP;
18373  3617 1e18          	ldw	x,(OFST-3,sp)
18374  3619 cf0026        	ldw	_CurVTiming+19,x
18375                     ; 4360 	CurVTiming.VSyncWidth  = VSYNCW;
18377  361c 1e1a          	ldw	x,(OFST-1,sp)
18378  361e cf0028        	ldw	_CurVTiming+21,x
18379                     ; 4361 	CurVTiming.VBackPorch  = VTotal - VActive - VFP - VSYNCW;
18381  3621 1e14          	ldw	x,(OFST-7,sp)
18382  3623 72f016        	subw	x,(OFST-5,sp)
18383  3626 72f018        	subw	x,(OFST-3,sp)
18384  3629 72f01a        	subw	x,(OFST-1,sp)
18385  362c cf002a        	ldw	_CurVTiming+23,x
18386                     ; 4362 	CurVTiming.ScanMode    = (InterLaced)&0x01;
18388  362f 7b0b          	ld	a,(OFST-16,sp)
18389  3631 a401          	and	a,#1
18390  3633 44            	srl	a
18391  3634 9011002c      	bccm	_CurVTiming+25,#0
18392                     ; 4363 	CurVTiming.VPolarity   = (VSyncPol)&0x01;
18394  3638 7b09          	ld	a,(OFST-18,sp)
18395  363a a401          	and	a,#1
18396  363c 44            	srl	a
18397  363d 9013002c      	bccm	_CurVTiming+25,#1
18398                     ; 4364 	CurVTiming.HPolarity   = (HSyncPol)&0x01;
18400  3641 7b07          	ld	a,(OFST-20,sp)
18401  3643 a401          	and	a,#1
18402  3645 44            	srl	a
18403  3646 9015002c      	bccm	_CurVTiming+25,#2
18404                     ; 4365 }
18407  364a 5b1b          	addw	sp,#27
18408  364c 87            	retf
18476                     ; 4369 void show_vid_info( void )
18476                     ; 4370 {
18477                     	switch	.text
18478  364d               f_show_vid_info:
18480  364d 5206          	subw	sp,#6
18481       00000006      OFST:	set	6
18484                     ; 4374 	int GCP_CD       = CD8BIT; //24 bits per pixel
18486                     ; 4376 	GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
18488  364f a699          	ld	a,#153
18489  3651 8d390039      	callf	L36f_hdmirxrd
18491  3655 a4f0          	and	a,#240
18492  3657 4e            	swap	a
18493  3658 a40f          	and	a,#15
18494  365a 5f            	clrw	x
18495  365b 97            	ld	xl,a
18496  365c 1f05          	ldw	(OFST-1,sp),x
18497                     ; 4378 	switch( GCP_CD ) {
18499  365e 1e05          	ldw	x,(OFST-1,sp)
18501                     ; 4396 	break;
18502  3660 1d0005        	subw	x,#5
18503  3663 2722          	jreq	L5347
18504  3665 5a            	decw	x
18505  3666 2740          	jreq	L7347
18506  3668               L1447:
18507                     ; 4391 	default :
18507                     ; 4392 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 24 bits per pixel\r\n"));
18509  3668 ae0bd8        	ldw	x,#L5257
18510  366b 8d000000      	callf	f_printf
18512                     ; 4393 	InBPC=8;
18514  366f ae0008        	ldw	x,#8
18515  3672 1f05          	ldw	(OFST-1,sp),x
18516                     ; 4394 	hdmirxset(0x65, 0x0C, 0x00);
18518  3674 4b00          	push	#0
18519  3676 ae000c        	ldw	x,#12
18520  3679 a665          	ld	a,#101
18521  367b 95            	ld	xh,a
18522  367c 8db300b3      	callf	L76f_hdmirxset
18524  3680 84            	pop	a
18525                     ; 4395 	OutCD = OUT8B;
18527  3681 5f            	clrw	x
18528  3682 cf000a        	ldw	_OutCD,x
18529                     ; 4396 	break;
18531  3685 2040          	jra	L7157
18532  3687               L5347:
18533                     ; 4379 	case 5 :
18533                     ; 4380 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 30 bits per pixel\r\n"));
18535  3687 ae0c2a        	ldw	x,#L1257
18536  368a 8d000000      	callf	f_printf
18538                     ; 4381 	InBPC=10;
18540  368e ae000a        	ldw	x,#10
18541  3691 1f05          	ldw	(OFST-1,sp),x
18542                     ; 4382 	hdmirxset(0x65, 0x0C, 0x04);
18544  3693 4b04          	push	#4
18545  3695 ae000c        	ldw	x,#12
18546  3698 a665          	ld	a,#101
18547  369a 95            	ld	xh,a
18548  369b 8db300b3      	callf	L76f_hdmirxset
18550  369f 84            	pop	a
18551                     ; 4383 	OutCD = OUT10B;
18553  36a0 ae0001        	ldw	x,#1
18554  36a3 cf000a        	ldw	_OutCD,x
18555                     ; 4384 	break;
18557  36a6 201f          	jra	L7157
18558  36a8               L7347:
18559                     ; 4385 	case 6 :
18559                     ; 4386 	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 36 bits per pixel\r\n"));
18561  36a8 ae0c01        	ldw	x,#L3257
18562  36ab 8d000000      	callf	f_printf
18564                     ; 4387 	InBPC=12;
18566  36af ae000c        	ldw	x,#12
18567  36b2 1f05          	ldw	(OFST-1,sp),x
18568                     ; 4388 	hdmirxset(0x65, 0x0C, 0x08);
18570  36b4 4b08          	push	#8
18571  36b6 ae000c        	ldw	x,#12
18572  36b9 a665          	ld	a,#101
18573  36bb 95            	ld	xh,a
18574  36bc 8db300b3      	callf	L76f_hdmirxset
18576  36c0 84            	pop	a
18577                     ; 4389 	OutCD = OUT12B;
18579  36c1 ae0002        	ldw	x,#2
18580  36c4 cf000a        	ldw	_OutCD,x
18581                     ; 4390 	break;
18583  36c7               L7157:
18584                     ; 4399 	switch( OutCD ) {
18586  36c7 ce000a        	ldw	x,_OutCD
18588                     ; 4408 	break;
18589  36ca 5a            	decw	x
18590  36cb 270c          	jreq	L3447
18591  36cd 5a            	decw	x
18592  36ce 2712          	jreq	L5447
18593  36d0               L7447:
18594                     ; 4406 	default :
18594                     ; 4407 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 24 bits per pixel\r\n"));
18596  36d0 ae0b60        	ldw	x,#L7357
18597  36d3 8d000000      	callf	f_printf
18599                     ; 4408 	break;
18601  36d7 2010          	jra	L1357
18602  36d9               L3447:
18603                     ; 4400 	case 1 :
18603                     ; 4401 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 30 bits per pixel\r\n"));
18605  36d9 ae0bb0        	ldw	x,#L3357
18606  36dc 8d000000      	callf	f_printf
18608                     ; 4402 	break;
18610  36e0 2007          	jra	L1357
18611  36e2               L5447:
18612                     ; 4403 	case 2 :
18612                     ; 4404 	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 36 bits per pixel\r\n"));
18614  36e2 ae0b88        	ldw	x,#L5357
18615  36e5 8d000000      	callf	f_printf
18617                     ; 4405 	break;
18619  36e9               L1357:
18620                     ; 4411 	chgbank(2);
18622  36e9 ae0002        	ldw	x,#2
18623  36ec 8d440544      	callf	L711f_chgbank
18625                     ; 4412 	InColorMode = (hdmirxrd(0x15)&0x60)>>5;
18627  36f0 a615          	ld	a,#21
18628  36f2 8d390039      	callf	L36f_hdmirxrd
18630  36f6 a460          	and	a,#96
18631  36f8 4e            	swap	a
18632  36f9 44            	srl	a
18633  36fa a407          	and	a,#7
18634  36fc 5f            	clrw	x
18635  36fd 97            	ld	xl,a
18636  36fe cf0006        	ldw	_InColorMode,x
18637                     ; 4413 	chgbank(0);
18639  3701 5f            	clrw	x
18640  3702 8d440544      	callf	L711f_chgbank
18642                     ; 4415 	if( InColorMode==1 ) { //YCbCr422
18644  3706 ce0006        	ldw	x,_InColorMode
18645  3709 a30001        	cpw	x,#1
18646  370c 2605          	jrne	L1457
18647                     ; 4416 	InBPP = InBPC*2;
18649  370e 1e05          	ldw	x,(OFST-1,sp)
18650  3710 58            	sllw	x
18652  3711 200a          	jra	L3457
18653  3713               L1457:
18654                     ; 4420 	InBPP = InBPC*3;
18656  3713 1e05          	ldw	x,(OFST-1,sp)
18657  3715 90ae0003      	ldw	y,#3
18658  3719 8d000000      	callf	d_imul
18660  371d               L3457:
18661                     ; 4423 	switch( InColorMode ) {
18663  371d ce0006        	ldw	x,_InColorMode
18665                     ; 4441 	break;
18666  3720 5d            	tnzw	x
18667  3721 270f          	jreq	L1547
18668  3723 5a            	decw	x
18669  3724 2715          	jreq	L3547
18670  3726 5a            	decw	x
18671  3727 271b          	jreq	L5547
18672  3729               L7547:
18673                     ; 4439 	default :
18673                     ; 4440 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = Reserved !!!\r\n"));
18675  3729 ae0ae6        	ldw	x,#L7557
18676  372c 8d000000      	callf	f_printf
18678                     ; 4441 	break;
18680  3730 2019          	jra	L7457
18681  3732               L1547:
18682                     ; 4424 	case 0 :
18682                     ; 4425 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = RGB444\r\n"));
18684  3732 ae0b44        	ldw	x,#L1557
18685  3735 8d000000      	callf	f_printf
18687                     ; 4428 	break;
18689  3739 2010          	jra	L7457
18690  373b               L3547:
18691                     ; 4429 	case 1 :
18691                     ; 4430 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr422\r\n"));
18693  373b ae0b26        	ldw	x,#L3557
18694  373e 8d000000      	callf	f_printf
18696                     ; 4433 	break;
18698  3742 2007          	jra	L7457
18699  3744               L5547:
18700                     ; 4434 	case 2 :
18700                     ; 4435 	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr444\r\n"));
18702  3744 ae0b08        	ldw	x,#L5557
18703  3747 8d000000      	callf	f_printf
18705                     ; 4438 	break;
18707  374b               L7457:
18708                     ; 4445 	OutColorMode = (hdmirxrd(0x65)&0x30)>>5;
18710  374b a665          	ld	a,#101
18711  374d 8d390039      	callf	L36f_hdmirxrd
18713  3751 a430          	and	a,#48
18714  3753 4e            	swap	a
18715  3754 44            	srl	a
18716  3755 a407          	and	a,#7
18717  3757 5f            	clrw	x
18718  3758 97            	ld	xl,a
18719  3759 cf0008        	ldw	_OutColorMode,x
18720                     ; 4446 	switch( OutColorMode ) {
18722  375c ce0008        	ldw	x,_OutColorMode
18724                     ; 4461 	break;
18725  375f 5d            	tnzw	x
18726  3760 270f          	jreq	L1647
18727  3762 5a            	decw	x
18728  3763 2715          	jreq	L3647
18729  3765 5a            	decw	x
18730  3766 271b          	jreq	L5647
18731  3768               L7647:
18732                     ; 4459 	default :
18732                     ; 4460 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = Reserved !!!\r\n"));
18734  3768 ae0a68        	ldw	x,#L3757
18735  376b 8d000000      	callf	f_printf
18737                     ; 4461 	break;
18739  376f 2019          	jra	L3657
18740  3771               L1647:
18741                     ; 4447 	case 0 :
18741                     ; 4448 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = RGB444\r\n"));
18743  3771 ae0ac9        	ldw	x,#L5657
18744  3774 8d000000      	callf	f_printf
18746                     ; 4450 	break;
18748  3778 2010          	jra	L3657
18749  377a               L3647:
18750                     ; 4451 	case 1 :
18750                     ; 4452 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr422\r\n"));
18752  377a ae0aaa        	ldw	x,#L7657
18753  377d 8d000000      	callf	f_printf
18755                     ; 4454 	break;
18757  3781 2007          	jra	L3657
18758  3783               L5647:
18759                     ; 4455 	case 2 :
18759                     ; 4456 	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr444\r\n"));
18761  3783 ae0a8b        	ldw	x,#L1757
18762  3786 8d000000      	callf	f_printf
18764                     ; 4458 	break;
18766  378a               L3657:
18767                     ; 4465 	MHL_Mode     = ((hdmirxrd(0x0A)&0x40)>>6);
18769  378a a60a          	ld	a,#10
18770  378c 8d390039      	callf	L36f_hdmirxrd
18772  3790 a440          	and	a,#64
18773  3792 4e            	swap	a
18774  3793 44            	srl	a
18775  3794 44            	srl	a
18776  3795 a403          	and	a,#3
18777  3797 5f            	clrw	x
18778  3798 97            	ld	xl,a
18779  3799 1f03          	ldw	(OFST-3,sp),x
18780                     ; 4466 	MHL_CLK_Mode = ((mhlrxrd(0xB1)&0x07));
18782  379b a6b1          	ld	a,#177
18783  379d 8d1f011f      	callf	L37f_mhlrxrd
18785  37a1 a407          	and	a,#7
18786  37a3 5f            	clrw	x
18787  37a4 97            	ld	xl,a
18788  37a5 1f05          	ldw	(OFST-1,sp),x
18789                     ; 4468 	if( MHL_Mode ) {
18791  37a7 1e03          	ldw	x,(OFST-3,sp)
18792  37a9 2719          	jreq	L5757
18793                     ; 4469 	if( MHL_CLK_Mode==0x02 )
18795  37ab 1e05          	ldw	x,(OFST-1,sp)
18796  37ad a30002        	cpw	x,#2
18797  37b0 2609          	jrne	L7757
18798                     ; 4470 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL PackPixel Mode\r\n"));
18800  37b2 ae0a48        	ldw	x,#L1067
18801  37b5 8d000000      	callf	f_printf
18804  37b9 2010          	jra	L7067
18805  37bb               L7757:
18806                     ; 4472 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL 24 bits Mode\r\n"));
18808  37bb ae0a2a        	ldw	x,#L5067
18809  37be 8d000000      	callf	f_printf
18811  37c2 2007          	jra	L7067
18812  37c4               L5757:
18813                     ; 4475 	MHLRX_DEBUG_PRINTF(printf("BUS MODE : HDMI Mode\r\n"));
18815  37c4 ae0a13        	ldw	x,#L1167
18816  37c7 8d000000      	callf	f_printf
18818  37cb               L7067:
18819                     ; 4480 	MHLRX_DEBUG_PRINTF(printf("HActive = %d\r\n", CurVTiming.HActive));
18821  37cb ce0013        	ldw	x,_CurVTiming
18822  37ce 89            	pushw	x
18823  37cf ae0a04        	ldw	x,#L3167
18824  37d2 8d000000      	callf	f_printf
18826  37d6 85            	popw	x
18827                     ; 4481 	MHLRX_DEBUG_PRINTF(printf("VActive = %d\r\n", CurVTiming.VActive));
18829  37d7 ce0015        	ldw	x,_CurVTiming+2
18830  37da 89            	pushw	x
18831  37db ae09f5        	ldw	x,#L5167
18832  37de 8d000000      	callf	f_printf
18834  37e2 85            	popw	x
18835                     ; 4482 	MHLRX_DEBUG_PRINTF(printf("HTotal = %d\r\n", CurVTiming.HTotal));
18837  37e3 ce0017        	ldw	x,_CurVTiming+4
18838  37e6 89            	pushw	x
18839  37e7 ae09e7        	ldw	x,#L7167
18840  37ea 8d000000      	callf	f_printf
18842  37ee 85            	popw	x
18843                     ; 4483 	MHLRX_DEBUG_PRINTF(printf("VTotal = %d\r\n", CurVTiming.VTotal));
18845  37ef ce0019        	ldw	x,_CurVTiming+6
18846  37f2 89            	pushw	x
18847  37f3 ae09d9        	ldw	x,#L1267
18848  37f6 8d000000      	callf	f_printf
18850  37fa 85            	popw	x
18851                     ; 4484 	MHLRX_DEBUG_PRINTF(printf("HFrontPorch = %d\r\n", CurVTiming.HFrontPorch));
18853  37fb ce0020        	ldw	x,_CurVTiming+13
18854  37fe 89            	pushw	x
18855  37ff ae09c6        	ldw	x,#L3267
18856  3802 8d000000      	callf	f_printf
18858  3806 85            	popw	x
18859                     ; 4485 	MHLRX_DEBUG_PRINTF(printf("HSyncWidth = %d\r\n", CurVTiming.HSyncWidth));
18861  3807 ce0022        	ldw	x,_CurVTiming+15
18862  380a 89            	pushw	x
18863  380b ae09b4        	ldw	x,#L5267
18864  380e 8d000000      	callf	f_printf
18866  3812 85            	popw	x
18867                     ; 4486 	MHLRX_DEBUG_PRINTF(printf("HBackPorch = %d\r\n", CurVTiming.HBackPorch));
18869  3813 ce0024        	ldw	x,_CurVTiming+17
18870  3816 89            	pushw	x
18871  3817 ae09a2        	ldw	x,#L7267
18872  381a 8d000000      	callf	f_printf
18874  381e 85            	popw	x
18875                     ; 4487 	MHLRX_DEBUG_PRINTF(printf("VFrontPorch = %d\r\n", CurVTiming.VFrontPorch));
18877  381f ce0026        	ldw	x,_CurVTiming+19
18878  3822 89            	pushw	x
18879  3823 ae098f        	ldw	x,#L1367
18880  3826 8d000000      	callf	f_printf
18882  382a 85            	popw	x
18883                     ; 4488 	MHLRX_DEBUG_PRINTF(printf("VSyncWidth = %d\r\n", CurVTiming.VSyncWidth));
18885  382b ce0028        	ldw	x,_CurVTiming+21
18886  382e 89            	pushw	x
18887  382f ae097d        	ldw	x,#L3367
18888  3832 8d000000      	callf	f_printf
18890  3836 85            	popw	x
18891                     ; 4489 	MHLRX_DEBUG_PRINTF(printf("VBackPorch = %d\r\n", CurVTiming.VBackPorch));
18893  3837 ce002a        	ldw	x,_CurVTiming+23
18894  383a 89            	pushw	x
18895  383b ae096b        	ldw	x,#L5367
18896  383e 8d000000      	callf	f_printf
18898  3842 85            	popw	x
18899                     ; 4491 	if( CurVTiming.ScanMode==0 ) {
18901  3843 c6002c        	ld	a,_CurVTiming+25
18902  3846 a501          	bcp	a,#1
18903  3848 2609          	jrne	L7367
18904                     ; 4492 	MHLRX_DEBUG_PRINTF(printf("ScanMode = Progressive\r\n"));
18906  384a ae0952        	ldw	x,#L1467
18907  384d 8d000000      	callf	f_printf
18910  3851 2007          	jra	L3467
18911  3853               L7367:
18912                     ; 4495 	MHLRX_DEBUG_PRINTF(printf("ScanMode = InterLaced\r\n"));
18914  3853 ae093a        	ldw	x,#L5467
18915  3856 8d000000      	callf	f_printf
18917  385a               L3467:
18918                     ; 4498 	if( CurVTiming.VPolarity==1 ) {
18920  385a c6002c        	ld	a,_CurVTiming+25
18921  385d a502          	bcp	a,#2
18922  385f 2709          	jreq	L7467
18923                     ; 4499 	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Positive\r\n"));
18925  3861 ae0924        	ldw	x,#L1567
18926  3864 8d000000      	callf	f_printf
18929  3868 2007          	jra	L3567
18930  386a               L7467:
18931                     ; 4502 	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Negative\r\n"));
18933  386a ae090e        	ldw	x,#L5567
18934  386d 8d000000      	callf	f_printf
18936  3871               L3567:
18937                     ; 4505 	if( CurVTiming.HPolarity==1 ) {
18939  3871 c6002c        	ld	a,_CurVTiming+25
18940  3874 a504          	bcp	a,#4
18941  3876 2709          	jreq	L7567
18942                     ; 4506 	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Positive\r\n"));
18944  3878 ae08f8        	ldw	x,#L1667
18945  387b 8d000000      	callf	f_printf
18948  387f 2007          	jra	L3667
18949  3881               L7567:
18950                     ; 4509 	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Negative\r\n"));
18952  3881 ae08e2        	ldw	x,#L5667
18953  3884 8d000000      	callf	f_printf
18955  3888               L3667:
18956                     ; 4513 	MHLRX_DEBUG_PRINTF(printf(" RegB4=%x \r\n",hdmirxrd(REG_RX_0B4)));
18958  3888 a6b4          	ld	a,#180
18959  388a 8d390039      	callf	L36f_hdmirxrd
18961  388e 88            	push	a
18962  388f ae08d5        	ldw	x,#L7667
18963  3892 8d000000      	callf	f_printf
18965  3896 84            	pop	a
18966                     ; 4514 	MHLRX_DEBUG_PRINTF(printf(" RegB5=%x \r\n",hdmirxrd(REG_RX_0B5)));
18968  3897 a6b5          	ld	a,#181
18969  3899 8d390039      	callf	L36f_hdmirxrd
18971  389d 88            	push	a
18972  389e ae08c8        	ldw	x,#L1767
18973  38a1 8d000000      	callf	f_printf
18975  38a5 84            	pop	a
18976                     ; 4515 	MHLRX_DEBUG_PRINTF(printf(" RegB9=%x \r\n",hdmirxrd(REG_RX_0B9)));
18978  38a6 a6b9          	ld	a,#185
18979  38a8 8d390039      	callf	L36f_hdmirxrd
18981  38ac 88            	push	a
18982  38ad ae08bb        	ldw	x,#L3767
18983  38b0 8d000000      	callf	f_printf
18985  38b4 84            	pop	a
18986                     ; 4516 	MHLRX_DEBUG_PRINTF(printf(" RegBA=%x \r\n",hdmirxrd(REG_RX_0BA)));
18988  38b5 a6ba          	ld	a,#186
18989  38b7 8d390039      	callf	L36f_hdmirxrd
18991  38bb 88            	push	a
18992  38bc ae08ae        	ldw	x,#L5767
18993  38bf 8d000000      	callf	f_printf
18995  38c3 84            	pop	a
18996                     ; 4519 }
18999  38c4 5b06          	addw	sp,#6
19000  38c6 87            	retf
19002                     	switch	.data
19003  0038               _t_3d_syncgen:
19004  0038 3c            	dc.b	60
19005  0039 02ed          	dc.w	749
19006  003b 0306          	dc.w	774
19007  003d 02e8          	dc.w	744
19008  003f 02f2          	dc.w	754
19009  0041 3e            	dc.b	62
19010  0042 02ed          	dc.w	749
19011  0044 0306          	dc.w	774
19012  0046 02e8          	dc.w	744
19013  0048 02f2          	dc.w	754
19014  004a 13            	dc.b	19
19015  004b 02ed          	dc.w	749
19016  004d 0306          	dc.w	774
19017  004f 02e8          	dc.w	744
19018  0051 02f2          	dc.w	754
19019  0053 04            	dc.b	4
19020  0054 02ed          	dc.w	749
19021  0056 0306          	dc.w	774
19022  0058 02e8          	dc.w	744
19023  005a 02f2          	dc.w	754
19024  005c 05            	dc.b	5
19025  005d 0464          	dc.w	1124
19026  005f 048d          	dc.w	1165
19027  0061 0460          	dc.w	1120
19028  0063 0469          	dc.w	1129
19029  0065 14            	dc.b	20
19030  0066 0464          	dc.w	1124
19031  0068 048d          	dc.w	1165
19032  006a 0460          	dc.w	1120
19033  006c 0469          	dc.w	1129
19034  006e 20            	dc.b	32
19035  006f 0464          	dc.w	1124
19036  0071 048d          	dc.w	1165
19037  0073 0460          	dc.w	1120
19038  0075 0469          	dc.w	1129
19039  0077 22            	dc.b	34
19040  0078 0464          	dc.w	1124
19041  007a 048d          	dc.w	1165
19042  007c 0460          	dc.w	1120
19043  007e 0469          	dc.w	1129
19044  0080 1f            	dc.b	31
19045  0081 0464          	dc.w	1124
19046  0083 048d          	dc.w	1165
19047  0085 0460          	dc.w	1120
19048  0087 0469          	dc.w	1129
19049  0089 10            	dc.b	16
19050  008a 0464          	dc.w	1124
19051  008c 048d          	dc.w	1165
19052  008e 0460          	dc.w	1120
19053  0090 0469          	dc.w	1129
19054  0092 ff            	dc.b	255
19055  0093 0000          	dc.w	0
19056  0095 0000          	dc.w	0
19057  0097 0000          	dc.w	0
19058  0099 0000          	dc.w	0
19154                     ; 4565 static unsigned char IT6802_DE3DFrame(unsigned char ena_de3d)
19154                     ; 4566 /*
19154                     ; 4567  * This function configures the HDMI DE3DFrame
19154                     ; 4568  * @param uunsigned char ena_de3d
19154                     ; 4569  * @return      TRUE
19154                     ; 4570  *              FALSE
19154                     ; 4571  */
19154                     ; 4572 {
19155                     	switch	.text
19156  38c7               L543f_IT6802_DE3DFrame:
19158  38c7 88            	push	a
19159  38c8 520b          	subw	sp,#11
19160       0000000b      OFST:	set	11
19163                     ; 4584 	struct it6802_dev_data *it6802data = get_it6802_dev_data();
19165  38ca 8d030203      	callf	L501f_get_it6802_dev_data
19167  38ce 1f0a          	ldw	(OFST-1,sp),x
19168                     ; 4586     if(ena_de3d  == TRUE)
19170  38d0 7b0c          	ld	a,(OFST+1,sp)
19171  38d2 a101          	cp	a,#1
19172  38d4 2704          	jreq	L626
19173  38d6 ac7b3d7b      	jpf	L7377
19174  38da               L626:
19175                     ; 4589  	chgbank(2);
19177  38da ae0002        	ldw	x,#2
19178  38dd 8d440544      	callf	L711f_chgbank
19180                     ; 4590 	uc=hdmirxrd(REG_RX_224);
19182  38e1 a624          	ld	a,#36
19183  38e3 8d390039      	callf	L36f_hdmirxrd
19185  38e7 6b09          	ld	(OFST-2,sp),a
19186                     ; 4592         if(uc == 0x81)	 // 3D InfoFrame Packet Type is valid
19188  38e9 7b09          	ld	a,(OFST-2,sp)
19189  38eb a181          	cp	a,#129
19190  38ed 2704          	jreq	L036
19191  38ef ac533d53      	jpf	L1477
19192  38f3               L036:
19193                     ; 4595 	it6802data->s_Current3DFr.VIC=hdmirxrd(REG_RX_218);	//AVI INFO PB4
19195  38f3 a618          	ld	a,#24
19196  38f5 8d390039      	callf	L36f_hdmirxrd
19198  38f9 1e0a          	ldw	x,(OFST-1,sp)
19199  38fb e726          	ld	(38,x),a
19200                     ; 4596 	it6802data->s_Current3DFr.HB0=hdmirxrd(REG_RX_224);	// General Packet Header Byte 0
19202  38fd a624          	ld	a,#36
19203  38ff 8d390039      	callf	L36f_hdmirxrd
19205  3903 1e0a          	ldw	x,(OFST-1,sp)
19206  3905 e727          	ld	(39,x),a
19207                     ; 4597 	it6802data->s_Current3DFr.HB1=hdmirxrd(REG_RX_225);
19209  3907 a625          	ld	a,#37
19210  3909 8d390039      	callf	L36f_hdmirxrd
19212  390d 1e0a          	ldw	x,(OFST-1,sp)
19213  390f e728          	ld	(40,x),a
19214                     ; 4598 	it6802data->s_Current3DFr.HB2=hdmirxrd(REG_RX_226);
19216  3911 a626          	ld	a,#38
19217  3913 8d390039      	callf	L36f_hdmirxrd
19219  3917 1e0a          	ldw	x,(OFST-1,sp)
19220  3919 e729          	ld	(41,x),a
19221                     ; 4599 	it6802data->s_Current3DFr.PB0=hdmirxrd(REG_RX_227);	// General Packet Data Byte 0
19223  391b a627          	ld	a,#39
19224  391d 8d390039      	callf	L36f_hdmirxrd
19226  3921 1e0a          	ldw	x,(OFST-1,sp)
19227  3923 e72a          	ld	(42,x),a
19228                     ; 4600 	it6802data->s_Current3DFr.PB1=hdmirxrd(REG_RX_228);
19230  3925 a628          	ld	a,#40
19231  3927 8d390039      	callf	L36f_hdmirxrd
19233  392b 1e0a          	ldw	x,(OFST-1,sp)
19234  392d e72b          	ld	(43,x),a
19235                     ; 4601 	it6802data->s_Current3DFr.PB2=hdmirxrd(REG_RX_229);
19237  392f a629          	ld	a,#41
19238  3931 8d390039      	callf	L36f_hdmirxrd
19240  3935 1e0a          	ldw	x,(OFST-1,sp)
19241  3937 e72c          	ld	(44,x),a
19242                     ; 4602 	it6802data->s_Current3DFr.PB3=hdmirxrd(REG_RX_22A);
19244  3939 a62a          	ld	a,#42
19245  393b 8d390039      	callf	L36f_hdmirxrd
19247  393f 1e0a          	ldw	x,(OFST-1,sp)
19248  3941 e72d          	ld	(45,x),a
19249                     ; 4603 	it6802data->s_Current3DFr.PB4=hdmirxrd(REG_RX_22B);
19251  3943 a62b          	ld	a,#43
19252  3945 8d390039      	callf	L36f_hdmirxrd
19254  3949 1e0a          	ldw	x,(OFST-1,sp)
19255  394b e72e          	ld	(46,x),a
19256                     ; 4604 	it6802data->s_Current3DFr.PB5=hdmirxrd(REG_RX_22C);
19258  394d a62c          	ld	a,#44
19259  394f 8d390039      	callf	L36f_hdmirxrd
19261  3953 1e0a          	ldw	x,(OFST-1,sp)
19262  3955 e72f          	ld	(47,x),a
19263                     ; 4605 	it6802data->s_Current3DFr.PB6=hdmirxrd(REG_RX_22D);
19265  3957 a62d          	ld	a,#45
19266  3959 8d390039      	callf	L36f_hdmirxrd
19268  395d 1e0a          	ldw	x,(OFST-1,sp)
19269  395f e730          	ld	(48,x),a
19270                     ; 4606 	it6802data->s_Current3DFr.PB7=hdmirxrd(REG_RX_22E);
19272  3961 a62e          	ld	a,#46
19273  3963 8d390039      	callf	L36f_hdmirxrd
19275  3967 1e0a          	ldw	x,(OFST-1,sp)
19276  3969 e731          	ld	(49,x),a
19277                     ; 4607  	chgbank(0);
19279  396b 5f            	clrw	x
19280  396c 8d440544      	callf	L711f_chgbank
19282                     ; 4610     MHLRX_DEBUG_PRINTF(printf("\r\nIT653x - HDMI_DumpDE3DFrameInfo: \r\n"));
19284  3970 ae0888        	ldw	x,#L3477
19285  3973 8d000000      	callf	f_printf
19287                     ; 4611     MHLRX_DEBUG_PRINTF(printf("        HDMI VIC = 0x%02bX \r\n",it6802data->s_Current3DFr.VIC));
19289  3977 1e0a          	ldw	x,(OFST-1,sp)
19290  3979 e626          	ld	a,(38,x)
19291  397b 88            	push	a
19292  397c ae086a        	ldw	x,#L5477
19293  397f 8d000000      	callf	f_printf
19295  3983 84            	pop	a
19296                     ; 4612     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB0));
19298  3984 1e0a          	ldw	x,(OFST-1,sp)
19299  3986 e627          	ld	a,(39,x)
19300  3988 88            	push	a
19301  3989 ae082a        	ldw	x,#L7477
19302  398c 8d000000      	callf	f_printf
19304  3990 84            	pop	a
19305                     ; 4613     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB1));
19307  3991 1e0a          	ldw	x,(OFST-1,sp)
19308  3993 e628          	ld	a,(40,x)
19309  3995 88            	push	a
19310  3996 ae07ea        	ldw	x,#L1577
19311  3999 8d000000      	callf	f_printf
19313  399d 84            	pop	a
19314                     ; 4614     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB2));
19316  399e 1e0a          	ldw	x,(OFST-1,sp)
19317  39a0 e629          	ld	a,(41,x)
19318  39a2 88            	push	a
19319  39a3 ae07aa        	ldw	x,#L3577
19320  39a6 8d000000      	callf	f_printf
19322  39aa 84            	pop	a
19323                     ; 4615     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB0));
19325  39ab 1e0a          	ldw	x,(OFST-1,sp)
19326  39ad e62a          	ld	a,(42,x)
19327  39af 88            	push	a
19328  39b0 ae076a        	ldw	x,#L5577
19329  39b3 8d000000      	callf	f_printf
19331  39b7 84            	pop	a
19332                     ; 4616     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB1));
19334  39b8 1e0a          	ldw	x,(OFST-1,sp)
19335  39ba e62b          	ld	a,(43,x)
19336  39bc 88            	push	a
19337  39bd ae072a        	ldw	x,#L7577
19338  39c0 8d000000      	callf	f_printf
19340  39c4 84            	pop	a
19341                     ; 4617     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB2));
19343  39c5 1e0a          	ldw	x,(OFST-1,sp)
19344  39c7 e62c          	ld	a,(44,x)
19345  39c9 88            	push	a
19346  39ca ae06ea        	ldw	x,#L1677
19347  39cd 8d000000      	callf	f_printf
19349  39d1 84            	pop	a
19350                     ; 4618     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB3 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB3));
19352  39d2 1e0a          	ldw	x,(OFST-1,sp)
19353  39d4 e62d          	ld	a,(45,x)
19354  39d6 88            	push	a
19355  39d7 ae06aa        	ldw	x,#L3677
19356  39da 8d000000      	callf	f_printf
19358  39de 84            	pop	a
19359                     ; 4619     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB4 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB4));
19361  39df 1e0a          	ldw	x,(OFST-1,sp)
19362  39e1 e62e          	ld	a,(46,x)
19363  39e3 88            	push	a
19364  39e4 ae066a        	ldw	x,#L5677
19365  39e7 8d000000      	callf	f_printf
19367  39eb 84            	pop	a
19368                     ; 4620     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB5 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB5));
19370  39ec 1e0a          	ldw	x,(OFST-1,sp)
19371  39ee e62f          	ld	a,(47,x)
19372  39f0 88            	push	a
19373  39f1 ae062a        	ldw	x,#L7677
19374  39f4 8d000000      	callf	f_printf
19376  39f8 84            	pop	a
19377                     ; 4621     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB6 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB6));
19379  39f9 1e0a          	ldw	x,(OFST-1,sp)
19380  39fb e630          	ld	a,(48,x)
19381  39fd 88            	push	a
19382  39fe ae05ea        	ldw	x,#L1777
19383  3a01 8d000000      	callf	f_printf
19385  3a05 84            	pop	a
19386                     ; 4622     MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB7 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB7));
19388  3a06 1e0a          	ldw	x,(OFST-1,sp)
19389  3a08 e631          	ld	a,(49,x)
19390  3a0a 88            	push	a
19391  3a0b ae05aa        	ldw	x,#L3777
19392  3a0e 8d000000      	callf	f_printf
19394  3a12 84            	pop	a
19395                     ; 4629             it6802data->de3dframe_config.LR_Reference             =  2; // Source of the 3D L/R reference.
19397  3a13 1e0a          	ldw	x,(OFST-1,sp)
19398  3a15 a602          	ld	a,#2
19399  3a17 e71a          	ld	(26,x),a
19400                     ; 4630             it6802data->de3dframe_config.FrameDominance           =  0; // Left or Right Eye is first in L/R image pair.
19402  3a19 1e0a          	ldw	x,(OFST-1,sp)
19403  3a1b 6f1b          	clr	(27,x)
19404                     ; 4631             it6802data->de3dframe_config.LR_Encoding              =  1; // Type of 3D L/R encoding
19406  3a1d 1e0a          	ldw	x,(OFST-1,sp)
19407  3a1f a601          	ld	a,#1
19408  3a21 e71c          	ld	(28,x),a
19409                     ; 4632             it6802data->de3dframe_config.TB_Reference             =  2; // Top/Bottom reference for vertically sub-sampled sources
19411  3a23 1e0a          	ldw	x,(OFST-1,sp)
19412  3a25 a602          	ld	a,#2
19413  3a27 e71d          	ld	(29,x),a
19414                     ; 4633             it6802data->de3dframe_config.OE_Reference             =  2; // Odd/Even reference for horizontally sub-sampled sources
19416  3a29 1e0a          	ldw	x,(OFST-1,sp)
19417  3a2b a602          	ld	a,#2
19418  3a2d e71e          	ld	(30,x),a
19419                     ; 4635             it6802data->de3dframe_config.NumActiveBlankLines      =  0; // Number of lines separating vertically packed L/R data to be removed (cropped)before being displayed
19421  3a2f 1e0a          	ldw	x,(OFST-1,sp)
19422  3a31 6f1f          	clr	(31,x)
19423                     ; 4636             it6802data->de3dframe_config.NumberOfEncodedLines     =  0; // Number of encoded lines in one L/R eye frame of the display data to be blanked out with "Blanking Color".
19425  3a33 1e0a          	ldw	x,(OFST-1,sp)
19426  3a35 6f20          	clr	(32,x)
19427                     ; 4637             it6802data->de3dframe_config.LeftEncodedLineLocation  = -1; // Active line number of 1st encoded line in one Left eye frame of the display data (-1=unknown).
19429  3a37 1e0a          	ldw	x,(OFST-1,sp)
19430  3a39 90aeffff      	ldw	y,#65535
19431  3a3d ef21          	ldw	(33,x),y
19432                     ; 4638             it6802data->de3dframe_config.RightEncodedLineLocation = -1; // Active line number of 1st encoded line in one Right eye frame of the display data (-1=unknown).
19434  3a3f 1e0a          	ldw	x,(OFST-1,sp)
19435  3a41 90aeffff      	ldw	y,#65535
19436  3a45 ef23          	ldw	(35,x),y
19437                     ; 4639             it6802data->de3dframe_config.BlankingColor            =  7; // Color to use when blanking (or masking off) any embedded L/R encoding
19439  3a47 1e0a          	ldw	x,(OFST-1,sp)
19440  3a49 a607          	ld	a,#7
19441  3a4b e725          	ld	(37,x),a
19442                     ; 4641             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && ((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING))
19444  3a4d 1e0a          	ldw	x,(OFST-1,sp)
19445  3a4f e62e          	ld	a,(46,x)
19446  3a51 a4e0          	and	a,#224
19447  3a53 a140          	cp	a,#64
19448  3a55 265d          	jrne	L5777
19450  3a57 1e0a          	ldw	x,(OFST-1,sp)
19451  3a59 e62f          	ld	a,(47,x)
19452  3a5b a5f0          	bcp	a,#240
19453  3a5d 2655          	jrne	L5777
19454                     ; 4643                 i =0;
19456  3a5f 0f09          	clr	(OFST-2,sp)
19458  3a61 2042          	jra	L30001
19459  3a63               L7777:
19460                     ; 4647                     if(t_3d_syncgen[i].Vic == it6802data->s_Current3DFr.VIC)
19462  3a63 7b09          	ld	a,(OFST-2,sp)
19463  3a65 97            	ld	xl,a
19464  3a66 a609          	ld	a,#9
19465  3a68 42            	mul	x,a
19466  3a69 d60038        	ld	a,(_t_3d_syncgen,x)
19467  3a6c 1e0a          	ldw	x,(OFST-1,sp)
19468  3a6e e126          	cp	a,(38,x)
19469  3a70 2631          	jrne	L70001
19470                     ; 4649                         break;
19471  3a72               L50001:
19472                     ; 4653                 v_total     = t_3d_syncgen[i].V_total;
19474  3a72 7b09          	ld	a,(OFST-2,sp)
19475  3a74 97            	ld	xl,a
19476  3a75 a609          	ld	a,#9
19477  3a77 42            	mul	x,a
19478  3a78 de0039        	ldw	x,(_t_3d_syncgen+1,x)
19479                     ; 4654                 v_act_start = t_3d_syncgen[i].V_act_start;
19481  3a7b 7b09          	ld	a,(OFST-2,sp)
19482  3a7d 97            	ld	xl,a
19483  3a7e a609          	ld	a,#9
19484  3a80 42            	mul	x,a
19485  3a81 de003b        	ldw	x,(_t_3d_syncgen+3,x)
19486  3a84 1f05          	ldw	(OFST-6,sp),x
19487                     ; 4655                 v_act_end   = t_3d_syncgen[i].V_act_end;
19489  3a86 7b09          	ld	a,(OFST-2,sp)
19490  3a88 97            	ld	xl,a
19491  3a89 a609          	ld	a,#9
19492  3a8b 42            	mul	x,a
19493  3a8c de003d        	ldw	x,(_t_3d_syncgen+5,x)
19494  3a8f 1f07          	ldw	(OFST-4,sp),x
19495                     ; 4656                 v_sync_end  = t_3d_syncgen[i].V_sync_end;
19497  3a91 7b09          	ld	a,(OFST-2,sp)
19498  3a93 97            	ld	xl,a
19499  3a94 a609          	ld	a,#9
19500  3a96 42            	mul	x,a
19501  3a97 de003f        	ldw	x,(_t_3d_syncgen+7,x)
19502                     ; 4657                 v_act_bspace = v_act_start - v_act_end;
19504  3a9a 1e05          	ldw	x,(OFST-6,sp)
19505  3a9c 72f007        	subw	x,(OFST-4,sp)
19506  3a9f 1f07          	ldw	(OFST-4,sp),x
19507  3aa1 2011          	jra	L5777
19508  3aa3               L70001:
19509                     ; 4651                     i++;
19511  3aa3 0c09          	inc	(OFST-2,sp)
19512  3aa5               L30001:
19513                     ; 4645                 while(t_3d_syncgen[i].Vic != 0xFF)
19515  3aa5 7b09          	ld	a,(OFST-2,sp)
19516  3aa7 97            	ld	xl,a
19517  3aa8 a609          	ld	a,#9
19518  3aaa 42            	mul	x,a
19519  3aab d60038        	ld	a,(_t_3d_syncgen,x)
19520  3aae a1ff          	cp	a,#255
19521  3ab0 26b1          	jrne	L7777
19522  3ab2 20be          	jra	L50001
19523  3ab4               L5777:
19524                     ; 4660             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (!it6802data->DE3DFormat_HDMIFlag))
19526  3ab4 1e0a          	ldw	x,(OFST-1,sp)
19527  3ab6 e62e          	ld	a,(46,x)
19528  3ab8 a4e0          	and	a,#224
19529  3aba a140          	cp	a,#64
19530  3abc 2610          	jrne	L11001
19532  3abe 1e0a          	ldw	x,(OFST-1,sp)
19533  3ac0 e637          	ld	a,(55,x)
19534  3ac2 a501          	bcp	a,#1
19535  3ac4 2608          	jrne	L11001
19536                     ; 4662                 it6802data->DE3DFormat_HDMIFlag = TRUE;
19538  3ac6 1e0a          	ldw	x,(OFST-1,sp)
19539  3ac8 e637          	ld	a,(55,x)
19540  3aca aa01          	or	a,#1
19541  3acc e737          	ld	(55,x),a
19542  3ace               L11001:
19543                     ; 4665             if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (it6802data->DE3DFormat_HDMIFlag))
19545  3ace 1e0a          	ldw	x,(OFST-1,sp)
19546  3ad0 e62e          	ld	a,(46,x)
19547  3ad2 a4e0          	and	a,#224
19548  3ad4 a140          	cp	a,#64
19549  3ad6 2704          	jreq	L236
19550  3ad8 ac533d53      	jpf	L1477
19551  3adc               L236:
19553  3adc 1e0a          	ldw	x,(OFST-1,sp)
19554  3ade e637          	ld	a,(55,x)
19555  3ae0 a501          	bcp	a,#1
19556  3ae2 2604          	jrne	L436
19557  3ae4 ac533d53      	jpf	L1477
19558  3ae8               L436:
19559                     ; 4667                 if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (!it6802data->FramePacking_Flag))
19561  3ae8 1e0a          	ldw	x,(OFST-1,sp)
19562  3aea e62f          	ld	a,(47,x)
19563  3aec a5f0          	bcp	a,#240
19564  3aee 2624          	jrne	L51001
19566  3af0 1e0a          	ldw	x,(OFST-1,sp)
19567  3af2 e637          	ld	a,(55,x)
19568  3af4 a502          	bcp	a,#2
19569  3af6 261c          	jrne	L51001
19570                     ; 4669                     it6802data->FramePacking_Flag   = TRUE;
19572  3af8 1e0a          	ldw	x,(OFST-1,sp)
19573  3afa e637          	ld	a,(55,x)
19574  3afc aa02          	or	a,#2
19575  3afe e737          	ld	(55,x),a
19576                     ; 4670                     it6802data->TopAndBottom_Flag   = FALSE;
19578  3b00 1e0a          	ldw	x,(OFST-1,sp)
19579  3b02 e637          	ld	a,(55,x)
19580  3b04 a4fb          	and	a,#251
19581  3b06 e737          	ld	(55,x),a
19582                     ; 4671                     it6802data->SideBySide_Flag     = FALSE;
19584  3b08 1e0a          	ldw	x,(OFST-1,sp)
19585  3b0a e637          	ld	a,(55,x)
19586  3b0c a4f7          	and	a,#247
19587  3b0e e737          	ld	(55,x),a
19588                     ; 4672                     it6802data->oldVIC              = 0;
19590  3b10 1e0a          	ldw	x,(OFST-1,sp)
19591  3b12 6f32          	clr	(50,x)
19592  3b14               L51001:
19593                     ; 4675                 if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (it6802data->FramePacking_Flag))
19595  3b14 1e0a          	ldw	x,(OFST-1,sp)
19596  3b16 e62f          	ld	a,(47,x)
19597  3b18 a5f0          	bcp	a,#240
19598  3b1a 266b          	jrne	L71001
19600  3b1c 1e0a          	ldw	x,(OFST-1,sp)
19601  3b1e e637          	ld	a,(55,x)
19602  3b20 a502          	bcp	a,#2
19603  3b22 2763          	jreq	L71001
19604                     ; 4677                     it6802data->newVIC = it6802data->s_Current3DFr.VIC;
19606  3b24 1e0a          	ldw	x,(OFST-1,sp)
19607  3b26 e626          	ld	a,(38,x)
19608  3b28 e733          	ld	(51,x),a
19609                     ; 4678                     if(it6802data->newVIC != it6802data->oldVIC)
19611  3b2a 1e0a          	ldw	x,(OFST-1,sp)
19612  3b2c e633          	ld	a,(51,x)
19613  3b2e 1e0a          	ldw	x,(OFST-1,sp)
19614  3b30 e132          	cp	a,(50,x)
19615  3b32 2753          	jreq	L71001
19616                     ; 4680                         if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) ||
19616                     ; 4681                            (it6802data->s_Current3DFr.VIC == 0x04) ||(it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22))
19618  3b34 1e0a          	ldw	x,(OFST-1,sp)
19619  3b36 e626          	ld	a,(38,x)
19620  3b38 a13c          	cp	a,#60
19621  3b3a 2728          	jreq	L52001
19623  3b3c 1e0a          	ldw	x,(OFST-1,sp)
19624  3b3e e626          	ld	a,(38,x)
19625  3b40 a13e          	cp	a,#62
19626  3b42 2720          	jreq	L52001
19628  3b44 1e0a          	ldw	x,(OFST-1,sp)
19629  3b46 e626          	ld	a,(38,x)
19630  3b48 a113          	cp	a,#19
19631  3b4a 2718          	jreq	L52001
19633  3b4c 1e0a          	ldw	x,(OFST-1,sp)
19634  3b4e e626          	ld	a,(38,x)
19635  3b50 a104          	cp	a,#4
19636  3b52 2710          	jreq	L52001
19638  3b54 1e0a          	ldw	x,(OFST-1,sp)
19639  3b56 e626          	ld	a,(38,x)
19640  3b58 a120          	cp	a,#32
19641  3b5a 2708          	jreq	L52001
19643  3b5c 1e0a          	ldw	x,(OFST-1,sp)
19644  3b5e e626          	ld	a,(38,x)
19645  3b60 a122          	cp	a,#34
19646  3b62 261b          	jrne	L32001
19647  3b64               L52001:
19648                     ; 4684                             it6802data->de3dframe_config.NumActiveBlankLines  =  (unsigned char)v_act_bspace;
19650  3b64 7b08          	ld	a,(OFST-3,sp)
19651  3b66 1e0a          	ldw	x,(OFST-1,sp)
19652  3b68 e71f          	ld	(31,x),a
19653                     ; 4685                             it6802data->de3dframe_config.Format = VERT_PACKED_FULL; // Type of 3D source format is FRAME_PACKING(VERT_PACKED_FULL)
19655  3b6a 1e0a          	ldw	x,(OFST-1,sp)
19656  3b6c a603          	ld	a,#3
19657  3b6e e719          	ld	(25,x),a
19658                     ; 4690 				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is FRAME_PACKING \r\n"));
19660  3b70 ae057f        	ldw	x,#L73001
19661  3b73 8d000000      	callf	f_printf
19664  3b77               L14001:
19665                     ; 4707                         it6802data->oldVIC = it6802data->newVIC;
19667  3b77 1e0a          	ldw	x,(OFST-1,sp)
19668  3b79 e633          	ld	a,(51,x)
19669  3b7b e732          	ld	(50,x),a
19670  3b7d 2008          	jra	L71001
19671  3b7f               L32001:
19672                     ; 4696                             it6802data->de3dframe_config.Format    =  6; // Type of 3D source format is UNDEFINED_FORMAT
19674  3b7f 1e0a          	ldw	x,(OFST-1,sp)
19675  3b81 a606          	ld	a,#6
19676  3b83 e719          	ld	(25,x),a
19677  3b85 20f0          	jra	L14001
19678  3b87               L71001:
19679                     ; 4711                 if(((it6802data->s_Current3DFr.PB5&0xF0) == TOP_AND_BOTTOM) && (!it6802data->TopAndBottom_Flag))
19681  3b87 1e0a          	ldw	x,(OFST-1,sp)
19682  3b89 e62f          	ld	a,(47,x)
19683  3b8b a4f0          	and	a,#240
19684  3b8d a160          	cp	a,#96
19685  3b8f 2704          	jreq	L636
19686  3b91 ac203c20      	jpf	L34001
19687  3b95               L636:
19689  3b95 1e0a          	ldw	x,(OFST-1,sp)
19690  3b97 e637          	ld	a,(55,x)
19691  3b99 a504          	bcp	a,#4
19692  3b9b 2704          	jreq	L046
19693  3b9d ac203c20      	jpf	L34001
19694  3ba1               L046:
19695                     ; 4713                     if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
19695                     ; 4714                        (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
19697  3ba1 1e0a          	ldw	x,(OFST-1,sp)
19698  3ba3 e626          	ld	a,(38,x)
19699  3ba5 a13c          	cp	a,#60
19700  3ba7 2748          	jreq	L74001
19702  3ba9 1e0a          	ldw	x,(OFST-1,sp)
19703  3bab e626          	ld	a,(38,x)
19704  3bad a13e          	cp	a,#62
19705  3baf 2740          	jreq	L74001
19707  3bb1 1e0a          	ldw	x,(OFST-1,sp)
19708  3bb3 e626          	ld	a,(38,x)
19709  3bb5 a113          	cp	a,#19
19710  3bb7 2738          	jreq	L74001
19712  3bb9 1e0a          	ldw	x,(OFST-1,sp)
19713  3bbb e626          	ld	a,(38,x)
19714  3bbd a104          	cp	a,#4
19715  3bbf 2730          	jreq	L74001
19717  3bc1 1e0a          	ldw	x,(OFST-1,sp)
19718  3bc3 e626          	ld	a,(38,x)
19719  3bc5 a105          	cp	a,#5
19720  3bc7 2728          	jreq	L74001
19722  3bc9 1e0a          	ldw	x,(OFST-1,sp)
19723  3bcb e626          	ld	a,(38,x)
19724  3bcd a114          	cp	a,#20
19725  3bcf 2720          	jreq	L74001
19727  3bd1 1e0a          	ldw	x,(OFST-1,sp)
19728  3bd3 e626          	ld	a,(38,x)
19729  3bd5 a120          	cp	a,#32
19730  3bd7 2718          	jreq	L74001
19732  3bd9 1e0a          	ldw	x,(OFST-1,sp)
19733  3bdb e626          	ld	a,(38,x)
19734  3bdd a122          	cp	a,#34
19735  3bdf 2710          	jreq	L74001
19737  3be1 1e0a          	ldw	x,(OFST-1,sp)
19738  3be3 e626          	ld	a,(38,x)
19739  3be5 a11f          	cp	a,#31
19740  3be7 2708          	jreq	L74001
19742  3be9 1e0a          	ldw	x,(OFST-1,sp)
19743  3beb e626          	ld	a,(38,x)
19744  3bed a110          	cp	a,#16
19745  3bef 2627          	jrne	L54001
19746  3bf1               L74001:
19747                     ; 4716                         it6802data->de3dframe_config.Format   =  VERT_PACKED_HALF; // Type of 3D source format is TOP_AND_BOTTOM(VERT_PACKED_HALF)
19749  3bf1 1e0a          	ldw	x,(OFST-1,sp)
19750  3bf3 a602          	ld	a,#2
19751  3bf5 e719          	ld	(25,x),a
19752                     ; 4721 				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is TOP_AND_BOTTOM \r\n"));
19754  3bf7 ae0553        	ldw	x,#L17001
19755  3bfa 8d000000      	callf	f_printf
19758  3bfe               L37001:
19759                     ; 4736                     it6802data->FramePacking_Flag   = FALSE;
19761  3bfe 1e0a          	ldw	x,(OFST-1,sp)
19762  3c00 e637          	ld	a,(55,x)
19763  3c02 a4fd          	and	a,#253
19764  3c04 e737          	ld	(55,x),a
19765                     ; 4737                     it6802data->TopAndBottom_Flag   = TRUE;
19767  3c06 1e0a          	ldw	x,(OFST-1,sp)
19768  3c08 e637          	ld	a,(55,x)
19769  3c0a aa04          	or	a,#4
19770  3c0c e737          	ld	(55,x),a
19771                     ; 4738                     it6802data->SideBySide_Flag     = FALSE;
19773  3c0e 1e0a          	ldw	x,(OFST-1,sp)
19774  3c10 e637          	ld	a,(55,x)
19775  3c12 a4f7          	and	a,#247
19776  3c14 e737          	ld	(55,x),a
19777  3c16 2008          	jra	L34001
19778  3c18               L54001:
19779                     ; 4726                         it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT
19781  3c18 1e0a          	ldw	x,(OFST-1,sp)
19782  3c1a a606          	ld	a,#6
19783  3c1c e719          	ld	(25,x),a
19784  3c1e 20de          	jra	L37001
19785  3c20               L34001:
19786                     ; 4741                 if(((it6802data->s_Current3DFr.PB5&0xF0) == SIDE_BY_SIDE) && (!it6802data->SideBySide_Flag))
19788  3c20 1e0a          	ldw	x,(OFST-1,sp)
19789  3c22 e62f          	ld	a,(47,x)
19790  3c24 a4f0          	and	a,#240
19791  3c26 a180          	cp	a,#128
19792  3c28 2704          	jreq	L246
19793  3c2a acb93cb9      	jpf	L57001
19794  3c2e               L246:
19796  3c2e 1e0a          	ldw	x,(OFST-1,sp)
19797  3c30 e637          	ld	a,(55,x)
19798  3c32 a508          	bcp	a,#8
19799  3c34 2704          	jreq	L446
19800  3c36 acb93cb9      	jpf	L57001
19801  3c3a               L446:
19802                     ; 4743                     if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
19802                     ; 4744                        (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
19804  3c3a 1e0a          	ldw	x,(OFST-1,sp)
19805  3c3c e626          	ld	a,(38,x)
19806  3c3e a13c          	cp	a,#60
19807  3c40 2748          	jreq	L10101
19809  3c42 1e0a          	ldw	x,(OFST-1,sp)
19810  3c44 e626          	ld	a,(38,x)
19811  3c46 a13e          	cp	a,#62
19812  3c48 2740          	jreq	L10101
19814  3c4a 1e0a          	ldw	x,(OFST-1,sp)
19815  3c4c e626          	ld	a,(38,x)
19816  3c4e a113          	cp	a,#19
19817  3c50 2738          	jreq	L10101
19819  3c52 1e0a          	ldw	x,(OFST-1,sp)
19820  3c54 e626          	ld	a,(38,x)
19821  3c56 a104          	cp	a,#4
19822  3c58 2730          	jreq	L10101
19824  3c5a 1e0a          	ldw	x,(OFST-1,sp)
19825  3c5c e626          	ld	a,(38,x)
19826  3c5e a105          	cp	a,#5
19827  3c60 2728          	jreq	L10101
19829  3c62 1e0a          	ldw	x,(OFST-1,sp)
19830  3c64 e626          	ld	a,(38,x)
19831  3c66 a114          	cp	a,#20
19832  3c68 2720          	jreq	L10101
19834  3c6a 1e0a          	ldw	x,(OFST-1,sp)
19835  3c6c e626          	ld	a,(38,x)
19836  3c6e a120          	cp	a,#32
19837  3c70 2718          	jreq	L10101
19839  3c72 1e0a          	ldw	x,(OFST-1,sp)
19840  3c74 e626          	ld	a,(38,x)
19841  3c76 a122          	cp	a,#34
19842  3c78 2710          	jreq	L10101
19844  3c7a 1e0a          	ldw	x,(OFST-1,sp)
19845  3c7c e626          	ld	a,(38,x)
19846  3c7e a11f          	cp	a,#31
19847  3c80 2708          	jreq	L10101
19849  3c82 1e0a          	ldw	x,(OFST-1,sp)
19850  3c84 e626          	ld	a,(38,x)
19851  3c86 a110          	cp	a,#16
19852  3c88 2627          	jrne	L77001
19853  3c8a               L10101:
19854                     ; 4746                         it6802data->de3dframe_config.Format   =  HORIZ_PACKED_HALF; // Type of 3D source format is SIDE_BY_SIDE(HORIZ_PACKED_HALF)
19856  3c8a 1e0a          	ldw	x,(OFST-1,sp)
19857  3c8c a604          	ld	a,#4
19858  3c8e e719          	ld	(25,x),a
19859                     ; 4751 						MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is SIDE_BY_SIDE \r\n"));
19861  3c90 ae0529        	ldw	x,#L32101
19862  3c93 8d000000      	callf	f_printf
19865  3c97               L52101:
19866                     ; 4766                     it6802data->FramePacking_Flag   = FALSE;
19868  3c97 1e0a          	ldw	x,(OFST-1,sp)
19869  3c99 e637          	ld	a,(55,x)
19870  3c9b a4fd          	and	a,#253
19871  3c9d e737          	ld	(55,x),a
19872                     ; 4767                     it6802data->TopAndBottom_Flag   = FALSE;
19874  3c9f 1e0a          	ldw	x,(OFST-1,sp)
19875  3ca1 e637          	ld	a,(55,x)
19876  3ca3 a4fb          	and	a,#251
19877  3ca5 e737          	ld	(55,x),a
19878                     ; 4768                     it6802data->SideBySide_Flag     = TRUE;
19880  3ca7 1e0a          	ldw	x,(OFST-1,sp)
19881  3ca9 e637          	ld	a,(55,x)
19882  3cab aa08          	or	a,#8
19883  3cad e737          	ld	(55,x),a
19884  3caf 2008          	jra	L57001
19885  3cb1               L77001:
19886                     ; 4756                         it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT
19888  3cb1 1e0a          	ldw	x,(OFST-1,sp)
19889  3cb3 a606          	ld	a,#6
19890  3cb5 e719          	ld	(25,x),a
19891  3cb7 20de          	jra	L52101
19892  3cb9               L57001:
19893                     ; 4786 				MHLRX_DEBUG_PRINTF(printf("\r\nIT680x - HDMI_3D_SourceConfiguration: \r\n"));
19895  3cb9 ae04fe        	ldw	x,#L72101
19896  3cbc 8d000000      	callf	f_printf
19898                     ; 4787 				MHLRX_DEBUG_PRINTF(printf("        Format                   = %d \r\n",it6802data->de3dframe_config.Format));
19900  3cc0 1e0a          	ldw	x,(OFST-1,sp)
19901  3cc2 e619          	ld	a,(25,x)
19902  3cc4 88            	push	a
19903  3cc5 ae04d5        	ldw	x,#L13101
19904  3cc8 8d000000      	callf	f_printf
19906  3ccc 84            	pop	a
19907                     ; 4788 				MHLRX_DEBUG_PRINTF(printf("        LR_Reference             = %d \r\n",it6802data->de3dframe_config.LR_Reference));
19909  3ccd 1e0a          	ldw	x,(OFST-1,sp)
19910  3ccf e61a          	ld	a,(26,x)
19911  3cd1 88            	push	a
19912  3cd2 ae04ac        	ldw	x,#L33101
19913  3cd5 8d000000      	callf	f_printf
19915  3cd9 84            	pop	a
19916                     ; 4789 				MHLRX_DEBUG_PRINTF(printf("        FrameDominance           = %d \r\n",it6802data->de3dframe_config.FrameDominance));
19918  3cda 1e0a          	ldw	x,(OFST-1,sp)
19919  3cdc e61b          	ld	a,(27,x)
19920  3cde 88            	push	a
19921  3cdf ae0483        	ldw	x,#L53101
19922  3ce2 8d000000      	callf	f_printf
19924  3ce6 84            	pop	a
19925                     ; 4790 				MHLRX_DEBUG_PRINTF(printf("        LR_Encoding              = %d \r\n",it6802data->de3dframe_config.LR_Encoding));
19927  3ce7 1e0a          	ldw	x,(OFST-1,sp)
19928  3ce9 e61c          	ld	a,(28,x)
19929  3ceb 88            	push	a
19930  3cec ae045a        	ldw	x,#L73101
19931  3cef 8d000000      	callf	f_printf
19933  3cf3 84            	pop	a
19934                     ; 4791 				MHLRX_DEBUG_PRINTF(printf("        TB_Reference             = %d \r\n",it6802data->de3dframe_config.TB_Reference));
19936  3cf4 1e0a          	ldw	x,(OFST-1,sp)
19937  3cf6 e61d          	ld	a,(29,x)
19938  3cf8 88            	push	a
19939  3cf9 ae0431        	ldw	x,#L14101
19940  3cfc 8d000000      	callf	f_printf
19942  3d00 84            	pop	a
19943                     ; 4792 				MHLRX_DEBUG_PRINTF(printf("        OE_Reference             = %d \r\n",it6802data->de3dframe_config.OE_Reference));
19945  3d01 1e0a          	ldw	x,(OFST-1,sp)
19946  3d03 e61e          	ld	a,(30,x)
19947  3d05 88            	push	a
19948  3d06 ae0408        	ldw	x,#L34101
19949  3d09 8d000000      	callf	f_printf
19951  3d0d 84            	pop	a
19952                     ; 4793 				MHLRX_DEBUG_PRINTF(printf("        NumActiveBlankLines      = %d \r\n",it6802data->de3dframe_config.NumActiveBlankLines));
19954  3d0e 1e0a          	ldw	x,(OFST-1,sp)
19955  3d10 e61f          	ld	a,(31,x)
19956  3d12 88            	push	a
19957  3d13 ae03df        	ldw	x,#L54101
19958  3d16 8d000000      	callf	f_printf
19960  3d1a 84            	pop	a
19961                     ; 4794 				MHLRX_DEBUG_PRINTF(printf("        NumberOfEncodedLines     = %d \r\n",it6802data->de3dframe_config.NumberOfEncodedLines));
19963  3d1b 1e0a          	ldw	x,(OFST-1,sp)
19964  3d1d e620          	ld	a,(32,x)
19965  3d1f 88            	push	a
19966  3d20 ae03b6        	ldw	x,#L74101
19967  3d23 8d000000      	callf	f_printf
19969  3d27 84            	pop	a
19970                     ; 4795 				MHLRX_DEBUG_PRINTF(printf("        LeftEncodedLineLocation  = %d \r\n",it6802data->de3dframe_config.LeftEncodedLineLocation));
19972  3d28 1e0a          	ldw	x,(OFST-1,sp)
19973  3d2a ee21          	ldw	x,(33,x)
19974  3d2c 89            	pushw	x
19975  3d2d ae038d        	ldw	x,#L15101
19976  3d30 8d000000      	callf	f_printf
19978  3d34 85            	popw	x
19979                     ; 4796 				MHLRX_DEBUG_PRINTF(printf("        RightEncodedLineLocation = %d \r\n",it6802data->de3dframe_config.RightEncodedLineLocation));
19981  3d35 1e0a          	ldw	x,(OFST-1,sp)
19982  3d37 ee23          	ldw	x,(35,x)
19983  3d39 89            	pushw	x
19984  3d3a ae0364        	ldw	x,#L35101
19985  3d3d 8d000000      	callf	f_printf
19987  3d41 85            	popw	x
19988                     ; 4797 				MHLRX_DEBUG_PRINTF(printf("        BlankingColor            = %d \r\n",it6802data->de3dframe_config.BlankingColor ));
19990  3d42 1e0a          	ldw	x,(OFST-1,sp)
19991  3d44 e625          	ld	a,(37,x)
19992  3d46 88            	push	a
19993  3d47 ae033b        	ldw	x,#L55101
19994  3d4a 8d000000      	callf	f_printf
19996  3d4e 84            	pop	a
19997                     ; 4800                 return TRUE;
19999  3d4f a601          	ld	a,#1
20001  3d51 2029          	jra	L426
20002  3d53               L1477:
20003                     ; 4804         if(it6802data->DE3DFormat_HDMIFlag)// 3D InfoFrame Packet Type is not valid
20005  3d53 1e0a          	ldw	x,(OFST-1,sp)
20006  3d55 e637          	ld	a,(55,x)
20007  3d57 a501          	bcp	a,#1
20008  3d59 2720          	jreq	L7377
20009                     ; 4815             it6802data->DE3DFormat_HDMIFlag = FALSE;
20011  3d5b 1e0a          	ldw	x,(OFST-1,sp)
20012  3d5d e637          	ld	a,(55,x)
20013  3d5f a4fe          	and	a,#254
20014  3d61 e737          	ld	(55,x),a
20015                     ; 4816             it6802data->FramePacking_Flag   = FALSE;
20017  3d63 1e0a          	ldw	x,(OFST-1,sp)
20018  3d65 e637          	ld	a,(55,x)
20019  3d67 a4fd          	and	a,#253
20020  3d69 e737          	ld	(55,x),a
20021                     ; 4817             it6802data->TopAndBottom_Flag   = FALSE;
20023  3d6b 1e0a          	ldw	x,(OFST-1,sp)
20024  3d6d e637          	ld	a,(55,x)
20025  3d6f a4fb          	and	a,#251
20026  3d71 e737          	ld	(55,x),a
20027                     ; 4818             it6802data->SideBySide_Flag     = FALSE;
20029  3d73 1e0a          	ldw	x,(OFST-1,sp)
20030  3d75 e637          	ld	a,(55,x)
20031  3d77 a4f7          	and	a,#247
20032  3d79 e737          	ld	(55,x),a
20033  3d7b               L7377:
20034                     ; 4824     return FALSE;
20036  3d7b 4f            	clr	a
20038  3d7c               L426:
20040  3d7c 5b0c          	addw	sp,#12
20041  3d7e 87            	retf
20633                     	xdef	_t_3d_syncgen
20634                     	xdef	f_get_vid_info
20635                     	xdef	f_show_vid_info
20636                     	xdef	_AStateStr
20637                     	xdef	_VStateStr
20638                     	xdef	_Default_Edid_Block
20639                     	xdef	_bCSCMtx_YUV2RGB_ITU709_0_255
20640                     	xdef	_bCSCMtx_YUV2RGB_ITU709_16_235
20641                     	xdef	_bCSCMtx_YUV2RGB_ITU601_0_255
20642                     	xdef	_bCSCMtx_YUV2RGB_ITU601_16_235
20643                     	xdef	_bCSCMtx_RGB2YUV_ITU709_0_255
20644                     	xdef	_bCSCMtx_RGB2YUV_ITU709_16_235
20645                     	xdef	_bCSCMtx_RGB2YUV_ITU601_0_255
20646                     	xdef	_bCSCMtx_RGB2YUV_ITU601_16_235
20647                     	xdef	_SuppRCPCode
20648                     	xdef	_SuppRAPCode
20649                     	switch	.bss
20650  0000               _rxcurport:
20651  0000 00            	ds.b	1
20652                     	xdef	_rxcurport
20653  0001               _rxphyD:
20654  0001 00            	ds.b	1
20655                     	xdef	_rxphyD
20656  0002               _rxphyC:
20657  0002 00            	ds.b	1
20658                     	xdef	_rxphyC
20659  0003               _rxphyB:
20660  0003 00            	ds.b	1
20661                     	xdef	_rxphyB
20662  0004               _rxphyA:
20663  0004 00            	ds.b	1
20664                     	xdef	_rxphyA
20665  0005               _rxphyadr:
20666  0005 00000000      	ds.b	4
20667                     	xdef	_rxphyadr
20668  0009               _txphylevel:
20669  0009 00            	ds.b	1
20670                     	xdef	_txphylevel
20671  000a               _txphyD:
20672  000a 00            	ds.b	1
20673                     	xdef	_txphyD
20674  000b               _txphyC:
20675  000b 00            	ds.b	1
20676                     	xdef	_txphyC
20677  000c               _txphyB:
20678  000c 00            	ds.b	1
20679                     	xdef	_txphyB
20680  000d               _txphyA:
20681  000d 00            	ds.b	1
20682                     	xdef	_txphyA
20683  000e               _txphyadr:
20684  000e 0000          	ds.b	2
20685                     	xdef	_txphyadr
20686  0010               _VSDB_Addr:
20687  0010 00            	ds.b	1
20688                     	xdef	_VSDB_Addr
20689                     	xdef	_OldRegBA
20690                     	xdef	_OldRegB9
20691                     	xdef	_OldRegB5
20692                     	xdef	_OldRegB4
20693  0011               _VIC:
20694  0011 0000          	ds.b	2
20695                     	xdef	_VIC
20696                     	xdef	_OutCD
20697                     	xdef	_OutColorMode
20698                     	xdef	_InColorMode
20699  0013               _CurVTiming:
20700  0013 000000000000  	ds.b	26
20701                     	xdef	_CurVTiming
20702  002d               _CurTMDSCLK:
20703  002d 0000          	ds.b	2
20704                     	xdef	_CurTMDSCLK
20705                     	xdef	_DeviceID
20706                     	xdef	_wakeupfailcnt
20707                     	xdef	_EnMHL3DSupport
20708                     	xdef	_EnMSCWrBurst3D
20709                     	xdef	_TxWrBstSeq
20710  002f               _wrburstnum:
20711  002f 00            	ds.b	1
20712                     	xdef	_wrburstnum
20713  0030               _wrburstoff:
20714  0030 00            	ds.b	1
20715                     	xdef	_wrburstoff
20716                     	xdef	_V3D_EntryCnt
20717  0031               _it6802DEV:
20718  0031 000000000000  	ds.b	119
20719                     	xdef	_it6802DEV
20720                     	xref	f_IR_DelayNMiliseconds
20721                     	xref	f_HDMI_HotPlug
20722                     	xref	f_SWI2C_WriteBytes
20723                     	xref	f_SWI2C_ReadBytes
20724                     	xdef	f_IT6802_fsm
20725                     	xdef	f_RCPKeyPush
20726                     	xdef	f_it6802PortSelect
20727                     	xdef	f_IT6802_fsm_init
20728                     	xref	f_printf
20729                     	switch	.const
20730  033b               L55101:
20731  033b 202020202020  	dc.b	"        BlankingCo"
20732  034d 6c6f72202020  	dc.b	"lor            = %"
20733  035f 64200d        	dc.b	"d ",13
20734  0362 0a00          	dc.b	10,0
20735  0364               L35101:
20736  0364 202020202020  	dc.b	"        RightEncod"
20737  0376 65644c696e65  	dc.b	"edLineLocation = %"
20738  0388 64200d        	dc.b	"d ",13
20739  038b 0a00          	dc.b	10,0
20740  038d               L15101:
20741  038d 202020202020  	dc.b	"        LeftEncode"
20742  039f 644c696e654c  	dc.b	"dLineLocation  = %"
20743  03b1 64200d        	dc.b	"d ",13
20744  03b4 0a00          	dc.b	10,0
20745  03b6               L74101:
20746  03b6 202020202020  	dc.b	"        NumberOfEn"
20747  03c8 636f6465644c  	dc.b	"codedLines     = %"
20748  03da 64200d        	dc.b	"d ",13
20749  03dd 0a00          	dc.b	10,0
20750  03df               L54101:
20751  03df 202020202020  	dc.b	"        NumActiveB"
20752  03f1 6c616e6b4c69  	dc.b	"lankLines      = %"
20753  0403 64200d        	dc.b	"d ",13
20754  0406 0a00          	dc.b	10,0
20755  0408               L34101:
20756  0408 202020202020  	dc.b	"        OE_Referen"
20757  041a 636520202020  	dc.b	"ce             = %"
20758  042c 64200d        	dc.b	"d ",13
20759  042f 0a00          	dc.b	10,0
20760  0431               L14101:
20761  0431 202020202020  	dc.b	"        TB_Referen"
20762  0443 636520202020  	dc.b	"ce             = %"
20763  0455 64200d        	dc.b	"d ",13
20764  0458 0a00          	dc.b	10,0
20765  045a               L73101:
20766  045a 202020202020  	dc.b	"        LR_Encodin"
20767  046c 672020202020  	dc.b	"g              = %"
20768  047e 64200d        	dc.b	"d ",13
20769  0481 0a00          	dc.b	10,0
20770  0483               L53101:
20771  0483 202020202020  	dc.b	"        FrameDomin"
20772  0495 616e63652020  	dc.b	"ance           = %"
20773  04a7 64200d        	dc.b	"d ",13
20774  04aa 0a00          	dc.b	10,0
20775  04ac               L33101:
20776  04ac 202020202020  	dc.b	"        LR_Referen"
20777  04be 636520202020  	dc.b	"ce             = %"
20778  04d0 64200d        	dc.b	"d ",13
20779  04d3 0a00          	dc.b	10,0
20780  04d5               L13101:
20781  04d5 202020202020  	dc.b	"        Format    "
20782  04e7 202020202020  	dc.b	"               = %"
20783  04f9 64200d        	dc.b	"d ",13
20784  04fc 0a00          	dc.b	10,0
20785  04fe               L72101:
20786  04fe 0d0a49543638  	dc.b	13,10,73,84,54,56
20787  0504 3078202d2048  	dc.b	"0x - HDMI_3D_Sourc"
20788  0516 65436f6e6669  	dc.b	"eConfiguration: ",13
20789  0527 0a00          	dc.b	10,0
20790  0529               L32101:
20791  0529 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20792  053b 524d41542069  	dc.b	"RMAT is SIDE_BY_SI"
20793  054d 4445200d      	dc.b	"DE ",13
20794  0551 0a00          	dc.b	10,0
20795  0553               L17001:
20796  0553 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20797  0565 524d41542069  	dc.b	"RMAT is TOP_AND_BO"
20798  0577 54544f4d200d  	dc.b	"TTOM ",13
20799  057d 0a00          	dc.b	10,0
20800  057f               L73001:
20801  057f 495436383078  	dc.b	"IT680x - HDMI_3DFO"
20802  0591 524d41542069  	dc.b	"RMAT is FRAME_PACK"
20803  05a3 494e47200d    	dc.b	"ING ",13
20804  05a8 0a00          	dc.b	10,0
20805  05aa               L3777:
20806  05aa 202020202020  	dc.b	"        Record HDM"
20807  05bc 492076656e64  	dc.b	"I vender specific "
20808  05ce 696e666f7266  	dc.b	"inforframe PB7 = 0"
20809  05e0 782530326258  	dc.b	"x%02bX ",13
20810  05e8 0a00          	dc.b	10,0
20811  05ea               L1777:
20812  05ea 202020202020  	dc.b	"        Record HDM"
20813  05fc 492076656e64  	dc.b	"I vender specific "
20814  060e 696e666f7266  	dc.b	"inforframe PB6 = 0"
20815  0620 782530326258  	dc.b	"x%02bX ",13
20816  0628 0a00          	dc.b	10,0
20817  062a               L7677:
20818  062a 202020202020  	dc.b	"        Record HDM"
20819  063c 492076656e64  	dc.b	"I vender specific "
20820  064e 696e666f7266  	dc.b	"inforframe PB5 = 0"
20821  0660 782530326258  	dc.b	"x%02bX ",13
20822  0668 0a00          	dc.b	10,0
20823  066a               L5677:
20824  066a 202020202020  	dc.b	"        Record HDM"
20825  067c 492076656e64  	dc.b	"I vender specific "
20826  068e 696e666f7266  	dc.b	"inforframe PB4 = 0"
20827  06a0 782530326258  	dc.b	"x%02bX ",13
20828  06a8 0a00          	dc.b	10,0
20829  06aa               L3677:
20830  06aa 202020202020  	dc.b	"        Record HDM"
20831  06bc 492076656e64  	dc.b	"I vender specific "
20832  06ce 696e666f7266  	dc.b	"inforframe PB3 = 0"
20833  06e0 782530326258  	dc.b	"x%02bX ",13
20834  06e8 0a00          	dc.b	10,0
20835  06ea               L1677:
20836  06ea 202020202020  	dc.b	"        Record HDM"
20837  06fc 492076656e64  	dc.b	"I vender specific "
20838  070e 696e666f7266  	dc.b	"inforframe PB2 = 0"
20839  0720 782530326258  	dc.b	"x%02bX ",13
20840  0728 0a00          	dc.b	10,0
20841  072a               L7577:
20842  072a 202020202020  	dc.b	"        Record HDM"
20843  073c 492076656e64  	dc.b	"I vender specific "
20844  074e 696e666f7266  	dc.b	"inforframe PB1 = 0"
20845  0760 782530326258  	dc.b	"x%02bX ",13
20846  0768 0a00          	dc.b	10,0
20847  076a               L5577:
20848  076a 202020202020  	dc.b	"        Record HDM"
20849  077c 492076656e64  	dc.b	"I vender specific "
20850  078e 696e666f7266  	dc.b	"inforframe PB0 = 0"
20851  07a0 782530326258  	dc.b	"x%02bX ",13
20852  07a8 0a00          	dc.b	10,0
20853  07aa               L3577:
20854  07aa 202020202020  	dc.b	"        Record HDM"
20855  07bc 492076656e64  	dc.b	"I vender specific "
20856  07ce 696e666f7266  	dc.b	"inforframe HB2 = 0"
20857  07e0 782530326258  	dc.b	"x%02bX ",13
20858  07e8 0a00          	dc.b	10,0
20859  07ea               L1577:
20860  07ea 202020202020  	dc.b	"        Record HDM"
20861  07fc 492076656e64  	dc.b	"I vender specific "
20862  080e 696e666f7266  	dc.b	"inforframe HB1 = 0"
20863  0820 782530326258  	dc.b	"x%02bX ",13
20864  0828 0a00          	dc.b	10,0
20865  082a               L7477:
20866  082a 202020202020  	dc.b	"        Record HDM"
20867  083c 492076656e64  	dc.b	"I vender specific "
20868  084e 696e666f7266  	dc.b	"inforframe HB0 = 0"
20869  0860 782530326258  	dc.b	"x%02bX ",13
20870  0868 0a00          	dc.b	10,0
20871  086a               L5477:
20872  086a 202020202020  	dc.b	"        HDMI VIC ="
20873  087c 203078253032  	dc.b	" 0x%02bX ",13
20874  0886 0a00          	dc.b	10,0
20875  0888               L3477:
20876  0888 0d0a49543635  	dc.b	13,10,73,84,54,53
20877  088e 3378202d2048  	dc.b	"3x - HDMI_DumpDE3D"
20878  08a0 4672616d6549  	dc.b	"FrameInfo: ",13
20879  08ac 0a00          	dc.b	10,0
20880  08ae               L5767:
20881  08ae 205265674241  	dc.b	" RegBA=%x ",13
20882  08b9 0a00          	dc.b	10,0
20883  08bb               L3767:
20884  08bb 205265674239  	dc.b	" RegB9=%x ",13
20885  08c6 0a00          	dc.b	10,0
20886  08c8               L1767:
20887  08c8 205265674235  	dc.b	" RegB5=%x ",13
20888  08d3 0a00          	dc.b	10,0
20889  08d5               L7667:
20890  08d5 205265674234  	dc.b	" RegB4=%x ",13
20891  08e0 0a00          	dc.b	10,0
20892  08e2               L5667:
20893  08e2 4853796e6350  	dc.b	"HSyncPol = Negativ"
20894  08f4 650d          	dc.b	"e",13
20895  08f6 0a00          	dc.b	10,0
20896  08f8               L1667:
20897  08f8 4853796e6350  	dc.b	"HSyncPol = Positiv"
20898  090a 650d          	dc.b	"e",13
20899  090c 0a00          	dc.b	10,0
20900  090e               L5567:
20901  090e 5653796e6350  	dc.b	"VSyncPol = Negativ"
20902  0920 650d          	dc.b	"e",13
20903  0922 0a00          	dc.b	10,0
20904  0924               L1567:
20905  0924 5653796e6350  	dc.b	"VSyncPol = Positiv"
20906  0936 650d          	dc.b	"e",13
20907  0938 0a00          	dc.b	10,0
20908  093a               L5467:
20909  093a 5363616e4d6f  	dc.b	"ScanMode = InterLa"
20910  094c 6365640d      	dc.b	"ced",13
20911  0950 0a00          	dc.b	10,0
20912  0952               L1467:
20913  0952 5363616e4d6f  	dc.b	"ScanMode = Progres"
20914  0964 736976650d    	dc.b	"sive",13
20915  0969 0a00          	dc.b	10,0
20916  096b               L5367:
20917  096b 564261636b50  	dc.b	"VBackPorch = %d",13
20918  097b 0a00          	dc.b	10,0
20919  097d               L3367:
20920  097d 5653796e6357  	dc.b	"VSyncWidth = %d",13
20921  098d 0a00          	dc.b	10,0
20922  098f               L1367:
20923  098f 5646726f6e74  	dc.b	"VFrontPorch = %d",13
20924  09a0 0a00          	dc.b	10,0
20925  09a2               L7267:
20926  09a2 484261636b50  	dc.b	"HBackPorch = %d",13
20927  09b2 0a00          	dc.b	10,0
20928  09b4               L5267:
20929  09b4 4853796e6357  	dc.b	"HSyncWidth = %d",13
20930  09c4 0a00          	dc.b	10,0
20931  09c6               L3267:
20932  09c6 4846726f6e74  	dc.b	"HFrontPorch = %d",13
20933  09d7 0a00          	dc.b	10,0
20934  09d9               L1267:
20935  09d9 56546f74616c  	dc.b	"VTotal = %d",13
20936  09e5 0a00          	dc.b	10,0
20937  09e7               L7167:
20938  09e7 48546f74616c  	dc.b	"HTotal = %d",13
20939  09f3 0a00          	dc.b	10,0
20940  09f5               L5167:
20941  09f5 564163746976  	dc.b	"VActive = %d",13
20942  0a02 0a00          	dc.b	10,0
20943  0a04               L3167:
20944  0a04 484163746976  	dc.b	"HActive = %d",13
20945  0a11 0a00          	dc.b	10,0
20946  0a13               L1167:
20947  0a13 425553204d4f  	dc.b	"BUS MODE : HDMI Mo"
20948  0a25 64650d        	dc.b	"de",13
20949  0a28 0a00          	dc.b	10,0
20950  0a2a               L5067:
20951  0a2a 425553204d4f  	dc.b	"BUS MODE : MHL 24 "
20952  0a3c 62697473204d  	dc.b	"bits Mode",13
20953  0a46 0a00          	dc.b	10,0
20954  0a48               L1067:
20955  0a48 425553204d4f  	dc.b	"BUS MODE : MHL Pac"
20956  0a5a 6b506978656c  	dc.b	"kPixel Mode",13
20957  0a66 0a00          	dc.b	10,0
20958  0a68               L3757:
20959  0a68 4f7574707574  	dc.b	"Output Color Mode "
20960  0a7a 3d2052657365  	dc.b	"= Reserved !!!",13
20961  0a89 0a00          	dc.b	10,0
20962  0a8b               L1757:
20963  0a8b 4f7574707574  	dc.b	"Output Color Mode "
20964  0a9d 3d2059436243  	dc.b	"= YCbCr444",13
20965  0aa8 0a00          	dc.b	10,0
20966  0aaa               L7657:
20967  0aaa 4f7574707574  	dc.b	"Output Color Mode "
20968  0abc 3d2059436243  	dc.b	"= YCbCr422",13
20969  0ac7 0a00          	dc.b	10,0
20970  0ac9               L5657:
20971  0ac9 4f7574707574  	dc.b	"Output Color Mode "
20972  0adb 3d2052474234  	dc.b	"= RGB444",13
20973  0ae4 0a00          	dc.b	10,0
20974  0ae6               L7557:
20975  0ae6 496e70757420  	dc.b	"Input Color Mode ="
20976  0af8 205265736572  	dc.b	" Reserved !!!",13
20977  0b06 0a00          	dc.b	10,0
20978  0b08               L5557:
20979  0b08 496e70757420  	dc.b	"Input Color Mode ="
20980  0b1a 205943624372  	dc.b	" YCbCr444",13
20981  0b24 0a00          	dc.b	10,0
20982  0b26               L3557:
20983  0b26 496e70757420  	dc.b	"Input Color Mode ="
20984  0b38 205943624372  	dc.b	" YCbCr422",13
20985  0b42 0a00          	dc.b	10,0
20986  0b44               L1557:
20987  0b44 496e70757420  	dc.b	"Input Color Mode ="
20988  0b56 205247423434  	dc.b	" RGB444",13
20989  0b5e 0a00          	dc.b	10,0
20990  0b60               L7357:
20991  0b60 4f7574707574  	dc.b	"Output ColorDepth "
20992  0b72 3d2032342062  	dc.b	"= 24 bits per pixe"
20993  0b84 6c0d          	dc.b	"l",13
20994  0b86 0a00          	dc.b	10,0
20995  0b88               L5357:
20996  0b88 4f7574707574  	dc.b	"Output ColorDepth "
20997  0b9a 3d2033362062  	dc.b	"= 36 bits per pixe"
20998  0bac 6c0d          	dc.b	"l",13
20999  0bae 0a00          	dc.b	10,0
21000  0bb0               L3357:
21001  0bb0 4f7574707574  	dc.b	"Output ColorDepth "
21002  0bc2 3d2033302062  	dc.b	"= 30 bits per pixe"
21003  0bd4 6c0d          	dc.b	"l",13
21004  0bd6 0a00          	dc.b	10,0
21005  0bd8               L5257:
21006  0bd8 0d0a496e7075  	dc.b	13,10,73,110,112,117
21007  0bde 7420436f6c6f  	dc.b	"t ColorDepth = 24 "
21008  0bf0 626974732070  	dc.b	"bits per pixel",13
21009  0bff 0a00          	dc.b	10,0
21010  0c01               L3257:
21011  0c01 0d0a496e7075  	dc.b	13,10,73,110,112,117
21012  0c07 7420436f6c6f  	dc.b	"t ColorDepth = 36 "
21013  0c19 626974732070  	dc.b	"bits per pixel",13
21014  0c28 0a00          	dc.b	10,0
21015  0c2a               L1257:
21016  0c2a 0d0a496e7075  	dc.b	13,10,73,110,112,117
21017  0c30 7420436f6c6f  	dc.b	"t ColorDepth = 30 "
21018  0c42 626974732070  	dc.b	"bits per pixel",13
21019  0c51 0a00          	dc.b	10,0
21020  0c53               L1537:
21021  0c53 343434343434  	dc.b	"44444444 RegBA=%x "
21022  0c65 0d0a00        	dc.b	13,10,0
21023  0c68               L5437:
21024  0c68 333333333333  	dc.b	"33333333 RegB9=%x "
21025  0c7a 0d0a00        	dc.b	13,10,0
21026  0c7d               L1437:
21027  0c7d 323232323232  	dc.b	"22222222 RegB5=%x "
21028  0c8f 0d0a00        	dc.b	13,10,0
21029  0c92               L5337:
21030  0c92 313131313131  	dc.b	"11111111 RegB4=%x "
21031  0ca4 0d0a00        	dc.b	13,10,0
21032  0ca7               L3627:
21033  0ca7 2050315f5265  	dc.b	" P1_Rec_R_CS=%02bX"
21034  0cb9 202050315f52  	dc.b	"  P1_Rec_R_RS=%02b"
21035  0ccb 5820200d      	dc.b	"X  ",13
21036  0ccf 0a00          	dc.b	10,0
21037  0cd1               L1627:
21038  0cd1 2050315f5265  	dc.b	" P1_Rec_G_CS=%02bX"
21039  0ce3 202050315f52  	dc.b	"  P1_Rec_G_RS=%02b"
21040  0cf5 5820200d      	dc.b	"X  ",13
21041  0cf9 0a00          	dc.b	10,0
21042  0cfb               L7527:
21043  0cfb 2050315f5265  	dc.b	" P1_Rec_B_CS=%02bX"
21044  0d0d 202050315f52  	dc.b	"  P1_Rec_B_RS=%02b"
21045  0d1f 5820200d      	dc.b	"X  ",13
21046  0d23 0a00          	dc.b	10,0
21047  0d25               L5527:
21048  0d25 232323232050  	dc.b	"#### Port 1 EQ don"
21049  0d37 6520696e7465  	dc.b	"e interrupt ####",13
21050  0d48 0a00          	dc.b	10,0
21051  0d4a               L1527:
21052  0d4a 2050305f5265  	dc.b	" P0_Rec_R_CS=%02bX"
21053  0d5c 202050305f52  	dc.b	"  P0_Rec_R_RS=%02b"
21054  0d6e 5820200d      	dc.b	"X  ",13
21055  0d72 0a00          	dc.b	10,0
21056  0d74               L7427:
21057  0d74 2050305f5265  	dc.b	" P0_Rec_G_CS=%02bX"
21058  0d86 202050305f52  	dc.b	"  P0_Rec_G_RS=%02b"
21059  0d98 5820200d      	dc.b	"X  ",13
21060  0d9c 0a00          	dc.b	10,0
21061  0d9e               L5427:
21062  0d9e 2050305f5265  	dc.b	" P0_Rec_B_CS=%02bX"
21063  0db0 202050305f52  	dc.b	"  P0_Rec_B_RS=%02b"
21064  0dc2 5820200d      	dc.b	"X  ",13
21065  0dc6 0a00          	dc.b	10,0
21066  0dc8               L3427:
21067  0dc8 232323232050  	dc.b	"#### Port 0 EQ don"
21068  0dda 6520696e7465  	dc.b	"e interrupt ####",13
21069  0deb 0a00          	dc.b	10,0
21070  0ded               L7327:
21071  0ded 23232323204e  	dc.b	"#### New AVI InfoF"
21072  0dff 72616d652052  	dc.b	"rame Received ####"
21073  0e11 0d0a00        	dc.b	13,10,0
21074  0e14               L3327:
21075  0e14 23232323204e  	dc.b	"#### New MPEG Info"
21076  0e26 4672616d6520  	dc.b	"Frame Received ###"
21077  0e38 230d          	dc.b	"#",13
21078  0e3a 0a00          	dc.b	10,0
21079  0e3c               L7227:
21080  0e3c 23232323204e  	dc.b	"#### New SPD Packe"
21081  0e4e 742052656365  	dc.b	"t Received ####",13
21082  0e5e 0a00          	dc.b	10,0
21083  0e60               L3227:
21084  0e60 23232323204e  	dc.b	"#### New ACP Packe"
21085  0e72 742052656365  	dc.b	"t Received ####",13
21086  0e82 0a00          	dc.b	10,0
21087  0e84               L7127:
21088  0e84 23232323204e  	dc.b	"#### New Audio Pac"
21089  0e96 6b6574205265  	dc.b	"ket Received ####",13
21090  0ea8 0a00          	dc.b	10,0
21091  0eaa               L3127:
21092  0eaa 232323232050  	dc.b	"#### Port 0 Deskew"
21093  0ebc 204572726f72  	dc.b	" Error ####",13
21094  0ec8 0a00          	dc.b	10,0
21095  0eca               L7027:
21096  0eca 232323232050  	dc.b	"#### Port 1 Deskew"
21097  0edc 204572726f72  	dc.b	" Error ####",13
21098  0ee8 0a00          	dc.b	10,0
21099  0eea               L3027:
21100  0eea 232323232048  	dc.b	"#### H2V Buffer Sk"
21101  0efc 657720466169  	dc.b	"ew Fail ####",13
21102  0f09 0a00          	dc.b	10,0
21103  0f0b               L5717:
21104  0f0b 232323232049  	dc.b	"#### ISRC1 Detect "
21105  0f1d 232323230d    	dc.b	"####",13
21106  0f22 0a00          	dc.b	10,0
21107  0f24               L1717:
21108  0f24 232323232049  	dc.b	"#### ISRC2 Detect "
21109  0f36 232323230d    	dc.b	"####",13
21110  0f3b 0a00          	dc.b	10,0
21111  0f3d               L5617:
21112  0f3d 232323232033  	dc.b	"#### 3D InfoFrame "
21113  0f4f 446574656374  	dc.b	"Detect ####",13
21114  0f5b 0a00          	dc.b	10,0
21115  0f5d               L1617:
21116  0f5d 232323232043  	dc.b	"#### CD Detect ###"
21117  0f6f 230d          	dc.b	"#",13
21118  0f71 0a00          	dc.b	10,0
21119  0f73               L5517:
21120  0f73 23232323204e  	dc.b	"#### No AVI InfoFr"
21121  0f85 616d65205265  	dc.b	"ame Received ####",13
21122  0f97 0a00          	dc.b	10,0
21123  0f99               L1517:
21124  0f99 23232323204e  	dc.b	"#### No Audio Info"
21125  0fab 4672616d6520  	dc.b	"Frame Received ###"
21126  0fbd 230d          	dc.b	"#",13
21127  0fbf 0a00          	dc.b	10,0
21128  0fc1               L7317:
21129  0fc1 232323232050  	dc.b	"#### Port 0 Bus Mo"
21130  0fd3 6465203a2048  	dc.b	"de : HDMI ####",13
21131  0fe2 0a00          	dc.b	10,0
21132  0fe4               L3317:
21133  0fe4 232323232050  	dc.b	"#### Port 0 Bus Mo"
21134  0ff6 6465203a204d  	dc.b	"de : MHL ####",13
21135  1004 0a00          	dc.b	10,0
21136  1006               L3217:
21137  1006 232323232056  	dc.b	"#### Video Mode Ch"
21138  1018 616e67656420  	dc.b	"anged ####",13
21139  1023 0a00          	dc.b	10,0
21140  1025               L5117:
21141  1025 232323232053  	dc.b	"#### Set Mute Pack"
21142  1037 657420526563  	dc.b	"et Received ####",13
21143  1048 0a00          	dc.b	10,0
21144  104a               L1117:
21145  104a 232323232050  	dc.b	"#### Packet Left M"
21146  105c 757465202323  	dc.b	"ute ####",13
21147  1065 0a00          	dc.b	10,0
21148  1067               L5017:
21149  1067 232323232041  	dc.b	"#### Audio Auto Mu"
21150  1079 746520232323  	dc.b	"te ####",13
21151  1081 0a00          	dc.b	10,0
21152  1083               L1017:
21153  1083 232323232041  	dc.b	"#### Audio FIFO Er"
21154  1095 726f72202323  	dc.b	"ror ####",13
21155  109e 0a00          	dc.b	10,0
21156  10a0               L3707:
21157  10a0 232323232050  	dc.b	"#### Port 1 Power "
21158  10b2 355620636861  	dc.b	"5V change ####",13
21159  10c1 0a00          	dc.b	10,0
21160  10c3               L7607:
21161  10c3 232323232050  	dc.b	"#### Port 1 Rx CKO"
21162  10d5 6e2044657465  	dc.b	"n Detect ####",13
21163  10e3 0a00          	dc.b	10,0
21164  10e5               L3607:
21165  10e5 232323232050  	dc.b	"#### Port 1 Input "
21166  10f7 436c6f636b20  	dc.b	"Clock Change Detec"
21167  1109 742023232323  	dc.b	"t ####",13
21168  1110 0a00          	dc.b	10,0
21169  1112               L7507:
21170  1112 232323232050  	dc.b	"#### Port 1 HDCP A"
21171  1124 757468656e74  	dc.b	"uthentication Star"
21172  1136 742023232323  	dc.b	"t ####",13
21173  113d 0a00          	dc.b	10,0
21174  113f               L3507:
21175  113f 232323232050  	dc.b	"#### Port 1 HDCP A"
21176  1151 757468656e74  	dc.b	"uthentication Done"
21177  1163 20232323230d  	dc.b	" ####",13
21178  1169 0a00          	dc.b	10,0
21179  116b               L7407:
21180  116b 232323232050  	dc.b	"#### Port 1 HDMI/D"
21181  117d 5649204d6f64  	dc.b	"VI Mode change ###"
21182  118f 230d          	dc.b	"#",13
21183  1191 0a00          	dc.b	10,0
21184  1193               L3407:
21185  1193 232323232050  	dc.b	"#### Port 1 ECC Er"
21186  11a5 726f72202323  	dc.b	"ror ####",13
21187  11ae 0a00          	dc.b	10,0
21188  11b0               L7307:
21189  11b0 232323232050  	dc.b	"#### Port 1 HDCP O"
21190  11c2 666620446574  	dc.b	"ff Detected ###",13
21191  11d2 0a00          	dc.b	10,0
21192  11d4               L1307:
21193  11d4 232323232050  	dc.b	"#### Port 0 Power "
21194  11e6 355620636861  	dc.b	"5V change ####",13
21195  11f5 0a00          	dc.b	10,0
21196  11f7               L5207:
21197  11f7 232323232050  	dc.b	"#### Port 0 Rx CKO"
21198  1209 6e2044657465  	dc.b	"n Detect ####",13
21199  1217 0a00          	dc.b	10,0
21200  1219               L1207:
21201  1219 232323232050  	dc.b	"#### Port 0 Input "
21202  122b 436c6f636b20  	dc.b	"Clock Change Detec"
21203  123d 742023232323  	dc.b	"t ####",13
21204  1244 0a00          	dc.b	10,0
21205  1246               L5107:
21206  1246 232323232050  	dc.b	"#### Port 0 HDCP A"
21207  1258 757468656e74  	dc.b	"uthentication Done"
21208  126a 20232323230d  	dc.b	" ####",13
21209  1270 0a00          	dc.b	10,0
21210  1272               L1107:
21211  1272 232323232050  	dc.b	"#### Port 0 HDCP A"
21212  1284 757468656e74  	dc.b	"uthentication Star"
21213  1296 742023232323  	dc.b	"t ####",13
21214  129d 0a00          	dc.b	10,0
21215  129f               L5007:
21216  129f 232323232050  	dc.b	"#### Port 0 HDMI/D"
21217  12b1 5649204d6f64  	dc.b	"VI Mode change ###"
21218  12c3 230d          	dc.b	"#",13
21219  12c5 0a00          	dc.b	10,0
21220  12c7               L1007:
21221  12c7 232323232050  	dc.b	"#### Port 0 ECC Er"
21222  12d9 726f72202323  	dc.b	"ror ####",13
21223  12e2 0a00          	dc.b	10,0
21224  12e4               L5776:
21225  12e4 232323232050  	dc.b	"#### Port 0 HDCP O"
21226  12f6 666620446574  	dc.b	"ff Detected ###",13
21227  1306 0a00          	dc.b	10,0
21228  1308               L7276:
21229  1308 495436383032  	dc.b	"IT6802-MHL EDID Ch"
21230  131a 616e67652049  	dc.b	"ange Interrupt ..."
21231  132c 0d0a00        	dc.b	13,10,0
21232  132f               L1276:
21233  132f 334420526571  	dc.b	"3D Request Interru"
21234  1341 7074202e2e2e  	dc.b	"pt ...",13
21235  1348 0a00          	dc.b	10,0
21236  134a               L5176:
21237  134a 202323232033  	dc.b	" ### 3D Un-Support"
21238  135c 205772697465  	dc.b	" Write_Burst End #"
21239  136e 23230d        	dc.b	"##",13
21240  1371 0a00          	dc.b	10,0
21241  1373               L3076:
21242  1373 202323232033  	dc.b	" ### 3D supporpt W"
21243  1385 726974655f42  	dc.b	"rite_Burst End ###"
21244  1397 0d0a00        	dc.b	13,10,0
21245  139a               L1666:
21246  139a 4d484c20474e  	dc.b	"MHL GNT_WRT Interr"
21247  13ac 757074202854  	dc.b	"upt (TxSeqNum=%d) "
21248  13be 2e2e2e0d      	dc.b	"...",13
21249  13c2 0a00          	dc.b	10,0
21250  13c4               L7566:
21251  13c4 495436383032  	dc.b	"IT6802-[**]MHL GNT"
21252  13d6 5f5752542049  	dc.b	"_WRT Interrupt  .."
21253  13e8 2e0d          	dc.b	".",13
21254  13ea 0a00          	dc.b	10,0
21255  13ec               L3466:
21256  13ec 495436383032  	dc.b	"IT6802-Set GRT_WRT"
21257  13fe 20746f203120  	dc.b	" to 1  ...",13
21258  1409 0a00          	dc.b	10,0
21259  140b               L1466:
21260  140b 495436383032  	dc.b	"IT6802-MHL REQ_WRT"
21261  141d 20496e746572  	dc.b	" Interrupt  ...",13
21262  142d 0a00          	dc.b	10,0
21263  142f               L5366:
21264  142f 4552524f523a  	dc.b	"ERROR: Adopter ID "
21265  1441 4d69736d6174  	dc.b	"Mismatch !!!",13
21266  144e 0a00          	dc.b	10,0
21267  1450               L3366:
21268  1450 41646f707465  	dc.b	"Adopter ID = 0x%02"
21269  1462 582025303258  	dc.b	"X %02X",13
21270  1469 0a00          	dc.b	10,0
21271  146b               L5266:
21272  146b 4552524f523a  	dc.b	"ERROR: Receive Scr"
21273  147d 617463682050  	dc.b	"atch Pad Data > 16"
21274  148f 206279746573  	dc.b	" bytes !!!",13
21275  149a 0a00          	dc.b	10,0
21276  149c               L1266:
21277  149c 525820536372  	dc.b	"RX Scratch Pad [%0"
21278  14ae 32645d203d20  	dc.b	"2d] = 0x%02X",13
21279  14bb 0a00          	dc.b	10,0
21280  14bd               L7066:
21281  14bd 495436383032  	dc.b	"IT6802-MHL DSCR_CH"
21282  14cf 4720496e7465  	dc.b	"G Interrupt ......"
21283  14e1 0d0a00        	dc.b	13,10,0
21284  14e4               L3066:
21285  14e4 495436383032  	dc.b	"IT6802-MHL Device "
21286  14f6 436170616269  	dc.b	"Capability is stil"
21287  1508 6c206e6f7420  	dc.b	"l not Ready !!! ",13
21288  1519 0a00          	dc.b	10,0
21289  151b               L5756:
21290  151b 495436383032  	dc.b	"IT6802-MHL Device "
21291  152d 436170616269  	dc.b	"Capability Change "
21292  153f 496e74657272  	dc.b	"Interrupt ...",13
21293  154d 0a00          	dc.b	10,0
21294  154f               L1756:
21295  154f 495436383032  	dc.b	"IT6802-Current VBU"
21296  1561 532053746174  	dc.b	"S Status = %X",13
21297  156f 0a00          	dc.b	10,0
21298  1571               L7656:
21299  1571 495436383032  	dc.b	"IT6802-VBUS Status"
21300  1583 204368616e67  	dc.b	" Change Interrupt "
21301  1595 2e2e2e0d      	dc.b	"...",13
21302  1599 0a00          	dc.b	10,0
21303  159b               L3656:
21304  159b 495436383032  	dc.b	"IT6802-DCapRdy Cha"
21305  15ad 6e6765206672  	dc.b	"nge from '1' to '0"
21306  15bf 270d          	dc.b	"'",13
21307  15c1 0a00          	dc.b	10,0
21308  15c3               L7556:
21309  15c3 495436383032  	dc.b	"IT6802-Set DCAP_RD"
21310  15d5 5920746f2031  	dc.b	"Y to 1 ...",13
21311  15e0 0a00          	dc.b	10,0
21312  15e2               L3556:
21313  15e2 495436383032  	dc.b	"IT6802-CBUS DCapRd"
21314  15f4 79204368616e  	dc.b	"y Change Interrupt"
21315  1606 202e2e2e0d    	dc.b	" ...",13
21316  160b 0a00          	dc.b	10,0
21317  160d               L7456:
21318  160d 697436383032  	dc.b	"it6802-Current CBU"
21319  161f 53204d555445  	dc.b	"S MUTE Status = %X"
21320  1631 200d          	dc.b	" ",13
21321  1633 0a00          	dc.b	10,0
21322  1635               L5456:
21323  1635 697436383032  	dc.b	"it6802-CBUS MUTE C"
21324  1647 68616e676520  	dc.b	"hange Interrupt .."
21325  1659 2e0d          	dc.b	".",13
21326  165b 0a00          	dc.b	10,0
21327  165d               L1456:
21328  165d 495436383032  	dc.b	"IT6802-CBUS PATH_E"
21329  166f 4e204368616e  	dc.b	"N Change Interrupt"
21330  1681 202e2e2e0d    	dc.b	" ...",13
21331  1686 0a00          	dc.b	10,0
21332  1688               L3356:
21333  1688 536574205041  	dc.b	"Set PATH_EN to 1 ."
21334  169a 2e2e0d        	dc.b	"..",13
21335  169d 0a00          	dc.b	10,0
21336  169f               L1356:
21337  169f 536574204850  	dc.b	"Set HPD to 1 ...",13
21338  16b0 0a00          	dc.b	10,0
21339  16b2               L7256:
21340  16b2 536574204443  	dc.b	"Set DCAP_RDY to 1 "
21341  16c4 2e2e2e0d      	dc.b	"...",13
21342  16c8 0a00          	dc.b	10,0
21343  16ca               L5256:
21344  16ca 434255532044  	dc.b	"CBUS Discovery Don"
21345  16dc 6520496e7465  	dc.b	"e Interrupt ...",13
21346  16ec 0a00          	dc.b	10,0
21347  16ee               L3256:
21348  16ee 697436383032  	dc.b	"it6802-CBUS Discov"
21349  1700 65727920446f  	dc.b	"ery Done Interrupt"
21350  1712 202e2e2e0d    	dc.b	" ...",13
21351  1717 0a00          	dc.b	10,0
21352  1719               L1156:
21353  1719 57616b655570  	dc.b	"WakeUp Fail Interr"
21354  172b 7570740d      	dc.b	"upt",13
21355  172f 0a00          	dc.b	10,0
21356  1731               L3056:
21357  1731 495436383032  	dc.b	"IT6802-DDC Rpd Fai"
21358  1743 6c20496e7465  	dc.b	"l Interrupt ...",13
21359  1753 0a00          	dc.b	10,0
21360  1755               L7746:
21361  1755 495436383032  	dc.b	"IT6802-DDC Rpd Don"
21362  1767 6520496e7465  	dc.b	"e Interrupt ...",13
21363  1777 0a00          	dc.b	10,0
21364  1779               L3746:
21365  1779 495436383032  	dc.b	"IT6802-DDC Req Fai"
21366  178b 6c20496e7465  	dc.b	"l Interrupt (Hardw"
21367  179d 61726529202e  	dc.b	"are) ... ",13
21368  17a7 0a00          	dc.b	10,0
21369  17a9               L7646:
21370  17a9 4d484c20436c  	dc.b	"MHL Clock Mode : 2"
21371  17bb 342062697473  	dc.b	"4 bits Mode ...",13
21372  17cb 0a00          	dc.b	10,0
21373  17cd               L3646:
21374  17cd 4d484c20436c  	dc.b	"MHL Clock Mode : P"
21375  17df 61636b506978  	dc.b	"ackPixel Mode ...",13
21376  17f1 0a00          	dc.b	10,0
21377  17f3               L5546:
21378  17f3 495436383032  	dc.b	"IT6802-ERROR: Rece"
21379  1805 697665204142  	dc.b	"ive ABORT Packet !"
21380  1817 21210d        	dc.b	"!!",13
21381  181a 0a00          	dc.b	10,0
21382  181c               L1546:
21383  181c 495436383032  	dc.b	"IT6802-ERROR: Retr"
21384  182e 79203e203332  	dc.b	"y > 32 times !!!",13
21385  183f 0a00          	dc.b	10,0
21386  1841               L5446:
21387  1841 495436383032  	dc.b	"IT6802-MSC Rpd Fai"
21388  1853 6c2073746174  	dc.b	"l status reg1A=%X "
21389  1865 72656731423d  	dc.b	"reg1B=%X",13
21390  186e 0a00          	dc.b	10,0
21391  1870               L3446:
21392  1870 495436383032  	dc.b	"IT6802-MSC Rpd Fai"
21393  1882 6c20496e7465  	dc.b	"l Interrupt ...",13
21394  1892 0a00          	dc.b	10,0
21395  1894               L7346:
21396  1894 495436383032  	dc.b	"IT6802-MSC Rpd Don"
21397  18a6 6520496e7465  	dc.b	"e Interrupt ...",13
21398  18b6 0a00          	dc.b	10,0
21399  18b8               L3346:
21400  18b8 495436383032  	dc.b	"IT6802-ERROR: TX F"
21401  18ca 61696c206265  	dc.b	"ail because FW mod"
21402  18dc 65205278506b  	dc.b	"e RxPktFIFO not em"
21403  18ee 707479202121  	dc.b	"pty !!!",13
21404  18f6 0a00          	dc.b	10,0
21405  18f8               L7246:
21406  18f8 495436383032  	dc.b	"IT6802-ERROR: TX F"
21407  190a 57204661696c  	dc.b	"W Fail in the midd"
21408  191c 6c65206f6620  	dc.b	"le of the command "
21409  192e 73657175656e  	dc.b	"sequence !!!",13
21410  193b 0a00          	dc.b	10,0
21411  193d               L3246:
21412  193d 495436383032  	dc.b	"IT6802-MSC Req Fai"
21413  194f 6c2072656731  	dc.b	"l reg18= %02X ",13
21414  195e 0a00          	dc.b	10,0
21415  1960               L1246:
21416  1960 495436383032  	dc.b	"IT6802-MSC Req Fai"
21417  1972 6c20496e7465  	dc.b	"l Interrupt (Unexp"
21418  1984 656374656429  	dc.b	"ected) ...",13
21419  198f 0a00          	dc.b	10,0
21420  1991               L5146:
21421  1991 495436383032  	dc.b	"IT6802-MSC Req Don"
21422  19a3 6520496e7465  	dc.b	"e Interrupt ...",13
21423  19b3 0a00          	dc.b	10,0
21424  19b5               L1146:
21425  19b5 495436383032  	dc.b	"IT6802-MSC RX WRIT"
21426  19c7 455f42555253  	dc.b	"E_BURST Interrupt "
21427  19d9 202e2e2e0d    	dc.b	" ...",13
21428  19de 0a00          	dc.b	10,0
21429  19e0               L5046:
21430  19e0 495436383032  	dc.b	"IT6802-MSC RX WRIT"
21431  19f2 455f53544154  	dc.b	"E_STAT Interrupt ."
21432  1a04 2e2e0d        	dc.b	"..",13
21433  1a07 0a00          	dc.b	10,0
21434  1a09               L1046:
21435  1a09 495436383032  	dc.b	"IT6802-MSC RX MSC_"
21436  1a1b 4d534720496e  	dc.b	"MSG Interrupt ...",13
21437  1a2d 0a00          	dc.b	10,0
21438  1a2f               L5736:
21439  1a2f 495436383032  	dc.b	"IT6802-ERROR: CBUS"
21440  1a41 204c696e6b20  	dc.b	" Link Layer RX Pac"
21441  1a53 6b6574204661  	dc.b	"ket Fail Interrupt"
21442  1a65 202e2e2e200d  	dc.b	" ... ",13
21443  1a6b 0a00          	dc.b	10,0
21444  1a6d               L1736:
21445  1a6d 495436383032  	dc.b	"IT6802-CBUS Link L"
21446  1a7f 617965722052  	dc.b	"ayer RX Packet Don"
21447  1a91 6520496e7465  	dc.b	"e Interrupt ...",13
21448  1aa1 0a00          	dc.b	10,0
21449  1aa3               L5636:
21450  1aa3 495436383032  	dc.b	"IT6802- TX Packet "
21451  1ab5 6572726f7220  	dc.b	"error Status reg15"
21452  1ac7 3d25580d      	dc.b	"=%X",13
21453  1acb 0a00          	dc.b	10,0
21454  1acd               L3636:
21455  1acd 495436383032  	dc.b	"IT6802-ERROR: CBUS"
21456  1adf 204c696e6b20  	dc.b	" Link Layer TX Pac"
21457  1af1 6b6574204661  	dc.b	"ket Fail Interrupt"
21458  1b03 202e2e2e200d  	dc.b	" ... ",13
21459  1b09 0a00          	dc.b	10,0
21460  1b0b               L7536:
21461  1b0b 495436383032  	dc.b	"IT6802-CBUS Link L"
21462  1b1d 617965722054  	dc.b	"ayer TX Packet Don"
21463  1b2f 6520496e7465  	dc.b	"e Interrupt ...",13
21464  1b3f 0a00          	dc.b	10,0
21465  1b41               L1326:
21466  1b41 5243505f5265  	dc.b	"RCP_Result_Finish "
21467  1b53 0d0a00        	dc.b	13,10,0
21468  1b56               L7226:
21469  1b56 5243505f5265  	dc.b	"RCP_Result_Transfe"
21470  1b68 72200d        	dc.b	"r ",13
21471  1b6b 0a00          	dc.b	10,0
21472  1b6d               L5226:
21473  1b6d 5243505f5265  	dc.b	"RCP_Result_ABORT ",13
21474  1b7f 0a00          	dc.b	10,0
21475  1b81               L3226:
21476  1b81 5243505f5265  	dc.b	"RCP_Result_FAIL ",13
21477  1b92 0a00          	dc.b	10,0
21478  1b94               L1226:
21479  1b94 5243505f5265  	dc.b	"RCP_Result_OK ",13
21480  1ba3 0a00          	dc.b	10,0
21481  1ba5               L3516:
21482  1ba5 5243504b6579  	dc.b	"RCPKeyPop() key = "
21483  1bb7 2578200d      	dc.b	"%x ",13
21484  1bbb 0a00          	dc.b	10,0
21485  1bbd               L1606:
21486  1bbd 20506f727442  	dc.b	" PortB PhyAdr = %x"
21487  1bcf 2c2025782c20  	dc.b	", %x, %x, %x",13
21488  1bdc 0a00          	dc.b	10,0
21489  1bde               L7506:
21490  1bde 20506f727441  	dc.b	" PortA PhyAdr = %x"
21491  1bf0 2c2025782c20  	dc.b	", %x, %x, %x",13
21492  1bfd 0a00          	dc.b	10,0
21493  1bff               L5506:
21494  1bff 0d0a446e5374  	dc.b	13,10,68,110,83,116
21495  1c05 726d20506879  	dc.b	"rm PhyAdr = %x, %x"
21496  1c17 2c2025782c20  	dc.b	", %x, %x",13
21497  1c20 0a00          	dc.b	10,0
21498  1c22               L7665:
21499  1c22 454449442050  	dc.b	"EDID Parsing OK",13
21500  1c32 0a00          	dc.b	10,0
21501  1c34               L3665:
21502  1c34 75385f565344  	dc.b	"u8_VSDB_Addr = %x",13
21503  1c46 0a00          	dc.b	10,0
21504  1c48               L1665:
21505  1c48 20426c6f636b  	dc.b	" Block1_CheckSum ="
21506  1c5a 2025780d      	dc.b	" %x",13
21507  1c5e 0a00          	dc.b	10,0
21508  1c60               L5565:
21509  1c60 20426c6f636b  	dc.b	" Block0_CheckSum ="
21510  1c72 2025780d      	dc.b	" %x",13
21511  1c76 0a00          	dc.b	10,0
21512  1c78               L1565:
21513  1c78 495436383032  	dc.b	"IT6802 EDIDRAMInit"
21514  1c8a 69616c203d20  	dc.b	"ial = %x",13
21515  1c93 0a00          	dc.b	10,0
21516  1c95               L3165:
21517  1c95 44697361626c  	dc.b	"DisableEDIDupdata("
21518  1ca7 29200d        	dc.b	") ",13
21519  1caa 0a00          	dc.b	10,0
21520  1cac               L1065:
21521  1cac 456e61626c65  	dc.b	"EnableEDIDupdata()"
21522  1cbe 200d          	dc.b	" ",13
21523  1cc0 0a00          	dc.b	10,0
21524  1cc2               L1655:
21525  1cc2 626c6f636b20  	dc.b	"block No =%x offse"
21526  1cd4 74203d202578  	dc.b	"t = %x ",13
21527  1cdc 0a00          	dc.b	10,0
21528  1cde               L5045:
21529  1cde 536574204453  	dc.b	"Set DSCR_CHG to 1 "
21530  1cf0 285478536571  	dc.b	"(TxSeqNum=%d) ...",13
21531  1d02 0a00          	dc.b	10,0
21532  1d04               L3535:
21533  1d04 4552524f523a  	dc.b	"ERROR: Set Burst W"
21534  1d16 726974652044  	dc.b	"rite Data Fail !!!"
21535  1d28 0d0a00        	dc.b	13,10,0
21536  1d2b               L7325:
21537  1d2b 495436383032  	dc.b	"IT6802-Read Device"
21538  1d3d 204361706162  	dc.b	" Capability End..."
21539  1d4f 0d0a00        	dc.b	13,10,0
21540  1d52               L5325:
21541  1d52 495436383032  	dc.b	"IT6802-DevCap[%X]="
21542  1d64 25580d        	dc.b	"%X",13
21543  1d67 0a00          	dc.b	10,0
21544  1d69               L1225:
21545  1d69 495436383032  	dc.b	"IT6802-",13
21546  1d71 0a5265616420  	dc.b	10,82,101,97,100,32
21547  1d77 446576696365  	dc.b	"Device Capability "
21548  1d89 537461727420  	dc.b	"Start ...",13
21549  1d93 0a00          	dc.b	10,0
21550  1d95               L5715:
21551  1d95 535441545f53  	dc.b	"STAT_SIZE = %02bX "
21552  1da7 42797465730d  	dc.b	"Bytes",13
21553  1dad 0a00          	dc.b	10,0
21554  1daf               L3715:
21555  1daf 494e545f5349  	dc.b	"INT_SIZE  = %02bX "
21556  1dc1 42797465730d  	dc.b	"Bytes",13
21557  1dc7 0a00          	dc.b	10,0
21558  1dc9               L1715:
21559  1dc9 534352415443  	dc.b	"SCRATCHPAD_SIZE = "
21560  1ddb 253032625820  	dc.b	"%02bX Bytes",13
21561  1de7 0a00          	dc.b	10,0
21562  1de9               L5615:
21563  1de9 444556494345  	dc.b	"DEVICE_ID_H=0x%02b"
21564  1dfb 582c20444556  	dc.b	"X, DEVICE_ID_L=0x%"
21565  1e0d 303262580d    	dc.b	"02bX",13
21566  1e12 0a00          	dc.b	10,0
21567  1e14               L3615:
21568  1e14 202020205543  	dc.b	"    UCP_RECV_SUPPO"
21569  1e26 5254203d2025  	dc.b	"RT = %02bX",13
21570  1e31 0a00          	dc.b	10,0
21571  1e33               L1615:
21572  1e33 202020205543  	dc.b	"    UCP_SEND_SUPPO"
21573  1e45 5254203d2025  	dc.b	"RT = %02bX",13
21574  1e50 0a00          	dc.b	10,0
21575  1e52               L7515:
21576  1e52 202020202020  	dc.b	"         SP_SUPPOR"
21577  1e64 5420203d2025  	dc.b	"T  = %02bX",13
21578  1e6f 0a00          	dc.b	10,0
21579  1e71               L5515:
21580  1e71 202020202020  	dc.b	"         RAP_SUPPO"
21581  1e83 5254203d2025  	dc.b	"RT = %02bX",13
21582  1e8e 0a00          	dc.b	10,0
21583  1e90               L3515:
21584  1e90 202020202020  	dc.b	"         RCP_SUPPO"
21585  1ea2 5254203d2025  	dc.b	"RT = %02bX",13
21586  1ead 0a00          	dc.b	10,0
21587  1eaf               L1515:
21588  1eaf 464541545552  	dc.b	"FEATURE_FLAG:",13
21589  1ebd 0a00          	dc.b	10,0
21590  1ebf               L7415:
21591  1ebf 42414e445749  	dc.b	"BANDWIDTH = %XMHz",13
21592  1ed1 0a00          	dc.b	10,0
21593  1ed3               L5415:
21594  1ed3 202020204c44  	dc.b	"    LD_GUI      = "
21595  1ee5 25303262580d  	dc.b	"%02bX",13
21596  1eeb 0a00          	dc.b	10,0
21597  1eed               L3415:
21598  1eed 202020204c44  	dc.b	"    LD_SPEAKER  = "
21599  1eff 25303262580d  	dc.b	"%02bX",13
21600  1f05 0a00          	dc.b	10,0
21601  1f07               L1415:
21602  1f07 202020204c44  	dc.b	"    LD_RECORD   = "
21603  1f19 25303262580d  	dc.b	"%02bX",13
21604  1f1f 0a00          	dc.b	10,0
21605  1f21               L7315:
21606  1f21 202020204c44  	dc.b	"    LD_TUNER    = "
21607  1f33 25303262580d  	dc.b	"%02bX",13
21608  1f39 0a00          	dc.b	10,0
21609  1f3b               L5315:
21610  1f3b 202020204c44  	dc.b	"    LD_MEDIA    = "
21611  1f4d 25303262580d  	dc.b	"%02bX",13
21612  1f53 0a00          	dc.b	10,0
21613  1f55               L3315:
21614  1f55 202020204c44  	dc.b	"    LD_AUDIO    = "
21615  1f67 25303262580d  	dc.b	"%02bX",13
21616  1f6d 0a00          	dc.b	10,0
21617  1f6f               L1315:
21618  1f6f 202020204c44  	dc.b	"    LD_VIDEO    = "
21619  1f81 25303262580d  	dc.b	"%02bX",13
21620  1f87 0a00          	dc.b	10,0
21621  1f89               L7215:
21622  1f89 202020204c44  	dc.b	"    LD_DISPLAY  = "
21623  1f9b 25303262580d  	dc.b	"%02bX",13
21624  1fa1 0a00          	dc.b	10,0
21625  1fa3               L5215:
21626  1fa3 4c4f475f4445  	dc.b	"LOG_DEV_MAP:",13
21627  1fb0 0a00          	dc.b	10,0
21628  1fb2               L3215:
21629  1fb2 4e6f74205375  	dc.b	"Not Support VIDEO_"
21630  1fc4 545950452021  	dc.b	"TYPE !!!",13
21631  1fcd 0a00          	dc.b	10,0
21632  1fcf               L7115:
21633  1fcf 202020205654  	dc.b	"    VT_GAME     = "
21634  1fe1 25303262580d  	dc.b	"%02bX",13
21635  1fe7 0a00          	dc.b	10,0
21636  1fe9               L5115:
21637  1fe9 202020205654  	dc.b	"    VT_CINEMA   = "
21638  1ffb 25303262580d  	dc.b	"%02bX",13
21639  2001 0a00          	dc.b	10,0
21640  2003               L3115:
21641  2003 202020205654  	dc.b	"    VT_PHOTO    = "
21642  2015 25303262580d  	dc.b	"%02bX",13
21643  201b 0a00          	dc.b	10,0
21644  201d               L1115:
21645  201d 202020205654  	dc.b	"    VT_GRAPHICS = "
21646  202f 25303262580d  	dc.b	"%02bX",13
21647  2035 0a00          	dc.b	10,0
21648  2037               L7015:
21649  2037 564944454f5f  	dc.b	"VIDEO_TYPE: ",13
21650  2044 0a00          	dc.b	10,0
21651  2046               L3015:
21652  2046 202020205355  	dc.b	"    SUPP_8CH  = %0"
21653  2058 3262580d      	dc.b	"2bX",13
21654  205c 0a00          	dc.b	10,0
21655  205e               L1015:
21656  205e 202020205355  	dc.b	"    SUPP_2CH  = %0"
21657  2070 3262580d      	dc.b	"2bX",13
21658  2074 0a00          	dc.b	10,0
21659  2076               L7705:
21660  2076 4155445f4c49  	dc.b	"AUD_LINK_MODE:",13
21661  2085 0a00          	dc.b	10,0
21662  2087               L5705:
21663  2087 202020205355  	dc.b	"    SUPP_VGA      "
21664  2099 3d2025303262  	dc.b	"= %02bX",13
21665  20a1 0a00          	dc.b	10,0
21666  20a3               L3705:
21667  20a3 202020205355  	dc.b	"    SUPP_ISLANDS  "
21668  20b5 3d2025303262  	dc.b	"= %02bX",13
21669  20bd 0a00          	dc.b	10,0
21670  20bf               L1705:
21671  20bf 202020205355  	dc.b	"    SUPP_PPIXEL   "
21672  20d1 3d2025303262  	dc.b	"= %02bX",13
21673  20d9 0a00          	dc.b	10,0
21674  20db               L7605:
21675  20db 202020205355  	dc.b	"    SUPP_YCBCR422 "
21676  20ed 3d2025303262  	dc.b	"= %02bX",13
21677  20f5 0a00          	dc.b	10,0
21678  20f7               L5605:
21679  20f7 202020205355  	dc.b	"    SUPP_YCBCR444 "
21680  2109 3d2025303262  	dc.b	"= %02bX",13
21681  2111 0a00          	dc.b	10,0
21682  2113               L3605:
21683  2113 202020205355  	dc.b	"    SUPP_RGB444   "
21684  2125 3d2025303262  	dc.b	"= %02bX",13
21685  212d 0a00          	dc.b	10,0
21686  212f               L1605:
21687  212f 5649445f4c49  	dc.b	"VID_LINK_MODE:",13
21688  213e 0a00          	dc.b	10,0
21689  2140               L7505:
21690  2140 41444f505445  	dc.b	"ADOPTER_ID_H=0x%02"
21691  2152 62582c204144  	dc.b	"bX, ADOPTER_ID_L=0"
21692  2164 782530326258  	dc.b	"x%02bX",13
21693  216b 0a00          	dc.b	10,0
21694  216d               L5505:
21695  216d 504c494d203d  	dc.b	"PLIM = %02bX",13
21696  217a 0a00          	dc.b	10,0
21697  217c               L3505:
21698  217c 504f57203d20  	dc.b	"POW = %02bX",13
21699  2188 0a00          	dc.b	10,0
21700  218a               L1505:
21701  218a 4552524f523a  	dc.b	"ERROR: Reserved fo"
21702  219c 722066757475  	dc.b	"r future use !!! ",0
21703  21ae               L7405:
21704  21ae 4445565f5459  	dc.b	"DEV_TYPE = Dongle,"
21705  21c0 2000          	dc.b	" ",0
21706  21c2               L5405:
21707  21c2 4445565f5459  	dc.b	"DEV_TYPE = Source,"
21708  21d4 2000          	dc.b	" ",0
21709  21d6               L3405:
21710  21d6 4445565f5459  	dc.b	"DEV_TYPE = Sink, ",0
21711  21e8               L1405:
21712  21e8 4552524f523a  	dc.b	"ERROR: DEV_TYPE at"
21713  21fa 206c65617374  	dc.b	" least one bit mus"
21714  220c 742062652073  	dc.b	"t be set !!!",13
21715  2219 0a00          	dc.b	10,0
21716  221b               L3305:
21717  221b 4445565f5459  	dc.b	"DEV_TYPE=",0
21718  2225               L1305:
21719  2225 4d484c5f5645  	dc.b	"MHL_VER_MAJOR/MINO"
21720  2237 523d25303262  	dc.b	"R=%02bX",13
21721  223f 0a00          	dc.b	10,0
21722  2241               L7205:
21723  2241 4445565f5354  	dc.b	"DEV_STATE=%02bX",13
21724  2251 0a00          	dc.b	10,0
21725  2253               L5205:
21726  2253 0d0a50617273  	dc.b	13,10,80,97,114,115
21727  2259 696e67204465  	dc.b	"ing Device Capabil"
21728  226b 697479205265  	dc.b	"ity Register ...",13
21729  227c 0a00          	dc.b	10,0
21730  227e               L3574:
21731  227e 495436383032  	dc.b	"IT6802-MSC FIRE() "
21732  2290 256c6420200d  	dc.b	"%ld  ",13
21733  2296 0a00          	dc.b	10,0
21734  2298               L3664:
21735  2298 4552524f523a  	dc.b	"ERROR: Unknown MSC"
21736  22aa 5f4d53472073  	dc.b	"_MSG sub-command c"
21737  22bc 6f6465203078  	dc.b	"ode 0x%02X !!!",13
21738  22cb 0a00          	dc.b	10,0
21739  22cd               L1664:
21740  22cd 4552524f523a  	dc.b	"ERROR: Unknown RAP"
21741  22df 207374617475  	dc.b	" status code 0x%02"
21742  22f1 58202121210d  	dc.b	"X !!!",13
21743  22f7 0a00          	dc.b	10,0
21744  22f9               L7564:
21745  22f9 4552524f523a  	dc.b	"ERROR: Unsupported"
21746  230b 20416374696f  	dc.b	" Action Code !!!",13
21747  231c 0a00          	dc.b	10,0
21748  231e               L5564:
21749  231e 4552524f523a  	dc.b	"ERROR: Unrecognize"
21750  2330 642041637469  	dc.b	"d Action Code !!!",13
21751  2342 0a00          	dc.b	10,0
21752  2344               L7464:
21753  2344 525820524150  	dc.b	"RX RAPK  => ",0
21754  2351               L5464:
21755  2351 4552524f523a  	dc.b	"ERROR: Unknown RCP"
21756  2363 207374617475  	dc.b	" status code !!!",13
21757  2374 0a00          	dc.b	10,0
21758  2376               L3464:
21759  2376 526573706f6e  	dc.b	"Responder Busy ..."
21760  2388 0d0a00        	dc.b	13,10,0
21761  238b               L1464:
21762  238b 4552524f523a  	dc.b	"ERROR: Ineffective"
21763  239d 20524350204b  	dc.b	" RCP Key Code !!!",13
21764  23af 0a00          	dc.b	10,0
21765  23b1               L3364:
21766  23b1 525820524350  	dc.b	"RX RCPK  => ",0
21767  23be               L1364:
21768  23be 4552524f523a  	dc.b	"ERROR: Unknown MSC"
21769  23d0 5f4d53472073  	dc.b	"_MSG status code 0"
21770  23e2 782530325820  	dc.b	"x%02X !!!",13
21771  23ec 0a00          	dc.b	10,0
21772  23ee               L7264:
21773  23ee 4552524f523a  	dc.b	"ERROR: Invalid sub"
21774  2400 2d636f6d6d61  	dc.b	"-command code !!!",13
21775  2412 0a00          	dc.b	10,0
21776  2414               L5264:
21777  2414 4e6f20457272  	dc.b	"No Error",13
21778  241d 0a00          	dc.b	10,0
21779  241f               L7164:
21780  241f 5258204d5347  	dc.b	"RX MSGE => ",0
21781  242b               L3254:
21782  242b 53656e642061  	dc.b	"Send a RAPK with s"
21783  243d 746174757320  	dc.b	"tatus code = 0x%02"
21784  244f 580d          	dc.b	"X",13
21785  2451 0a00          	dc.b	10,0
21786  2453               L1254:
21787  2453 4552524f523a  	dc.b	"ERROR: Unknown RAP"
21788  2465 20616374696f  	dc.b	" action code 0x%02"
21789  2477 58202121210d  	dc.b	"X !!!",13
21790  247d 0a00          	dc.b	10,0
21791  247f               L7154:
21792  247f 4368616e6765  	dc.b	"Change to CONTENT_"
21793  2491 4f4646207374  	dc.b	"OFF state",13
21794  249b 0a00          	dc.b	10,0
21795  249d               L5154:
21796  249d 4368616e6765  	dc.b	"Change to CONTENT_"
21797  24af 4f4e20737461  	dc.b	"ON state",13
21798  24b8 0a00          	dc.b	10,0
21799  24ba               L3154:
21800  24ba 506f6c6c0d    	dc.b	"Poll",13
21801  24bf 0a00          	dc.b	10,0
21802  24c1               L1544:
21803  24c1 53656e642061  	dc.b	"Send a RCPE with s"
21804  24d3 746174757320  	dc.b	"tatus code = 0x%02"
21805  24e5 580d          	dc.b	"X",13
21806  24e7 0a00          	dc.b	10,0
21807  24e9               L5444:
21808  24e9 53656e642061  	dc.b	"Send a RCPK with a"
21809  24fb 6374696f6e20  	dc.b	"ction code = 0x%02"
21810  250d 580d          	dc.b	"X",13
21811  250f 0a00          	dc.b	10,0
21812  2511               L1244:
21813  2511 204b65792050  	dc.b	" Key Press",13
21814  251c 0a00          	dc.b	10,0
21815  251e               L5144:
21816  251e 204b65792052  	dc.b	" Key Release",13
21817  252b 0a00          	dc.b	10,0
21818  252d               L7044:
21819  252d 4552524f523a  	dc.b	"ERROR: Reserved RC"
21820  253f 50207375622d  	dc.b	"P sub-command code"
21821  2551 202121210d    	dc.b	" !!!",13
21822  2556 0a00          	dc.b	10,0
21823  2558               L5044:
21824  2558 56656e646f72  	dc.b	"Vendor_Specific",0
21825  2568               L3044:
21826  2568 463500        	dc.b	"F5",0
21827  256b               L1044:
21828  256b 463420285965  	dc.b	"F4 (Yellow)",0
21829  2577               L7734:
21830  2577 463320284772  	dc.b	"F3 (Green)",0
21831  2582               L5734:
21832  2582 463220285265  	dc.b	"F2 (Red)",0
21833  258b               L3734:
21834  258b 46312028426c  	dc.b	"F1 (Blue)",0
21835  2595               L1734:
21836  2595 53656c656374  	dc.b	"Select_Media_Funct"
21837  25a7 696f6e00      	dc.b	"ion",0
21838  25ab               L7634:
21839  25ab 54756e655f46  	dc.b	"Tune_Function",0
21840  25b9               L5634:
21841  25b9 526573746f72  	dc.b	"Restore_Volume_Fun"
21842  25cb 6374696f6e00  	dc.b	"ction",0
21843  25d1               L3634:
21844  25d1 50617573655f  	dc.b	"Pause_Record_Funct"
21845  25e3 696f6e00      	dc.b	"ion",0
21846  25e7               L1634:
21847  25e7 5265636f7264  	dc.b	"Record_Function",0
21848  25f7               L7534:
21849  25f7 50617573655f  	dc.b	"Pause_Play_Functio"
21850  2609 6e00          	dc.b	"n",0
21851  260b               L5534:
21852  260b 506c61795f46  	dc.b	"Play_Function",0
21853  2619               L3534:
21854  2619 537562706963  	dc.b	"Subpicture",0
21855  2624               L1534:
21856  2624 416e676c6500  	dc.b	"Angle",0
21857  262a               L7434:
21858  262a 4261636b7761  	dc.b	"Backward",0
21859  2633               L5434:
21860  2633 466f72776172  	dc.b	"Forward",0
21861  263b               L3434:
21862  263b 456a65637400  	dc.b	"Eject",0
21863  2641               L1434:
21864  2641 466173742046  	dc.b	"Fast Forward",0
21865  264e               L7334:
21866  264e 526577696e64  	dc.b	"Rewind",0
21867  2655               L5334:
21868  2655 5265636f7264  	dc.b	"Record",0
21869  265c               L3334:
21870  265c 506175736500  	dc.b	"Pause",0
21871  2662               L1334:
21872  2662 53746f7000    	dc.b	"Stop",0
21873  2667               L7234:
21874  2667 506c617900    	dc.b	"Play",0
21875  266c               L5234:
21876  266c 4d75746500    	dc.b	"Mute",0
21877  2671               L3234:
21878  2671 566f6c756d65  	dc.b	"Volume Down",0
21879  267d               L1234:
21880  267d 566f6c756d65  	dc.b	"Volume Up",0
21881  2687               L7134:
21882  2687 506167652044  	dc.b	"Page Down",0
21883  2691               L5134:
21884  2691 506167652055  	dc.b	"Page Up",0
21885  2699               L3134:
21886  2699 48656c7000    	dc.b	"Help",0
21887  269e               L1134:
21888  269e 53686f772049  	dc.b	"Show Information",0
21889  26af               L7034:
21890  26af 496e70757420  	dc.b	"Input Select",0
21891  26bc               L5034:
21892  26bc 536f756e6420  	dc.b	"Sound Select",0
21893  26c9               L3034:
21894  26c9 50726576696f  	dc.b	"Previous Channel",0
21895  26da               L1034:
21896  26da 4368616e6e65  	dc.b	"Channel Down",0
21897  26e7               L7724:
21898  26e7 4368616e6e65  	dc.b	"Channel Up",0
21899  26f2               L5724:
21900  26f2 436c65617200  	dc.b	"Clear",0
21901  26f8               L3724:
21902  26f8 456e74657200  	dc.b	"Enter",0
21903  26fe               L1724:
21904  26fe 446f7400      	dc.b	"Dot",0
21905  2702               L7624:
21906  2702 4e756d657269  	dc.b	"Numeric 9",0
21907  270c               L5624:
21908  270c 4e756d657269  	dc.b	"Numeric 8",0
21909  2716               L3624:
21910  2716 4e756d657269  	dc.b	"Numeric 7",0
21911  2720               L1624:
21912  2720 4e756d657269  	dc.b	"Numeric 6",0
21913  272a               L7524:
21914  272a 4e756d657269  	dc.b	"Numeric 5",0
21915  2734               L5524:
21916  2734 4e756d657269  	dc.b	"Numeric 4",0
21917  273e               L3524:
21918  273e 4e756d657269  	dc.b	"Numeric 3",0
21919  2748               L1524:
21920  2748 4e756d657269  	dc.b	"Numeric 2",0
21921  2752               L7424:
21922  2752 4e756d657269  	dc.b	"Numeric 1",0
21923  275c               L5424:
21924  275c 4e756d657269  	dc.b	"Numeric 0",0
21925  2766               L3424:
21926  2766 4578697400    	dc.b	"Exit",0
21927  276b               L1424:
21928  276b 4661766f7269  	dc.b	"Favorite Menu",0
21929  2779               L7324:
21930  2779 436f6e74656e  	dc.b	"Contents Menu",0
21931  2787               L5324:
21932  2787 536574757020  	dc.b	"Setup Menu",0
21933  2792               L3324:
21934  2792 526f6f74204d  	dc.b	"Root Menu",0
21935  279c               L1324:
21936  279c 4c6566742d44  	dc.b	"Left-Down",0
21937  27a6               L7224:
21938  27a6 4c6566742d55  	dc.b	"Left-Up",0
21939  27ae               L5224:
21940  27ae 52696768742d  	dc.b	"Right-Down",0
21941  27b9               L3224:
21942  27b9 52696768742d  	dc.b	"Right-Up",0
21943  27c2               L1224:
21944  27c2 526967687400  	dc.b	"Right",0
21945  27c8               L7124:
21946  27c8 4c65667400    	dc.b	"Left",0
21947  27cd               L5124:
21948  27cd 446f776e00    	dc.b	"Down",0
21949  27d2               L3124:
21950  27d2 557000        	dc.b	"Up",0
21951  27d5               L1124:
21952  27d5 53656c656374  	dc.b	"Select",0
21953  27dc               L3024:
21954  27dc 4b6579436f64  	dc.b	"KeyCode=%x ==>",0
21955  27eb               L7573:
21956  27eb 4d302020203d  	dc.b	"M0   = 0x%X%X%X%X%"
21957  27fd 582558255825  	dc.b	"X%X%X%X%X%X%X%X%X%"
21958  280f 582558255820  	dc.b	"X%X%X ",13
21959  2816 0a00          	dc.b	10,0
21960  2818               L5573:
21961  2818 424b5356203d  	dc.b	"BKSV = 0x%X%X%X%X%"
21962  282a 582558255825  	dc.b	"X%X%X%X%X%X ",13
21963  2837 0a00          	dc.b	10,0
21964  2839               L3573:
21965  2839 414b5356203d  	dc.b	"AKSV = 0x%X%X%X%X%"
21966  284b 582558255825  	dc.b	"X%X%X%X%X%X ",13
21967  2858 0a00          	dc.b	10,0
21968  285a               L3563:
21969  285a 232323232053  	dc.b	"#### SCDT OFF ####"
21970  286c 0d0a00        	dc.b	13,10,0
21971  286f               L7463:
21972  286f 232323232053  	dc.b	"#### SCDT ON ####",13
21973  2881 0a00          	dc.b	10,0
21974  2883               L3263:
21975  2883 232323232048  	dc.b	"#### HDMI/DVI Mode"
21976  2895 203a20445649  	dc.b	" : DVI ####",13
21977  28a1 0a00          	dc.b	10,0
21978  28a3               L5163:
21979  28a3 232323232048  	dc.b	"#### HDMI/DVI Mode"
21980  28b5 203a2048444d  	dc.b	" : HDMI ####",13
21981  28c2 0a00          	dc.b	10,0
21982  28c4               L7653:
21983  28c4 434452207265  	dc.b	"CDR reset for Port"
21984  28d6 31204445534b  	dc.b	"1 DESKEW_TIMEOUT !"
21985  28e8 21210d        	dc.b	"!!",13
21986  28eb 0a00          	dc.b	10,0
21987  28ed               L3453:
21988  28ed 434452207265  	dc.b	"CDR reset for Port"
21989  28ff 30204445534b  	dc.b	"0 DESKEW_TIMEOUT !"
21990  2911 21210d        	dc.b	"!!",13
21991  2914 0a00          	dc.b	10,0
21992  2916               L7153:
21993  2916 434452207265  	dc.b	"CDR reset for Port"
21994  2928 31204543435f  	dc.b	"1 ECC_TIMEOUT !!!",13
21995  293a 0a00          	dc.b	10,0
21996  293c               L3743:
21997  293c 434452207265  	dc.b	"CDR reset for Port"
21998  294e 30204543435f  	dc.b	"0 ECC_TIMEOUT !!!",13
21999  2960 0a00          	dc.b	10,0
22000  2962               L7443:
22001  2962 232323232050  	dc.b	"#### Power 5V OFF "
22002  2974 232323230d    	dc.b	"####",13
22003  2979 0a00          	dc.b	10,0
22004  297b               L3443:
22005  297b 232323232050  	dc.b	"#### Power 5V ON #"
22006  298d 2323230d      	dc.b	"###",13
22007  2991 0a00          	dc.b	10,0
22008  2993               L3613:
22009  2993 2b2b2b2b2b2b  	dc.b	"+++++++++++ B_CAP_"
22010  29a5 4842525f4155  	dc.b	"HBR_AUDIO ++++++++"
22011  29b7 2b2b2b2b2b2b  	dc.b	"+++++++++",13
22012  29c1 0a00          	dc.b	10,0
22013  29c3               L1113:
22014  29c3 436174363032  	dc.b	"Cat6023 Audio--> A"
22015  29d5 7564696f2066  	dc.b	"udio flag=%02X,Ch "
22016  29e7 4e6f3d253032  	dc.b	"No=%02X,Fs=%02X .."
22017  29f9 2e200d        	dc.b	". ",13
22018  29fc 0a00          	dc.b	10,0
22019  29fe               L3013:
22020  29fe 2b2b2b200d    	dc.b	"+++ ",13
22021  2a03 0a00          	dc.b	10,0
22022  2a05               L1062:
22023  2a05 536574445649  	dc.b	"SetDVIVideoOutput("
22024  2a17 29200d        	dc.b	") ",13
22025  2a1a 0a00          	dc.b	10,0
22026  2a1c               L3552:
22027  2a1c 20536574436f  	dc.b	" SetColorimetryByM"
22028  2a2e 6f6465282920  	dc.b	"ode() REG_RX_PIXCL"
22029  2a40 4b5f53504545  	dc.b	"K_SPEED=%x ",13
22030  2a4c 0a00          	dc.b	10,0
22031  2a4e               L7642:
22032  2a4e 5365744e6577  	dc.b	"SetNewInfoVideoOut"
22033  2a60 707574282920  	dc.b	"put() ",13
22034  2a67 0a00          	dc.b	10,0
22035  2a69               L7342:
22036  2a69 302d3235350d  	dc.b	"0-255",13
22037  2a6f 0a00          	dc.b	10,0
22038  2a71               L3342:
22039  2a71 31362d323335  	dc.b	"16-235",13
22040  2a78 0a00          	dc.b	10,0
22041  2a7a               L5242:
22042  2a7a 435343203d20  	dc.b	"CSC = YUV2RGB ",0
22043  2a89               L5142:
22044  2a89 495455363031  	dc.b	"ITU601 ",0
22045  2a91               L1142:
22046  2a91 20302d323535  	dc.b	" 0-255",13
22047  2a98 0a00          	dc.b	10,0
22048  2a9a               L5042:
22049  2a9a 2031362d3233  	dc.b	" 16-235",13
22050  2aa2 0a00          	dc.b	10,0
22051  2aa4               L1042:
22052  2aa4 495455373039  	dc.b	"ITU709 ",0
22053  2aac               L3632:
22054  2aac 4f7574707574  	dc.b	"Output mode is RGB"
22055  2abe 32340d        	dc.b	"24",13
22056  2ac1 0a00          	dc.b	10,0
22057  2ac3               L7432:
22058  2ac3 496e70757420  	dc.b	"Input mode is RGB4"
22059  2ad5 34340d        	dc.b	"44",13
22060  2ad8 0a00          	dc.b	10,0
22061  2ada               L1432:
22062  2ada 496e70757420  	dc.b	"Input mode is YUV4"
22063  2aec 32320d        	dc.b	"22",13
22064  2aef 0a00          	dc.b	10,0
22065  2af1               L7332:
22066  2af1 496e70757420  	dc.b	"Input mode is YUV4"
22067  2b03 34340d        	dc.b	"44",13
22068  2b06 0a00          	dc.b	10,0
22069  2b08               L1332:
22070  2b08 4f7574707574  	dc.b	"Output mode is YUV"
22071  2b1a 3434340d      	dc.b	"444",13
22072  2b1e 0a00          	dc.b	10,0
22073  2b20               L3232:
22074  2b20 0d0a21212120  	dc.b	13,10,33,33,33,32
22075  2b26 536574436f6c  	dc.b	"SetColorSpaceConve"
22076  2b38 727428202920  	dc.b	"rt( ) !!!",13
22077  2b42 0a00          	dc.b	10,0
22078  2b44               L3612:
22079  2b44 536574566964  	dc.b	"SetVideoInputForma"
22080  2b56 745769746849  	dc.b	"tWithInfoFrame - R"
22081  2b68 656741453d25  	dc.b	"egAE=%x it6802->m_"
22082  2b7a 62496e707574  	dc.b	"bInputVideoMode=%x"
22083  2b8c 0d0a00        	dc.b	13,10,0
22084  2b8f               L1612:
22085  2b8f 696e70757420  	dc.b	"input RGB24 mode ",0
22086  2ba1               L7512:
22087  2ba1 696e70757420  	dc.b	"input YUV422 mode ",0
22088  2bb4               L5512:
22089  2bb4 696e70757420  	dc.b	"input YUV444 mode ",0
22090  2bc7               L3771:
22091  2bc7 434452207265  	dc.b	"CDR reset for SCDT"
22092  2bd9 5f4f46465f54  	dc.b	"_OFF_TIMEOUT !!!",13
22093  2bea 0a00          	dc.b	10,0
22094  2bec               L1361:
22095  2bec 495436383032  	dc.b	"IT6802_fsm_init( )"
22096  2bfe 200d          	dc.b	" ",13
22097  2c00 0a00          	dc.b	10,0
22098  2c02               L706:
22099  2c02 3d3d3d3d3d20  	dc.b	"=====  read Reg0x%"
22100  2c14 783d2578203d  	dc.b	"x=%x =====  ",13
22101  2c21 0a00          	dc.b	10,0
22102  2c23               L506:
22103  2c23 4d484c204932  	dc.b	"MHL I2C ERROR !!!",0
22104  2c35               L165:
22105  2c35 495436383032  	dc.b	"IT6802 I2C ERROR !"
22106  2c47 212100        	dc.b	"!!",0
22107  2c4a               L505:
22108  2c4a 3d3d3d3d3d20  	dc.b	"=====  Write Reg0x"
22109  2c5c 25783d257820  	dc.b	"%x=%x =====  ",13
22110  2c6a 0a00          	dc.b	10,0
22111  2c6c               L305:
22112  2c6c 48444d492049  	dc.b	"HDMI I2C ERROR !!!",0
22113  2c7f               L105:
22114  2c7f 3d3d3d3d3d3d  	dc.b	"=================="
22115  2c91 3d3d3d3d3d3d  	dc.b	"=================="
22116  2ca3 0d0a00        	dc.b	13,10,0
22117  2ca6               L554:
22118  2ca6 3d3d3d3d3d20  	dc.b	"=====  Read Reg0x%"
22119  2cb8 78203d20200d  	dc.b	"x =  ",13
22120  2cbe 0a00          	dc.b	10,0
22121  2cc0               L354:
22122  2cc0 48444d492052  	dc.b	"HDMI Read ERROR !!"
22123  2cd2 2100          	dc.b	"!",0
22124  2cd4               L55:
22125  2cd4 415354415445  	dc.b	"ASTATE_Reserved",0
22126  2ce4               L35:
22127  2ce4 415354415445  	dc.b	"ASTATE_AudioOn",0
22128  2cf3               L15:
22129  2cf3 415354415445  	dc.b	"ASTATE_WaitForRead"
22130  2d05 7900          	dc.b	"y",0
22131  2d07               L74:
22132  2d07 415354415445  	dc.b	"ASTATE_ResetAudio",0
22133  2d19               L54:
22134  2d19 415354415445  	dc.b	"ASTATE_RequestAudi"
22135  2d2b 6f00          	dc.b	"o",0
22136  2d2d               L34:
22137  2d2d 415354415445  	dc.b	"ASTATE_AudioOff",0
22138  2d3d               L14:
22139  2d3d 565354415445  	dc.b	"VSTATE_Reserved",0
22140  2d4d               L73:
22141  2d4d 565354415445  	dc.b	"VSTATE_HDMI_OFF",0
22142  2d5d               L53:
22143  2d5d 565354415445  	dc.b	"VSTATE_ColorDetect"
22144  2d6f 526573657400  	dc.b	"Reset",0
22145  2d75               L33:
22146  2d75 565354415445  	dc.b	"VSTATE_VideoOn",0
22147  2d84               L13:
22148  2d84 565354415445  	dc.b	"VSTATE_ModeDetecti"
22149  2d96 6e6700        	dc.b	"ng",0
22150  2d99               L72:
22151  2d99 565354415445  	dc.b	"VSTATE_HDCP_Reset",0
22152  2dab               L52:
22153  2dab 565354415445  	dc.b	"VSTATE_HDCPSet",0
22154  2dba               L32:
22155  2dba 565354415445  	dc.b	"VSTATE_SyncCheckin"
22156  2dcc 6700          	dc.b	"g",0
22157  2dce               L12:
22158  2dce 565354415445  	dc.b	"VSTATE_SWReset",0
22159  2ddd               L71:
22160  2ddd 565354415445  	dc.b	"VSTATE_SyncWait",0
22161  2ded               L51:
22162  2ded 565354415445  	dc.b	"VSTATE_5VOff",0
22163  2dfa               L31:
22164  2dfa 565354415445  	dc.b	"VSTATE_Termination"
22165  2e0c 4f6e00        	dc.b	"On",0
22166  2e0f               L11:
22167  2e0f 565354415445  	dc.b	"VSTATE_Termination"
22168  2e21 4f666600      	dc.b	"Off",0
22169  2e25               L7:
22170  2e25 565354415445  	dc.b	"VSTATE_Off",0
22171                     	xref.b	c_x
22172                     	xref.b	c_y
22192                     	xref	d_ftoi
22193                     	xref	d_ltor
22194                     	xref	d_smody
22195                     	xref	d_smodx
22196                     	xref	d_idiv
22197                     	xref	d_jctab
22198                     	xref	d_imul
22199                     	end
