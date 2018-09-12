program hydro2
  use grid
  use init
  use step
  use output
  implicit none

  real                            :: V,t,dx,dt,xSize,C
  integer,parameter               :: NX = 100, tmax = 1.
  integer                         :: istep
  real, allocatable, dimension(:) :: x_array,u_array

  Logical                         :: methodBool


  !Question Setup
  v = 1.
  dx = 1./NX
  dt = 0.5 * (dx / v)
  xSize = NX
  C = V * dt/dx

  methodBool = .TRUE. !False Upwind, True Lax Wendroff



  !Variables for Time loop
  t = 0.




  call set_grid(x_array,u_array,int(xSize))
  call set_initialSine(x_array,u_array,xSize,dx)

  call write_output(0,NX,x_array,u_array,0.)

  istep = 0.
  do while ( t < tmax)
    t = t + dt
    istep = istep + 1

    if (methodBool .eqv.  .FALSE.) THEN
      call stepUpWind(u_array,dx,dt,V)
    else
      call stepLax(u_array,C)
    end if

    call write_output(istep,NX,x_array,u_array,t)


  end do


end program hydro2
