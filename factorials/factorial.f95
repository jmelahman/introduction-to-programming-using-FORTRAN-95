program factorial
!Uses a do loop to perform a factorial
!Supports values up to 20!
implicit none
    integer, parameter  :: ikind=selected_real_kind(p=8)
    integer (kind=ikind):: x  !Value of x
    integer :: i        !Counter
    integer :: fact     !Factorial value
10  print *,'Enter the value for the factorial'
    read *,fact
!initializes x before the do statement
    x=1
    do i=1,fact
!evalutes left side first stores new value for x
        x=x*i
    end do
    print *,'The answer is:',x
    goto 10
end program factorial
