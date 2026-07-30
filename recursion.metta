(= (i $x) $x)


(= (isEven $x)
   (== (% $x 2) 0))


(= (sumIf $f $condition $a $b)
   (if (> $a $b)
       0
       (if ($condition $a)
           (+ ($f $a)
              (sumIf $f $condition (+ $a 1) $b))
           (sumIf $f $condition (+ $a 1) $b)
       )
   )
)

!(sumIf i isEven 1 5)
