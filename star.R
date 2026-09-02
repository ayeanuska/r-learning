In this exercise, your task is to write a program that draws a triangle-type shape of stars with n rows. 
The shape should be centered and have odd number of stars in each row. 
You can use n as n=10, n=15


#logic: 2*2 -1 for each row for star 
#for space 

#number of rows
n=20

#use for loop to iterate over each row of the pyramid
for (i in 1:n){

#Calculate the number of stars for the current row 
num_stars <- 2*i-1

#Calculate number of spaces for the current row
num_spaces <- n-i

if (num_spaces >0 ){
    #use a for loop to print the spaces for the current row 
    for (j in 1:num_spaces){
        cat(" ")
    }
}
    #use a for loop to print the stars for the current row
    for (j in 1:num_stars){
        cat("*")
    }


#print a new line after each row
cat("\n")
}

