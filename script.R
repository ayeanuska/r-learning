
x <- c(1, 2, 3, 4, 5)
y <- x * 2

plot(x, y, main = "My First VS Code Plot", col = "blue", pch = 19)




##DECLARING VARIABLES

my_numeric <- 42
my_character <- "70"
my_logical <- FALSE


res <- my_numeric + as.numeric(my_character)
print (res)
 


# first 12 letters
print(LETTERS[1:12])


#odd numbered 
print(LETTERS[seq(from=1, to=length(LETTERS), by=2)])

#english vowels
index_vowels <- grep("A|E|I|O|U|Y", LETTERS)
index_vowels
print(LETTERS[index_vowels])


#index_vowels <- grep('[AEIOUY]', LETTERS)

print(LETTERS[index_vowels])


#english consonants
print(LETTERS[-index_vowels]) //using minus will negate the condition.


#creating own vwctor to hold some data and then performing operation
names <- c("JAck", "Dione", "Reda", "Sally", "Adam")
weight_before <- c(78, 72, 78, 79, 105)
weight_after <- c(67, 65, 79, 70. 93)

#lost weight 
weight_lost <- weight_after- weight_before

# is anyone gaining weight
if (any(weight_lost >0)){
  gain_weight_person.index <- which(weight.loss >0)
  gain_weight_person.name <- person[gain_weight_person.index]
}


LOOp
- for  loop 
- while loop
-repeat
#if else 
simple calculation

 if (choice ==1){
   print (paste(num1,"+", num, "=" , num1 +num2))
 }
elseif (choice ==2){
}




#loop over vector . to check the validity of email

notValid = vector()
for (em in emails){
  print(em)
  
  #check if '@' exists  in the string
  valid <- grepl('@', em )
  if(!valid){
    notvalid <- c(notvalid, em)
  }
}
 print (notValid)
 
 
 #equivalent
 valids <- grepl('@', emails)
 valids
 print (emails[!valids])
