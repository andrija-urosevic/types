module Inductive where

data Nat : Set where
    zero : Nat
    succ : (n : Nat) → Nat

{-# BUILTIN NATURAL Nat #-}

_+_ : Nat → Nat → Nat
zero   + m = m
succ n + m = succ (n + m)

{-# BUILTIN NATPLUS _+_ #-}

max : Nat → Nat → Nat
max zero     m          = m
max n        zero       = n
max (succ n) (succ m)   = succ (max n m)

data Tree : Set where
    empty : Tree
    node  : Tree → Tree → Tree

height : Tree → Nat 
height empty = 0
height (node l r) = succ (max (height l) (height r))

data Bool : Set where
    true  : Bool
    false : Bool

{-# BUILTIN BOOL Bool #-}
{-# BUILTIN TRUE true #-}
{-# BUILTIN FALSE false #-}

_==_ : Nat → Nat → Bool 
zero   == zero      = true
succ n == succ m    = n == m
_      == _         = false

{-# BUILTIN NATEQUALS _==_ #-}

data List {a} (A : Set a) : Set a where
  []  : List A
  _∷_ : (x : A) (xs : List A) → List A

{-# BUILTIN LIST List #-}

infixr 5 _∷_

even : (n : Nat) → Bool
odd  : (n : Nat) → Bool
even zero     = true
even (succ n) = odd n
odd  zero     = false
odd  (succ n) = even n

data Binary : Set where
    zr      : Binary            -- 0
    tw      : Binary → Binary   -- b → 2b
    succ-tw : Binary → Binary   -- b → 2b+1

succ-bin : Binary → Binary
succ-bin zr          = succ-tw zr
succ-bin (tw b)      = succ-tw b        -- 2b → 2b + 1
succ-bin (succ-tw b) = tw (succ-bin b)  -- 2b + 1 → 2b + 2 = 2(b + 1)

sum : Binary → Binary → Binary
sum zr          m           = m                       -- 0 + m = m
sum n           zr          = n                       -- n + 0 = n
sum (tw n)      (tw m)      = tw (sum n m)            -- (2n + 2m) = 2 (n + m)
sum (tw n)      (succ-tw m) = succ-tw (sum n m)       -- (2n + 2m+1) = 2 (n + m) + 1
sum (succ-tw n) (tw m)      = succ-tw (sum n m)       -- (2n+1 + 2m) = 2 (n + m) + 1
sum (succ-tw n) (succ-tw m) = tw (succ-bin (sum n m)) -- (2n+1 + 2m+1) = 2 (n + m + 1)
