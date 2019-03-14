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
happyExpList = Happy_Data_Array.listArray (0,346) ([15872,0,0,1254,0,0,0,2048,0,0,0,2,0,0,4096,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,124,0,0,0,0,0,128,0,0,0,256,0,0,0,0,64,1024,4096,1024,8096,2048,8192,2048,16192,0,32768,21119,0,0,0,0,0,0,0,0,0,32768,0,32770,62464,3,1,4,59393,7,2,8,53250,15,4,16,40964,31,8,32,16392,63,16,64,32784,126,32,128,32,253,64,256,64,506,0,0,128,0,63488,1023,0,16,512,2048,512,4048,1024,4096,1024,8096,2048,8192,2048,16192,4096,16384,4096,32384,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65472,31,32768,0,0,0,16,0,32,128,32,253,124,0,52224,9,256,0,0,0,0,0,32,0,992,0,24576,78,0,0,64,0,2048,8192,2048,16192,0,0,0,0,0,0,768,0,0,65534,32768,1024,0,0,0,4096,0,1,4,59393,7,2,8,53250,15,4,16,40964,31,8,32,16392,63,16,64,32784,126,32,128,32,253,64,256,64,506,128,512,128,1012,256,1024,256,2024,512,2048,512,4048,1024,4096,1024,8096,2048,8192,2048,16192,4096,16384,4096,32384,8192,32768,8192,64768,16384,0,16385,64000,32769,0,32770,62464,3,1,4,59393,7,2032,0,8192,0,65504,15,16392,0,8128,0,32768,0,65408,32831,0,1,192,0,0,0,124,0,0,0,0,0,256,0,63488,1023,0,16,61440,2047,0,32,57344,4095,0,64,49152,8191,0,128,32768,16383,0,256,0,32767,0,512,0,65534,0,1024,0,0,0,0,0,0,0,2,0,0,4096,0,0,0,0,0,0,16,0,0,0,16,64,32784,126,0,0,0,0,0,0,128,0,64512,1,0,8,63488,3,0,16,61440,7,0,32,57344,15,0,64,49152,31,0,128,32768,63,0,256,0,127,0,512,0,64766,0,1024,0,63996,1,2048,0,0,0,0,0,1024,0,0,0,2048,0,0,0,4096,0,0,0,15360,0,0,0,30720,0,0,0,65024,0,0,0,0,0,256,0,0,0,8,0,0,0,32768,0,1024,4096,1024,8096,49152,8191,0,128,32768,16383,8192,256,0,0,2048,0,0,0,0,2048,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,15,0,0,0,0,0,128,0,62,0,0,0,0,0,0,0,248,0,38912,19,0,0,0,0,992,0,24576,78,0,0,256,0,3968,0,32768,313,0,0,2304,0,0,0,4608,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,8192,1,0,0,0,0,0,0,0,2,0,31,0,29440,2,0,0,18,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","ValueList","VarList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","\"==\"","\"<=\"","\">=\"","\"!=\"","'!'","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","if","then","else","func","\"return\"","\"print\"","\"leng\"","\"append\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 65
        bit_end = (st + 1) * 65
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..64]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (50) = happyShift action_10
action_0 (51) = happyShift action_11
action_0 (54) = happyShift action_12
action_0 (55) = happyShift action_13
action_0 (56) = happyShift action_14
action_0 (59) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (59) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (48) = happyShift action_26
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyShift action_44
action_3 (65) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (59) = happyShift action_43
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_56

action_6 _ = happyReduce_57

action_7 _ = happyReduce_58

action_8 _ = happyReduce_59

action_9 (10) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (14) = happyShift action_9
action_9 (9) = happyGoto action_42
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (46) = happyShift action_41
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (46) = happyShift action_40
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (59) = happyShift action_39
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (14) = happyShift action_28
action_13 (32) = happyShift action_29
action_13 (46) = happyShift action_30
action_13 (57) = happyShift action_31
action_13 (59) = happyShift action_32
action_13 (60) = happyShift action_33
action_13 (61) = happyShift action_34
action_13 (62) = happyShift action_35
action_13 (63) = happyShift action_36
action_13 (64) = happyShift action_37
action_13 (5) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_28
action_14 (32) = happyShift action_29
action_14 (46) = happyShift action_30
action_14 (57) = happyShift action_31
action_14 (59) = happyShift action_32
action_14 (60) = happyShift action_33
action_14 (61) = happyShift action_34
action_14 (62) = happyShift action_35
action_14 (63) = happyShift action_36
action_14 (64) = happyShift action_37
action_14 (5) = happyGoto action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (33) = happyShift action_16
action_15 (34) = happyShift action_17
action_15 (35) = happyShift action_18
action_15 (36) = happyShift action_19
action_15 (37) = happyShift action_20
action_15 (38) = happyShift action_21
action_15 (39) = happyShift action_22
action_15 (40) = happyShift action_23
action_15 (43) = happyShift action_24
action_15 (46) = happyShift action_25
action_15 (48) = happyShift action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_11

action_17 _ = happyReduce_12

action_18 (14) = happyShift action_28
action_18 (32) = happyShift action_29
action_18 (46) = happyShift action_30
action_18 (57) = happyShift action_31
action_18 (59) = happyShift action_32
action_18 (60) = happyShift action_33
action_18 (61) = happyShift action_34
action_18 (62) = happyShift action_35
action_18 (63) = happyShift action_36
action_18 (64) = happyShift action_37
action_18 (5) = happyGoto action_81
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_28
action_19 (32) = happyShift action_29
action_19 (46) = happyShift action_30
action_19 (57) = happyShift action_31
action_19 (59) = happyShift action_32
action_19 (60) = happyShift action_33
action_19 (61) = happyShift action_34
action_19 (62) = happyShift action_35
action_19 (63) = happyShift action_36
action_19 (64) = happyShift action_37
action_19 (5) = happyGoto action_80
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_28
action_20 (32) = happyShift action_29
action_20 (46) = happyShift action_30
action_20 (57) = happyShift action_31
action_20 (59) = happyShift action_32
action_20 (60) = happyShift action_33
action_20 (61) = happyShift action_34
action_20 (62) = happyShift action_35
action_20 (63) = happyShift action_36
action_20 (64) = happyShift action_37
action_20 (5) = happyGoto action_79
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_28
action_21 (32) = happyShift action_29
action_21 (46) = happyShift action_30
action_21 (57) = happyShift action_31
action_21 (59) = happyShift action_32
action_21 (60) = happyShift action_33
action_21 (61) = happyShift action_34
action_21 (62) = happyShift action_35
action_21 (63) = happyShift action_36
action_21 (64) = happyShift action_37
action_21 (5) = happyGoto action_78
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_28
action_22 (32) = happyShift action_29
action_22 (46) = happyShift action_30
action_22 (57) = happyShift action_31
action_22 (59) = happyShift action_32
action_22 (60) = happyShift action_33
action_22 (61) = happyShift action_34
action_22 (62) = happyShift action_35
action_22 (63) = happyShift action_36
action_22 (64) = happyShift action_37
action_22 (5) = happyGoto action_77
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_28
action_23 (32) = happyShift action_29
action_23 (46) = happyShift action_30
action_23 (57) = happyShift action_31
action_23 (59) = happyShift action_32
action_23 (60) = happyShift action_33
action_23 (61) = happyShift action_34
action_23 (62) = happyShift action_35
action_23 (63) = happyShift action_36
action_23 (64) = happyShift action_37
action_23 (5) = happyGoto action_76
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (14) = happyShift action_28
action_24 (32) = happyShift action_29
action_24 (46) = happyShift action_30
action_24 (57) = happyShift action_31
action_24 (59) = happyShift action_32
action_24 (60) = happyShift action_33
action_24 (61) = happyShift action_34
action_24 (62) = happyShift action_35
action_24 (63) = happyShift action_36
action_24 (64) = happyShift action_37
action_24 (5) = happyGoto action_75
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_28
action_25 (32) = happyShift action_29
action_25 (46) = happyShift action_30
action_25 (57) = happyShift action_31
action_25 (59) = happyShift action_32
action_25 (60) = happyShift action_33
action_25 (61) = happyShift action_34
action_25 (62) = happyShift action_35
action_25 (63) = happyShift action_36
action_25 (64) = happyShift action_37
action_25 (5) = happyGoto action_71
action_25 (6) = happyGoto action_74
action_25 _ = happyReduce_51

action_26 (46) = happyShift action_73
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (17) = happyShift action_51
action_27 (18) = happyShift action_52
action_27 (19) = happyShift action_53
action_27 (20) = happyShift action_54
action_27 (21) = happyShift action_55
action_27 (22) = happyShift action_56
action_27 (23) = happyShift action_57
action_27 (24) = happyShift action_58
action_27 (25) = happyShift action_59
action_27 (26) = happyShift action_60
action_27 (27) = happyShift action_61
action_27 (28) = happyShift action_62
action_27 (29) = happyShift action_63
action_27 (30) = happyShift action_64
action_27 (31) = happyShift action_65
action_27 (58) = happyShift action_66
action_27 _ = happyReduce_8

action_28 (14) = happyShift action_28
action_28 (32) = happyShift action_29
action_28 (46) = happyShift action_30
action_28 (57) = happyShift action_31
action_28 (59) = happyShift action_32
action_28 (60) = happyShift action_33
action_28 (61) = happyShift action_34
action_28 (62) = happyShift action_35
action_28 (63) = happyShift action_36
action_28 (64) = happyShift action_37
action_28 (5) = happyGoto action_71
action_28 (6) = happyGoto action_72
action_28 _ = happyReduce_51

action_29 (14) = happyShift action_28
action_29 (32) = happyShift action_29
action_29 (46) = happyShift action_30
action_29 (57) = happyShift action_31
action_29 (59) = happyShift action_32
action_29 (60) = happyShift action_33
action_29 (61) = happyShift action_34
action_29 (62) = happyShift action_35
action_29 (63) = happyShift action_36
action_29 (64) = happyShift action_37
action_29 (5) = happyGoto action_70
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_28
action_30 (32) = happyShift action_29
action_30 (46) = happyShift action_30
action_30 (57) = happyShift action_31
action_30 (59) = happyShift action_32
action_30 (60) = happyShift action_33
action_30 (61) = happyShift action_34
action_30 (62) = happyShift action_35
action_30 (63) = happyShift action_36
action_30 (64) = happyShift action_37
action_30 (5) = happyGoto action_69
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_28
action_31 (32) = happyShift action_29
action_31 (46) = happyShift action_30
action_31 (57) = happyShift action_31
action_31 (59) = happyShift action_32
action_31 (60) = happyShift action_33
action_31 (61) = happyShift action_34
action_31 (62) = happyShift action_35
action_31 (63) = happyShift action_36
action_31 (64) = happyShift action_37
action_31 (5) = happyGoto action_68
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (46) = happyShift action_67
action_32 _ = happyReduce_42

action_33 _ = happyReduce_43

action_34 _ = happyReduce_45

action_35 _ = happyReduce_44

action_36 _ = happyReduce_46

action_37 _ = happyReduce_47

action_38 (17) = happyShift action_51
action_38 (18) = happyShift action_52
action_38 (19) = happyShift action_53
action_38 (20) = happyShift action_54
action_38 (21) = happyShift action_55
action_38 (22) = happyShift action_56
action_38 (23) = happyShift action_57
action_38 (24) = happyShift action_58
action_38 (25) = happyShift action_59
action_38 (26) = happyShift action_60
action_38 (27) = happyShift action_61
action_38 (28) = happyShift action_62
action_38 (29) = happyShift action_63
action_38 (30) = happyShift action_64
action_38 (31) = happyShift action_65
action_38 (58) = happyShift action_66
action_38 _ = happyReduce_7

action_39 (46) = happyShift action_50
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_28
action_40 (32) = happyShift action_29
action_40 (46) = happyShift action_30
action_40 (57) = happyShift action_31
action_40 (59) = happyShift action_32
action_40 (60) = happyShift action_33
action_40 (61) = happyShift action_34
action_40 (62) = happyShift action_35
action_40 (63) = happyShift action_36
action_40 (64) = happyShift action_37
action_40 (5) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_5
action_41 (11) = happyShift action_6
action_41 (12) = happyShift action_7
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (50) = happyShift action_10
action_41 (51) = happyShift action_11
action_41 (54) = happyShift action_12
action_41 (55) = happyShift action_13
action_41 (56) = happyShift action_14
action_41 (59) = happyShift action_15
action_41 (4) = happyGoto action_48
action_41 (9) = happyGoto action_4
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_47
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (43) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_5
action_44 (11) = happyShift action_6
action_44 (12) = happyShift action_7
action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (50) = happyShift action_10
action_44 (51) = happyShift action_11
action_44 (54) = happyShift action_12
action_44 (55) = happyShift action_13
action_44 (56) = happyShift action_14
action_44 (59) = happyShift action_15
action_44 (4) = happyGoto action_45
action_44 (9) = happyGoto action_4
action_44 _ = happyReduce_20

action_45 (42) = happyShift action_44
action_45 _ = happyReduce_19

action_46 (14) = happyShift action_28
action_46 (32) = happyShift action_29
action_46 (46) = happyShift action_30
action_46 (57) = happyShift action_31
action_46 (59) = happyShift action_32
action_46 (60) = happyShift action_33
action_46 (61) = happyShift action_34
action_46 (62) = happyShift action_35
action_46 (63) = happyShift action_36
action_46 (64) = happyShift action_37
action_46 (5) = happyGoto action_110
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_60

action_48 (41) = happyShift action_109
action_48 (42) = happyShift action_44
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (17) = happyShift action_51
action_49 (18) = happyShift action_52
action_49 (19) = happyShift action_53
action_49 (20) = happyShift action_54
action_49 (21) = happyShift action_55
action_49 (22) = happyShift action_56
action_49 (23) = happyShift action_57
action_49 (24) = happyShift action_58
action_49 (25) = happyShift action_59
action_49 (26) = happyShift action_60
action_49 (27) = happyShift action_61
action_49 (28) = happyShift action_62
action_49 (29) = happyShift action_63
action_49 (30) = happyShift action_64
action_49 (31) = happyShift action_65
action_49 (47) = happyShift action_108
action_49 (58) = happyShift action_66
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (59) = happyShift action_107
action_50 (7) = happyGoto action_106
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (14) = happyShift action_28
action_51 (32) = happyShift action_29
action_51 (46) = happyShift action_30
action_51 (57) = happyShift action_31
action_51 (59) = happyShift action_32
action_51 (60) = happyShift action_33
action_51 (61) = happyShift action_34
action_51 (62) = happyShift action_35
action_51 (63) = happyShift action_36
action_51 (64) = happyShift action_37
action_51 (5) = happyGoto action_105
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_28
action_52 (32) = happyShift action_29
action_52 (46) = happyShift action_30
action_52 (57) = happyShift action_31
action_52 (59) = happyShift action_32
action_52 (60) = happyShift action_33
action_52 (61) = happyShift action_34
action_52 (62) = happyShift action_35
action_52 (63) = happyShift action_36
action_52 (64) = happyShift action_37
action_52 (5) = happyGoto action_104
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_28
action_53 (32) = happyShift action_29
action_53 (46) = happyShift action_30
action_53 (57) = happyShift action_31
action_53 (59) = happyShift action_32
action_53 (60) = happyShift action_33
action_53 (61) = happyShift action_34
action_53 (62) = happyShift action_35
action_53 (63) = happyShift action_36
action_53 (64) = happyShift action_37
action_53 (5) = happyGoto action_103
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_28
action_54 (32) = happyShift action_29
action_54 (46) = happyShift action_30
action_54 (57) = happyShift action_31
action_54 (59) = happyShift action_32
action_54 (60) = happyShift action_33
action_54 (61) = happyShift action_34
action_54 (62) = happyShift action_35
action_54 (63) = happyShift action_36
action_54 (64) = happyShift action_37
action_54 (5) = happyGoto action_102
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_28
action_55 (32) = happyShift action_29
action_55 (46) = happyShift action_30
action_55 (57) = happyShift action_31
action_55 (59) = happyShift action_32
action_55 (60) = happyShift action_33
action_55 (61) = happyShift action_34
action_55 (62) = happyShift action_35
action_55 (63) = happyShift action_36
action_55 (64) = happyShift action_37
action_55 (5) = happyGoto action_101
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (14) = happyShift action_28
action_56 (32) = happyShift action_29
action_56 (46) = happyShift action_30
action_56 (57) = happyShift action_31
action_56 (59) = happyShift action_32
action_56 (60) = happyShift action_33
action_56 (61) = happyShift action_34
action_56 (62) = happyShift action_35
action_56 (63) = happyShift action_36
action_56 (64) = happyShift action_37
action_56 (5) = happyGoto action_100
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (14) = happyShift action_28
action_57 (32) = happyShift action_29
action_57 (46) = happyShift action_30
action_57 (57) = happyShift action_31
action_57 (59) = happyShift action_32
action_57 (60) = happyShift action_33
action_57 (61) = happyShift action_34
action_57 (62) = happyShift action_35
action_57 (63) = happyShift action_36
action_57 (64) = happyShift action_37
action_57 (5) = happyGoto action_99
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (14) = happyShift action_28
action_58 (32) = happyShift action_29
action_58 (46) = happyShift action_30
action_58 (57) = happyShift action_31
action_58 (59) = happyShift action_32
action_58 (60) = happyShift action_33
action_58 (61) = happyShift action_34
action_58 (62) = happyShift action_35
action_58 (63) = happyShift action_36
action_58 (64) = happyShift action_37
action_58 (5) = happyGoto action_98
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (14) = happyShift action_28
action_59 (32) = happyShift action_29
action_59 (46) = happyShift action_30
action_59 (57) = happyShift action_31
action_59 (59) = happyShift action_32
action_59 (60) = happyShift action_33
action_59 (61) = happyShift action_34
action_59 (62) = happyShift action_35
action_59 (63) = happyShift action_36
action_59 (64) = happyShift action_37
action_59 (5) = happyGoto action_97
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_28
action_60 (32) = happyShift action_29
action_60 (46) = happyShift action_30
action_60 (57) = happyShift action_31
action_60 (59) = happyShift action_32
action_60 (60) = happyShift action_33
action_60 (61) = happyShift action_34
action_60 (62) = happyShift action_35
action_60 (63) = happyShift action_36
action_60 (64) = happyShift action_37
action_60 (5) = happyGoto action_96
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_28
action_61 (32) = happyShift action_29
action_61 (46) = happyShift action_30
action_61 (57) = happyShift action_31
action_61 (59) = happyShift action_32
action_61 (60) = happyShift action_33
action_61 (61) = happyShift action_34
action_61 (62) = happyShift action_35
action_61 (63) = happyShift action_36
action_61 (64) = happyShift action_37
action_61 (5) = happyGoto action_95
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_28
action_62 (32) = happyShift action_29
action_62 (46) = happyShift action_30
action_62 (57) = happyShift action_31
action_62 (59) = happyShift action_32
action_62 (60) = happyShift action_33
action_62 (61) = happyShift action_34
action_62 (62) = happyShift action_35
action_62 (63) = happyShift action_36
action_62 (64) = happyShift action_37
action_62 (5) = happyGoto action_94
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_28
action_63 (32) = happyShift action_29
action_63 (46) = happyShift action_30
action_63 (57) = happyShift action_31
action_63 (59) = happyShift action_32
action_63 (60) = happyShift action_33
action_63 (61) = happyShift action_34
action_63 (62) = happyShift action_35
action_63 (63) = happyShift action_36
action_63 (64) = happyShift action_37
action_63 (5) = happyGoto action_93
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (14) = happyShift action_28
action_64 (32) = happyShift action_29
action_64 (46) = happyShift action_30
action_64 (57) = happyShift action_31
action_64 (59) = happyShift action_32
action_64 (60) = happyShift action_33
action_64 (61) = happyShift action_34
action_64 (62) = happyShift action_35
action_64 (63) = happyShift action_36
action_64 (64) = happyShift action_37
action_64 (5) = happyGoto action_92
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (14) = happyShift action_28
action_65 (32) = happyShift action_29
action_65 (46) = happyShift action_30
action_65 (57) = happyShift action_31
action_65 (59) = happyShift action_32
action_65 (60) = happyShift action_33
action_65 (61) = happyShift action_34
action_65 (62) = happyShift action_35
action_65 (63) = happyShift action_36
action_65 (64) = happyShift action_37
action_65 (5) = happyGoto action_91
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (14) = happyShift action_28
action_66 (32) = happyShift action_29
action_66 (46) = happyShift action_30
action_66 (57) = happyShift action_31
action_66 (59) = happyShift action_32
action_66 (60) = happyShift action_33
action_66 (61) = happyShift action_34
action_66 (62) = happyShift action_35
action_66 (63) = happyShift action_36
action_66 (64) = happyShift action_37
action_66 (5) = happyGoto action_90
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_28
action_67 (32) = happyShift action_29
action_67 (46) = happyShift action_30
action_67 (57) = happyShift action_31
action_67 (59) = happyShift action_32
action_67 (60) = happyShift action_33
action_67 (61) = happyShift action_34
action_67 (62) = happyShift action_35
action_67 (63) = happyShift action_36
action_67 (64) = happyShift action_37
action_67 (5) = happyGoto action_71
action_67 (6) = happyGoto action_89
action_67 _ = happyReduce_51

action_68 (17) = happyShift action_51
action_68 (18) = happyShift action_52
action_68 (19) = happyShift action_53
action_68 (20) = happyShift action_54
action_68 (21) = happyShift action_55
action_68 (22) = happyShift action_56
action_68 (23) = happyShift action_57
action_68 (58) = happyShift action_66
action_68 _ = happyReduce_40

action_69 (17) = happyShift action_51
action_69 (18) = happyShift action_52
action_69 (19) = happyShift action_53
action_69 (20) = happyShift action_54
action_69 (21) = happyShift action_55
action_69 (22) = happyShift action_56
action_69 (23) = happyShift action_57
action_69 (24) = happyShift action_58
action_69 (25) = happyShift action_59
action_69 (26) = happyShift action_60
action_69 (27) = happyShift action_61
action_69 (28) = happyShift action_62
action_69 (29) = happyShift action_63
action_69 (30) = happyShift action_64
action_69 (31) = happyShift action_65
action_69 (47) = happyShift action_88
action_69 (58) = happyShift action_66
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (17) = happyShift action_51
action_70 (18) = happyShift action_52
action_70 (19) = happyShift action_53
action_70 (20) = happyShift action_54
action_70 (21) = happyShift action_55
action_70 (22) = happyShift action_56
action_70 (23) = happyShift action_57
action_70 (58) = happyShift action_66
action_70 _ = happyReduce_35

action_71 (17) = happyShift action_51
action_71 (18) = happyShift action_52
action_71 (19) = happyShift action_53
action_71 (20) = happyShift action_54
action_71 (21) = happyShift action_55
action_71 (22) = happyShift action_56
action_71 (23) = happyShift action_57
action_71 (24) = happyShift action_58
action_71 (25) = happyShift action_59
action_71 (26) = happyShift action_60
action_71 (27) = happyShift action_61
action_71 (28) = happyShift action_62
action_71 (29) = happyShift action_63
action_71 (30) = happyShift action_64
action_71 (31) = happyShift action_65
action_71 (41) = happyShift action_87
action_71 (58) = happyShift action_66
action_71 _ = happyReduce_50

action_72 (15) = happyShift action_85
action_72 (16) = happyShift action_86
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (10) = happyShift action_5
action_73 (11) = happyShift action_6
action_73 (12) = happyShift action_7
action_73 (13) = happyShift action_8
action_73 (14) = happyShift action_9
action_73 (8) = happyGoto action_83
action_73 (9) = happyGoto action_84
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (47) = happyShift action_82
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (17) = happyShift action_51
action_75 (18) = happyShift action_52
action_75 (19) = happyShift action_53
action_75 (20) = happyShift action_54
action_75 (21) = happyShift action_55
action_75 (22) = happyShift action_56
action_75 (23) = happyShift action_57
action_75 (24) = happyShift action_58
action_75 (25) = happyShift action_59
action_75 (26) = happyShift action_60
action_75 (27) = happyShift action_61
action_75 (28) = happyShift action_62
action_75 (29) = happyShift action_63
action_75 (30) = happyShift action_64
action_75 (31) = happyShift action_65
action_75 (58) = happyShift action_66
action_75 _ = happyReduce_10

action_76 (17) = happyShift action_51
action_76 (18) = happyShift action_52
action_76 (19) = happyShift action_53
action_76 (20) = happyShift action_54
action_76 (21) = happyShift action_55
action_76 (22) = happyShift action_56
action_76 (23) = happyShift action_57
action_76 (24) = happyShift action_58
action_76 (25) = happyShift action_59
action_76 (26) = happyShift action_60
action_76 (27) = happyShift action_61
action_76 (28) = happyShift action_62
action_76 (29) = happyShift action_63
action_76 (30) = happyShift action_64
action_76 (31) = happyShift action_65
action_76 (58) = happyShift action_66
action_76 _ = happyReduce_18

action_77 (17) = happyShift action_51
action_77 (18) = happyShift action_52
action_77 (19) = happyShift action_53
action_77 (20) = happyShift action_54
action_77 (21) = happyShift action_55
action_77 (22) = happyShift action_56
action_77 (23) = happyShift action_57
action_77 (24) = happyShift action_58
action_77 (25) = happyShift action_59
action_77 (26) = happyShift action_60
action_77 (27) = happyShift action_61
action_77 (28) = happyShift action_62
action_77 (29) = happyShift action_63
action_77 (30) = happyShift action_64
action_77 (31) = happyShift action_65
action_77 (58) = happyShift action_66
action_77 _ = happyReduce_17

action_78 (17) = happyShift action_51
action_78 (18) = happyShift action_52
action_78 (19) = happyShift action_53
action_78 (20) = happyShift action_54
action_78 (21) = happyShift action_55
action_78 (22) = happyShift action_56
action_78 (23) = happyShift action_57
action_78 (24) = happyShift action_58
action_78 (25) = happyShift action_59
action_78 (26) = happyShift action_60
action_78 (27) = happyShift action_61
action_78 (28) = happyShift action_62
action_78 (29) = happyShift action_63
action_78 (30) = happyShift action_64
action_78 (31) = happyShift action_65
action_78 (58) = happyShift action_66
action_78 _ = happyReduce_16

action_79 (17) = happyShift action_51
action_79 (18) = happyShift action_52
action_79 (19) = happyShift action_53
action_79 (20) = happyShift action_54
action_79 (21) = happyShift action_55
action_79 (22) = happyShift action_56
action_79 (23) = happyShift action_57
action_79 (24) = happyShift action_58
action_79 (25) = happyShift action_59
action_79 (26) = happyShift action_60
action_79 (27) = happyShift action_61
action_79 (28) = happyShift action_62
action_79 (29) = happyShift action_63
action_79 (30) = happyShift action_64
action_79 (31) = happyShift action_65
action_79 (58) = happyShift action_66
action_79 _ = happyReduce_15

action_80 (17) = happyShift action_51
action_80 (18) = happyShift action_52
action_80 (19) = happyShift action_53
action_80 (20) = happyShift action_54
action_80 (21) = happyShift action_55
action_80 (22) = happyShift action_56
action_80 (23) = happyShift action_57
action_80 (24) = happyShift action_58
action_80 (25) = happyShift action_59
action_80 (26) = happyShift action_60
action_80 (27) = happyShift action_61
action_80 (28) = happyShift action_62
action_80 (29) = happyShift action_63
action_80 (30) = happyShift action_64
action_80 (31) = happyShift action_65
action_80 (58) = happyShift action_66
action_80 _ = happyReduce_14

action_81 (17) = happyShift action_51
action_81 (18) = happyShift action_52
action_81 (19) = happyShift action_53
action_81 (20) = happyShift action_54
action_81 (21) = happyShift action_55
action_81 (22) = happyShift action_56
action_81 (23) = happyShift action_57
action_81 (24) = happyShift action_58
action_81 (25) = happyShift action_59
action_81 (26) = happyShift action_60
action_81 (27) = happyShift action_61
action_81 (28) = happyShift action_62
action_81 (29) = happyShift action_63
action_81 (30) = happyShift action_64
action_81 (31) = happyShift action_65
action_81 (58) = happyShift action_66
action_81 _ = happyReduce_13

action_82 _ = happyReduce_6

action_83 (47) = happyShift action_119
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (41) = happyShift action_118
action_84 _ = happyReduce_55

action_85 _ = happyReduce_37

action_86 (15) = happyShift action_117
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (14) = happyShift action_28
action_87 (32) = happyShift action_29
action_87 (46) = happyShift action_30
action_87 (57) = happyShift action_31
action_87 (59) = happyShift action_32
action_87 (60) = happyShift action_33
action_87 (61) = happyShift action_34
action_87 (62) = happyShift action_35
action_87 (63) = happyShift action_36
action_87 (64) = happyShift action_37
action_87 (5) = happyGoto action_71
action_87 (6) = happyGoto action_116
action_87 _ = happyReduce_51

action_88 _ = happyReduce_48

action_89 (47) = happyShift action_115
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (17) = happyShift action_51
action_90 (18) = happyShift action_52
action_90 (19) = happyShift action_53
action_90 (20) = happyShift action_54
action_90 (21) = happyShift action_55
action_90 (22) = happyShift action_56
action_90 (23) = happyShift action_57
action_90 (58) = happyShift action_66
action_90 _ = happyReduce_41

action_91 (17) = happyShift action_51
action_91 (18) = happyShift action_52
action_91 (19) = happyShift action_53
action_91 (20) = happyShift action_54
action_91 (21) = happyShift action_55
action_91 (22) = happyShift action_56
action_91 (23) = happyShift action_57
action_91 (26) = happyFail []
action_91 (27) = happyFail []
action_91 (28) = happyFail []
action_91 (29) = happyFail []
action_91 (30) = happyFail []
action_91 (31) = happyFail []
action_91 (58) = happyShift action_66
action_91 _ = happyReduce_34

action_92 (17) = happyShift action_51
action_92 (18) = happyShift action_52
action_92 (19) = happyShift action_53
action_92 (20) = happyShift action_54
action_92 (21) = happyShift action_55
action_92 (22) = happyShift action_56
action_92 (23) = happyShift action_57
action_92 (26) = happyFail []
action_92 (27) = happyFail []
action_92 (28) = happyFail []
action_92 (29) = happyFail []
action_92 (30) = happyFail []
action_92 (31) = happyFail []
action_92 (58) = happyShift action_66
action_92 _ = happyReduce_33

action_93 (17) = happyShift action_51
action_93 (18) = happyShift action_52
action_93 (19) = happyShift action_53
action_93 (20) = happyShift action_54
action_93 (21) = happyShift action_55
action_93 (22) = happyShift action_56
action_93 (23) = happyShift action_57
action_93 (26) = happyFail []
action_93 (27) = happyFail []
action_93 (28) = happyFail []
action_93 (29) = happyFail []
action_93 (30) = happyFail []
action_93 (31) = happyFail []
action_93 (58) = happyShift action_66
action_93 _ = happyReduce_32

action_94 (17) = happyShift action_51
action_94 (18) = happyShift action_52
action_94 (19) = happyShift action_53
action_94 (20) = happyShift action_54
action_94 (21) = happyShift action_55
action_94 (22) = happyShift action_56
action_94 (23) = happyShift action_57
action_94 (26) = happyFail []
action_94 (27) = happyFail []
action_94 (28) = happyFail []
action_94 (29) = happyFail []
action_94 (30) = happyFail []
action_94 (31) = happyFail []
action_94 (58) = happyShift action_66
action_94 _ = happyReduce_29

action_95 (17) = happyShift action_51
action_95 (18) = happyShift action_52
action_95 (19) = happyShift action_53
action_95 (20) = happyShift action_54
action_95 (21) = happyShift action_55
action_95 (22) = happyShift action_56
action_95 (23) = happyShift action_57
action_95 (26) = happyFail []
action_95 (27) = happyFail []
action_95 (28) = happyFail []
action_95 (29) = happyFail []
action_95 (30) = happyFail []
action_95 (31) = happyFail []
action_95 (58) = happyShift action_66
action_95 _ = happyReduce_31

action_96 (17) = happyShift action_51
action_96 (18) = happyShift action_52
action_96 (19) = happyShift action_53
action_96 (20) = happyShift action_54
action_96 (21) = happyShift action_55
action_96 (22) = happyShift action_56
action_96 (23) = happyShift action_57
action_96 (26) = happyFail []
action_96 (27) = happyFail []
action_96 (28) = happyFail []
action_96 (29) = happyFail []
action_96 (30) = happyFail []
action_96 (31) = happyFail []
action_96 (58) = happyShift action_66
action_96 _ = happyReduce_30

action_97 (17) = happyShift action_51
action_97 (18) = happyShift action_52
action_97 (19) = happyShift action_53
action_97 (20) = happyShift action_54
action_97 (21) = happyShift action_55
action_97 (22) = happyShift action_56
action_97 (23) = happyShift action_57
action_97 (24) = happyFail []
action_97 (25) = happyFail []
action_97 (26) = happyShift action_60
action_97 (27) = happyShift action_61
action_97 (28) = happyShift action_62
action_97 (29) = happyShift action_63
action_97 (30) = happyShift action_64
action_97 (31) = happyShift action_65
action_97 (58) = happyShift action_66
action_97 _ = happyReduce_28

action_98 (17) = happyShift action_51
action_98 (18) = happyShift action_52
action_98 (19) = happyShift action_53
action_98 (20) = happyShift action_54
action_98 (21) = happyShift action_55
action_98 (22) = happyShift action_56
action_98 (23) = happyShift action_57
action_98 (24) = happyFail []
action_98 (25) = happyFail []
action_98 (26) = happyShift action_60
action_98 (27) = happyShift action_61
action_98 (28) = happyShift action_62
action_98 (29) = happyShift action_63
action_98 (30) = happyShift action_64
action_98 (31) = happyShift action_65
action_98 (58) = happyShift action_66
action_98 _ = happyReduce_27

action_99 _ = happyReduce_26

action_100 (23) = happyShift action_57
action_100 _ = happyReduce_25

action_101 (23) = happyShift action_57
action_101 _ = happyReduce_24

action_102 (23) = happyShift action_57
action_102 _ = happyReduce_23

action_103 (20) = happyShift action_54
action_103 (21) = happyShift action_55
action_103 (22) = happyShift action_56
action_103 (23) = happyShift action_57
action_103 _ = happyReduce_22

action_104 (20) = happyShift action_54
action_104 (21) = happyShift action_55
action_104 (22) = happyShift action_56
action_104 (23) = happyShift action_57
action_104 _ = happyReduce_21

action_105 (17) = happyShift action_51
action_105 (18) = happyShift action_52
action_105 (19) = happyShift action_53
action_105 (20) = happyShift action_54
action_105 (21) = happyShift action_55
action_105 (22) = happyShift action_56
action_105 (23) = happyShift action_57
action_105 _ = happyReduce_39

action_106 (47) = happyShift action_114
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (41) = happyShift action_113
action_107 _ = happyReduce_53

action_108 (52) = happyShift action_112
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (14) = happyShift action_28
action_109 (32) = happyShift action_29
action_109 (46) = happyShift action_30
action_109 (57) = happyShift action_31
action_109 (59) = happyShift action_32
action_109 (60) = happyShift action_33
action_109 (61) = happyShift action_34
action_109 (62) = happyShift action_35
action_109 (63) = happyShift action_36
action_109 (64) = happyShift action_37
action_109 (5) = happyGoto action_111
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (17) = happyShift action_51
action_110 (18) = happyShift action_52
action_110 (19) = happyShift action_53
action_110 (20) = happyShift action_54
action_110 (21) = happyShift action_55
action_110 (22) = happyShift action_56
action_110 (23) = happyShift action_57
action_110 (24) = happyShift action_58
action_110 (25) = happyShift action_59
action_110 (26) = happyShift action_60
action_110 (27) = happyShift action_61
action_110 (28) = happyShift action_62
action_110 (29) = happyShift action_63
action_110 (30) = happyShift action_64
action_110 (31) = happyShift action_65
action_110 (58) = happyShift action_66
action_110 _ = happyReduce_9

action_111 (17) = happyShift action_51
action_111 (18) = happyShift action_52
action_111 (19) = happyShift action_53
action_111 (20) = happyShift action_54
action_111 (21) = happyShift action_55
action_111 (22) = happyShift action_56
action_111 (23) = happyShift action_57
action_111 (24) = happyShift action_58
action_111 (25) = happyShift action_59
action_111 (26) = happyShift action_60
action_111 (27) = happyShift action_61
action_111 (28) = happyShift action_62
action_111 (29) = happyShift action_63
action_111 (30) = happyShift action_64
action_111 (31) = happyShift action_65
action_111 (47) = happyShift action_125
action_111 (58) = happyShift action_66
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (44) = happyShift action_124
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (59) = happyShift action_107
action_113 (7) = happyGoto action_123
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (44) = happyShift action_122
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_36

action_116 _ = happyReduce_49

action_117 _ = happyReduce_38

action_118 (10) = happyShift action_5
action_118 (11) = happyShift action_6
action_118 (12) = happyShift action_7
action_118 (13) = happyShift action_8
action_118 (14) = happyShift action_9
action_118 (8) = happyGoto action_121
action_118 (9) = happyGoto action_84
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (49) = happyShift action_120
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (10) = happyShift action_5
action_120 (11) = happyShift action_6
action_120 (12) = happyShift action_7
action_120 (13) = happyShift action_8
action_120 (14) = happyShift action_9
action_120 (9) = happyGoto action_129
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_54

action_122 (10) = happyShift action_5
action_122 (11) = happyShift action_6
action_122 (12) = happyShift action_7
action_122 (13) = happyShift action_8
action_122 (14) = happyShift action_9
action_122 (50) = happyShift action_10
action_122 (51) = happyShift action_11
action_122 (54) = happyShift action_12
action_122 (55) = happyShift action_13
action_122 (56) = happyShift action_14
action_122 (59) = happyShift action_15
action_122 (4) = happyGoto action_128
action_122 (9) = happyGoto action_4
action_122 _ = happyFail (happyExpListPerState 122)

action_123 _ = happyReduce_52

action_124 (10) = happyShift action_5
action_124 (11) = happyShift action_6
action_124 (12) = happyShift action_7
action_124 (13) = happyShift action_8
action_124 (14) = happyShift action_9
action_124 (50) = happyShift action_10
action_124 (51) = happyShift action_11
action_124 (54) = happyShift action_12
action_124 (55) = happyShift action_13
action_124 (56) = happyShift action_14
action_124 (59) = happyShift action_15
action_124 (4) = happyGoto action_127
action_124 (9) = happyGoto action_4
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (44) = happyShift action_126
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (10) = happyShift action_5
action_126 (11) = happyShift action_6
action_126 (12) = happyShift action_7
action_126 (13) = happyShift action_8
action_126 (14) = happyShift action_9
action_126 (50) = happyShift action_10
action_126 (51) = happyShift action_11
action_126 (54) = happyShift action_12
action_126 (55) = happyShift action_13
action_126 (56) = happyShift action_14
action_126 (59) = happyShift action_15
action_126 (4) = happyGoto action_132
action_126 (9) = happyGoto action_4
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (42) = happyShift action_44
action_127 (45) = happyShift action_131
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (42) = happyShift action_44
action_128 (45) = happyShift action_130
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_1

action_130 _ = happyReduce_2

action_131 (53) = happyShift action_134
action_131 _ = happyReduce_4

action_132 (42) = happyShift action_44
action_132 (45) = happyShift action_133
action_132 _ = happyFail (happyExpListPerState 132)

action_133 _ = happyReduce_5

action_134 (44) = happyShift action_135
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (10) = happyShift action_5
action_135 (11) = happyShift action_6
action_135 (12) = happyShift action_7
action_135 (13) = happyShift action_8
action_135 (14) = happyShift action_9
action_135 (50) = happyShift action_10
action_135 (51) = happyShift action_11
action_135 (54) = happyShift action_12
action_135 (55) = happyShift action_13
action_135 (56) = happyShift action_14
action_135 (59) = happyShift action_15
action_135 (4) = happyGoto action_136
action_135 (9) = happyGoto action_4
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (42) = happyShift action_44
action_136 (45) = happyShift action_137
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_3

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

happyReduce_6 = happyReduce 4 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Val (FunctionCall happy_var_1 happy_var_3)
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReturnStatement happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (PrintStatement happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (NewAssignment happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 _
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticAdd (VariableValue happy_var_1) (IntValue 1))
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 _
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticMinus (VariableValue happy_var_1) (IntValue 1))
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticAdd (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticMinus (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticMultiply (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticDivide (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticModulo (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 (ArithmeticExponent (VariableValue happy_var_1) happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticAdd happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMinus happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMultiply happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticDivide happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticModulo happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticExponent happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanAnd happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanOr happy_var_1 happy_var_3
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
		 (BooleanLT happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGT happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanLTEQ happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGTEQ happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  5 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanNEQ happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  5 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 5 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  5 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (List happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 5 happyReduction_38
happyReduction_38 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Series happy_var_2
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  5 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ListGetElement happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_2  5 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ListGetLength happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  5 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ListAppendValue happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  5 happyReduction_44
happyReduction_44 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  5 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_47 = happySpecReduce_1  5 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_48 = happySpecReduce_3  5 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  6 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  6 happyReduction_50
happyReduction_50 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 EmptyList
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_0  6 happyReduction_51
happyReduction_51  =  HappyAbsSyn6
		 (EmptyList
	)

happyReduce_52 = happySpecReduce_3  7 happyReduction_52
happyReduction_52 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  7 happyReduction_53
happyReduction_53 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  8 happyReduction_54
happyReduction_54 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  8 happyReduction_55
happyReduction_55 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Type happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  9 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn9
		 (TypeString
	)

happyReduce_57 = happySpecReduce_1  9 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn9
		 (TypeChar
	)

happyReduce_58 = happySpecReduce_1  9 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn9
		 (TypeInt
	)

happyReduce_59 = happySpecReduce_1  9 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn9
		 (TypeBool
	)

happyReduce_60 = happySpecReduce_3  9 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TypeStream happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

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
	TokenKeywordLength p -> cont 57;
	TokenKeywordAppend p -> cont 58;
	TokenVariable p happy_dollar_dollar -> cont 59;
	TokenString p happy_dollar_dollar -> cont 60;
	TokenChar p  happy_dollar_dollar -> cont 61;
	TokenInteger p happy_dollar_dollar -> cont 62;
	TokenBoolTrue p -> cont 63;
	TokenBoolFalse p -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
           | ListGetLength Value
           | ListAppendValue Value Value
           | VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           | NullValue
           deriving (Show, Eq)

data ValueList = ValueList Value ValueList
               | EmptyList
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
          | TypeStream Type
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

