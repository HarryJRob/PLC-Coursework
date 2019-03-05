{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,265) ([15360,0,0,588,0,0,0,512,0,0,0,1,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,16384,0,0,0,0,512,0,0,2048,1,0,0,16385,32256,0,0,16384,0,0,0,16384,0,0,0,16385,32256,15360,0,0,588,0,0,2048,0,0,0,16385,32256,15360,0,1024,588,0,0,512,0,0,65532,32768,0,0,0,16385,32256,0,0,16385,32256,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,15360,0,0,0,0,65532,0,0,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,16385,32256,0,0,32768,0,0,0,512,0,0,0,32768,0,0,0,512,0,0,0,16385,32256,0,65532,32768,0,0,0,0,0,0,0,0,16,0,0,16385,32256,0,0,0,0,15360,0,0,588,0,65532,0,0,0,0,0,0,0,65532,32768,0,0,0,4096,0,0,0,0,0,0,65532,512,0,0,0,32768,0,0,0,0,512,0,0,4096,0,15360,0,0,0,0,0,0,2,0,252,0,0,0,252,0,0,0,252,0,0,0,252,0,0,0,252,0,0,0,252,0,0,0,252,0,0,0,252,0,0,0,0,0,0,0,128,0,0,0,128,0,0,0,128,0,0,0,240,0,0,0,240,0,0,15360,0,0,0,0,0,0,0,15360,0,0,588,0,0,0,0,0,0,0,0,0,0,16385,32256,15360,0,0,588,0,0,4096,0,15360,0,0,588,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,8192,0,0,0,0,0,0,0,4096,0,15360,0,0,588,0,0,8192,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","ValueList","VarList","ExpList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","\"==\"","\"<=\"","\">=\"","\"!=\"","'!'","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","if","then","else","func","\"return\"","\"print\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 64
        bit_end = (st + 1) * 64
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..63]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (13) = happyShift action_7
action_0 (14) = happyShift action_8
action_0 (51) = happyShift action_9
action_0 (52) = happyShift action_10
action_0 (55) = happyShift action_11
action_0 (58) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 (10) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (58) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (49) = happyShift action_14
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (64) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (58) = happyShift action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_40

action_6 _ = happyReduce_41

action_7 _ = happyReduce_42

action_8 _ = happyReduce_43

action_9 (47) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (47) = happyShift action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (58) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (44) = happyShift action_13
action_12 (49) = happyShift action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (33) = happyShift action_23
action_13 (47) = happyShift action_24
action_13 (58) = happyShift action_25
action_13 (59) = happyShift action_26
action_13 (60) = happyShift action_27
action_13 (61) = happyShift action_28
action_13 (62) = happyShift action_29
action_13 (63) = happyShift action_30
action_13 (5) = happyGoto action_33
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (47) = happyShift action_32
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (47) = happyShift action_31
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (33) = happyShift action_23
action_16 (47) = happyShift action_24
action_16 (58) = happyShift action_25
action_16 (59) = happyShift action_26
action_16 (60) = happyShift action_27
action_16 (61) = happyShift action_28
action_16 (62) = happyShift action_29
action_16 (63) = happyShift action_30
action_16 (5) = happyGoto action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_5
action_17 (12) = happyShift action_6
action_17 (13) = happyShift action_7
action_17 (14) = happyShift action_8
action_17 (51) = happyShift action_9
action_17 (52) = happyShift action_10
action_17 (55) = happyShift action_11
action_17 (58) = happyShift action_12
action_17 (4) = happyGoto action_20
action_17 (8) = happyGoto action_21
action_17 (10) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (44) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (33) = happyShift action_23
action_19 (47) = happyShift action_24
action_19 (58) = happyShift action_25
action_19 (59) = happyShift action_26
action_19 (60) = happyShift action_27
action_19 (61) = happyShift action_28
action_19 (62) = happyShift action_29
action_19 (63) = happyShift action_30
action_19 (5) = happyGoto action_59
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_5
action_20 (12) = happyShift action_6
action_20 (13) = happyShift action_7
action_20 (14) = happyShift action_8
action_20 (43) = happyShift action_58
action_20 (51) = happyShift action_9
action_20 (52) = happyShift action_10
action_20 (55) = happyShift action_11
action_20 (58) = happyShift action_12
action_20 (4) = happyGoto action_20
action_20 (8) = happyGoto action_57
action_20 (10) = happyGoto action_4
action_20 _ = happyReduce_37

action_21 (42) = happyShift action_56
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (19) = happyShift action_34
action_22 (20) = happyShift action_35
action_22 (21) = happyShift action_36
action_22 (22) = happyShift action_37
action_22 (23) = happyShift action_38
action_22 (24) = happyShift action_39
action_22 (25) = happyShift action_40
action_22 (26) = happyShift action_41
action_22 (27) = happyShift action_42
action_22 (28) = happyShift action_43
action_22 (29) = happyShift action_44
action_22 (30) = happyShift action_45
action_22 (31) = happyShift action_46
action_22 (32) = happyShift action_47
action_22 (48) = happyShift action_55
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (33) = happyShift action_23
action_23 (47) = happyShift action_24
action_23 (58) = happyShift action_25
action_23 (59) = happyShift action_26
action_23 (60) = happyShift action_27
action_23 (61) = happyShift action_28
action_23 (62) = happyShift action_29
action_23 (63) = happyShift action_30
action_23 (5) = happyGoto action_54
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (33) = happyShift action_23
action_24 (47) = happyShift action_24
action_24 (58) = happyShift action_25
action_24 (59) = happyShift action_26
action_24 (60) = happyShift action_27
action_24 (61) = happyShift action_28
action_24 (62) = happyShift action_29
action_24 (63) = happyShift action_30
action_24 (5) = happyGoto action_53
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (47) = happyShift action_52
action_25 _ = happyReduce_24

action_26 _ = happyReduce_25

action_27 _ = happyReduce_27

action_28 _ = happyReduce_26

action_29 _ = happyReduce_28

action_30 _ = happyReduce_29

action_31 (58) = happyShift action_51
action_31 (7) = happyGoto action_50
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_5
action_32 (12) = happyShift action_6
action_32 (13) = happyShift action_7
action_32 (14) = happyShift action_8
action_32 (9) = happyGoto action_48
action_32 (10) = happyGoto action_49
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_34
action_33 (20) = happyShift action_35
action_33 (21) = happyShift action_36
action_33 (22) = happyShift action_37
action_33 (23) = happyShift action_38
action_33 (24) = happyShift action_39
action_33 (25) = happyShift action_40
action_33 (26) = happyShift action_41
action_33 (27) = happyShift action_42
action_33 (28) = happyShift action_43
action_33 (29) = happyShift action_44
action_33 (30) = happyShift action_45
action_33 (31) = happyShift action_46
action_33 (32) = happyShift action_47
action_33 _ = happyReduce_7

action_34 (33) = happyShift action_23
action_34 (47) = happyShift action_24
action_34 (58) = happyShift action_25
action_34 (59) = happyShift action_26
action_34 (60) = happyShift action_27
action_34 (61) = happyShift action_28
action_34 (62) = happyShift action_29
action_34 (63) = happyShift action_30
action_34 (5) = happyGoto action_83
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (33) = happyShift action_23
action_35 (47) = happyShift action_24
action_35 (58) = happyShift action_25
action_35 (59) = happyShift action_26
action_35 (60) = happyShift action_27
action_35 (61) = happyShift action_28
action_35 (62) = happyShift action_29
action_35 (63) = happyShift action_30
action_35 (5) = happyGoto action_82
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (33) = happyShift action_23
action_36 (47) = happyShift action_24
action_36 (58) = happyShift action_25
action_36 (59) = happyShift action_26
action_36 (60) = happyShift action_27
action_36 (61) = happyShift action_28
action_36 (62) = happyShift action_29
action_36 (63) = happyShift action_30
action_36 (5) = happyGoto action_81
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (33) = happyShift action_23
action_37 (47) = happyShift action_24
action_37 (58) = happyShift action_25
action_37 (59) = happyShift action_26
action_37 (60) = happyShift action_27
action_37 (61) = happyShift action_28
action_37 (62) = happyShift action_29
action_37 (63) = happyShift action_30
action_37 (5) = happyGoto action_80
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (33) = happyShift action_23
action_38 (47) = happyShift action_24
action_38 (58) = happyShift action_25
action_38 (59) = happyShift action_26
action_38 (60) = happyShift action_27
action_38 (61) = happyShift action_28
action_38 (62) = happyShift action_29
action_38 (63) = happyShift action_30
action_38 (5) = happyGoto action_79
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (33) = happyShift action_23
action_39 (47) = happyShift action_24
action_39 (58) = happyShift action_25
action_39 (59) = happyShift action_26
action_39 (60) = happyShift action_27
action_39 (61) = happyShift action_28
action_39 (62) = happyShift action_29
action_39 (63) = happyShift action_30
action_39 (5) = happyGoto action_78
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (33) = happyShift action_23
action_40 (47) = happyShift action_24
action_40 (58) = happyShift action_25
action_40 (59) = happyShift action_26
action_40 (60) = happyShift action_27
action_40 (61) = happyShift action_28
action_40 (62) = happyShift action_29
action_40 (63) = happyShift action_30
action_40 (5) = happyGoto action_77
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (33) = happyShift action_23
action_41 (47) = happyShift action_24
action_41 (58) = happyShift action_25
action_41 (59) = happyShift action_26
action_41 (60) = happyShift action_27
action_41 (61) = happyShift action_28
action_41 (62) = happyShift action_29
action_41 (63) = happyShift action_30
action_41 (5) = happyGoto action_76
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (33) = happyShift action_23
action_42 (47) = happyShift action_24
action_42 (58) = happyShift action_25
action_42 (59) = happyShift action_26
action_42 (60) = happyShift action_27
action_42 (61) = happyShift action_28
action_42 (62) = happyShift action_29
action_42 (63) = happyShift action_30
action_42 (5) = happyGoto action_75
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (33) = happyShift action_23
action_43 (47) = happyShift action_24
action_43 (58) = happyShift action_25
action_43 (59) = happyShift action_26
action_43 (60) = happyShift action_27
action_43 (61) = happyShift action_28
action_43 (62) = happyShift action_29
action_43 (63) = happyShift action_30
action_43 (5) = happyGoto action_74
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (33) = happyShift action_23
action_44 (47) = happyShift action_24
action_44 (58) = happyShift action_25
action_44 (59) = happyShift action_26
action_44 (60) = happyShift action_27
action_44 (61) = happyShift action_28
action_44 (62) = happyShift action_29
action_44 (63) = happyShift action_30
action_44 (5) = happyGoto action_73
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (33) = happyShift action_23
action_45 (47) = happyShift action_24
action_45 (58) = happyShift action_25
action_45 (59) = happyShift action_26
action_45 (60) = happyShift action_27
action_45 (61) = happyShift action_28
action_45 (62) = happyShift action_29
action_45 (63) = happyShift action_30
action_45 (5) = happyGoto action_72
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (33) = happyShift action_23
action_46 (47) = happyShift action_24
action_46 (58) = happyShift action_25
action_46 (59) = happyShift action_26
action_46 (60) = happyShift action_27
action_46 (61) = happyShift action_28
action_46 (62) = happyShift action_29
action_46 (63) = happyShift action_30
action_46 (5) = happyGoto action_71
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (33) = happyShift action_23
action_47 (47) = happyShift action_24
action_47 (58) = happyShift action_25
action_47 (59) = happyShift action_26
action_47 (60) = happyShift action_27
action_47 (61) = happyShift action_28
action_47 (62) = happyShift action_29
action_47 (63) = happyShift action_30
action_47 (5) = happyGoto action_70
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (48) = happyShift action_69
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (42) = happyShift action_68
action_49 _ = happyReduce_39

action_50 (48) = happyShift action_67
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (42) = happyShift action_66
action_51 _ = happyReduce_34

action_52 (33) = happyShift action_23
action_52 (47) = happyShift action_24
action_52 (58) = happyShift action_25
action_52 (59) = happyShift action_26
action_52 (60) = happyShift action_27
action_52 (61) = happyShift action_28
action_52 (62) = happyShift action_29
action_52 (63) = happyShift action_30
action_52 (5) = happyGoto action_64
action_52 (6) = happyGoto action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (19) = happyShift action_34
action_53 (20) = happyShift action_35
action_53 (21) = happyShift action_36
action_53 (22) = happyShift action_37
action_53 (23) = happyShift action_38
action_53 (24) = happyShift action_39
action_53 (25) = happyShift action_40
action_53 (26) = happyShift action_41
action_53 (27) = happyShift action_42
action_53 (28) = happyShift action_43
action_53 (29) = happyShift action_44
action_53 (30) = happyShift action_45
action_53 (31) = happyShift action_46
action_53 (32) = happyShift action_47
action_53 (48) = happyShift action_63
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (19) = happyShift action_34
action_54 (20) = happyShift action_35
action_54 (21) = happyShift action_36
action_54 (22) = happyShift action_37
action_54 (23) = happyShift action_38
action_54 (24) = happyShift action_39
action_54 (25) = happyShift action_40
action_54 (26) = happyShift action_41
action_54 (27) = happyShift action_42
action_54 (28) = happyShift action_43
action_54 (29) = happyShift action_44
action_54 (30) = happyShift action_45
action_54 (31) = happyShift action_46
action_54 (32) = happyShift action_47
action_54 _ = happyReduce_22

action_55 (53) = happyShift action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (33) = happyShift action_23
action_56 (47) = happyShift action_24
action_56 (58) = happyShift action_25
action_56 (59) = happyShift action_26
action_56 (60) = happyShift action_27
action_56 (61) = happyShift action_28
action_56 (62) = happyShift action_29
action_56 (63) = happyShift action_30
action_56 (5) = happyGoto action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_35

action_58 (11) = happyShift action_5
action_58 (12) = happyShift action_6
action_58 (13) = happyShift action_7
action_58 (14) = happyShift action_8
action_58 (51) = happyShift action_9
action_58 (52) = happyShift action_10
action_58 (55) = happyShift action_11
action_58 (58) = happyShift action_12
action_58 (4) = happyGoto action_20
action_58 (8) = happyGoto action_60
action_58 (10) = happyGoto action_4
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (19) = happyShift action_34
action_59 (20) = happyShift action_35
action_59 (21) = happyShift action_36
action_59 (22) = happyShift action_37
action_59 (23) = happyShift action_38
action_59 (24) = happyShift action_39
action_59 (25) = happyShift action_40
action_59 (26) = happyShift action_41
action_59 (27) = happyShift action_42
action_59 (28) = happyShift action_43
action_59 (29) = happyShift action_44
action_59 (30) = happyShift action_45
action_59 (31) = happyShift action_46
action_59 (32) = happyShift action_47
action_59 _ = happyReduce_6

action_60 _ = happyReduce_36

action_61 (19) = happyShift action_34
action_61 (20) = happyShift action_35
action_61 (21) = happyShift action_36
action_61 (22) = happyShift action_37
action_61 (23) = happyShift action_38
action_61 (24) = happyShift action_39
action_61 (25) = happyShift action_40
action_61 (26) = happyShift action_41
action_61 (27) = happyShift action_42
action_61 (28) = happyShift action_43
action_61 (29) = happyShift action_44
action_61 (30) = happyShift action_45
action_61 (31) = happyShift action_46
action_61 (32) = happyShift action_47
action_61 (48) = happyShift action_91
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (45) = happyShift action_90
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_30

action_64 (19) = happyShift action_34
action_64 (20) = happyShift action_35
action_64 (21) = happyShift action_36
action_64 (22) = happyShift action_37
action_64 (23) = happyShift action_38
action_64 (24) = happyShift action_39
action_64 (25) = happyShift action_40
action_64 (26) = happyShift action_41
action_64 (27) = happyShift action_42
action_64 (28) = happyShift action_43
action_64 (29) = happyShift action_44
action_64 (30) = happyShift action_45
action_64 (31) = happyShift action_46
action_64 (32) = happyShift action_47
action_64 (42) = happyShift action_89
action_64 _ = happyReduce_32

action_65 (48) = happyShift action_88
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (58) = happyShift action_51
action_66 (7) = happyGoto action_87
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (45) = happyShift action_86
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (11) = happyShift action_5
action_68 (12) = happyShift action_6
action_68 (13) = happyShift action_7
action_68 (14) = happyShift action_8
action_68 (9) = happyGoto action_85
action_68 (10) = happyGoto action_49
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (50) = happyShift action_84
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (19) = happyShift action_34
action_70 (20) = happyShift action_35
action_70 (21) = happyShift action_36
action_70 (22) = happyShift action_37
action_70 (23) = happyShift action_38
action_70 (24) = happyShift action_39
action_70 (25) = happyFail []
action_70 (26) = happyFail []
action_70 (27) = happyFail []
action_70 (28) = happyFail []
action_70 (29) = happyFail []
action_70 (30) = happyFail []
action_70 (31) = happyFail []
action_70 (32) = happyFail []
action_70 _ = happyReduce_21

action_71 (19) = happyShift action_34
action_71 (20) = happyShift action_35
action_71 (21) = happyShift action_36
action_71 (22) = happyShift action_37
action_71 (23) = happyShift action_38
action_71 (24) = happyShift action_39
action_71 (25) = happyFail []
action_71 (26) = happyFail []
action_71 (27) = happyFail []
action_71 (28) = happyFail []
action_71 (29) = happyFail []
action_71 (30) = happyFail []
action_71 (31) = happyFail []
action_71 (32) = happyFail []
action_71 _ = happyReduce_20

action_72 (19) = happyShift action_34
action_72 (20) = happyShift action_35
action_72 (21) = happyShift action_36
action_72 (22) = happyShift action_37
action_72 (23) = happyShift action_38
action_72 (24) = happyShift action_39
action_72 (25) = happyFail []
action_72 (26) = happyFail []
action_72 (27) = happyFail []
action_72 (28) = happyFail []
action_72 (29) = happyFail []
action_72 (30) = happyFail []
action_72 (31) = happyFail []
action_72 (32) = happyFail []
action_72 _ = happyReduce_19

action_73 (19) = happyShift action_34
action_73 (20) = happyShift action_35
action_73 (21) = happyShift action_36
action_73 (22) = happyShift action_37
action_73 (23) = happyShift action_38
action_73 (24) = happyShift action_39
action_73 (25) = happyFail []
action_73 (26) = happyFail []
action_73 (27) = happyFail []
action_73 (28) = happyFail []
action_73 (29) = happyFail []
action_73 (30) = happyFail []
action_73 (31) = happyFail []
action_73 (32) = happyFail []
action_73 _ = happyReduce_18

action_74 (19) = happyShift action_34
action_74 (20) = happyShift action_35
action_74 (21) = happyShift action_36
action_74 (22) = happyShift action_37
action_74 (23) = happyShift action_38
action_74 (24) = happyShift action_39
action_74 (25) = happyFail []
action_74 (26) = happyFail []
action_74 (27) = happyFail []
action_74 (28) = happyFail []
action_74 (29) = happyFail []
action_74 (30) = happyFail []
action_74 (31) = happyFail []
action_74 (32) = happyFail []
action_74 _ = happyReduce_17

action_75 (19) = happyShift action_34
action_75 (20) = happyShift action_35
action_75 (21) = happyShift action_36
action_75 (22) = happyShift action_37
action_75 (23) = happyShift action_38
action_75 (24) = happyShift action_39
action_75 (25) = happyFail []
action_75 (26) = happyFail []
action_75 (27) = happyFail []
action_75 (28) = happyFail []
action_75 (29) = happyFail []
action_75 (30) = happyFail []
action_75 (31) = happyFail []
action_75 (32) = happyFail []
action_75 _ = happyReduce_16

action_76 (19) = happyShift action_34
action_76 (20) = happyShift action_35
action_76 (21) = happyShift action_36
action_76 (22) = happyShift action_37
action_76 (23) = happyShift action_38
action_76 (24) = happyShift action_39
action_76 (25) = happyFail []
action_76 (26) = happyFail []
action_76 (27) = happyFail []
action_76 (28) = happyFail []
action_76 (29) = happyFail []
action_76 (30) = happyFail []
action_76 (31) = happyFail []
action_76 (32) = happyFail []
action_76 _ = happyReduce_15

action_77 (19) = happyShift action_34
action_77 (20) = happyShift action_35
action_77 (21) = happyShift action_36
action_77 (22) = happyShift action_37
action_77 (23) = happyShift action_38
action_77 (24) = happyShift action_39
action_77 (25) = happyFail []
action_77 (26) = happyFail []
action_77 (27) = happyFail []
action_77 (28) = happyFail []
action_77 (29) = happyFail []
action_77 (30) = happyFail []
action_77 (31) = happyFail []
action_77 (32) = happyFail []
action_77 _ = happyReduce_14

action_78 _ = happyReduce_13

action_79 (24) = happyShift action_39
action_79 _ = happyReduce_12

action_80 (24) = happyShift action_39
action_80 _ = happyReduce_11

action_81 (24) = happyShift action_39
action_81 _ = happyReduce_10

action_82 (21) = happyShift action_36
action_82 (22) = happyShift action_37
action_82 (23) = happyShift action_38
action_82 (24) = happyShift action_39
action_82 _ = happyReduce_9

action_83 (21) = happyShift action_36
action_83 (22) = happyShift action_37
action_83 (23) = happyShift action_38
action_83 (24) = happyShift action_39
action_83 _ = happyReduce_8

action_84 (11) = happyShift action_5
action_84 (12) = happyShift action_6
action_84 (13) = happyShift action_7
action_84 (14) = happyShift action_8
action_84 (10) = happyGoto action_96
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_38

action_86 (11) = happyShift action_5
action_86 (12) = happyShift action_6
action_86 (13) = happyShift action_7
action_86 (14) = happyShift action_8
action_86 (51) = happyShift action_9
action_86 (52) = happyShift action_10
action_86 (55) = happyShift action_11
action_86 (58) = happyShift action_12
action_86 (4) = happyGoto action_20
action_86 (8) = happyGoto action_95
action_86 (10) = happyGoto action_4
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_33

action_88 _ = happyReduce_23

action_89 (33) = happyShift action_23
action_89 (47) = happyShift action_24
action_89 (58) = happyShift action_25
action_89 (59) = happyShift action_26
action_89 (60) = happyShift action_27
action_89 (61) = happyShift action_28
action_89 (62) = happyShift action_29
action_89 (63) = happyShift action_30
action_89 (5) = happyGoto action_64
action_89 (6) = happyGoto action_94
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (11) = happyShift action_5
action_90 (12) = happyShift action_6
action_90 (13) = happyShift action_7
action_90 (14) = happyShift action_8
action_90 (51) = happyShift action_9
action_90 (52) = happyShift action_10
action_90 (55) = happyShift action_11
action_90 (58) = happyShift action_12
action_90 (4) = happyGoto action_20
action_90 (8) = happyGoto action_93
action_90 (10) = happyGoto action_4
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (45) = happyShift action_92
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (11) = happyShift action_5
action_92 (12) = happyShift action_6
action_92 (13) = happyShift action_7
action_92 (14) = happyShift action_8
action_92 (51) = happyShift action_9
action_92 (52) = happyShift action_10
action_92 (55) = happyShift action_11
action_92 (58) = happyShift action_12
action_92 (4) = happyGoto action_20
action_92 (8) = happyGoto action_99
action_92 (10) = happyGoto action_4
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (46) = happyShift action_98
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_31

action_95 (46) = happyShift action_97
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_1

action_97 _ = happyReduce_2

action_98 (54) = happyShift action_101
action_98 _ = happyReduce_4

action_99 (46) = happyShift action_100
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_5

action_101 (45) = happyShift action_102
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (11) = happyShift action_5
action_102 (12) = happyShift action_6
action_102 (13) = happyShift action_7
action_102 (14) = happyShift action_8
action_102 (51) = happyShift action_9
action_102 (52) = happyShift action_10
action_102 (55) = happyShift action_11
action_102 (58) = happyShift action_12
action_102 (4) = happyGoto action_20
action_102 (8) = happyGoto action_103
action_102 (10) = happyGoto action_4
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (46) = happyShift action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_3

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncTypeDeclaration happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 8 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
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
	(HappyAbsSyn8  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
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
	(HappyAbsSyn8  happy_var_7) `HappyStk`
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
	(HappyAbsSyn8  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LoopStatement happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (NewAssignment happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn4
		 (ReAssignment happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticAdd happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMinus happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticMultiply happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticDivide happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticModulo happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (ArithmeticExponent happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanAnd happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanOr happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanLT happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGT happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanEQ happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanLTEQ happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanGTEQ happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (BooleanNEQ happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 4 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  6 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (Value happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  7 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  7 happyReduction_34
happyReduction_34 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  8 happyReduction_35
happyReduction_35 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  8 happyReduction_36
happyReduction_36 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  8 happyReduction_37
happyReduction_37 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (Exp happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  9 happyReduction_38
happyReduction_38 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  9 happyReduction_39
happyReduction_39 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (Type happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  10 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn10
		 (TypeString
	)

happyReduce_41 = happySpecReduce_1  10 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn10
		 (TypeChar
	)

happyReduce_42 = happySpecReduce_1  10 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn10
		 (TypeInt
	)

happyReduce_43 = happySpecReduce_1  10 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn10
		 (TypeBool
	)

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeString p -> cont 11;
	TokenTypeChar p -> cont 12;
	TokenTypeInt p -> cont 13;
	TokenTypeBoolean p -> cont 14;
	TokenListStart p -> cont 15;
	TokenListEnd p -> cont 16;
	TokenListSeries p -> cont 17;
	TokenListGetElement p -> cont 18;
	TokenOpAdd p -> cont 19;
	TokenOpMinus p -> cont 20;
	TokenOpMultiply p -> cont 21;
	TokenOpDivide p -> cont 22;
	TokenOpModulo p -> cont 23;
	TokenOpExponent p -> cont 24;
	TokenOpAnd p -> cont 25;
	TokenOpOr p -> cont 26;
	TokenOpLT p -> cont 27;
	TokenOpGT p -> cont 28;
	TokenOpEQ p -> cont 29;
	TokenOpLTEQ p -> cont 30;
	TokenOpGTEQ p -> cont 31;
	TokenOpNEQ p -> cont 32;
	TokenOpNot p -> cont 33;
	TokenAssignOpIncrement p -> cont 34;
	TokenAssignOpDecrement p -> cont 35;
	TokenAssignOpAddition p -> cont 36;
	TokenAssignOpSubtraction p -> cont 37;
	TokenAssignOpMultiplication p -> cont 38;
	TokenAssignOpDivision p -> cont 39;
	TokenAssignOpModulus p -> cont 40;
	TokenAssignOpExponation p -> cont 41;
	TokenComma p -> cont 42;
	TokenSemicolon p -> cont 43;
	TokenAssignment p -> cont 44;
	TokenCurlyBracketOpen p -> cont 45;
	TokenCurlyBracketClose p -> cont 46;
	TokenBracketOpen p -> cont 47;
	TokenBracketClose p -> cont 48;
	TokenTypeDeclaration p -> cont 49;
	TokenFuncTransition p -> cont 50;
	TokenKeywordLoop p -> cont 51;
	TokenKeywordIf p -> cont 52;
	TokenKeywordThen p -> cont 53;
	TokenKeywordElse p -> cont 54;
	TokenKeywordFunc p -> cont 55;
	TokenKeywordReturn p -> cont 56;
	TokenKeywordPrint p -> cont 57;
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
         | FuncDeclaration String VarList ExpList
         | IfElseStatement Value ExpList ExpList
         | IfStatement Value ExpList
         | LoopStatement ExpList Value ExpList
         | NewAssignment Type String Value
         | ReAssignment String Value
         deriving Show

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
           | VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           deriving Show

data ValueList = ValueList Value ValueList
               | Value Value
               deriving Show

data VarList = VarList String VarList
             | Var String
             deriving Show

data TypeList = TypeList Type TypeList
              | Type Type
              deriving Show

data ExpList = ExpList Exp ExpList
             | Exp Exp
             deriving Show

data Type = TypeString
          | TypeChar
          | TypeInt
          | TypeBool
          deriving Show
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

