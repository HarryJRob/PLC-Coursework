{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,107) ([0,0,32768,72,0,0,0,8,0,0,128,0,0,0,0,0,0,32768,0,0,0,0,128,0,0,512,0,0,0,0,2,0,0,8,0,15,0,0,0,0,0,256,0,0,32,0,0,0,16,0,0,0,32768,0,0,0,4,0,0,512,0,0,0,32768,72,0,0,4096,9,0,0,0,0,0,0,8,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,1,0,0,2080,0,0,0,0,0,0,0,32768,0,0,32768,0,0,0,0,580,0,0,0,0,0,0,4096,9,0,0,8,0,60,0,0,0,0,0,0,0,0,0,0,0,0,8192,18,0,0,128,0,0,32768,18560,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,34816,4,0,0,4,0,0,0,1,0,0,0,0,0,0,32768,72,0,0,0,0,0,0,16,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Value","Assignment","AssignmentList","VarList","ExpList","TypeList","Type","String","Char","Int","Bool","'['","']'","\"...\"","'@'","'+'","'-'","'*'","'/'","'%'","'^'","'&'","'|'","'<'","'>'","\"==\"","\"++\"","\"--\"","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","\"^=\"","','","';'","'='","'{'","'}'","'('","')'","\"::\"","\"->\"","loop","\"if\"","\"then\"","\"else\"","func","\"return\"","\"print\"","var","str","char","int","true","false","%eof"]
        bit_start = st * 61
        bit_end = (st + 1) * 61
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..60]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (48) = happyShift action_4
action_0 (52) = happyShift action_5
action_0 (55) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (55) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (46) = happyShift action_8
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (61) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (44) = happyShift action_7
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (55) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (44) = happyShift action_13
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (55) = happyShift action_12
action_7 (6) = happyGoto action_10
action_7 (7) = happyGoto action_11
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (44) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (12) = happyShift action_21
action_9 (13) = happyShift action_22
action_9 (14) = happyShift action_23
action_9 (15) = happyShift action_24
action_9 (10) = happyGoto action_19
action_9 (11) = happyGoto action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (55) = happyShift action_12
action_10 (6) = happyGoto action_10
action_10 (7) = happyGoto action_18
action_10 _ = happyReduce_13

action_11 (39) = happyShift action_17
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (41) = happyShift action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (55) = happyShift action_15
action_13 (8) = happyGoto action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (45) = happyShift action_30
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (39) = happyShift action_29
action_15 _ = happyReduce_15

action_16 (48) = happyShift action_4
action_16 (52) = happyShift action_5
action_16 (55) = happyShift action_2
action_16 (4) = happyGoto action_28
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (48) = happyShift action_4
action_17 (52) = happyShift action_5
action_17 (55) = happyShift action_2
action_17 (4) = happyGoto action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_12

action_19 (45) = happyShift action_26
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (39) = happyShift action_25
action_20 _ = happyReduce_20

action_21 _ = happyReduce_21

action_22 _ = happyReduce_22

action_23 _ = happyReduce_23

action_24 _ = happyReduce_24

action_25 (12) = happyShift action_21
action_25 (13) = happyShift action_22
action_25 (14) = happyShift action_23
action_25 (15) = happyShift action_24
action_25 (10) = happyGoto action_36
action_25 (11) = happyGoto action_20
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (47) = happyShift action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (39) = happyShift action_33
action_27 (45) = happyShift action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_11

action_29 (55) = happyShift action_15
action_29 (8) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (42) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (48) = happyShift action_4
action_31 (52) = happyShift action_5
action_31 (55) = happyShift action_2
action_31 (4) = happyGoto action_40
action_31 (9) = happyGoto action_41
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_14

action_33 (48) = happyShift action_4
action_33 (52) = happyShift action_5
action_33 (55) = happyShift action_2
action_33 (4) = happyGoto action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (42) = happyShift action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_21
action_35 (13) = happyShift action_22
action_35 (14) = happyShift action_23
action_35 (15) = happyShift action_24
action_35 (11) = happyGoto action_37
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_19

action_37 _ = happyReduce_1

action_38 (48) = happyShift action_4
action_38 (52) = happyShift action_5
action_38 (55) = happyShift action_2
action_38 (4) = happyGoto action_40
action_38 (9) = happyGoto action_46
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (45) = happyShift action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (40) = happyShift action_44
action_40 (48) = happyShift action_4
action_40 (52) = happyShift action_5
action_40 (55) = happyShift action_2
action_40 (4) = happyGoto action_40
action_40 (9) = happyGoto action_43
action_40 _ = happyReduce_18

