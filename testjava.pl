arrayState(empty).
arrayState(row).
arrayState(no_one).
arrayState(blocked).
arrayState(hostile).
arrayState(disordered).
arrayState(empty+row).
arrayState(empty+no_one).
arrayState(empty+blocked).
arrayState(empty+hostile).
arrayState(row+no_one).
arrayState(row+blocked).
arrayState(row+hostile).
arrayState(no_one+blocked).
arrayState(no_one+hostile).
arrayState(blocked+hostile).
arrayState(empty+row+no_one).
arrayState(empty+row+blocked).
arrayState(empty+row+hostile).
arrayState(empty+no_one+blocked).
arrayState(empty+no_one+hostile).
arrayState(empty+blocked+hostile).
arrayState(row+no_one+blocked).
arrayState(row+no_one+hostile).
arrayState(row+blocked+hostile).
arrayState(no_one+blocked+hostile).
arrayState(empty+row+no_one+blocked).
arrayState(empty+row+no_one_hostile).
arrayState(empty+row+blocked+hostile).
arrayState(empty+no_one+blocked+hostile).
arrayState(row+no_one+blocked+hostile).
arrayState(empty+row+no_one+blocked+hostile).

emotionalArrState(arrState(X),Output):-
      (
        X==empty;
	X==row
      )
      ->Output = depression;

    (
        X==disordered;
	X==no_one
      )
      ->Output = inattention;

    (
        X==blocked;
	X==hostile
      )
      ->Output = aggression;

    (
        X==empty+row
    )
      ->Output = depression+depression;

   (
        X==empty+no_one;
	X==row+no_one
      )
      ->Output = depression+inattention;

   (
        X==empty+blocked;
	X==empty+hostile;
	X==row+blocked;
        X==row+hostile
      )
      ->Output = depression+aggression;

     (
        X==  no_one+blocked  ;
	X==  no_one+hostile  )
      ->Output = inattention+aggression;


     (
        X==  blocked+hostile
      )
      ->Output = aggression+aggression;

     (
        X==  empty+row+no_one
      )
      ->Output = depression+depression+inattention;

     (
        X==  empty+row+blocked  ;
	X==  empty+row+hostile
     )
      ->Output = depression+depression+aggression;

     (
        X==  empty+no_one+blocked  ;
	X==  empty+no_one+hostile  ;
	X==  row+no_one+blocked  ;
        X==  row+no_one+hostile
      )
      ->Output = depression+inattention+aggression;

     (
        X==  empty+blocked+hostile;
	X==  row+blocked+hostile
      )
      ->Output = depression+aggression+aggression;

     (
        X==  no_one+blocked+hostile
      )
      ->Output = inattention+aggression+aggression;

     (
        X==  empty+row+no_one+ blocked  ;
	X==  empty+row+no_one +hostile
      )
      ->Output = depression+depression+inattention+aggression;

     (
        X==empty+row+blocked+hostile
      )
      ->Output =  depression+depression+aggression+aggression;

     (
        X==  empty+no_one+blocked+hostile  ;
	X==  row+no_one+blocked+hostile
      )
      ->Output = depression+inattention+aggression+aggression;

     (
        X==empty+row+no_one+blocked+hostile
      )
      ->Output = depression+depression+inattention+aggression+aggression.

arrWorldType(X2,Output):-
	(
            X2==depression;
	    X2==depression+depression
        )
	->Output = single_depression;

	(
            X2==  inattention;
	    X2==  inattention+inattention
        )
	->Output = single_inattention;

	(
            X2==  aggression  ;
	    X2==  aggression+aggression
        )
	->Output = single_aggression;

	(
            X2==depression+inattention+aggression;
	    X2==depression+depression+inattention+aggression;
	    X2==depression+inattention+aggression+aggression
        )
	->Output = complex_all;

	(
            X2==depression+inattention;
	    X2==depression+depression+inattention
        )
	->Output = complex_depression_inattention;

	(
            X2==depression+aggression;
	    X2==depression+aggression+aggression;
            X2==depression+depression+aggression;
	    X2==depression+depression+aggression+aggression								           )
	->Output = complex_depression_aggression;

	(
            X2==inattention+aggression;
	    X2==inattention+aggression+aggression
        )
	->Output =complex_inattention_aggression.

