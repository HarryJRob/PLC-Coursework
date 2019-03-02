{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,111) ([61440,0,0,288,0,0,0,128,0,0,8192,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,8,0,0,32768,0,0,0,0,2,32768,7,0,0,0,0,0,64512,0,0,0,512,0,0,16384,0,0,0,128,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,16384,0,0,30,0,0,0,0,0,16,0,0,0,63488,1,0,0,1024,0,0,4096,0,61440,0,0,288,0,0,0,0,0,0,64,0,0,0,2048,0,3840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,120,0,36865,0,0,0,4,0,0,0,0,0,0,0,0,32768,7,0,2304,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","BooleanOperators","Condition","ValueList","VarList","ExpList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","'!'","\"==\"","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","\"if\"","\"then\"","\"else\"","func","\"return\"","\"print\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 63
        bit_end = (st + 1) * 63
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..62]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (54) = happyShift action_9
action_0 (57) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 (12) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (57) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (48) = happyShift action_12
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (63) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (57) = happyShift action_11
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_27

action_6 _ = happyReduce_28

action_7 _ = happyReduce_29

action_8 _ = happyReduce_30

action_9 (57) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (46) = happyShift action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (43) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (46) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_7
action_13 (16) = happyShift action_8
action_13 (11) = happyGoto action_25
action_13 (12) = happyGoto action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (57) = happyShift action_19
action_14 (58) = happyShift action_20
action_14 (59) = happyShift action_21
action_14 (60) = happyShift action_22
action_14 (61) = happyShift action_23
action_14 (62) = happyShift action_24
action_14 (5) = happyGoto action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (57) = happyShift action_17
action_15 (9) = happyGoto action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (47) = happyShift action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (41) = happyShift action_30
action_17 _ = happyReduce_21

action_18 _ = happyReduce_3

action_19 (46) = happyShift action_29
action_19 _ = happyReduce_5

action_20 _ = happyReduce_6

action_21 _ = happyReduce_8

action_22 _ = happyReduce_7

action_23 _ = happyReduce_9

action_24 _ = happyReduce_10

action_25 (47) = happyShift action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (41) = happyShift action_27
action_26 _ = happyReduce_26

action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (11) = happyGoto action_37
action_27 (12) = happyGoto action_26
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (49) = happyShift action_36
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (57) = happyShift action_19
action_29 (58) = happyShift action_20
action_29 (59) = happyShift action_21
action_29 (60) = happyShift action_22
action_29 (61) = happyShift action_23
action_29 (62) = happyShift action_24
action_29 (5) = happyGoto action_34
action_29 (8) = happyGoto action_35
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (57) = happyShift action_17
action_30 (9) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (44) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (15) = happyShift action_7
action_32 (16) = happyShift action_8
action_32 (54) = happyShift action_9
action_32 (57) = happyShift action_2
action_32 (4) = happyGoto action_41
action_32 (10) = happyGoto action_42
action_32 (12) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_20

action_34 (41) = happyShift action_40
action_34 _ = happyReduce_19

action_35 (47) = happyShift action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (12) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_25

action_38 _ = happyReduce_1

action_39 _ = happyReduce_4

action_40 (57) = happyShift action_19
action_40 (58) = happyShift action_20
action_40 (59) = happyShift action_21
action_40 (60) = happyShift action_22
action_40 (61) = happyShift action_23
action_40 (62) = happyShift action_24
action_40 (5) = happyGoto action_34
action_40 (8) = happyGoto action_46
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (15) = happyShift action_7
action_41 (16) = happyShift action_8
action_41 (42) = happyShift action_45
action_41 (54) = happyShift action_9
action_41 (57) = happyShift action_2
action_41 (4) = happyGoto action_41
action_41 (10) = happyGoto action_44
action_41 (12) = happyGoto action_4
action_41 _ = happyReduce_24

action_42 (45) = happyShift action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_2

action_44 _ = happyReduce_22

action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (15) = happyShift action_7
action_45 (16) = happyShift action_8
action_45 (54) = happyShift action_9
action_45 (57) = happyShift action_2
action_45 (4) = happyGoto action_41
action_45 (10) = happyGoto action_47
action_45 (12) = happyGoto action_4
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_18

action_47 _ = happyReduce_23

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncTypeDeclaration happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 8 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclaration happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assignment happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FunctionCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn5
		 (VariableValue happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyTerminal (TokenString p happy_var_1))
	 =  HappyAbsSyn5
		 (StringValue happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyTerminal (TokenInteger p happy_var_1))
	 =  HappyAbsSyn5
		 (IntValue happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyTerminal (TokenChar p  happy_var_1))
	 =  HappyAbsSyn5
		 (CharValue happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn5
		 (TrueValue
	)

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn5
		 (FalseValue
	)

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn6
		 (OperatorAnd
	)

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn6
		 (OperatorOr
	)

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn6
		 (OperatorLessThan
	)

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn6
		 (OperatorMoreThan
	)

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn6
		 (OperatorNot
	)

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn6
		 (OperatorEquals
	)

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn7
		 (Condition happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (ValueList happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn8
		 (Value happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn9
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn9
		 (Var happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn10
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn10
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn10
		 (Exp happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (Type happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  12 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn12
		 (TypeString
	)

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn12
		 (TypeChar
	)

happyReduce_29 = happySpecReduce_1  12 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn12
		 (TypeInt
	)

happyReduce_30 = happySpecReduce_1  12 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn12
		 (TypeBool
	)

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeString p -> cont 13;
	TokenTypeChar p -> cont 14;
	TokenTypeInt p -> cont 15;
	TokenTypeBoolean p -> cont 16;
	TokenListStart p -> cont 17;
	TokenListEnd p -> cont 18;
	TokenListSeries p -> cont 19;
	TokenListGetElement p -> cont 20;
	TokenSymAdd p -> cont 21;
	TokenSymMinus p -> cont 22;
	TokenSymMultiply p -> cont 23;
	TokenSymDivide p -> cont 24;
	TokenSymModulo p -> cont 25;
	TokenSymExponent p -> cont 26;
	TokenSymAnd p -> cont 27;
	TokenSymOr p -> cont 28;
	TokenSymLessThan p -> cont 29;
	TokenSymGreaterThan p -> cont 30;
	TokenSymNot p -> cont 31;
	TokenOpEquals p -> cont 32;
	TokenOpIncrement p -> cont 33;
	TokenOpDecrement p -> cont 34;
	TokenOpAddition p -> cont 35;
	TokenOpSubtraction p -> cont 36;
	TokenOpMultiplication p -> cont 37;
	TokenOpDivision p -> cont 38;
	TokenOpModulus p -> cont 39;
	TokenOpExponation p -> cont 40;
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
         | FuncDeclaration String VarList ExpList
         -- | ForLoop AssignmentList Exp Exp ExpList
         -- | UntilLoop AssignmentList Exp ExpList
         | Assignment Type String Value
         deriving Show

data Value = FunctionCall String ValueList
           | VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           deriving Show

data BooleanOperator = OperatorAnd
                     | OperatorOr
                     | OperatorLessThan
                     | OperatorMoreThan
                     | OperatorNot
                     | OperatorEquals
                     deriving Show

data Condition = Condition Value BooleanOperator Value

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

