program extendedconstants
!demonstrates do's and dont's of extended precision
implicit none
    integer, parameter :: ikind=selected_real_kind(p=18)
    real (kind=ikind) :: val,x,y
    real :: real_val

    val=10/3
    print*,val,'10/3'
!10/3 calculated as integer - wrong!

    x=10.0
    y=3.0
    val=x/y
    print*,val,'x/y'
!x/y assigned to extended precision - right!

    real_val=x/y
    print*,real_val*1.0_ikind,'real_val'
!x/y assigned to normal precision - wrong!

    val=10.0_ikind/3.0
    print*,val,'10.0_ikind/3.0'
!extend precision constant - right!

    val=10.0/3.0
    print*,val,'10.0/3.0'
!real constants - wrong!

    val = .12345678901234567890
    print *, val,'.12345678901234567890'
!real constants - wrong!

    val = .12345678901234567890_ikind
    print *, val,'.12345678901234567890_ikind'
!ext precision consts - right!
end program extendedconstants
