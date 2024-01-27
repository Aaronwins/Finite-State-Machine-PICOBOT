
# These lines are comments.
#Aaron Amalraj  
# Remember that rules are formatted as
# State Surroundings -> Move NewState
  
# Picobot starts in state 0.
# Here, state 0 goes N as far as possible

0 x*** -> N 0   # if there's nothing to the N, go N
0 N*x* -> W 0   # if north is blocked is west is free go W
0 N*W* -> X 1   # if N is blocked, switch to state 1


# and state 1 goes S as far as possible

1 ***x -> S 1   # if there's nothing to the S, go S
1 *x*S -> E 2   # otherwise, switch to state 2 and go east
1 xEWS -> N 3 #if N is free and others occupied go N switch #to state 3
1 xExS -> N 3 #if N and West open with E and S is occupied #go state 3
1 NExS -> W 2 #if W is free everything else occupied go W


2 x*** -> N 2 #if there's nothing to the N go north
2 Nx*S -> E 1 #if something north go back to state 1
2 N**x -> X 1 #if something north go back to state 1
2 NExS -> W 4 #if N,E,S is occupied and W free go W go to #state 4


3 *x** -> E 2 #if E is free go east go to state 2


4 **x* -> W 5 #if W is free go W then go to state 5


5 ***x -> S 5   # if there's nothing to the S, go S
5 **xS -> W 5 #if W is free, and south occupied go W state 5
5 xEWS -> N 6 #if E,W,S occupied and N is open go to state 6
5 xxWS -> N 6 #if N,E is free and W,S occupied go N to state #6
5 NxWS -> E 7 #if N,W,S occupied go E to state 7


6 **x* -> W 6  #if w open go w go state 6
6 **W* -> X 5 #if W occupied go to state 5

7 *x** -> N 2 #if E is open go north go state 2