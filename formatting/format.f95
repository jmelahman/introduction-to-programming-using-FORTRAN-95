program format
!demonstrates use of the format statement
implicit none
    integer, parameter :: ikind=selected_real_kind(p=15)
    real , dimension(4) :: x
    integer, dimension(4) :: nums
    integer :: i
    real    (kind=ikind),dimension(4) :: computed

!fill up the arrays with something
    do i = 1,4
        nums(i) = i * 10
        computed(i) = cos(0.1*i)
        x(i) = computed(i)
    end do

    print *,'nums - integer'
    write(*,10) nums
!write(*,1) tells to print with "1   format(:)"
10  format(2i10)
!orders into 2 columns, 10 spaces in between

    print *, 'x - real'
    write(*,20) x
20  format(2f6.2)
!2 float 6 with 2 decimal places per line

!float 6 = number of character spaces reserved for
!printing (including the sign if there is one),
!and the decimal point

    print *, 'computed - double precision'
    write(*,30) computed
30  format(f20.6)

!scientific notations looks like format(2E6.2)
!prints two values per line
!prints 6 total digits including sign and E plus its sign

!if ****, the the float is not large enough, try f20.6

!characters

end program format
