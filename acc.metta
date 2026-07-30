(= (accumulate $combiner $baseCase $f $a $b)
   (if (> $a $b)
       $baseCase
       ($combiner
           ($f $a)
           (accumulate $combiner
                       $baseCase
                       $f
                       (+ $a 1)
                       $b
           )
       )
   )
)
!(accumulate + 0 id 1 5)