figType(people0+predator0+prey0+vehicle0).
figType(people0+predator0+prey0+vehicle1).
figType(people0+predator0+prey0+vehicle2).
figType(people0+predator0+prey1+vehicle0).
figType(people0+predator0+prey1+vehicle1).
figType(people0+predator0+prey1+vehicle2).
figType(people0+predator0+prey2+vehicle0).
figType(people0+predator0+prey2+vehicle1).
figType(people0+predator0+prey2+vehicle2).
figType(people0+predator1+prey0+vehicle0).
figType(people0+predator1+prey0+vehicle1).
figType(people0+predator1+prey0+vehicle2).
figType(people0+predator1+prey1+vehicle0).
figType(people0+predator1+prey1+vehicle1).
figType(people0+predator1+prey1+vehicle2).
figType(people0+predator1+prey2+vehicle0).
figType(people0+predator1+prey2+vehicle1).
figType(people0+predator1+prey2+vehicle2).
figType(people0+predator2+prey0+vehicle0).
figType(people0+predator2+prey0+vehicle1).
figType(people0+predator2+prey0+vehicle2).
figType(people0+predator2+prey1+vehicle0).
figType(people0+predator2+prey1+vehicle1).
figType(people0+predator2+prey1+vehicle2).
figType(people0+predator2+prey2+vehicle0).
figType(people0+predator2+prey2+vehicle1).
figType(people0+predator2+prey2+vehicle2).
figType(people1+predator0+prey0+vehicle0).
figType(people1+predator0+prey0+vehicle1).
figType(people1+predator0+prey0+vehicle2).
figType(people1+predator0+prey1+vehicle0).
figType(people1+predator0+prey1+vehicle1).
figType(people1+predator0+prey1+vehicle2).
figType(people1+predator0+prey2+vehicle0).
figType(people1+predator0+prey2+vehicle1).
figType(people1+predator0+prey2+vehicle2).
figType(people1+predator1+prey0+vehicle0).
figType(people1+predator1+prey0+vehicle1).
figType(people1+predator1+prey0+vehicle2).
figType(people1+predator1+prey1+vehicle0).
figType(people1+predator1+prey1+vehicle1).
figType(people1+predator1+prey1+vehicle2).
figType(people1+predator1+prey2+vehicle0).
figType(people1+predator1+prey2+vehicle1).
figType(people1+predator1+prey2+vehicle2).
figType(people1+predator2+prey0+vehicle0).
figType(people1+predator2+prey0+vehicle1).
figType(people1+predator2+prey0+vehicle2).
figType(people1+predator2+prey1+vehicle0).
figType(people1+predator2+prey1+vehicle1).
figType(people1+predator2+prey1+vehicle2).
figType(people1+predator2+prey2+vehicle0).
figType(people1+predator2+prey2+vehicle1).
figType(people1+predator2+prey2+vehicle2).
figType(people2+predator0+prey0+vehicle0).
figType(people2+predator0+prey0+vehicle1).
figType(people2+predator0+prey0+vehicle2).
figType(people2+predator0+prey1+vehicle0).
figType(people2+predator0+prey1+vehicle1).
figType(people2+predator0+prey1+vehicle2).
figType(people2+predator0+prey2+vehicle0).
figType(people2+predator0+prey2+vehicle1).
figType(people2+predator0+prey2+vehicle2).
figType(people2+predator1+prey0+vehicle0).
figType(people2+predator1+prey0+vehicle1).
figType(people2+predator1+prey0+vehicle2).
figType(people2+predator1+prey1+vehicle0).
figType(people2+predator1+prey1+vehicle1).
figType(people2+predator1+prey1+vehicle2).
figType(people2+predator1+prey2+vehicle0).
figType(people2+predator1+prey2+vehicle1).
figType(people2+predator1+prey2+vehicle2).
figType(people2+predator2+prey0+vehicle0).
figType(people2+predator2+prey0+vehicle1).
figType(people2+predator2+prey0+vehicle2).
figType(people2+predator2+prey1+vehicle0).
figType(people2+predator2+prey1+vehicle1).
figType(people2+predator2+prey1+vehicle2).
figType(people2+predator2+prey2+vehicle0).
figType(people2+predator2+prey2+vehicle1).
figType(people2+predator2+prey2+vehicle2).



