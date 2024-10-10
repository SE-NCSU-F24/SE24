# #!/bin/bash

# awk -F ',' '
#     $3 == 2 && $NF ~ /S/ {
#         gsub(/\<male\>/, "M", $0); 
#         gsub(/\<female\>/, "F", $0); 
#         if ($7 != "") {sum += $7; count++} 
#     } 
#     END {
#         if (count > 0) print "Average Age:", sum / count; 
#         else print "No valid ages found."
#     }
# ' titanic.csv

#!/bin/bash

awk -F ',' '
    $3 == 2 && $NF ~ /S/ {
        gsub(/\<male\>/, "M", $0); 
        gsub(/\<female\>/, "F", $0); 
        print $4;  # Print the name (assuming the name is in the 2nd column)
        if ($7 != "") {sum += $7; count++} 
    } 
    END {
        if (count > 0) print "Average Age:", sum / count; 
        else print "No valid ages found."
    }
' titanic.csv
