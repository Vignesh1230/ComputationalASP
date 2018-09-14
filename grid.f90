module grid
  implicit none
contains

  subroutine set_grid(xGrid,uGrid,size)
    integer, parameter                            ::  nu = 1
    real,allocatable,intent(inout),dimension(:)   ::  xGrid
    real,allocatable,intent(inout),dimension(:,:) ::  uGrid
    integer,intent(in)                            ::  size

    allocate(xGrid(size))
    allocate(uGrid(nu,size))

  end subroutine


end module grid
