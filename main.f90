program hydro2
  use grid
  use init
  implicit none

  real :: v,t,dx,dt,xSize
  integer,parameter :: NX = 100, tmax = 1.
  real, allocatable, dimension(:) :: x_array,u_array


  v = 1.
  dx = 1./NX
  dt = 0.5 * (dx / v)
  xSize = NX

  !Variables for Time loop
  t = 0.




  call set_grid(x_array,u_array,int(xSize))
  call set_initialSine(x_array,u_array,xSize,dx)






  print*, u_array

end program hydro2
