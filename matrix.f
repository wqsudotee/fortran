        program matrix
            integer, dimension(10,10) :: grid
            integer :: j
            integer :: hold
            character(3) :: str
            
C           Populating the matrice
            do i=1,10
                do j=1,10
                    grid(i,j) = i+j
                end do
            end do

C           Shuffling the items: Knuth Shuffle
            do k=1,10
                do i=1,10
                    call random_number(r)
                    j = FLOOR(i*r)
                    hold = grid(k,i)
                    grid(k,i) = j
                    grid(k,j) = hold
                end do
            end do

C           Converting each item to a string then printing
            do i=1,10
                do j=1,10
                        write(str, '(i0)') grid(i,j)
                        write(*, '(a)', advance='no') str
                end do
                print *,
            end do
        end program matrix