emotionalFigType(Y1, Output):-
	(
            Y1==people0+predator0+prey0+vehicle0;
	    Y1==people1+predator0+prey0+vehicle0;
            Y1==people2+predator0+prey0+vehicle0
	)
	->Output = meaningless;
	(
            Y1==people0+predator0+prey0+vehicle1;
	    Y1==people2+predator0+prey0+vehicle0;
            Y1==people2+predator0+prey0+vehicle0
	)
	->Output = single_low_inattention;

        (
            Y1==people0+predator0+prey0+vehicle2;
	    Y1==people1+predator0+prey0+vehicle2;
            Y1==people2+predator0+prey0+vehicle2
	)
	->Output = single_high_inattention;


        (
            Y1==people0+predator1+prey0+vehicle0;
	    Y1==people1+predator1+prey0+vehicle0;
            Y1==people2+predator1+prey0+vehicle0
	)
	->Output = single_low_aggression;

        (
            Y1==people0+predator2+prey0+vehicle0;
	    Y1==people1+predator2+prey0+vehicle0;
            Y1==people2+predator2+prey0+vehicle0
	)
	->Output = single_high_aggression;

        (
            Y1==people0+predator0+prey1+vehicle0;
	    Y1==people1+predator0+prey1+vehicle0;
            Y1==people2+predator0+prey1+vehicle0
	)
	->Output = single_low_depression;

        (
            Y1==people0+predator0+prey2+vehicle0;
	    Y1==people1+predator0+prey2+vehicle0;
            Y1==people2+predator0+prey2+vehicle0
	)
	->Output = single_high_depression;

        (
            Y1==people0+predator0+prey1+vehicle1;
	    Y1==people1+predator0+prey1+vehicle1;
            Y1==people2+predator0+prey1+vehicle1
	)
	->Output = complex_low_depression_low_inattention;

	(
            Y1==people0+predator0+prey1+vehicle2;
	    Y1==people1+predator0+prey1+vehicle2;
            Y1==people2+predator0+prey1+vehicle2
	)
	->Output = complex_low_depression_high_inattention;
	(
            Y1==people0+predator0+prey2+vehicle1;
	    Y1==people1+predator0+prey2+vehicle1;
            Y1==people2+predator0+prey2+vehicle1
	)
	->Output = complex_high_depression_low_inattention;


        (
            Y1==people0+predator0+prey2+vehicle2;
	    Y1==people1+predator0+prey2+vehicle2;
            Y1==people2+predator0+prey2+vehicle2
	)
	->Output = complex_high_depression_high_inattention;

        (
            Y1==people0+predator1+prey0+vehicle1;
	    Y1==people1+predator1+prey0+vehicle1;
            Y1==people2+predator1+prey0+vehicle1
	)
	->Output = complex_low_aggression_low_inattention;

        (
            Y1==people0+predator1+prey0+vehicle2;
	    Y1==people1+predator1+prey0+vehicle2;
            Y1==people2+predator1+prey0+vehicle2
	)

	->Output = complex_low_aggression_high_inattention;
        (
            Y1==people0+predator2+prey0+vehicle1;
	    Y1==people1+predator2+prey0+vehicle1;
            Y1==people2+predator2+prey0+vehicle1
	)
	->Output = complex_high_aggression_low_inattention;

        (
            Y1==people0+predator2+prey0+vehicle2;
	    Y1==people1+predator2+prey0+vehicle2;
            Y1==people2+predator2+prey0+vehicle2
	)
	->Output = complex_high_aggression_high_inattention;

        (
            Y1==people0+predator1+prey1+vehicle0;
	    Y1==people1+predator1+prey1+vehicle0;
            Y1==people2+predator1+prey1+vehicle0
	)

	->Output = complex_low_aggression_low_depression;
        (
            Y1==people0+predator1+prey2+vehicle0;
	    Y1==people1+predator1+prey2+vehicle0;
            Y1==people2+predator1+prey2+vehicle0
	)
	->Output = complex_low_aggression_high_depression;

        (
            Y1==people0+predator2+prey1+vehicle0;
	    Y1==people1+predator2+prey1+vehicle0;
            Y1==people2+predator2+prey1+vehicle0
	)
	->Output = complex_high_aggression_low_depression;

        (
            Y1==people0+predator2+prey2+vehicle0;
	    Y1==people1+predator2+prey2+vehicle0;
            Y1==people2+predator2+prey2+vehicle0
	)

	->Output = complex_high_aggression_high_depression;
        (
            Y1==people0+predator1+prey1+vehicle1;
	    Y1==people1+predator1+prey1+vehicle1;
            Y1==people2+predator1+prey1+vehicle1
	)
	->Output = complex_low_aggression_low_depressionlow_inattention;

        (
            Y1==people0+predator1+prey1+vehicle2;
	    Y1==people1+predator1+prey1+vehicle2;
            Y1==people2+predator1+prey1+vehicle2
	)
	->Output = complex_low_aggression_low_depression_high_inattention;

        (
            Y1==people0+predator1+prey2+vehicle1;
	    Y1==people1+predator1+prey2+vehicle1;
            Y1==people2+predator1+prey2+vehicle1
	)

	->Output = complex_low_aggression_high_depression_low_inattention;
        (
            Y1==people0+predator2+prey1+vehicle1;
	    Y1==people1+predator2+prey1+vehicle1;
            Y1==people2+predator2+prey1+vehicle1
	)
	->Output = complex_high_aggression_low_depression_low_inattention;

        (
            Y1==people0+predator2+prey2+vehicle1;
	    Y1==people1+predator2+prey2+vehicle1;
            Y1==people2+predator2+prey2+vehicle1
	)
	->Output = complex_high_aggression_high_depression_low_inattention;

        (
            Y1==people0+predator2+prey1+vehicle2;
	    Y1==people1+predator2+prey1+vehicle2;
            Y1==people2+predator2+prey1+vehicle2
	)

	->Output = complex_high_aggression_low_depression_high_inattention;
