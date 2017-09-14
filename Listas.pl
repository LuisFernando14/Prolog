list_of_my_elements([pear, grape, banana, plum, apples]).

in_my_list_of_elements(X) :- 
    list_of_my_elements(L),
    member(X, L).