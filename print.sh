gs -o- -sDEVICE=inkcov Thesis-print.pdf | grep -v "^ 0.00000  0.00000  0.00000" | grep "^ " | wc -l
