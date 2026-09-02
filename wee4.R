# C() - combine 


vecX <- c(9, -1, 4, 2)
cat ("Original Vector: ")
print(vecX)


# appending to the front (start)
vecX <- c(3, vecX)

#combining two vc together 
tempVector <- c(-7, 12) 
vecOut <- c(vecX, tempVector)
print (vecOut)



# looping w conditional statement : (%in%) returns true if the element is present in the vector
for (i in vecOut) {
  if (i %in% c(3, 4, 12)) {
    cat (i, "is present in the vector\n")
  } else {
    cat (i, "is NOT present in the vector\n")
  }
}   


# task 
#Suppose you are given two vectors of data:

ids: A vector of student IDs.
names: A vector of corresponding student names.

ids <- c(1001, 1002, 1003, 1004, 1005)
names <- c("Alice", "Bob", "Charlie", "David", "Eve")


# task is to write a program that does the following:

Check the type of values stored in the vectors
cat("Type of ids:", typof(ids), "/n")
cat("Type of names:", typof(names), "/n")



#Checks if the following students exist in the data, (1003, 1005, 1007)ids.
#If the ID is in ids, prints out the corresponding student name in names.
#If the ID is not in ids, prints out an error message.

search_ids <- c(1003, 1005, 1007)
for (id in search_ids){
    if (id %in% ids){
                                   
                                            index<- match(id, ids)
        cat("ID", id, "found:", names[index], "\n")
    }else{
        cat("Error studnet ID", id, "not found in the data.\n")
    }
}





#Can you search for the name of a randomly sampled student, where the generated id can be any integers between 1000 and 1020?
random_id <- sample(1000:1020, size = 1)
cat("Randomly generated ID:", random_id, "\n")

if (random_id %in% ids) {
  index <- match(random_id, ids)
  cat("Success! Student Name:", names[index], "\n")
} else {
  cat("Error: ID", random_id, "is not registered in the system.\n")
}


# activity 3
#Suppose you are Working with rainfall data from an Indigenous weather station:

rainfall <- c(120, 150, 180, 90, 60, 40, 30, 20, 25, 50, 80, 110)
month_names <- month.abb  # Using built-in month abbreviations
Your task is to:

#Calculate total annual rainfall using sum()

month_names <- month.abb 
?month.abb

total_rainafall <- sum(rainfall)
cat("Total annual rainfall:", total_rainafall, "mm\n")


# Identify months with rainfall > 100mm (traditional threshold) using a for loop
cat("Months with rainfall above 100mm:\n")
for (i in 1:length(rainfall)) {
  if (rainfall[i] > 100) {
    cat(month_names[i], ":", rainfall[i], "mm\n")
  }   }

#tips:
#length(rainfall): Counts how many total items are inside your rainfall vector. If you have 5 numbers, length(rainfall) equals 5.

#1:length(rainfall): Creates a sequence of numbers from 1 up to the total count (e.g., 1, 2, 3, 4, 5).

#i: A index variable that updates automatically on every loop iteration (i = 1, then i = 2, and so on).

#rainfall[i]: Uses the index i to access the specific value stored at position i in the rainfall vector.



#Find drought periods (consecutive months below average)
#tip: find mean then loop and check if teach rainfall is less than mean and consider if its drought 

#logic 

calculate  average rainfall 

initialize current drought 0 

mx drought 0

Rainfall < average 

yes increase current drought        no reset current to 0 
updte max drought 


more rainfall values ?

no ? - stop 


#solution
rainfall <- c(120, 150, 180, 90, 60, 40, 30, 20, 25, 50, 80, 110)
month_names <- month.abb 

avg_rain <- mean(rainfall)
current_drought <- 0
max_drought <- 0


cat ("\nDrought analysis (below average of", round(avg_rain, 1), "mm):\n")
for (i in 1:length(rainfall)) {
  if (rainfall[i] < avg_rain) {
    current_drought <- current_drought + 1
    print current drought

    max_drought <- max(max_drought, current_drought)
    print maX drought
    } else {
        current_drought <- 0
    }
}
cat("Longest drought period (consecutive months below average):", max_drought, "months\n")



# activity 4 

Suppose you have the following two vectors representing corresponding words in two languages:

english_words <- c("Ant", "Boy", "Baby", "Black", "Dog", "Eye", "Foot") # English words
traditional_words <- c("Gah-du", "Kah-de-al", "Joo-jah", "Boo-gah", "Goo-da-ra", "Jilee", "Jinnah") # Traditional language words
Your task is to:

Search for specific words using for and if

search_words <- c("Dog", "Cat", "Baby", "Fish")
cat ("===word lookup Results===\n")

for (word in search_words) {
   found <- False

for (i in 1: length(english_words)) {

        if(english_words[i]== word){
            cat("Found:", word, "in English, corresponding Traditional word:", traditional_words[i], "\n", sep="")
            found <- TRUE
            break
        }  
}

Handle both found and not-found cases

if (!found){
    cat("", word, "not found in the dictionary.\n", sep="")
}
}
Print all dictionary entries
cat (""/n=== Complete dictionary ===/n)
for (i in 1: length(english_words)) {
    cat(i, "",english_words[i], "=", traditional_words[i], "\n")
}



