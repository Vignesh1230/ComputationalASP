module output
  implicit none
  public :: write_output
contains
! A subroutine to write output to a file
    subroutine write_output(istep,nx,x,u,time)
      integer, intent(in) :: istep,nx
      real,    intent(in) :: x(nx), u(nx), time
      character(len=40) :: result
      integer :: iunit,i

      write(result,'(a,i5.5)') 'results/output_',istep
      print*,' writing to file ',trim(result),' at time ',time

      open(newunit=iunit,file=result,status='replace')
      write(iunit,*) time

      do i=1,nx
        write(iunit,*) x(i),u(i)

      enddo
      close(iunit)

    end subroutine write_output
end module output
