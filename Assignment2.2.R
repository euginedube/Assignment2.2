set.seed(123)
n=10
m=10
my_matrix =replicate(n,rnorm(m))
my_df=data.frame(my_matrix)
my_df
system.time(
  for (i in 1:n)
  {
    for (j in 1:m)
    { 
      my_df[i,j]=my_df[i,j]+(10*sin(0.75*pi))
    }
   
  }
)
#print(my_df) 
#vectorized
set.seed(123)
n=10
m=10
my_matrix =replicate(n,rnorm(m))
my_df= data.frame(my_matrix)
system.time(my_df<-my_df + 10*sin(0.75*pi))
#print(my_df) 
#Non vectorized takes longer than vectorized 

