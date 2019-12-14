!
!   rectangle.f90
!   gitX
!
!   Created by Tianli on 2019/12/14.
!   Copyright 2019 Tianli. All rights reserved.
!
!Program www_fcode_cn
!  Implicit None
!  integer :: a(5) = [1,2,3,-5,3]
!  write(*,*) 'a>0',a>0
!  write(*,*) 'all',all(a>0)
!  write(*,*) 'a==2',a==2
!  write(*,*) 'any',any(a==2)
!End Program www_fcode_cn
!
program reshap_test
    implicit none
    integer :: a(6) = [1,2,3,4,5,6], b(3,2)
    integer :: i, j
    integer :: sh(2)
    sh = shape(b)
    print *, shape(a)
    print *, sh(1)
    print *, sh(2)

    b = reshape(a, shape(b))
    
    do i = 1, 6
        print *, a(i)
    end do
    print *, a
    
    do j = 1, sh(2)
        print *, b(:,j)
    end do
    print *, b
end program


