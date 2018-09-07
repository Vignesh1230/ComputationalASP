module output
  implicit none
  contains
! A subroutine to write output to a file
    subroutine write_output(istep,nx,x,u,time)
      integer, intent(in) :: istep,nx
      real,    intent(in) :: x(nx), u(nx), time
      character(len=40) :: filename
      integer :: iunit,i

      write(filename,"(a,i5.5)") ’output_’,istep
      print*,’ writing to file ’,trim(filename),’ at time ’,time

      open(newunit=iunit,file=filename,status=’replace’)
      write(iunit,*) time

      do i=1,nx
        write(iunit,*) x(i),u(i)
      enddo
      close(iunit)
      
    end subroutine write_output
end module output