action_41 (43) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_2

action_43 _ = happyReduce_16

action_44 (48) = happyShift action_4
action_44 (52) = happyShift action_5
action_44 (55) = happyShift action_2
action_44 (4) = happyGoto action_40
action_44 (9) = happyGoto action_49
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (42) = happyShift action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (43) = happyShift action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_4

action_48 (48) = happyShift action_4
action_48 (52) = happyShift action_5
action_48 (55) = happyShift action_2
action_48 (4) = happyGoto action_40
action_48 (9) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_17

action_50 (43) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_3

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncTypeDeclaration happy_var_1 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 8 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVariable p happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclaration happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 11 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ForLoop happy_var_3 happy_var_5 happy_var_7 happy_var_10
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 9 4 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (UntilLoop happy_var_3 happy_var_5 happy_var_8
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

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn6
		 (Assignment happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (AssignmentList happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  7 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (Assign happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn8
		 (VarList happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVariable p happy_var_1))
	 =  HappyAbsSyn8
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  9 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn9
		 (ExpList happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn9
		 (ExpList happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn9
		 (Exp happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  10 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (TypeList happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Type happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn11
		 (TypeString
	)

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn11
		 (TypeChar
	)

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn11
		 (TypeBool
	)

happyNewToken action sts stk [] =
	action 61 61 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeString p -> cont 12;
	TokenTypeChar p -> cont 13;
	TokenTypeInt p -> cont 14;
	TokenTypeBoolean p -> cont 15;
	TokenListStart p -> cont 16;
	TokenListEnd p -> cont 17;
	TokenListSeries p -> cont 18;
	TokenListGetElement p -> cont 19;
	TokenSymAdd p -> cont 20;
	TokenSymMinus p -> cont 21;
	TokenSymMultiply p -> cont 22;
	TokenSymDivide p -> cont 23;
	TokenSymModulo p -> cont 24;
	TokenSymExponent p -> cont 25;
	TokenSymAnd p -> cont 26;
	TokenSymOr p -> cont 27;
	TokenSymLessThan p -> cont 28;
	TokenSymGreaterThan p -> cont 29;
	TokenOpEquals p -> cont 30;
	TokenOpIncrement p -> cont 31;
	TokenOpDecrement p -> cont 32;
	TokenOpAddition p -> cont 33;
	TokenOpSubtraction p -> cont 34;
	TokenOpMultiplication p -> cont 35;
	TokenOpDivision p -> cont 36;
	TokenOpModulus p -> cont 37;
	TokenOpExponation p -> cont 38;
	TokenComma p -> cont 39;
	TokenSemicolon p -> cont 40;
	TokenAssignment p -> cont 41;
	TokenCurlyBracketOpen p -> cont 42;
	TokenCurlyBracketClose p -> cont 43;
	TokenBracketOpen p -> cont 44;
	TokenBracketClose p -> cont 45;
	TokenTypeDeclaration p -> cont 46;
	TokenFuncTransition p -> cont 47;
	TokenKeywordLoop p -> cont 48;
	TokenKeywordIf p -> cont 49;
	TokenKeywordThen p -> cont 50;
	TokenKeywordElse p -> cont 51;
	TokenKeywordFunc p -> cont 52;
	TokenKeywordReturn p -> cont 53;
	TokenKeywordPrint p -> cont 54;
	TokenVariable p happy_dollar_dollar -> cont 55;
	TokenString p happy_dollar_dollar -> cont 56;
	TokenChar p  happy_dollar_dollar -> cont 57;
	TokenInteger p happy_dollar_dollar -> cont 58;
	TokenBoolTrue p -> cont 59;
	TokenBoolFalse p -> cont 60;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 61 tk tks = happyError' (tks, explist)
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
         | ForLoop AssignmentList Exp Exp ExpList
         | UntilLoop AssignmentList Exp ExpList
         deriving Show

data Assignment = Assignment String Exp
                deriving Show

data Value = VariableValue String
           | StringValue String
           | IntValue Int
           | CharValue Char
           | TrueValue
           | FalseValue
           deriving Show

data AssignmentList = AssignmentList Assignment AssignmentList
                    | Assign Assignment
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

