> (define (two x)        ;function to make my build-list (buip) function start at 2
    (if (> x 1) (identity #t) (identity #f)))   ;return #t if 2 or above
>(define (buip x)                 ;create list 2-value
    (define kop (filter two (build-list (+ x 1) values)))
    (identity kop))    ;return list
> (define (func n x nums i)             ;makes a list of factors
    (if (>= i (- (length nums) 2))(identity n)
        (if (and (= (modulo x (list-ref nums (- i 1))) 0) (< (list-ref nums (- i 1)) x))   ;recursively makes list
           (func (append n (list (list-ref nums (- i 1)))) x nums (+ i 1))
           (func n x nums (+ i 1))) ) )
> (define (reduce l p) ; "reduce" takes in list and counter
    (if (> p (length l)) (identity 0) ; if p >= length, stop
        (+ (list-ref l (- p 1)) (reduce l ( + p 1))))) ; adds current and calls method again 1 up
> (define (perfect x) ; "perfect" takes the num x
    (define nums (buip x))    ;buip creates a list 2 to x inclusive
    (define goods (func (list 0) x nums 1))   ;calls func, which recursively makes a list
    (if (= (+ (reduce goods 1) 1) x) (identity #t) (identity #f))) ; returns true or false if the num is perfect or not
> (define (abundant x) ; "abundant" takes the num x
    (define nums (buip x))     ;buip creates a list 2 to x inclusive
    (define goods (func (list 0) x nums 1)) ;calls func, which recursively makes a list
    (if (> (reduce goods 1) x) (identity #t) (identity #f))) ; returns true or false if the num is abundant or not
> (define (deficient x) ; "deficient" takes the num x
    (define nums (buip x))      ;buip creates a list 2 to x inclusive
    (define goods (func (list 0) x nums 1))   ;calls func, which recursively makes a list
    (if (< (reduce goods 1) x) (identity #t) (identity #f))) ; returns true or false if the num is deficient or not
> (define (fff lis c x)           ;finds first x perfect numbers
    (if (> x 0)
    (if (perfect c) (fff (append lis (list c)) (+ c 1) (- x 1)) (fff lis (+ c 1) x))(identity lis))) ;adds to list until x elements in list
> (define (firstperfs x)      ;packages above program for easy user use
    (fff (list) 2 x))
> (define (perfs k) (append (list "Perfects") (filter perfect(buip k)))) ;builds list to check, checks first 1000 nums
> (define (abuns k) (append (list "Abundants") (filter abundant(buip k)))) ;builds list to check, checks first 1000 nums
> (define (defs k) (append (list "Deficients") (filter deficient(buip k)))) ;builds list to check, checks first 1000 nums
> (firstperfs 3)        ;calls first 3 perfect numbers
> (perfs 1000)      ;finds all perfect numbers 2-1000
> (abuns 1000)      ;finds all abundant numbers 2-1000
> (defs 1000)       ;finds all deficient numbers 2-1000