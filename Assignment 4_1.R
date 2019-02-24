#Problem 1
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

#Return only the rows in which the left table have match.
df<-merge(x=df1,y=df2,by="CustId")
df
#output:
#CustId Product State
#1      2      TV Texas
#2      4   Radio Texas
#3      6   Radio   NYC

#Returns all rows from both tables, join records from the left which have matching keys in the right table.
df<-merge(x=df1,y=df2,by="CustId",all=TRUE)
df
#output:
#   CustId Product State
#1      1      TV  <NA>
#2      2      TV Texas
#3      3      TV  <NA>
#4      4   Radio Texas
#5      5   Radio  <NA>
#6      6   Radio   NYC


#Return all rows from the left table, and any rows with matching keys from the right table.
df<-merge(x=df1,y=df2,by="CustId",all.x=TRUE)
df

#Return all rows from the right table, and any rows with matching keys from the left table.
df<-merge(x=df1,y=df2,by="CustId",all.y=TRUE)
df


##Problem 2



