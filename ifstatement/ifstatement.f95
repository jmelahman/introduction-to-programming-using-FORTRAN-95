program ifstatement
!Uses an if statment to create a menu to see
!the use would like to add, divide, or multiply
!the values stored in x and y
implicit none
!use of a simple menu
    real :: x,y,answer
    integer :: choice
!set up the menu – the user may enter 1, 2 or 3
10  print *,'Choose an option'
    print *,'1 Multiply'
    print *,'2 Divide'
    print *,'3 Add'
    read *,choice
!initializes same values for all choices
    x=3.4
    y=2.9
!the following line has 2 consecutive
!equals signs – (no spaces in between)
!if using (real == 0), use (abs(real) < 0.0001)
    if (choice == 1) then
        answer = x*y
    else if (choice == 2) then
        answer = x/y
    else if (choice == 3) then
        answer = x+y
    else
       print *,'please enter a number between 1 and 3'
    end if
!prints answer regardless of choice
    print *,answer
    goto 10
end program ifstatement
