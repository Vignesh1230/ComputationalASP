module step
  use methods
  implicit none
  ! public :: stepUpWind,stepLax
contains



  subroutine stepGodunov(u_array,dx,dt,V)
    real,dimension(:,:), intent(inout) :: u_array
    real, intent(in) :: dx,dt,V
    integer :: j

    !Do First Index of array, using Periodic boundaries
    !Left value of first index is the last index of array
    u_array(1) = Upwind(u_array(SIZE(u_array)), u_array(1),dx,dt,V)

    do j = 2, SIZE(u_array) , 1
      u_array(j) = Upwind(u_array(j-1),u_array(j),dx,dt,V)
    end do

  end subroutine stepGodunov
  !
  !
  ! subroutine stepLax(u_array,C)
  !   real,dimension(:,:), intent(inout) :: u_array
  !   real, intent(in) :: C
  !   integer :: j
  !
  !   !Do First Index of array, using Periodic boundaries
  !   !Left value of first index is the last index of array
  !   !u_array(1) = Upwind(u_array(SIZE(u_array)), u_array(1),dx,dt,V)
  !   u_array(1) = LaxC(u_array(SIZE(u_array)),u_array(1), u_array(2),C)
  !
  !   do j = 2, SIZE(u_array) -1 , 1
  !     u_array(j) = LaxC(u_array(j-1),u_array(j),u_array(j+1),C)
  !   end do
  !
  !   u_array(SIZE(u_array)) = LaxC(u_array(SIZE(u_array)-1),u_array(SIZE(u_array)),u_array(1),C)
  !
  ! end subroutine stepLax


end module step
