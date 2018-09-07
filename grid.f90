module grid
  implicit none
contains

  subroutine set_grid(xGrid,uGrid,size)
    real,allocatable,intent(inout),dimension(:)::xGrid,uGrid
    integer,intent(in) :: size
    allocate(xGrid(1:size))
    allocate(uGrid(1:size))

  end subroutine


end module grid
