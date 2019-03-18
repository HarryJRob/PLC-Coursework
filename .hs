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
happyExpList = Happy_Data_Array.listArray (0,343) ([15872,0,0,627,0,0,0,512,0,0,16384,0,0,0,256,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15872,0,0,0,0,0,4096,0,0,0,4096,0,0,0,0,512,8192,16384,4096,32384,8192,16384,4096,32384,0,32768,21119,0,0,0,0,0,0,0,0,0,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,0,0,4096,0,32768,16383,0,256,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,16383,0,256,0,0,4096,0,8192,16384,4096,32384,15872,0,0,627,16384,0,0,0,0,0,512,0,15872,0,0,627,0,0,256,0,8192,16384,4096,32384,0,0,0,0,0,0,384,0,32768,16383,8192,256,0,0,0,512,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,8192,16384,4096,32384,32768,63,0,256,32768,16383,8192,256,32768,63,0,256,32768,16383,128,256,16384,0,0,0,15872,0,0,0,0,0,8192,0,32768,16383,0,256,32768,16383,0,256,32768,16383,0,256,32768,16383,0,256,32768,16383,0,256,32768,16383,0,256,32768,16383,0,256,0,0,0,0,0,0,8192,0,0,0,128,0,0,0,0,0,8192,16384,4096,32384,0,0,0,0,0,0,8192,0,32768,63,0,256,32768,63,0,256,32768,63,0,256,32768,63,0,256,32768,63,0,256,32768,63,0,256,32768,63,0,256,32768,16191,0,256,32768,16191,0,256,0,0,0,0,0,32,0,0,0,32,0,0,0,32,0,0,0,60,0,0,0,60,0,0,32768,63,0,0,0,0,8192,0,0,0,128,0,0,0,0,4,8192,16384,4096,32384,32768,16383,0,256,32768,16383,8192,256,0,0,1024,0,0,0,0,512,0,0,1024,0,0,0,0,0,0,0,0,0,15872,0,0,0,0,0,32768,0,15872,0,0,0,0,0,0,0,15872,0,0,627,0,0,0,0,15872,0,0,627,0,0,1024,0,15872,0,0,627,0,0,2304,0,0,0,2304,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,2304,0,0,0,0,0,0,0,1024,0,15872,0,0,627,0,0,2304,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","ValueList","VarList","TypeList","Type","String","Char","Int","Bool","'['","']'","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","\"==\"","\"<=\"","\">=\"","\"!=\"","'!'","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","if","then","else","func","\"return\"","\"print\"","\"leng\"","\"append\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 64
        bit_end = (st + 1) * 64
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..63]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (49) = happyShift action_10
action_0 (50) = happyShift action_11
action_0 (53) = happyShift action_12
action_0 (54) = happyShift action_13
action_0 (55) = happyShift action_14
action_0 (58) = happyShift action_15
action_0 (4) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (58) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (47) = happyShift action_26
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (41) = happyShift action_44
action_3 (64) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (58) = happyShift action_43
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_57

action_6 _ = happyReduce_58

action_7 _ = happyReduce_59

action_8 _ = happyReduce_60

action_9 (10) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (14) = happyShift action_9
action_9 (9) = happyGoto action_42
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (45) = happyShift action_41
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (45) = happyShift action_40
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (58) = happyShift action_39
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (14) = happyShift action_28
action_13 (31) = happyShift action_29
action_13 (45) = happyShift action_30
action_13 (56) = happyShift action_31
action_13 (58) = happyShift action_32
action_13 (59) = happyShift action_33
action_13 (60) = happyShift action_34
action_13 (61) = happyShift action_35
action_13 (62) = happyShift action_36
action_13 (63) = happyShift action_37
action_13 (5) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_28
action_14 (31) = happyShift action_29
action_14 (45) = happyShift action_30
action_14 (56) = happyShift action_31
action_14 (58) = happyShift action_32
action_14 (59) = happyShift action_33
action_14 (60) = happyShift action_34
action_14 (61) = happyShift action_35
action_14 (62) = happyShift action_36
action_14 (63) = happyShift action_37
action_14 (5) = happyGoto action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (32) = happyShift action_16
action_15 (33) = happyShift action_17
action_15 (34) = happyShift action_18
action_15 (35) = happyShift action_19
action_15 (36) = happyShift action_20
action_15 (37) = happyShift action_21
action_15 (38) = happyShift action_22
action_15 (39) = happyShift action_23
action_15 (42) = happyShift action_24
action_15 (45) = happyShift action_25
action_15 (47) = happyShift action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_11

action_17 _ = happyReduce_12

action_18 (14) = happyShift action_28
action_18 (31) = happyShift action_29
action_18 (45) = happyShift action_30
action_18 (56) = happyShift action_31
action_18 (58) = happyShift action_32
action_18 (59) = happyShift action_33
action_18 (60) = happyShift action_34
action_18 (61) = happyShift action_35
action_18 (62) = happyShift action_36
action_18 (63) = happyShift action_37
action_18 (5) = happyGoto action_81
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_28
action_19 (31) = happyShift action_29
action_19 (45) = happyShift action_30
action_19 (56) = happyShift action_31
action_19 (58) = happyShift action_32
action_19 (59) = happyShift action_33
action_19 (60) = happyShift action_34
action_19 (61) = happyShift action_35
action_19 (62) = happyShift action_36
action_19 (63) = happyShift action_37
action_19 (5) = happyGoto action_80
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_28
action_20 (31) = happyShift action_29
action_20 (45) = happyShift action_30
action_20 (56) = happyShift action_31
action_20 (58) = happyShift action_32
action_20 (59) = happyShift action_33
action_20 (60) = happyShift action_34
action_20 (61) = happyShift action_35
action_20 (62) = happyShift action_36
action_20 (63) = happyShift action_37
action_20 (5) = happyGoto action_79
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_28
action_21 (31) = happyShift action_29
action_21 (45) = happyShift action_30
action_21 (56) = happyShift action_31
action_21 (58) = happyShift action_32
action_21 (59) = happyShift action_33
action_21 (60) = happyShift action_34
action_21 (61) = happyShift action_35
action_21 (62) = happyShift action_36
action_21 (63) = happyShift action_37
action_21 (5) = happyGoto action_78
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_28
action_22 (31) = happyShift action_29
action_22 (45) = happyShift action_30
action_22 (56) = happyShift action_31
action_22 (58) = happyShift action_32
action_22 (59) = happyShift action_33
action_22 (60) = happyShift action_34
action_22 (61) = happyShift action_35
action_22 (62) = happyShift action_36
action_22 (63) = happyShift action_37
action_22 (5) = happyGoto action_77
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_28
action_23 (31) = happyShift action_29
action_23 (45) = happyShift action_30
action_23 (56) = happyShift action_31
action_23 (58) = happyShift action_32
action_23 (59) = happyShift action_33
action_23 (60) = happyShift action_34
action_23 (61) = happyShift action_35
action_23 (62) = happyShift action_36
action_23 (63) = happyShift action_37
action_23 (5) = happyGoto action_76
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (14) = happyShift action_28
action_24 (31) = happyShift action_29
action_24 (45) = happyShift action_30
action_24 (56) = happyShift action_31
action_24 (58) = happyShift action_32
action_24 (59) = happyShift action_33
action_24 (60) = happyShift action_34
action_24 (61) = happyShift action_35
action_24 (62) = happyShift action_36
action_24 (63) = happyShift action_37
action_24 (5) = happyGoto action_75
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_28
action_25 (31) = happyShift action_29
action_25 (45) = happyShift action_30
action_25 (56) = happyShift action_31
action_25 (58) = happyShift action_32
action_25 (59) = happyShift action_33
action_25 (60) = happyShift action_34
action_25 (61) = happyShift action_35
action_25 (62) = happyShift action_36
action_25 (63) = happyShift action_37
action_25 (5) = happyGoto action_71
action_25 (6) = happyGoto action_74
action_25 _ = happyReduce_50

action_26 (45) = happyShift action_73
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (16) = happyShift action_51
action_27 (17) = happyShift action_52
action_27 (18) = happyShift action_53
action_27 (19) = happyShift action_54
action_27 (20) = happyShift action_55
action_27 (21) = happyShift action_56
action_27 (22) = happyShift action_57
action_27 (23) = happyShift action_58
action_27 (24) = happyShift action_59
action_27 (25) = happyShift action_60
action_27 (26) = happyShift action_61
action_27 (27) = happyShift action_62
action_27 (28) = happyShift action_63
action_27 (29) = happyShift action_64
action_27 (30) = happyShift action_65
action_27 (57) = happyShift action_66
action_27 _ = happyReduce_8

action_28 (14) = happyShift action_28
action_28 (31) = happyShift action_29
action_28 (45) = happyShift action_30
action_28 (56) = happyShift action_31
action_28 (58) = happyShift action_32
action_28 (59) = happyShift action_33
action_28 (60) = happyShift action_34
action_28 (61) = happyShift action_35
action_28 (62) = happyShift action_36
action_28 (63) = happyShift action_37
action_28 (5) = happyGoto action_71
action_28 (6) = happyGoto action_72
action_28 _ = happyReduce_50

action_29 (14) = happyShift action_28
action_29 (31) = happyShift action_29
action_29 (45) = happyShift action_30
action_29 (56) = happyShift action_31
action_29 (58) = happyShift action_32
action_29 (59) = happyShift action_33
action_29 (60) = happyShift action_34
action_29 (61) = happyShift action_35
action_29 (62) = happyShift action_36
action_29 (63) = happyShift action_37
action_29 (5) = happyGoto action_70
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_28
action_30 (31) = happyShift action_29
action_30 (45) = happyShift action_30
action_30 (56) = happyShift action_31
action_30 (58) = happyShift action_32
action_30 (59) = happyShift action_33
action_30 (60) = happyShift action_34
action_30 (61) = happyShift action_35
action_30 (62) = happyShift action_36
action_30 (63) = happyShift action_37
action_30 (5) = happyGoto action_69
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_28
action_31 (31) = happyShift action_29
action_31 (45) = happyShift action_30
action_31 (56) = happyShift action_31
action_31 (58) = happyShift action_32
action_31 (59) = happyShift action_33
action_31 (60) = happyShift action_34
action_31 (61) = happyShift action_35
action_31 (62) = happyShift action_36
action_31 (63) = happyShift action_37
action_31 (5) = happyGoto action_68
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (45) = happyShift action_67
action_32 _ = happyReduce_41

action_33 _ = happyReduce_42

action_34 _ = happyReduce_44

action_35 _ = happyReduce_43

action_36 _ = happyReduce_45

action_37 _ = happyReduce_46

action_38 (16) = happyShift action_51
action_38 (17) = happyShift action_52
action_38 (18) = happyShift action_53
action_38 (19) = happyShift action_54
action_38 (20) = happyShift action_55
action_38 (21) = happyShift action_56
action_38 (22) = happyShift action_57
action_38 (23) = happyShift action_58
action_38 (24) = happyShift action_59
action_38 (25) = happyShift action_60
action_38 (26) = happyShift action_61
action_38 (27) = happyShift action_62
action_38 (28) = happyShift action_63
action_38 (29) = happyShift action_64
action_38 (30) = happyShift action_65
action_38 (57) = happyShift action_66
action_38 _ = happyReduce_7

action_39 (45) = happyShift action_50
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_28
action_40 (31) = happyShift action_29
action_40 (45) = happyShift action_30
action_40 (56) = happyShift action_31
action_40 (58) = happyShift action_32
action_40 (59) = happyShift action_33
action_40 (60) = happyShift action_34
action_40 (61) = happyShift action_35
action_40 (62) = happyShift action_36
action_40 (63) = happyShift action_37
action_40 (5) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_5
action_41 (11) = happyShift action_6
action_41 (12) = happyShift action_7
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (49) = happyShift action_10
action_41 (50) = happyShift action_11
action_41 (53) = happyShift action_12
action_41 (54) = happyShift action_13
action_41 (55) = happyShift action_14
action_41 (58) = happyShift action_15
action_41 (4) = happyGoto action_48
action_41 (9) = happyGoto action_4
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_47
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (42) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_5
action_44 (11) = happyShift action_6
action_44 (12) = happyShift action_7
action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (49) = happyShift action_10
action_44 (50) = happyShift action_11
action_44 (53) = happyShift action_12
action_44 (54) = happyShift action_13
action_44 (55) = happyShift action_14
action_44 (58) = happyShift action_15
action_44 (4) = happyGoto action_45
action_44 (9) = happyGoto action_4
action_44 _ = happyReduce_20

action_45 (41) = happyShift action_44
action_45 _ = happyReduce_19

action_46 (14) = happyShift action_28
action_46 (31) = happyShift action_29
action_46 (45) = happyShift action_30
action_46 (56) = happyShift action_31
action_46 (58) = happyShift action_32
action_46 (59) = happyShift action_33
action_46 (60) = happyShift action_34
action_46 (61) = happyShift action_35
action_46 (62) = happyShift action_36
action_46 (63) = happyShift action_37
action_46 (5) = happyGoto action_109
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_61

action_48 (40) = happyShift action_108
action_48 (41) = happyShift action_44
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_51
action_49 (17) = happyShift action_52
action_49 (18) = happyShift action_53
action_49 (19) = happyShift action_54
action_49 (20) = happyShift action_55
action_49 (21) = happyShift action_56
action_49 (22) = happyShift action_57
action_49 (23) = happyShift action_58
action_49 (24) = happyShift action_59
action_49 (25) = happyShift action_60
action_49 (26) = happyShift action_61
action_49 (27) = happyShift action_62
action_49 (28) = happyShift action_63
action_49 (29) = happyShift action_64
action_49 (30) = happyShift action_65
action_49 (46) = happyShift action_107
action_49 (57) = happyShift action_66
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (58) = happyShift action_106
action_50 (7) = happyGoto action_105
action_50 _ = happyReduce_53

action_51 (14) = happyShift action_28
action_51 (31) = happyShift action_29
action_51 (45) = happyShift action_30
action_51 (56) = happyShift action_31
action_51 (58) = happyShift action_32
action_51 (59) = happyShift action_33
action_51 (60) = happyShift action_34
action_51 (61) = happyShift action_35
action_51 (62) = happyShift action_36
action_51 (63) = happyShift action_37
action_51 (5) = happyGoto action_104
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_28
action_52 (31) = happyShift action_29
action_52 (45) = happyShift action_30
action_52 (56) = happyShift action_31
action_52 (58) = happyShift action_32
action_52 (59) = happyShift action_33
action_52 (60) = happyShift action_34
action_52 (61) = happyShift action_35
action_52 (62) = happyShift action_36
action_52 (63) = happyShift action_37
action_52 (5) = happyGoto action_103
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_28
action_53 (31) = happyShift action_29
action_53 (45) = happyShift action_30
action_53 (56) = happyShift action_31
action_53 (58) = happyShift action_32
action_53 (59) = happyShift action_33
action_53 (60) = happyShift action_34
action_53 (61) = happyShift action_35
action_53 (62) = happyShift action_36
action_53 (63) = happyShift action_37
action_53 (5) = happyGoto action_102
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_28
action_54 (31) = happyShift action_29
action_54 (45) = happyShift action_30
action_54 (56) = happyShift action_31
action_54 (58) = happyShift action_32
action_54 (59) = happyShift action_33
action_54 (60) = happyShift action_34
action_54 (61) = happyShift action_35
action_54 (62) = happyShift action_36
action_54 (63) = happyShift action_37
action_54 (5) = happyGoto action_101
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_28
action_55 (31) = happyShift action_29
action_55 (45) = happyShift action_30
action_55 (56) = happyShift action_31
action_55 (58) = happyShift action_32
action_55 (59) = happyShift action_33
action_55 (60) = happyShift action_34
action_55 (61) = happyShift action_35
action_55 (62) = happyShift action_36
action_55 (63) = happyShift action_37
action_55 (5) = happyGoto action_100
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (14) = happyShift action_28
action_56 (31) = happyShift action_29
action_56 (45) = happyShift action_30
action_56 (56) = happyShift action_31
action_56 (58) = happyShift action_32
action_56 (59) = happyShift action_33
action_56 (60) = happyShift action_34
action_56 (61) = happyShift action_35
action_56 (62) = happyShift action_36
action_56 (63) = happyShift action_37
action_56 (5) = happyGoto action_99
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (14) = happyShift action_28
action_57 (31) = happyShift action_29
action_57 (45) = happyShift action_30
action_57 (56) = happyShift action_31
action_57 (58) = happyShift action_32
action_57 (59) = happyShift action_33
action_57 (60) = happyShift action_34
action_57 (61) = happyShift action_35
action_57 (62) = happyShift action_36
action_57 (63) = happyShift action_37
action_57 (5) = happyGoto action_98
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (14) = happyShift action_28
action_58 (31) = happyShift action_29
action_58 (45) = happyShift action_30
action_58 (56) = happyShift action_31
action_58 (58) = happyShift action_32
action_58 (59) = happyShift action_33
action_58 (60) = happyShift action_34
action_58 (61) = happyShift action_35
action_58 (62) = happyShift action_36
action_58 (63) = happyShift action_37
action_58 (5) = happyGoto action_97
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (14) = happyShift action_28
action_59 (31) = happyShift action_29
action_59 (45) = happyShift action_30
action_59 (56) = happyShift action_31
action_59 (58) = happyShift action_32
action_59 (59) = happyShift action_33
action_59 (60) = happyShift action_34
action_59 (61) = happyShift action_35
action_59 (62) = happyShift action_36
action_59 (63) = happyShift action_37
action_59 (5) = happyGoto action_96
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_28
action_60 (31) = happyShift action_29
action_60 (45) = happyShift action_30
action_60 (56) = happyShift action_31
action_60 (58) = happyShift action_32
action_60 (59) = happyShift action_33
action_60 (60) = happyShift action_34
action_60 (61) = happyShift action_35
action_60 (62) = happyShift action_36
action_60 (63) = happyShift action_37
action_60 (5) = happyGoto action_95
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_28
action_61 (31) = happyShift action_29
action_61 (45) = happyShift action_30
action_61 (56) = happyShift action_31
action_61 (58) = happyShift action_32
action_61 (59) = happyShift action_33
action_61 (60) = happyShift action_34
action_61 (61) = happyShift action_35
action_61 (62) = happyShift action_36
action_61 (63) = happyShift action_37
action_61 (5) = happyGoto action_94
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_28
action_62 (31) = happyShift action_29
action_62 (45) = happyShift action_30
action_62 (56) = happyShift action_31
action_62 (58) = happyShift action_32
action_62 (59) = happyShift action_33
action_62 (60) = happyShift action_34
action_62 (61) = happyShift action_35
action_62 (62) = happyShift action_36
action_62 (63) = happyShift action_37
action_62 (5) = happyGoto action_93
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_28
action_63 (31) = happyShift action_29
action_63 (45) = happyShift action_30
action_63 (56) = happyShift action_31
action_63 (58) = happyShift action_32
action_63 (59) = happyShift action_33
action_63 (60) = happyShift action_34
action_63 (61) = happyShift action_35
action_63 (62) = happyShift action_36
action_63 (63) = happyShift action_37
action_63 (5) = happyGoto action_92
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (14) = happyShift action_28
action_64 (31) = happyShift action_29
action_64 (45) = happyShift action_30
action_64 (56) = happyShift action_31
action_64 (58) = happyShift action_32
action_64 (59) = happyShift action_33
action_64 (60) = happyShift action_34
action_64 (61) = happyShift action_35
action_64 (62) = happyShift action_36
action_64 (63) = happyShift action_37
action_64 (5) = happyGoto action_91
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (14) = happyShift action_28
action_65 (31) = happyShift action_29
action_65 (45) = happyShift action_30
action_65 (56) = happyShift action_31
action_65 (58) = happyShift action_32
action_65 (59) = happyShift action_33
action_65 (60) = happyShift action_34
action_65 (61) = happyShift action_35
action_65 (62) = happyShift action_36
action_65 (63) = happyShift action_37
action_65 (5) = happyGoto action_90
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (14) = happyShift action_28
action_66 (31) = happyShift action_29
action_66 (45) = happyShift action_30
action_66 (56) = happyShift action_31
action_66 (58) = happyShift action_32
action_66 (59) = happyShift action_33
action_66 (60) = happyShift action_34
action_66 (61) = happyShift action_35
action_66 (62) = happyShift action_36
action_66 (63) = happyShift action_37
action_66 (5) = happyGoto action_89
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_28
action_67 (31) = happyShift action_29
action_67 (45) = happyShift action_30
action_67 (56) = happyShift action_31
action_67 (58) = happyShift action_32
action_67 (59) = happyShift action_33
action_67 (60) = happyShift action_34
action_67 (61) = happyShift action_35
action_67 (62) = happyShift action_36
action_67 (63) = happyShift action_37
action_67 (5) = happyGoto action_71
action_67 (6) = happyGoto action_88
action_67 _ = happyReduce_50

action_68 (16) = happyShift action_51
action_68 (17) = happyShift action_52
action_68 (18) = happyShift action_53
action_68 (19) = happyShift action_54
action_68 (20) = happyShift action_55
action_68 (21) = happyShift action_56
action_68 (22) = happyShift action_57
action_68 (57) = happyShift action_66
action_68 _ = happyReduce_39

action_69 (16) = happyShift action_51
action_69 (17) = happyShift action_52
action_69 (18) = happyShift action_53
action_69 (19) = happyShift action_54
action_69 (20) = happyShift action_55
action_69 (21) = happyShift action_56
action_69 (22) = happyShift action_57
action_69 (23) = happyShift action_58
action_69 (24) = happyShift action_59
action_69 (25) = happyShift action_60
action_69 (26) = happyShift action_61
action_69 (27) = happyShift action_62
action_69 (28) = happyShift action_63
action_69 (29) = happyShift action_64
action_69 (30) = happyShift action_65
action_69 (46) = happyShift action_87
action_69 (57) = happyShift action_66
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (16) = happyShift action_51
action_70 (17) = happyShift action_52
action_70 (18) = happyShift action_53
action_70 (19) = happyShift action_54
action_70 (20) = happyShift action_55
action_70 (21) = happyShift action_56
action_70 (22) = happyShift action_57
action_70 (57) = happyShift action_66
action_70 _ = happyReduce_35

action_71 (16) = happyShift action_51
action_71 (17) = happyShift action_52
action_71 (18) = happyShift action_53
action_71 (19) = happyShift action_54
action_71 (20) = happyShift action_55
action_71 (21) = happyShift action_56
action_71 (22) = happyShift action_57
action_71 (23) = happyShift action_58
action_71 (24) = happyShift action_59
action_71 (25) = happyShift action_60
action_71 (26) = happyShift action_61
action_71 (27) = happyShift action_62
action_71 (28) = happyShift action_63
action_71 (29) = happyShift action_64
action_71 (30) = happyShift action_65
action_71 (40) = happyShift action_86
action_71 (57) = happyShift action_66
action_71 _ = happyReduce_49

action_72 (15) = happyShift action_85
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (10) = happyShift action_5
action_73 (11) = happyShift action_6
action_73 (12) = happyShift action_7
action_73 (13) = happyShift action_8
action_73 (14) = happyShift action_9
action_73 (8) = happyGoto action_83
action_73 (9) = happyGoto action_84
action_73 _ = happyReduce_56

action_74 (46) = happyShift action_82
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_51
action_75 (17) = happyShift action_52
action_75 (18) = happyShift action_53
action_75 (19) = happyShift action_54
action_75 (20) = happyShift action_55
action_75 (21) = happyShift action_56
action_75 (22) = happyShift action_57
action_75 (23) = happyShift action_58
action_75 (24) = happyShift action_59
action_75 (25) = happyShift action_60
action_75 (26) = happyShift action_61
action_75 (27) = happyShift action_62
action_75 (28) = happyShift action_63
action_75 (29) = happyShift action_64
action_75 (30) = happyShift action_65
action_75 (57) = happyShift action_66
action_75 _ = happyReduce_10

action_76 (16) = happyShift action_51
action_76 (17) = happyShift action_52
action_76 (18) = happyShift action_53
action_76 (19) = happyShift action_54
action_76 (20) = happyShift action_55
action_76 (21) = happyShift action_56
action_76 (22) = happyShift action_57
action_76 (23) = happyShift action_58
action_76 (24) = happyShift action_59
action_76 (25) = happyShift action_60
action_76 (26) = happyShift action_61
action_76 (27) = happyShift action_62
action_76 (28) = happyShift action_63
action_76 (29) = happyShift action_64
action_76 (30) = happyShift action_65
action_76 (57) = happyShift action_66
action_76 _ = happyReduce_18

action_77 (16) = happyShift action_51
action_77 (17) = happyShift action_52
action_77 (18) = happyShift action_53
action_77 (19) = happyShift action_54
action_77 (20) = happyShift action_55
action_77 (21) = happyShift action_56
action_77 (22) = happyShift action_57
action_77 (23) = happyShift action_58
action_77 (24) = happyShift action_59
action_77 (25) = happyShift action_60
action_77 (26) = happyShift action_61
action_77 (27) = happyShift action_62
action_77 (28) = happyShift action_63
action_77 (29) = happyShift action_64
action_77 (30) = happyShift action_65
action_77 (57) = happyShift action_66
action_77 _ = happyReduce_17

action_78 (16) = happyShift action_51
action_78 (17) = happyShift action_52
action_78 (18) = happyShift action_53
action_78 (19) = happyShift action_54
action_78 (20) = happyShift action_55
action_78 (21) = happyShift action_56
action_78 (22) = happyShift action_57
action_78 (23) = happyShift action_58
action_78 (24) = happyShift action_59
action_78 (25) = happyShift action_60
action_78 (26) = happyShift action_61
action_78 (27) = happyShift action_62
action_78 (28) = happyShift action_63
action_78 (29) = happyShift action_64
action_78 (30) = happyShift action_65
action_78 (57) = happyShift action_66
action_78 _ = happyReduce_16

action_79 (16) = happyShift action_51
action_79 (17) = happyShift action_52
action_79 (18) = happyShift action_53
action_79 (19) = happyShift action_54
action_79 (20) = happyShift action_55
action_79 (21) = happyShift action_56
action_79 (22) = happyShift action_57
action_79 (23) = happyShift action_58
action_79 (24) = happyShift action_59
action_79 (25) = happyShift action_60
action_79 (26) = happyShift action_61
action_79 (27) = happyShift action_62
action_79 (28) = happyShift action_63
action_79 (29) = happyShift action_64
action_79 (30) = happyShift action_65
action_79 (57) = happyShift action_66
action_79 _ = happyReduce_15

action_80 (16) = happyShift action_51
action_80 (17) = happyShift action_52
action_80 (18) = happyShift action_53
action_80 (19) = happyShift action_54
action_80 (20) = happyShift action_55
action_80 (21) = happyShift action_56
action_80 (22) = happyShift action_57
action_80 (23) = happyShift action_58
action_80 (24) = happyShift action_59
action_80 (25) = happyShift action_60
action_80 (26) = happyShift action_61
action_80 (27) = happyShift action_62
action_80 (28) = happyShift action_63
action_80 (29) = happyShift action_64
action_80 (30) = happyShift action_65
action_80 (57) = happyShift action_66
action_80 _ = happyReduce_14

action_81 (16) = happyShift action_51
action_81 (17) = happyShift action_52
action_81 (18) = happyShift action_53
action_81 (19) = happyShift action_54
action_81 (20) = happyShift action_55
action_81 (21) = happyShift action_56
action_81 (22) = happyShift action_57
action_81 (23) = happyShift action_58
action_81 (24) = happyShift action_59
action_81 (25) = happyShift action_60
action_81 (26) = happyShift action_61
action_81 (27) = happyShift action_62
action_81 (28) = happyShift action_63
action_81 (29) = happyShift action_64
action_81 (30) = happyShift action_65
action_81 (57) = happyShift action_66
action_81 _ = happyReduce_13

action_82 _ = happyReduce_6

action_83 (46) = happyShift action_117
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (40) = happyShift action_116
action_84 _ = happyReduce_55

action_85 _ = happyReduce_37

action_86 (14) = happyShift action_28
action_86 (31) = happyShift action_29
action_86 (45) = happyShift action_30
action_86 (56) = happyShift action_31
action_86 (58) = happyShift action_32
action_86 (59) = happyShift action_33
action_86 (60) = happyShift action_34
action_86 (61) = happyShift action_35
action_86 (62) = happyShift action_36
action_86 (63) = happyShift action_37
action_86 (5) = happyGoto action_71
action_86 (6) = happyGoto action_115
action_86 _ = happyReduce_50

action_87 _ = happyReduce_47

action_88 (46) = happyShift action_114
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (16) = happyShift action_51
action_89 (17) = happyShift action_52
action_89 (18) = happyShift action_53
action_89 (19) = happyShift action_54
action_89 (20) = happyShift action_55
action_89 (21) = happyShift action_56
action_89 (22) = happyShift action_57
action_89 (57) = happyShift action_66
action_89 _ = happyReduce_40

action_90 (16) = happyShift action_51
action_90 (17) = happyShift action_52
action_90 (18) = happyShift action_53
action_90 (19) = happyShift action_54
action_90 (20) = happyShift action_55
action_90 (21) = happyShift action_56
action_90 (22) = happyShift action_57
action_90 (25) = happyFail []
action_90 (26) = happyFail []
action_90 (27) = happyFail []
action_90 (28) = happyFail []
action_90 (29) = happyFail []
action_90 (30) = happyFail []
action_90 (57) = happyShift action_66
action_90 _ = happyReduce_34

action_91 (16) = happyShift action_51
action_91 (17) = happyShift action_52
action_91 (18) = happyShift action_53
action_91 (19) = happyShift action_54
action_91 (20) = happyShift action_55
action_91 (21) = happyShift action_56
action_91 (22) = happyShift action_57
action_91 (25) = happyFail []
action_91 (26) = happyFail []
action_91 (27) = happyFail []
action_91 (28) = happyFail []
action_91 (29) = happyFail []
action_91 (30) = happyFail []
action_91 (57) = happyShift action_66
action_91 _ = happyReduce_33

action_92 (16) = happyShift action_51
action_92 (17) = happyShift action_52
action_92 (18) = happyShift action_53
action_92 (19) = happyShift action_54
action_92 (20) = happyShift action_55
action_92 (21) = happyShift action_56
action_92 (22) = happyShift action_57
action_92 (25) = happyFail []
action_92 (26) = happyFail []
action_92 (27) = happyFail []
action_92 (28) = happyFail []
action_92 (29) = happyFail []
action_92 (30) = happyFail []
action_92 (57) = happyShift action_66
action_92 _ = happyReduce_32

action_93 (16) = happyShift action_51
action_93 (17) = happyShift action_52
action_93 (18) = happyShift action_53
action_93 (19) = happyShift action_54
action_93 (20) = happyShift action_55
action_93 (21) = happyShift action_56
action_93 (22) = happyShift action_57
action_93 (25) = happyFail []
action_93 (26) = happyFail []
action_93 (27) = happyFail []
action_93 (28) = happyFail []
action_93 (29) = happyFail []
action_93 (30) = happyFail []
action_93 (57) = happyShift action_66
action_93 _ = happyReduce_29

action_94 (16) = happyShift action_51
action_94 (17) = happyShift action_52
action_94 (18) = happyShift action_53
action_94 (19) = happyShift action_54
action_94 (20) = happyShift action_55
action_94 (21) = happyShift action_56
action_94 (22) = happyShift action_57
action_94 (25) = happyFail []
action_94 (26) = happyFail []
action_94 (27) = happyFail []
action_94 (28) = happyFail []
action_94 (29) = happyFail []
action_94 (30) = happyFail []
action_94 (57) = happyShift action_66
action_94 _ = happyReduce_31

action_95 (16) = happyShift action_51
action_95 (17) = happyShift action_52
action_95 (18) = happyShift action_53
action_95 (19) = happyShift action_54
action_95 (20) = happyShift action_55
action_95 (21) = happyShift action_56
action_95 (22) = happyShift action_57
action_95 (25) = happyFail []
action_95 (26) = happyFail []
action_95 (27) = happyFail []
action_95 (28) = happyFail []
action_95 (29) = happyFail []
action_95 (30) = happyFail []
action_95 (57) = happyShift action_66
action_95 _ = happyReduce_30

action_96 (16) = happyShift action_51
action_96 (17) = happyShift action_52
action_96 (18) = happyShift action_53
action_96 (19) = happyShift action_54
action_96 (20) = happyShift action_55
action_96 (21) = happyShift action_56
action_96 (22) = happyShift action_57
action_96 (23) = happyFail []
action_96 (24) = happyFail []
action_96 (25) = happyShift action_60
action_96 (26) = happyShift action_61
action_96 (27) = happyShift action_62
action_96 (28) = happyShift action_63
action_96 (29) = happyShift action_64
action_96 (30) = happyShift action_65
action_96 (57) = happyShift action_66
action_96 _ = happyReduce_28

action_97 (16) = happyShift action_51
action_97 (17) = happyShift action_52
action_97 (18) = happyShift action_53
action_97 (19) = happyShift action_54
action_97 (20) = happyShift action_55
action_97 (21) = happyShift action_56
action_97 (22) = happyShift action_57
action_97 (23) = happyFail []
action_97 (24) = happyFail []
action_97 (25) = happyShift action_60
action_97 (26) = happyShift action_61
action_97 (27) = happyShift action_62
action_97 (28) = happyShift action_63
action_97 (29) = happyShift action_64
action_97 (30) = happyShift action_65
action_97 (57) = happyShift action_66
action_97 _ = happyReduce_27

action_98 _ = happyReduce_26

action_99 (22) = happyShift action_57
action_99 _ = happyReduce_25

action_100 (22) = happyShift action_57
action_100 _ = happyReduce_24

action_101 (22) = happyShift action_57
action_101 _ = happyReduce_23

action_102 (19) = happyShift action_54
action_102 (20) = happyShift action_55
action_102 (21) = happyShift action_56
action_102 (22) = happyShift action_57
action_102 _ = happyReduce_22

action_103 (19) = happyShift action_54
action_103 (20) = happyShift action_55
action_103 (21) = happyShift action_56
action_103 (22) = happyShift action_57
action_103 _ = happyReduce_21

action_104 (16) = happyShift action_51
action_104 (17) = happyShift action_52
action_104 (18) = happyShift action_53
action_104 (19) = happyShift action_54
action_104 (20) = happyShift action_55
action_104 (21) = happyShift action_56
action_104 (22) = happyShift action_57
action_104 _ = happyReduce_38

action_105 (46) = happyShift action_113
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (40) = happyShift action_112
action_106 _ = happyReduce_52

action_107 (51) = happyShift action_111
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (14) = happyShift action_28
action_108 (31) = happyShift action_29
action_108 (45) = happyShift action_30
action_108 (56) = happyShift action_31
action_108 (58) = happyShift action_32
action_108 (59) = happyShift action_33
action_108 (60) = happyShift action_34
action_108 (61) = happyShift action_35
action_108 (62) = happyShift action_36
action_108 (63) = happyShift action_37
action_108 (5) = happyGoto action_110
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (16) = happyShift action_51
action_109 (17) = happyShift action_52
action_109 (18) = happyShift action_53
action_109 (19) = happyShift action_54
action_109 (20) = happyShift action_55
action_109 (21) = happyShift action_56
action_109 (22) = happyShift action_57
action_109 (23) = happyShift action_58
action_109 (24) = happyShift action_59
action_109 (25) = happyShift action_60
action_109 (26) = happyShift action_61
action_109 (27) = happyShift action_62
action_109 (28) = happyShift action_63
action_109 (29) = happyShift action_64
action_109 (30) = happyShift action_65
action_109 (57) = happyShift action_66
action_109 _ = happyReduce_9

action_110 (16) = happyShift action_51
action_110 (17) = happyShift action_52
action_110 (18) = happyShift action_53
action_110 (19) = happyShift action_54
action_110 (20) = happyShift action_55
action_110 (21) = happyShift action_56
action_110 (22) = happyShift action_57
action_110 (23) = happyShift action_58
action_110 (24) = happyShift action_59
action_110 (25) = happyShift action_60
action_110 (26) = happyShift action_61
action_110 (27) = happyShift action_62
action_110 (28) = happyShift action_63
action_110 (29) = happyShift action_64
action_110 (30) = happyShift action_65
action_110 (46) = happyShift action_123
action_110 (57) = happyShift action_66
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (43) = happyShift action_122
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (58) = happyShift action_106
action_112 (7) = happyGoto action_121
action_112 _ = happyReduce_53

action_113 (43) = happyShift action_120
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_36

action_115 _ = happyReduce_48

action_116 (10) = happyShift action_5
action_116 (11) = happyShift action_6
action_116 (12) = happyShift action_7
action_116 (13) = happyShift action_8
action_116 (14) = happyShift action_9
action_116 (8) = happyGoto action_119
action_116 (9) = happyGoto action_84
action_116 _ = happyReduce_56

action_117 (48) = happyShift action_118
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (10) = happyShift action_5
action_118 (11) = happyShift action_6
action_118 (12) = happyShift action_7
action_118 (13) = happyShift action_8
action_118 (14) = happyShift action_9
action_118 (9) = happyGoto action_127
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_54

action_120 (10) = happyShift action_5
action_120 (11) = happyShift action_6
action_120 (12) = happyShift action_7
action_120 (13) = happyShift action_8
action_120 (14) = happyShift action_9
action_120 (49) = happyShift action_10
action_120 (50) = happyShift action_11
action_120 (53) = happyShift action_12
action_120 (54) = happyShift action_13
action_120 (55) = happyShift action_14
action_120 (58) = happyShift action_15
action_120 (4) = happyGoto action_126
action_120 (9) = happyGoto action_4
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_51

action_122 (10) = happyShift action_5
action_122 (11) = happyShift action_6
action_122 (12) = happyShift action_7
action_122 (13) = happyShift action_8
action_122 (14) = happyShift action_9
action_122 (49) = happyShift action_10
action_122 (50) = happyShift action_11
action_122 (53) = happyShift action_12
action_122 (54) = happyShift action_13
action_122 (55) = happyShift action_14
action_122 (58) = happyShift action_15
action_122 (4) = happyGoto action_125
action_122 (9) = happyGoto action_4
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (43) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (10) = happyShift action_5
action_124 (11) = happyShift action_6
action_124 (12) = happyShift action_7
action_124 (13) = happyShift action_8
action_124 (14) = happyShift action_9
action_124 (49) = happyShift action_10
action_124 (50) = happyShift action_11
action_124 (53) = happyShift action_12
action_124 (54) = happyShift action_13
action_124 (55) = happyShift action_14
action_124 (58) = happyShift action_15
action_124 (4) = happyGoto action_130
action_124 (9) = happyGoto action_4
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (41) = happyShift action_44
action_125 (44) = happyShift action_129
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (41) = happyShift action_44
action_126 (44) = happyShift action_128
action_126 _ = happyFail (happyExpListPerState 126)

action_127 _ = happyReduce_1

action_128 _ = happyReduce_2

action_129 (52) = happyShift action_132
action_129 _ = happyReduce_4

action_130 (41) = happyShift action_44
action_130 (44) = happyShift action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 _ = happyReduce_5

action_132 (43) = happyShift action_133
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (10) = happyShift action_5
action_133 (11) = happyShift action_6
action_133 (12) = happyShift action_7
action_133 (13) = happyShift action_8
action_133 (14) = happyShift action_9
action_133 (49) = happyShift action_10
action_133 (50) = happyShift action_11
action_133 (53) = happyShift action_12
action_133 (54) = happyShift action_13
action_133 (55) = happyShift action_14
action_133 (58) = happyShift action_15
action_133 (4) = happyGoto action_134
action_133 (9) = happyGoto action_4
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (41) = happyShift action_44
action_134 (44) = happyShift action_135
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_3

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

happyReduce_38 = happySpecReduce_3  5 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ListGetElement happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  5 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (ListGetLength happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  5 happyReduction_40
happyReduction_40 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ListAppendValue happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  5 happyReduction_41
happyReduction_41 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  5 happyReduction_44
happyReduction_44 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_46 = happySpecReduce_1  5 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_47 = happySpecReduce_3  5 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  6 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  6 happyReduction_49
happyReduction_49 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 EmptyValueList
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  6 happyReduction_50
happyReduction_50  =  HappyAbsSyn6
		 (EmptyValueList
	)

happyReduce_51 = happySpecReduce_3  7 happyReduction_51
happyReduction_51 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  7 happyReduction_52
happyReduction_52 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 EmptyVarList
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_0  7 happyReduction_53
happyReduction_53  =  HappyAbsSyn7
		 (EmptyVarList
	)

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
		 (TypeList happy_var_1 EmptyTypeList
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_0  8 happyReduction_56
happyReduction_56  =  HappyAbsSyn8
		 (EmptyTypeList
	)

happyReduce_57 = happySpecReduce_1  9 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn9
		 (TypeString
	)

happyReduce_58 = happySpecReduce_1  9 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn9
		 (TypeChar
	)

happyReduce_59 = happySpecReduce_1  9 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn9
		 (TypeInt
	)

happyReduce_60 = happySpecReduce_1  9 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn9
		 (TypeBool
	)

happyReduce_61 = happySpecReduce_3  9 happyReduction_61
happyReduction_61 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TypeStream happy_var_2
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeString p -> cont 10;
	TokenTypeChar p -> cont 11;
	TokenTypeInt p -> cont 12;
	TokenTypeBoolean p -> cont 13;
	TokenListStart p -> cont 14;
	TokenListEnd p -> cont 15;
	TokenListGetElement p -> cont 16;
	TokenOpAdd p -> cont 17;
	TokenOpMinus p -> cont 18;
	TokenOpMultiply p -> cont 19;
	TokenOpDivide p -> cont 20;
	TokenOpModulo p -> cont 21;
	TokenOpExponent p -> cont 22;
	TokenOpAnd p -> cont 23;
	TokenOpOr p -> cont 24;
	TokenOpLT p -> cont 25;
	TokenOpGT p -> cont 26;
	TokenOpEQ p -> cont 27;
	TokenOpLTEQ p -> cont 28;
	TokenOpGTEQ p -> cont 29;
	TokenOpNEQ p -> cont 30;
	TokenOpNot p -> cont 31;
	TokenAssignOpIncrement p -> cont 32;
	TokenAssignOpDecrement p -> cont 33;
	TokenAssignOpAddition p -> cont 34;
	TokenAssignOpSubtraction p -> cont 35;
	TokenAssignOpMultiplication p -> cont 36;
	TokenAssignOpDivision p -> cont 37;
	TokenAssignOpModulus p -> cont 38;
	TokenAssignOpExponation p -> cont 39;
	TokenComma p -> cont 40;
	TokenSemicolon p -> cont 41;
	TokenAssignment p -> cont 42;
	TokenCurlyBracketOpen p -> cont 43;
	TokenCurlyBracketClose p -> cont 44;
	TokenBracketOpen p -> cont 45;
	TokenBracketClose p -> cont 46;
	TokenTypeDeclaration p -> cont 47;
	TokenFuncTransition p -> cont 48;
	TokenKeywordLoop p -> cont 49;
	TokenKeywordIf p -> cont 50;
	TokenKeywordThen p -> cont 51;
	TokenKeywordElse p -> cont 52;
	TokenKeywordFunc p -> cont 53;
	TokenKeywordReturn p -> cont 54;
	TokenKeywordPrint p -> cont 55;
	TokenKeywordLength p -> cont 56;
	TokenKeywordAppend p -> cont 57;
	TokenVariable p happy_dollar_dollar -> cont 58;
	TokenString p happy_dollar_dollar -> cont 59;
	TokenChar p  happy_dollar_dollar -> cont 60;
	TokenInteger p happy_dollar_dollar -> cont 61;
	TokenBoolTrue p -> cont 62;
	TokenBoolFalse p -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
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
               | EmptyValueList
               deriving (Show, Eq)

data VarList = VarList String VarList
             | EmptyVarList
             deriving (Show, Eq)

data TypeList = TypeList Type TypeList
              | EmptyTypeList
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
