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
happyExpList = Happy_Data_Array.listArray (0,149) ([15360,0,4704,0,0,32768,0,0,512,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,32768,0,0,0,8192,0,0,132,0,1024,0,504,0,2048,0,0,16384,0,0,8,61440,57347,1,37632,0,0,16,0,4096,0,2016,960,512,294,0,2048,0,0,16,16,0,256,0,126,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,1920,0,0,0,4,0,0,64,32768,31,0,256,0,0,32,0,0,16384,0,0,2048,0,0,32,49152,15,0,0,0,0,32768,0,16384,0,8064,0,0,0,30720,0,9408,0,64,0,0,0,0,0,4096,4096,0,0,4096,0,0,4100,0,0,0,32,0,0,0,4,0,256,0,960,0,0,0,0,8,0,0,0,32768,7,0,0,0,0,0,480,0,147,0,0,0,0,0,0,0,128,0,63,30,12288,9,0,512,0,1920,0,588,0,0,1,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,128,0,0,4,0,0,0,0,0,128,0,480,0,147,0,16384,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","ValueList","VarList","ExpList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","operator","'!'","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","if","then","else","func","\"return\"","\"print\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (13) = happyShift action_7
action_0 (14) = happyShift action_8
action_0 (38) = happyShift action_9
action_0 (39) = happyShift action_10
action_0 (42) = happyShift action_11
action_0 (45) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 (10) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (45) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (36) = happyShift action_14
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (51) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (45) = happyShift action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_26

action_6 _ = happyReduce_27

action_7 _ = happyReduce_28

action_8 _ = happyReduce_29

action_9 (34) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (34) = happyShift action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (45) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (31) = happyShift action_13
action_12 (36) = happyShift action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (20) = happyShift action_23
action_13 (45) = happyShift action_24
action_13 (46) = happyShift action_25
action_13 (47) = happyShift action_26
action_13 (48) = happyShift action_27
action_13 (49) = happyShift action_28
action_13 (50) = happyShift action_29
action_13 (5) = happyGoto action_32
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (34) = happyShift action_31
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (34) = happyShift action_30
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (20) = happyShift action_23
action_16 (45) = happyShift action_24
action_16 (46) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (48) = happyShift action_27
action_16 (49) = happyShift action_28
action_16 (50) = happyShift action_29
action_16 (5) = happyGoto action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_5
action_17 (12) = happyShift action_6
action_17 (13) = happyShift action_7
action_17 (14) = happyShift action_8
action_17 (38) = happyShift action_9
action_17 (39) = happyShift action_10
action_17 (42) = happyShift action_11
action_17 (45) = happyShift action_12
action_17 (4) = happyGoto action_20
action_17 (8) = happyGoto action_21
action_17 (10) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (31) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (20) = happyShift action_23
action_19 (45) = happyShift action_24
action_19 (46) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (48) = happyShift action_27
action_19 (49) = happyShift action_28
action_19 (50) = happyShift action_29
action_19 (5) = happyGoto action_44
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_5
action_20 (12) = happyShift action_6
action_20 (13) = happyShift action_7
action_20 (14) = happyShift action_8
action_20 (30) = happyShift action_43
action_20 (38) = happyShift action_9
action_20 (39) = happyShift action_10
action_20 (42) = happyShift action_11
action_20 (45) = happyShift action_12
action_20 (4) = happyGoto action_20
action_20 (8) = happyGoto action_42
action_20 (10) = happyGoto action_4
action_20 _ = happyReduce_23

action_21 (29) = happyShift action_41
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (19) = happyShift action_33
action_22 (35) = happyShift action_40
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (20) = happyShift action_23
action_23 (45) = happyShift action_24
action_23 (46) = happyShift action_25
action_23 (47) = happyShift action_26
action_23 (48) = happyShift action_27
action_23 (49) = happyShift action_28
action_23 (50) = happyShift action_29
action_23 (5) = happyGoto action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (34) = happyShift action_38
action_24 _ = happyReduce_11

action_25 _ = happyReduce_12

action_26 _ = happyReduce_14

action_27 _ = happyReduce_13

action_28 _ = happyReduce_15

action_29 _ = happyReduce_16

action_30 (45) = happyShift action_37
action_30 (7) = happyGoto action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_5
action_31 (12) = happyShift action_6
action_31 (13) = happyShift action_7
action_31 (14) = happyShift action_8
action_31 (9) = happyGoto action_34
action_31 (10) = happyGoto action_35
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (19) = happyShift action_33
action_32 _ = happyReduce_7

action_33 (20) = happyShift action_23
action_33 (45) = happyShift action_24
action_33 (46) = happyShift action_25
action_33 (47) = happyShift action_26
action_33 (48) = happyShift action_27
action_33 (49) = happyShift action_28
action_33 (50) = happyShift action_29
action_33 (5) = happyGoto action_54
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (35) = happyShift action_53
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (29) = happyShift action_52
action_35 _ = happyReduce_25

action_36 (35) = happyShift action_51
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (29) = happyShift action_50
action_37 _ = happyReduce_20

action_38 (20) = happyShift action_23
action_38 (45) = happyShift action_24
action_38 (46) = happyShift action_25
action_38 (47) = happyShift action_26
action_38 (48) = happyShift action_27
action_38 (49) = happyShift action_28
action_38 (50) = happyShift action_29
action_38 (5) = happyGoto action_48
action_38 (6) = happyGoto action_49
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (19) = happyShift action_33
action_39 _ = happyReduce_9

action_40 (40) = happyShift action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (20) = happyShift action_23
action_41 (45) = happyShift action_24
action_41 (46) = happyShift action_25
action_41 (47) = happyShift action_26
action_41 (48) = happyShift action_27
action_41 (49) = happyShift action_28
action_41 (50) = happyShift action_29
action_41 (5) = happyGoto action_46
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_21

action_43 (11) = happyShift action_5
action_43 (12) = happyShift action_6
action_43 (13) = happyShift action_7
action_43 (14) = happyShift action_8
action_43 (38) = happyShift action_9
action_43 (39) = happyShift action_10
action_43 (42) = happyShift action_11
action_43 (45) = happyShift action_12
action_43 (4) = happyGoto action_20
action_43 (8) = happyGoto action_45
action_43 (10) = happyGoto action_4
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_33
action_44 _ = happyReduce_6

action_45 _ = happyReduce_22

action_46 (19) = happyShift action_33
action_46 (35) = happyShift action_62
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (32) = happyShift action_61
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (19) = happyShift action_33
action_48 (29) = happyShift action_60
action_48 _ = happyReduce_18

action_49 (35) = happyShift action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (45) = happyShift action_37
action_50 (7) = happyGoto action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (32) = happyShift action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_5
action_52 (12) = happyShift action_6
action_52 (13) = happyShift action_7
action_52 (14) = happyShift action_8
action_52 (9) = happyGoto action_56
action_52 (10) = happyGoto action_35
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (37) = happyShift action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (19) = happyShift action_33
action_54 _ = happyReduce_8

action_55 (11) = happyShift action_5
action_55 (12) = happyShift action_6
action_55 (13) = happyShift action_7
action_55 (14) = happyShift action_8
action_55 (10) = happyGoto action_67
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_24

action_57 (11) = happyShift action_5
action_57 (12) = happyShift action_6
action_57 (13) = happyShift action_7
action_57 (14) = happyShift action_8
action_57 (38) = happyShift action_9
action_57 (39) = happyShift action_10
action_57 (42) = happyShift action_11
action_57 (45) = happyShift action_12
action_57 (4) = happyGoto action_20
action_57 (8) = happyGoto action_66
action_57 (10) = happyGoto action_4
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_19

action_59 _ = happyReduce_10

action_60 (20) = happyShift action_23
action_60 (45) = happyShift action_24
action_60 (46) = happyShift action_25
action_60 (47) = happyShift action_26
action_60 (48) = happyShift action_27
action_60 (49) = happyShift action_28
action_60 (50) = happyShift action_29
action_60 (5) = happyGoto action_48
action_60 (6) = happyGoto action_65
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (11) = happyShift action_5
action_61 (12) = happyShift action_6
action_61 (13) = happyShift action_7
action_61 (14) = happyShift action_8
action_61 (38) = happyShift action_9
action_61 (39) = happyShift action_10
action_61 (42) = happyShift action_11
action_61 (45) = happyShift action_12
action_61 (4) = happyGoto action_20
action_61 (8) = happyGoto action_64
action_61 (10) = happyGoto action_4
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (32) = happyShift action_63
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_5
action_63 (12) = happyShift action_6
action_63 (13) = happyShift action_7
action_63 (14) = happyShift action_8
action_63 (38) = happyShift action_9
action_63 (39) = happyShift action_10
action_63 (42) = happyShift action_11
action_63 (45) = happyShift action_12
action_63 (4) = happyGoto action_20
action_63 (8) = happyGoto action_70
action_63 (10) = happyGoto action_4
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (33) = happyShift action_69
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_17

action_66 (33) = happyShift action_68
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_1

action_68 _ = happyReduce_2

action_69 (41) = happyShift action_72
action_69 _ = happyReduce_4

action_70 (33) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_5

action_72 (32) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (11) = happyShift action_5
action_73 (12) = happyShift action_6
action_73 (13) = happyShift action_7
action_73 (14) = happyShift action_8
action_73 (38) = happyShift action_9
action_73 (39) = happyShift action_10
action_73 (42) = happyShift action_11
action_73 (45) = happyShift action_12
action_73 (4) = happyGoto action_20
action_73 (8) = happyGoto action_74
action_73 (10) = happyGoto action_4
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (33) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_3

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
	(HappyTerminal (TokenOperator happy_var_2 p))
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Operator happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 5 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (Value happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn7
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  8 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  8 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (Exp happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  9 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (Type happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn10
		 (TypeString
	)

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn10
		 (TypeChar
	)

happyReduce_28 = happySpecReduce_1  10 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn10
		 (TypeInt
	)

happyReduce_29 = happySpecReduce_1  10 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn10
		 (TypeBool
	)

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

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
	TokenOperator happy_dollar_dollar p -> cont 19;
	TokenSymNot p -> cont 20;
	TokenOpIncrement p -> cont 21;
	TokenOpDecrement p -> cont 22;
	TokenOpAddition p -> cont 23;
	TokenOpSubtraction p -> cont 24;
	TokenOpMultiplication p -> cont 25;
	TokenOpDivision p -> cont 26;
	TokenOpModulus p -> cont 27;
	TokenOpExponation p -> cont 28;
	TokenComma p -> cont 29;
	TokenSemicolon p -> cont 30;
	TokenAssignment p -> cont 31;
	TokenCurlyBracketOpen p -> cont 32;
	TokenCurlyBracketClose p -> cont 33;
	TokenBracketOpen p -> cont 34;
	TokenBracketClose p -> cont 35;
	TokenTypeDeclaration p -> cont 36;
	TokenFuncTransition p -> cont 37;
	TokenKeywordLoop p -> cont 38;
	TokenKeywordIf p -> cont 39;
	TokenKeywordThen p -> cont 40;
	TokenKeywordElse p -> cont 41;
	TokenKeywordFunc p -> cont 42;
	TokenKeywordReturn p -> cont 43;
	TokenKeywordPrint p -> cont 44;
	TokenVariable p happy_dollar_dollar -> cont 45;
	TokenString p happy_dollar_dollar -> cont 46;
	TokenChar p  happy_dollar_dollar -> cont 47;
	TokenInteger p happy_dollar_dollar -> cont 48;
	TokenBoolTrue p -> cont 49;
	TokenBoolFalse p -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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

data Value = Operator Value String Value
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

