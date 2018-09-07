program hydro2
  use grid
  use init
  implicit none

  real :: v,t,dx,dt,xSize
  integer,parameter :: NX = 100
  real, allocatable, dimension(:) :: x_array,u_array


  v = 1.
  dx = 0.01
  dt = 0.5 * (dx / v)
  xSize = 1./dx



  call set_grid(x_array,u_array,int(xSize))
  call set_initialSine(x_array,u_array,xSize,dx)


  print*, u_array

end program hydro2