(
            Y1==people0+predator1+prey2+vehicle2;
	    Y1==people1+predator1+prey2+vehicle2;
            Y1==people2+predator1+prey2+vehicle2
	)

	->Output = complex_low_aggression_high_depression_high_inattention;
        (
            Y1==people0+predator2+prey2+vehicle2;
	    Y1==people1+predator2+prey2+vehicle2;
            Y1==people2+predator2+prey2+vehicle2
	)
	->Output = complex_high_aggression_high_depression_high_inattention.

result_diagnosis(Input_arr, Input_fig, OutputA, OutputF):-
	emotionalArrState(arrState(Input_arr), Output_arr1),
	arrWorldType(Output_arr1, Output_arr2),
	emotionalFigType(Input_fig, Output_fig),
	OutputA = Output_arr2,
	OutputF = Output_fig.

start_diagnosis:-
	write("Hello. This is diagnosis system using sandtray.\n"),nl,
	write("what status of array does it have?"),nl,
	read(Input_arr),nl,
	emotionalArrState(arrState(Input_arr), Output_arr_1),nl,
	arrWorldType(Output_arr_1, Output_arr_2),
	write(Output_arr_2),
	write("what kind of figure does it have?"),nl,
	read(Input_fig),nl,
	emotionalFigType(Input_fig, Output_fig),
	write(Output_fig),nl,
	write(' finish!'),nl.
















