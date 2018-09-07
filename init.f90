module init
  implicit none
  real(Kind = 8)::PI = 4.D0*DATAN(1.D0)
  public :: set_initialSquare
contains


  subroutine set_initialSquare(xGrid,uGrid,size,dx)
    real, intent(inout),dimension(:):: xGrid,uGrid
    real, intent(in):: size,dx
    integer :: i

    do i = 1,int(size),1
      xGrid(i) = i * dx
      if(i > 0.25 * size .AND. i <= 0.75 * size)THEN
        uGrid(i) = 1.
      else
        uGrid(i) = 0.
      end if
    end do
  end subroutine


  subroutine set_initialSine(xGrid,uGrid,size,dx)
    real, intent(inout),dimension(:):: xGrid,uGrid
    real, intent(in):: size,dx
    integer :: i

    do i = 1,int(size),1
      xGrid(i) = i * dx
      uGrid(i) = Sin(2 * PI * i / size)
    end do
  end subroutine


end module init
