{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,308) ([7680,0,0,486,0,0,0,128,0,0,8192,0,0,0,64,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,8,0,0,0,8192,0,2,8,61442,3,1,4,63489,1,0,5116,2,0,0,0,0,0,0,0,0,4096,16384,4096,8064,2048,8192,2048,4032,1024,4096,1024,2016,512,2048,512,1008,256,1024,256,504,128,512,128,252,64,256,64,126,0,0,32,0,65408,63,0,0,8,32,49160,15,4,16,57348,7,2,8,61442,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,4095,0,0,0,0,512,0,256,1024,256,504,120,0,38912,7,0,0,8,0,30,0,58880,1,0,0,1,0,8,32,49160,15,0,24576,0,0,65520,7,4,0,0,0,2048,32768,0,32770,64512,16384,0,16385,32256,8192,32768,8192,16128,4096,16384,4096,8064,2048,8192,2048,4032,1024,4096,1024,2016,512,2048,512,1008,256,1024,256,504,128,512,128,252,64,256,64,126,32,128,32,63,16,64,32784,31,8,32,49160,15,4,16,57348,7,2,8,61442,3,1,4,63489,1,65532,1,1,0,254,0,0,0,32767,256,0,24576,0,0,0,1920,0,0,0,57344,4095,0,0,61440,2047,0,0,63488,1023,0,0,64512,511,0,0,65024,255,0,0,65280,127,0,0,65408,63,0,0,0,0,16,0,0,8192,0,0,0,0,0,0,2,0,0,32768,0,32770,64512,0,0,0,0,0,0,16384,0,32768,63,0,0,49152,31,0,0,57344,15,0,0,61440,7,0,0,63488,3,0,0,64512,1,0,0,65024,0,0,0,32512,0,0,0,0,0,0,0,4096,0,0,0,2048,0,0,0,1024,0,0,0,960,0,0,0,480,0,0,0,254,0,0,0,0,16384,0,0,0,128,0,0,0,0,2,1024,4096,1024,2016,61440,2047,0,0,63488,1023,512,0,0,0,32,0,0,0,0,2,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,57344,1,0,0,0,0,0,8,30720,0,0,0,0,0,0,0,7680,0,0,486,0,0,0,0,1920,0,32768,121,0,0,256,0,480,0,24576,30,0,0,144,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,32768,4,0,0,0,0,0,0,32768,0,61440,0,0,3888,0,0,18432,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","ValueList","VarList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","\"==\"","\"<=\"","\">=\"","\"!=\"","'!'","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","if","then","else","func","\"return\"","\"print\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 63
        bit_end = (st + 1) * 63
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..62]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (50) = happyShift action_9
action_0 (51) = happyShift action_10
action_0 (54) = happyShift action_11
action_0 (55) = happyShift action_12
action_0 (56) = happyShift action_13
action_0 (57) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (57) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (48) = happyShift action_24
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyShift action_40
action_3 (63) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (57) = happyShift action_39
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_51

action_6 _ = happyReduce_52

action_7 _ = happyReduce_53

action_8 _ = happyReduce_54

action_9 (46) = happyShift action_38
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (46) = happyShift action_37
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (57) = happyShift action_36
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_26
action_12 (32) = happyShift action_27
action_12 (46) = happyShift action_28
action_12 (57) = happyShift action_29
action_12 (58) = happyShift action_30
action_12 (59) = happyShift action_31
action_12 (60) = happyShift action_32
action_12 (61) = happyShift action_33
action_12 (62) = happyShift action_34
action_12 (5) = happyGoto action_35
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (14) = happyShift action_26
action_13 (32) = happyShift action_27
action_13 (46) = happyShift action_28
action_13 (57) = happyShift action_29
action_13 (58) = happyShift action_30
action_13 (59) = happyShift action_31
action_13 (60) = happyShift action_32
action_13 (61) = happyShift action_33
action_13 (62) = happyShift action_34
action_13 (5) = happyGoto action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (33) = happyShift action_15
action_14 (34) = happyShift action_16
action_14 (35) = happyShift action_17
action_14 (36) = happyShift action_18
action_14 (37) = happyShift action_19
action_14 (38) = happyShift action_20
action_14 (39) = happyShift action_21
action_14 (40) = happyShift action_22
action_14 (43) = happyShift action_23
action_14 (48) = happyShift action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_10

action_16 _ = happyReduce_11

action_17 (14) = happyShift action_26
action_17 (32) = happyShift action_27
action_17 (46) = happyShift action_28
action_17 (57) = happyShift action_29
action_17 (58) = happyShift action_30
action_17 (59) = happyShift action_31
action_17 (60) = happyShift action_32
action_17 (61) = happyShift action_33
action_17 (62) = happyShift action_34
action_17 (5) = happyGoto action_73
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (14) = happyShift action_26
action_18 (32) = happyShift action_27
action_18 (46) = happyShift action_28
action_18 (57) = happyShift action_29
action_18 (58) = happyShift action_30
action_18 (59) = happyShift action_31
action_18 (60) = happyShift action_32
action_18 (61) = happyShift action_33
action_18 (62) = happyShift action_34
action_18 (5) = happyGoto action_72
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_26
action_19 (32) = happyShift action_27
action_19 (46) = happyShift action_28
action_19 (57) = happyShift action_29
action_19 (58) = happyShift action_30
action_19 (59) = happyShift action_31
action_19 (60) = happyShift action_32
action_19 (61) = happyShift action_33
action_19 (62) = happyShift action_34
action_19 (5) = happyGoto action_71
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_26
action_20 (32) = happyShift action_27
action_20 (46) = happyShift action_28
action_20 (57) = happyShift action_29
action_20 (58) = happyShift action_30
action_20 (59) = happyShift action_31
action_20 (60) = happyShift action_32
action_20 (61) = happyShift action_33
action_20 (62) = happyShift action_34
action_20 (5) = happyGoto action_70
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_26
action_21 (32) = happyShift action_27
action_21 (46) = happyShift action_28
action_21 (57) = happyShift action_29
action_21 (58) = happyShift action_30
action_21 (59) = happyShift action_31
action_21 (60) = happyShift action_32
action_21 (61) = happyShift action_33
action_21 (62) = happyShift action_34
action_21 (5) = happyGoto action_69
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_26
action_22 (32) = happyShift action_27
action_22 (46) = happyShift action_28
action_22 (57) = happyShift action_29
action_22 (58) = happyShift action_30
action_22 (59) = happyShift action_31
action_22 (60) = happyShift action_32
action_22 (61) = happyShift action_33
action_22 (62) = happyShift action_34
action_22 (5) = happyGoto action_68
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_26
action_23 (32) = happyShift action_27
action_23 (46) = happyShift action_28
action_23 (57) = happyShift action_29
action_23 (58) = happyShift action_30
action_23 (59) = happyShift action_31
action_23 (60) = happyShift action_32
action_23 (61) = happyShift action_33
action_23 (62) = happyShift action_34
action_23 (5) = happyGoto action_67
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (46) = happyShift action_66
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_46
action_25 (18) = happyShift action_47
action_25 (19) = happyShift action_48
action_25 (20) = happyShift action_49
action_25 (21) = happyShift action_50
action_25 (22) = happyShift action_51
action_25 (23) = happyShift action_52
action_25 (24) = happyShift action_53
action_25 (25) = happyShift action_54
action_25 (26) = happyShift action_55
action_25 (27) = happyShift action_56
action_25 (28) = happyShift action_57
action_25 (29) = happyShift action_58
action_25 (30) = happyShift action_59
action_25 (31) = happyShift action_60
action_25 _ = happyReduce_7

action_26 (14) = happyShift action_26
action_26 (32) = happyShift action_27
action_26 (46) = happyShift action_28
action_26 (57) = happyShift action_29
action_26 (58) = happyShift action_30
action_26 (59) = happyShift action_31
action_26 (60) = happyShift action_32
action_26 (61) = happyShift action_33
action_26 (62) = happyShift action_34
action_26 (5) = happyGoto action_64
action_26 (6) = happyGoto action_65
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_26
action_27 (32) = happyShift action_27
action_27 (46) = happyShift action_28
action_27 (57) = happyShift action_29
action_27 (58) = happyShift action_30
action_27 (59) = happyShift action_31
action_27 (60) = happyShift action_32
action_27 (61) = happyShift action_33
action_27 (62) = happyShift action_34
action_27 (5) = happyGoto action_63
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_26
action_28 (32) = happyShift action_27
action_28 (46) = happyShift action_28
action_28 (57) = happyShift action_29
action_28 (58) = happyShift action_30
action_28 (59) = happyShift action_31
action_28 (60) = happyShift action_32
action_28 (61) = happyShift action_33
action_28 (62) = happyShift action_34
action_28 (5) = happyGoto action_62
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (46) = happyShift action_61
action_29 _ = happyReduce_38

action_30 _ = happyReduce_39

action_31 _ = happyReduce_41

action_32 _ = happyReduce_40

action_33 _ = happyReduce_42

action_34 _ = happyReduce_43

action_35 (17) = happyShift action_46
action_35 (18) = happyShift action_47
action_35 (19) = happyShift action_48
action_35 (20) = happyShift action_49
action_35 (21) = happyShift action_50
action_35 (22) = happyShift action_51
action_35 (23) = happyShift action_52
action_35 (24) = happyShift action_53
action_35 (25) = happyShift action_54
action_35 (26) = happyShift action_55
action_35 (27) = happyShift action_56
action_35 (28) = happyShift action_57
action_35 (29) = happyShift action_58
action_35 (30) = happyShift action_59
action_35 (31) = happyShift action_60
action_35 _ = happyReduce_6

action_36 (46) = happyShift action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (14) = happyShift action_26
action_37 (32) = happyShift action_27
action_37 (46) = happyShift action_28
action_37 (57) = happyShift action_29
action_37 (58) = happyShift action_30
action_37 (59) = happyShift action_31
action_37 (60) = happyShift action_32
action_37 (61) = happyShift action_33
action_37 (62) = happyShift action_34
action_37 (5) = happyGoto action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_5
action_38 (11) = happyShift action_6
action_38 (12) = happyShift action_7
action_38 (13) = happyShift action_8
action_38 (50) = happyShift action_9
action_38 (51) = happyShift action_10
action_38 (54) = happyShift action_11
action_38 (55) = happyShift action_12
action_38 (56) = happyShift action_13
action_38 (57) = happyShift action_14
action_38 (4) = happyGoto action_43
action_38 (9) = happyGoto action_4
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (43) = happyShift action_42
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_5
action_40 (11) = happyShift action_6
action_40 (12) = happyShift action_7
action_40 (13) = happyShift action_8
action_40 (50) = happyShift action_9
action_40 (51) = happyShift action_10
action_40 (54) = happyShift action_11
action_40 (55) = happyShift action_12
action_40 (56) = happyShift action_13
action_40 (57) = happyShift action_14
action_40 (4) = happyGoto action_41
action_40 (9) = happyGoto action_4
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (42) = happyShift action_40
action_41 _ = happyReduce_18

action_42 (14) = happyShift action_26
action_42 (32) = happyShift action_27
action_42 (46) = happyShift action_28
action_42 (57) = happyShift action_29
action_42 (58) = happyShift action_30
action_42 (59) = happyShift action_31
action_42 (60) = happyShift action_32
action_42 (61) = happyShift action_33
action_42 (62) = happyShift action_34
action_42 (5) = happyGoto action_100
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (41) = happyShift action_99
action_43 (42) = happyShift action_40
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (17) = happyShift action_46
action_44 (18) = happyShift action_47
action_44 (19) = happyShift action_48
action_44 (20) = happyShift action_49
action_44 (21) = happyShift action_50
action_44 (22) = happyShift action_51
action_44 (23) = happyShift action_52
action_44 (24) = happyShift action_53
action_44 (25) = happyShift action_54
action_44 (26) = happyShift action_55
action_44 (27) = happyShift action_56
action_44 (28) = happyShift action_57
action_44 (29) = happyShift action_58
action_44 (30) = happyShift action_59
action_44 (31) = happyShift action_60
action_44 (47) = happyShift action_98
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (57) = happyShift action_97
action_45 (7) = happyGoto action_96
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (14) = happyShift action_26
action_46 (32) = happyShift action_27
action_46 (46) = happyShift action_28
action_46 (57) = happyShift action_29
action_46 (58) = happyShift action_30
action_46 (59) = happyShift action_31
action_46 (60) = happyShift action_32
action_46 (61) = happyShift action_33
action_46 (62) = happyShift action_34
action_46 (5) = happyGoto action_95
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (14) = happyShift action_26
action_47 (32) = happyShift action_27
action_47 (46) = happyShift action_28
action_47 (57) = happyShift action_29
action_47 (58) = happyShift action_30
action_47 (59) = happyShift action_31
action_47 (60) = happyShift action_32
action_47 (61) = happyShift action_33
action_47 (62) = happyShift action_34
action_47 (5) = happyGoto action_94
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (14) = happyShift action_26
action_48 (32) = happyShift action_27
action_48 (46) = happyShift action_28
action_48 (57) = happyShift action_29
action_48 (58) = happyShift action_30
action_48 (59) = happyShift action_31
action_48 (60) = happyShift action_32
action_48 (61) = happyShift action_33
action_48 (62) = happyShift action_34
action_48 (5) = happyGoto action_93
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (14) = happyShift action_26
action_49 (32) = happyShift action_27
action_49 (46) = happyShift action_28
action_49 (57) = happyShift action_29
action_49 (58) = happyShift action_30
action_49 (59) = happyShift action_31
action_49 (60) = happyShift action_32
action_49 (61) = happyShift action_33
action_49 (62) = happyShift action_34
action_49 (5) = happyGoto action_92
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (14) = happyShift action_26
action_50 (32) = happyShift action_27
action_50 (46) = happyShift action_28
action_50 (57) = happyShift action_29
action_50 (58) = happyShift action_30
action_50 (59) = happyShift action_31
action_50 (60) = happyShift action_32
action_50 (61) = happyShift action_33
action_50 (62) = happyShift action_34
action_50 (5) = happyGoto action_91
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (14) = happyShift action_26
action_51 (32) = happyShift action_27
action_51 (46) = happyShift action_28
action_51 (57) = happyShift action_29
action_51 (58) = happyShift action_30
action_51 (59) = happyShift action_31
action_51 (60) = happyShift action_32
action_51 (61) = happyShift action_33
action_51 (62) = happyShift action_34
action_51 (5) = happyGoto action_90
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_26
action_52 (32) = happyShift action_27
action_52 (46) = happyShift action_28
action_52 (57) = happyShift action_29
action_52 (58) = happyShift action_30
action_52 (59) = happyShift action_31
action_52 (60) = happyShift action_32
action_52 (61) = happyShift action_33
action_52 (62) = happyShift action_34
action_52 (5) = happyGoto action_89
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_26
action_53 (32) = happyShift action_27
action_53 (46) = happyShift action_28
action_53 (57) = happyShift action_29
action_53 (58) = happyShift action_30
action_53 (59) = happyShift action_31
action_53 (60) = happyShift action_32
action_53 (61) = happyShift action_33
action_53 (62) = happyShift action_34
action_53 (5) = happyGoto action_88
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_26
action_54 (32) = happyShift action_27
action_54 (46) = happyShift action_28
action_54 (57) = happyShift action_29
action_54 (58) = happyShift action_30
action_54 (59) = happyShift action_31
action_54 (60) = happyShift action_32
action_54 (61) = happyShift action_33
action_54 (62) = happyShift action_34
action_54 (5) = happyGoto action_87
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_26
action_55 (32) = happyShift action_27
action_55 (46) = happyShift action_28
action_55 (57) = happyShift action_29
action_55 (58) = happyShift action_30
action_55 (59) = happyShift action_31
action_55 (60) = happyShift action_32
action_55 (61) = happyShift action_33
action_55 (62) = happyShift action_34
action_55 (5) = happyGoto action_86
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (14) = happyShift action_26
action_56 (32) = happyShift action_27
action_56 (46) = happyShift action_28
action_56 (57) = happyShift action_29
action_56 (58) = happyShift action_30
action_56 (59) = happyShift action_31
action_56 (60) = happyShift action_32
action_56 (61) = happyShift action_33
action_56 (62) = happyShift action_34
action_56 (5) = happyGoto action_85
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (14) = happyShift action_26
action_57 (32) = happyShift action_27
action_57 (46) = happyShift action_28
action_57 (57) = happyShift action_29
action_57 (58) = happyShift action_30
action_57 (59) = happyShift action_31
action_57 (60) = happyShift action_32
action_57 (61) = happyShift action_33
action_57 (62) = happyShift action_34
action_57 (5) = happyGoto action_84
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (14) = happyShift action_26
action_58 (32) = happyShift action_27
action_58 (46) = happyShift action_28
action_58 (57) = happyShift action_29
action_58 (58) = happyShift action_30
action_58 (59) = happyShift action_31
action_58 (60) = happyShift action_32
action_58 (61) = happyShift action_33
action_58 (62) = happyShift action_34
action_58 (5) = happyGoto action_83
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (14) = happyShift action_26
action_59 (32) = happyShift action_27
action_59 (46) = happyShift action_28
action_59 (57) = happyShift action_29
action_59 (58) = happyShift action_30
action_59 (59) = happyShift action_31
action_59 (60) = happyShift action_32
action_59 (61) = happyShift action_33
action_59 (62) = happyShift action_34
action_59 (5) = happyGoto action_82
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_26
action_60 (32) = happyShift action_27
action_60 (46) = happyShift action_28
action_60 (57) = happyShift action_29
action_60 (58) = happyShift action_30
action_60 (59) = happyShift action_31
action_60 (60) = happyShift action_32
action_60 (61) = happyShift action_33
action_60 (62) = happyShift action_34
action_60 (5) = happyGoto action_81
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_26
action_61 (32) = happyShift action_27
action_61 (46) = happyShift action_28
action_61 (57) = happyShift action_29
action_61 (58) = happyShift action_30
action_61 (59) = happyShift action_31
action_61 (60) = happyShift action_32
action_61 (61) = happyShift action_33
action_61 (62) = happyShift action_34
action_61 (5) = happyGoto action_64
action_61 (6) = happyGoto action_80
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (17) = happyShift action_46
action_62 (18) = happyShift action_47
action_62 (19) = happyShift action_48
action_62 (20) = happyShift action_49
action_62 (21) = happyShift action_50
action_62 (22) = happyShift action_51
action_62 (23) = happyShift action_52
action_62 (24) = happyShift action_53
action_62 (25) = happyShift action_54
action_62 (26) = happyShift action_55
action_62 (27) = happyShift action_56
action_62 (28) = happyShift action_57
action_62 (29) = happyShift action_58
action_62 (30) = happyShift action_59
action_62 (31) = happyShift action_60
action_62 (47) = happyShift action_79
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (17) = happyShift action_46
action_63 (18) = happyShift action_47
action_63 (19) = happyShift action_48
action_63 (20) = happyShift action_49
action_63 (21) = happyShift action_50
action_63 (22) = happyShift action_51
action_63 (23) = happyShift action_52
action_63 _ = happyReduce_33

action_64 (17) = happyShift action_46
action_64 (18) = happyShift action_47
action_64 (19) = happyShift action_48
action_64 (20) = happyShift action_49
action_64 (21) = happyShift action_50
action_64 (22) = happyShift action_51
action_64 (23) = happyShift action_52
action_64 (24) = happyShift action_53
action_64 (25) = happyShift action_54
action_64 (26) = happyShift action_55
action_64 (27) = happyShift action_56
action_64 (28) = happyShift action_57
action_64 (29) = happyShift action_58
action_64 (30) = happyShift action_59
action_64 (31) = happyShift action_60
action_64 (41) = happyShift action_78
action_64 _ = happyReduce_46

action_65 (15) = happyShift action_76
action_65 (16) = happyShift action_77
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_5
action_66 (11) = happyShift action_6
action_66 (12) = happyShift action_7
action_66 (13) = happyShift action_8
action_66 (8) = happyGoto action_74
action_66 (9) = happyGoto action_75
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (17) = happyShift action_46
action_67 (18) = happyShift action_47
action_67 (19) = happyShift action_48
action_67 (20) = happyShift action_49
action_67 (21) = happyShift action_50
action_67 (22) = happyShift action_51
action_67 (23) = happyShift action_52
action_67 (24) = happyShift action_53
action_67 (25) = happyShift action_54
action_67 (26) = happyShift action_55
action_67 (27) = happyShift action_56
action_67 (28) = happyShift action_57
action_67 (29) = happyShift action_58
action_67 (30) = happyShift action_59
action_67 (31) = happyShift action_60
action_67 _ = happyReduce_9

action_68 (17) = happyShift action_46
action_68 (18) = happyShift action_47
action_68 (19) = happyShift action_48
action_68 (20) = happyShift action_49
action_68 (21) = happyShift action_50
action_68 (22) = happyShift action_51
action_68 (23) = happyShift action_52
action_68 (24) = happyShift action_53
action_68 (25) = happyShift action_54
action_68 (26) = happyShift action_55
action_68 (27) = happyShift action_56
action_68 (28) = happyShift action_57
action_68 (29) = happyShift action_58
action_68 (30) = happyShift action_59
action_68 (31) = happyShift action_60
action_68 _ = happyReduce_17

action_69 (17) = happyShift action_46
action_69 (18) = happyShift action_47
action_69 (19) = happyShift action_48
action_69 (20) = happyShift action_49
action_69 (21) = happyShift action_50
action_69 (22) = happyShift action_51
action_69 (23) = happyShift action_52
action_69 (24) = happyShift action_53
action_69 (25) = happyShift action_54
action_69 (26) = happyShift action_55
action_69 (27) = happyShift action_56
action_69 (28) = happyShift action_57
action_69 (29) = happyShift action_58
action_69 (30) = happyShift action_59
action_69 (31) = happyShift action_60
action_69 _ = happyReduce_16

action_70 (17) = happyShift action_46
action_70 (18) = happyShift action_47
action_70 (19) = happyShift action_48
action_70 (20) = happyShift action_49
action_70 (21) = happyShift action_50
action_70 (22) = happyShift action_51
action_70 (23) = happyShift action_52
action_70 (24) = happyShift action_53
action_70 (25) = happyShift action_54
action_70 (26) = happyShift action_55
action_70 (27) = happyShift action_56
action_70 (28) = happyShift action_57
action_70 (29) = happyShift action_58
action_70 (30) = happyShift action_59
action_70 (31) = happyShift action_60
action_70 _ = happyReduce_15

action_71 (17) = happyShift action_46
action_71 (18) = happyShift action_47
action_71 (19) = happyShift action_48
action_71 (20) = happyShift action_49
action_71 (21) = happyShift action_50
action_71 (22) = happyShift action_51
action_71 (23) = happyShift action_52
action_71 (24) = happyShift action_53
action_71 (25) = happyShift action_54
action_71 (26) = happyShift action_55
action_71 (27) = happyShift action_56
action_71 (28) = happyShift action_57
action_71 (29) = happyShift action_58
action_71 (30) = happyShift action_59
action_71 (31) = happyShift action_60
action_71 _ = happyReduce_14

action_72 (17) = happyShift action_46
action_72 (18) = happyShift action_47
action_72 (19) = happyShift action_48
action_72 (20) = happyShift action_49
action_72 (21) = happyShift action_50
action_72 (22) = happyShift action_51
action_72 (23) = happyShift action_52
action_72 (24) = happyShift action_53
action_72 (25) = happyShift action_54
action_72 (26) = happyShift action_55
action_72 (27) = happyShift action_56
action_72 (28) = happyShift action_57
action_72 (29) = happyShift action_58
action_72 (30) = happyShift action_59
action_72 (31) = happyShift action_60
action_72 _ = happyReduce_13

action_73 (17) = happyShift action_46
action_73 (18) = happyShift action_47
action_73 (19) = happyShift action_48
action_73 (20) = happyShift action_49
action_73 (21) = happyShift action_50
action_73 (22) = happyShift action_51
action_73 (23) = happyShift action_52
action_73 (24) = happyShift action_53
action_73 (25) = happyShift action_54
action_73 (26) = happyShift action_55
action_73 (27) = happyShift action_56
action_73 (28) = happyShift action_57
action_73 (29) = happyShift action_58
action_73 (30) = happyShift action_59
action_73 (31) = happyShift action_60
action_73 _ = happyReduce_12

action_74 (47) = happyShift action_109
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (41) = happyShift action_108
action_75 _ = happyReduce_50

action_76 _ = happyReduce_35

action_77 (15) = happyShift action_107
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (14) = happyShift action_26
action_78 (32) = happyShift action_27
action_78 (46) = happyShift action_28
action_78 (57) = happyShift action_29
action_78 (58) = happyShift action_30
action_78 (59) = happyShift action_31
action_78 (60) = happyShift action_32
action_78 (61) = happyShift action_33
action_78 (62) = happyShift action_34
action_78 (5) = happyGoto action_64
action_78 (6) = happyGoto action_106
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_44

action_80 (47) = happyShift action_105
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (17) = happyShift action_46
action_81 (18) = happyShift action_47
action_81 (19) = happyShift action_48
action_81 (20) = happyShift action_49
action_81 (21) = happyShift action_50
action_81 (22) = happyShift action_51
action_81 (23) = happyShift action_52
action_81 (24) = happyFail []
action_81 (25) = happyFail []
action_81 (26) = happyFail []
action_81 (27) = happyFail []
action_81 (28) = happyFail []
action_81 (29) = happyFail []
action_81 (30) = happyFail []
action_81 (31) = happyFail []
action_81 _ = happyReduce_32

action_82 (17) = happyShift action_46
action_82 (18) = happyShift action_47
action_82 (19) = happyShift action_48
action_82 (20) = happyShift action_49
action_82 (21) = happyShift action_50
action_82 (22) = happyShift action_51
action_82 (23) = happyShift action_52
action_82 (24) = happyFail []
action_82 (25) = happyFail []
action_82 (26) = happyFail []
action_82 (27) = happyFail []
action_82 (28) = happyFail []
action_82 (29) = happyFail []
action_82 (30) = happyFail []
action_82 (31) = happyFail []
action_82 _ = happyReduce_31

action_83 (17) = happyShift action_46
action_83 (18) = happyShift action_47
action_83 (19) = happyShift action_48
action_83 (20) = happyShift action_49
action_83 (21) = happyShift action_50
action_83 (22) = happyShift action_51
action_83 (23) = happyShift action_52
action_83 (24) = happyFail []
action_83 (25) = happyFail []
action_83 (26) = happyFail []
action_83 (27) = happyFail []
action_83 (28) = happyFail []
action_83 (29) = happyFail []
action_83 (30) = happyFail []
action_83 (31) = happyFail []
action_83 _ = happyReduce_30

action_84 (17) = happyShift action_46
action_84 (18) = happyShift action_47
action_84 (19) = happyShift action_48
action_84 (20) = happyShift action_49
action_84 (21) = happyShift action_50
action_84 (22) = happyShift action_51
action_84 (23) = happyShift action_52
action_84 (24) = happyFail []
action_84 (25) = happyFail []
action_84 (26) = happyFail []
action_84 (27) = happyFail []
action_84 (28) = happyFail []
action_84 (29) = happyFail []
action_84 (30) = happyFail []
action_84 (31) = happyFail []
action_84 _ = happyReduce_29

action_85 (17) = happyShift action_46
action_85 (18) = happyShift action_47
action_85 (19) = happyShift action_48
action_85 (20) = happyShift action_49
action_85 (21) = happyShift action_50
action_85 (22) = happyShift action_51
action_85 (23) = happyShift action_52
action_85 (24) = happyFail []
action_85 (25) = happyFail []
action_85 (26) = happyFail []
action_85 (27) = happyFail []
action_85 (28) = happyFail []
action_85 (29) = happyFail []
action_85 (30) = happyFail []
action_85 (31) = happyFail []
action_85 _ = happyReduce_28

action_86 (17) = happyShift action_46
action_86 (18) = happyShift action_47
action_86 (19) = happyShift action_48
action_86 (20) = happyShift action_49
action_86 (21) = happyShift action_50
action_86 (22) = happyShift action_51
action_86 (23) = happyShift action_52
action_86 (24) = happyFail []
action_86 (25) = happyFail []
action_86 (26) = happyFail []
action_86 (27) = happyFail []
action_86 (28) = happyFail []
action_86 (29) = happyFail []
action_86 (30) = happyFail []
action_86 (31) = happyFail []
action_86 _ = happyReduce_27

action_87 (17) = happyShift action_46
action_87 (18) = happyShift action_47
action_87 (19) = happyShift action_48
action_87 (20) = happyShift action_49
action_87 (21) = happyShift action_50
action_87 (22) = happyShift action_51
action_87 (23) = happyShift action_52
action_87 (24) = happyFail []
action_87 (25) = happyFail []
action_87 (26) = happyFail []
action_87 (27) = happyFail []
action_87 (28) = happyFail []
action_87 (29) = happyFail []
action_87 (30) = happyFail []
action_87 (31) = happyFail []
action_87 _ = happyReduce_26

action_88 (17) = happyShift action_46
action_88 (18) = happyShift action_47
action_88 (19) = happyShift action_48
action_88 (20) = happyShift action_49
action_88 (21) = happyShift action_50
action_88 (22) = happyShift action_51
action_88 (23) = happyShift action_52
action_88 (24) = happyFail []
action_88 (25) = happyFail []
action_88 (26) = happyFail []
action_88 (27) = happyFail []
action_88 (28) = happyFail []
action_88 (29) = happyFail []
action_88 (30) = happyFail []
action_88 (31) = happyFail []
action_88 _ = happyReduce_25

action_89 _ = happyReduce_24

action_90 (23) = happyShift action_52
action_90 _ = happyReduce_23

action_91 (23) = happyShift action_52
action_91 _ = happyReduce_22

action_92 (23) = happyShift action_52
action_92 _ = happyReduce_21

action_93 (20) = happyShift action_49
action_93 (21) = happyShift action_50
action_93 (22) = happyShift action_51
action_93 (23) = happyShift action_52
action_93 _ = happyReduce_20

action_94 (20) = happyShift action_49
action_94 (21) = happyShift action_50
action_94 (22) = happyShift action_51
action_94 (23) = happyShift action_52
action_94 _ = happyReduce_19

action_95 (17) = happyShift action_46
action_95 (18) = happyShift action_47
action_95 (19) = happyShift action_48
action_95 (20) = happyShift action_49
action_95 (21) = happyShift action_50
action_95 (22) = happyShift action_51
action_95 (23) = happyShift action_52
action_95 _ = happyReduce_37

action_96 (47) = happyShift action_104
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (41) = happyShift action_103
action_97 _ = happyReduce_48

action_98 (52) = happyShift action_102
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (14) = happyShift action_26
action_99 (32) = happyShift action_27
action_99 (46) = happyShift action_28
action_99 (57) = happyShift action_29
action_99 (58) = happyShift action_30
action_99 (59) = happyShift action_31
action_99 (60) = happyShift action_32
action_99 (61) = happyShift action_33
action_99 (62) = happyShift action_34
action_99 (5) = happyGoto action_101
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (17) = happyShift action_46
action_100 (18) = happyShift action_47
action_100 (19) = happyShift action_48
action_100 (20) = happyShift action_49
action_100 (21) = happyShift action_50
action_100 (22) = happyShift action_51
action_100 (23) = happyShift action_52
action_100 (24) = happyShift action_53
action_100 (25) = happyShift action_54
action_100 (26) = happyShift action_55
action_100 (27) = happyShift action_56
action_100 (28) = happyShift action_57
action_100 (29) = happyShift action_58
action_100 (30) = happyShift action_59
action_100 (31) = happyShift action_60
action_100 _ = happyReduce_8

action_101 (17) = happyShift action_46
action_101 (18) = happyShift action_47
action_101 (19) = happyShift action_48
action_101 (20) = happyShift action_49
action_101 (21) = happyShift action_50
action_101 (22) = happyShift action_51
action_101 (23) = happyShift action_52
action_101 (24) = happyShift action_53
action_101 (25) = happyShift action_54
action_101 (26) = happyShift action_55
action_101 (27) = happyShift action_56
action_101 (28) = happyShift action_57
action_101 (29) = happyShift action_58
action_101 (30) = happyShift action_59
action_101 (31) = happyShift action_60
action_101 (47) = happyShift action_115
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (44) = happyShift action_114
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (57) = happyShift action_97
action_103 (7) = happyGoto action_113
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (44) = happyShift action_112
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_34

action_106 _ = happyReduce_45

action_107 _ = happyReduce_36

action_108 (10) = happyShift action_5
action_108 (11) = happyShift action_6
action_108 (12) = happyShift action_7
action_108 (13) = happyShift action_8
action_108 (8) = happyGoto action_111
action_108 (9) = happyGoto action_75
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (49) = happyShift action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (10) = happyShift action_5
action_110 (11) = happyShift action_6
action_110 (12) = happyShift action_7
action_110 (13) = happyShift action_8
action_110 (9) = happyGoto action_119
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_49

action_112 (10) = happyShift action_5
action_112 (11) = happyShift action_6
action_112 (12) = happyShift action_7
action_112 (13) = happyShift action_8
action_112 (50) = happyShift action_9
action_112 (51) = happyShift action_10
action_112 (54) = happyShift action_11
action_112 (55) = happyShift action_12
action_112 (56) = happyShift action_13
action_112 (57) = happyShift action_14
action_112 (4) = happyGoto action_118
action_112 (9) = happyGoto action_4
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_47

action_114 (10) = happyShift action_5
action_114 (11) = happyShift action_6
action_114 (12) = happyShift action_7
action_114 (13) = happyShift action_8
action_114 (50) = happyShift action_9
action_114 (51) = happyShift action_10
action_114 (54) = happyShift action_11
action_114 (55) = happyShift action_12
action_114 (56) = happyShift action_13
action_114 (57) = happyShift action_14
action_114 (4) = happyGoto action_117
action_114 (9) = happyGoto action_4
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (44) = happyShift action_116
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (10) = happyShift action_5
action_116 (11) = happyShift action_6
action_116 (12) = happyShift action_7
action_116 (13) = happyShift action_8
action_116 (50) = happyShift action_9
action_116 (51) = happyShift action_10
action_116 (54) = happyShift action_11
action_116 (55) = happyShift action_12
action_116 (56) = happyShift action_13
action_116 (57) = happyShift action_14
action_116 (4) = happyGoto action_122
action_116 (9) = happyGoto action_4
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (42) = happyShift action_40
action_117 (45) = happyShift action_121
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (42) = happyShift action_40
action_118 (45) = happyShift action_120
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_1

action_120 _ = happyReduce_2

action_121 (53) = happyShift action_124
action_121 _ = happyReduce_4

action_122 (42) = happyShift action_40
action_122 (45) = happyShift action_123
action_122 _ = happyFail (happyExpListPerState 122)

action_123 _ = happyReduce_5

action_124 (44) = happyShift action_125
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (10) = happyShift action_5
action_125 (11) = happyShift action_6
action_125 (12) = happyShift action_7
action_125 (13) = happyShift action_8
action_125 (50) = happyShift action_9
action_125 (51) = happyShift action_10
action_125 (54) = happyShift action_11
action_125 (55) = happyShift action_12
action_125 (56) = happyShift action_13
action_125 (57) = happyShift action_14
action_125 (4) = happyGoto action_126
action_125 (9) = happyGoto action_4
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (42) = happyShift action_40
action_126 (45) = happyShift action_127
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_3

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncTypeDeclaration happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 8 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclaration happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 12 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElseStatement happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfStatement happy_var_3 happy_var_7
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 9 4 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LoopStatement happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReturnStatement happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (PrintStatement happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 4 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (NewAssignment happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 _
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpIncrement happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 _
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpDecrement happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpAddition happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpMinus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpMultiply happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpDivide happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpModulo happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (VarOpExponent happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticAdd happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMinus happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMultiply happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticDivide happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticModulo happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticExponent happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanAnd happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanOr happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanLT happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGT happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanEQ happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanLTEQ happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGTEQ happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanNEQ happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 4 5 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  5 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (List happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 5 happyReduction_36
happyReduction_36 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Series happy_var_2
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  5 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ListGetElement happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  5 happyReduction_38
happyReduction_38 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  5 happyReduction_39
happyReduction_39 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  5 happyReduction_40
happyReduction_40 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  5 happyReduction_41
happyReduction_41 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_44 = happySpecReduce_3  5 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  6 happyReduction_46
happyReduction_46 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (Value happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  7 happyReduction_47
happyReduction_47 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  7 happyReduction_48
happyReduction_48 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  8 happyReduction_49
happyReduction_49 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  8 happyReduction_50
happyReduction_50 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Type happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  9 happyReduction_51
happyReduction_51 _
	 =  HappyAbsSyn9
		 (TypeString
	)

happyReduce_52 = happySpecReduce_1  9 happyReduction_52
happyReduction_52 _
	 =  HappyAbsSyn9
		 (TypeChar
	)

happyReduce_53 = happySpecReduce_1  9 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn9
		 (TypeInt
	)

happyReduce_54 = happySpecReduce_1  9 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn9
		 (TypeBool
	)

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeString p -> cont 10;
	TokenTypeChar p -> cont 11;
	TokenTypeInt p -> cont 12;
	TokenTypeBoolean p -> cont 13;
	TokenListStart p -> cont 14;
	TokenListEnd p -> cont 15;
	TokenListSeries p -> cont 16;
	TokenListGetElement p -> cont 17;
	TokenOpAdd p -> cont 18;
	TokenOpMinus p -> cont 19;
	TokenOpMultiply p -> cont 20;
	TokenOpDivide p -> cont 21;
	TokenOpModulo p -> cont 22;
	TokenOpExponent p -> cont 23;
	TokenOpAnd p -> cont 24;
	TokenOpOr p -> cont 25;
	TokenOpLT p -> cont 26;
	TokenOpGT p -> cont 27;
	TokenOpEQ p -> cont 28;
	TokenOpLTEQ p -> cont 29;
	TokenOpGTEQ p -> cont 30;
	TokenOpNEQ p -> cont 31;
	TokenOpNot p -> cont 32;
	TokenAssignOpIncrement p -> cont 33;
	TokenAssignOpDecrement p -> cont 34;
	TokenAssignOpAddition p -> cont 35;
	TokenAssignOpSubtraction p -> cont 36;
	TokenAssignOpMultiplication p -> cont 37;
	TokenAssignOpDivision p -> cont 38;
	TokenAssignOpModulus p -> cont 39;
	TokenAssignOpExponation p -> cont 40;
	TokenComma p -> cont 41;
	TokenSemicolon p -> cont 42;
	TokenAssignment p -> cont 43;
	TokenCurlyBracketOpen p -> cont 44;
	TokenCurlyBracketClose p -> cont 45;
	TokenBracketOpen p -> cont 46;
	TokenBracketClose p -> cont 47;
	TokenTypeDeclaration p -> cont 48;
	TokenFuncTransition p -> cont 49;
	TokenKeywordLoop p -> cont 50;
	TokenKeywordIf p -> cont 51;
	TokenKeywordThen p -> cont 52;
	TokenKeywordElse p -> cont 53;
	TokenKeywordFunc p -> cont 54;
	TokenKeywordReturn p -> cont 55;
	TokenKeywordPrint p -> cont 56;
	TokenVariable p happy_dollar_dollar -> cont 57;
	TokenString p happy_dollar_dollar -> cont 58;
	TokenChar p  happy_dollar_dollar -> cont 59;
	TokenInteger p happy_dollar_dollar -> cont 60;
	TokenBoolTrue p -> cont 61;
	TokenBoolFalse p -> cont 62;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 63 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError (t:ts) = error ("Parse error at: " ++ tokenPosn t)

data Exp = FuncTypeDeclaration String TypeList Type
         | FuncDeclaration String VarList Exp
         | IfElseStatement Value Exp Exp
         | IfStatement Value Exp
         | LoopStatement Exp Value Exp
         | ReturnStatement Value
         | PrintStatement Value

         | NewAssignment Type String Value
         | ReAssignment String Value

         | VarOpIncrement String
         | VarOpDecrement String
         | VarOpAddition String Value
         | VarOpMinus String Value
         | VarOpMultiply String Value
         | VarOpDivide String Value
         | VarOpModulo String Value
         | VarOpExponent String Value

         | ExpList Exp Exp
         | Val Value
         | ValList ValueList
         | VarListWrapper VarList
         deriving (Show, Eq)

data Value = ArithmeticAdd Value Value
           | ArithmeticMinus Value Value
           | ArithmeticMultiply Value Value
           | ArithmeticDivide Value Value
           | ArithmeticModulo Value Value
           | ArithmeticExponent Value Value

           | BooleanAnd Value Value
           | BooleanOr Value Value
           | BooleanLT Value Value
           | BooleanGT Value Value
           | BooleanEQ Value Value
           | BooleanLTEQ Value Value
           | BooleanGTEQ Value Value
           | BooleanNEQ Value Value
           | Not Value

           | FunctionCall String ValueList
           | List ValueList
           | Series ValueList
           | ListGetElement Value Value
           | VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           | NullValue
           deriving (Show, Eq)

data ValueList = ValueList Value ValueList
               | Value Value
               deriving (Show, Eq)

data VarList = VarList String VarList
             | Var String
             deriving (Show, Eq)

data TypeList = TypeList Type TypeList
              | Type Type
              deriving (Show, Eq)

data Type = TypeString
          | TypeChar
          | TypeInt
          | TypeBool
          deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}





































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action




indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

