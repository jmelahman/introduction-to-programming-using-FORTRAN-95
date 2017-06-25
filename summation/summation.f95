program doloops
!Uses an if statment and a dowhile loop to
!perform a summation of 1/x**6
implicit none
    integer, parameter :: ikind=selected_real_kind(p=15)
    real (kind=ikind) :: sum,previoussum,x,smallnumber,error
    integer :: i        !counter

    sum=0.0
    previoussum=0.0
    smallnumber = 10.0**(-15.0)
    do i=1,1000
        x=i
        sum = sum + 1.0 /(x**6)
        error=abs(sum-previoussum)
        if (error<smallnumber) then
            print *,'sum ',sum,' number of loops ',i
            exit
        end if
        previoussum = sum
    end do

!    dowhile(error<smallnumber)

end program doloops
