module grid
  implicit none
contains

  subroutine set_grid(xGrid,uGrid,size)
    real,intent(in)::xGrid,uGrid,size
    real,intent(out) :: xGrid,uGrid
    allocate(xGrid(1:size))
    allocate(uGrid(1:size))

  end subroutines


end module grid
