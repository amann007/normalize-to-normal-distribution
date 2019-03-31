
normalize=function(dist){
  # this function gets a non normalized distribution dist (vector of values) 
  # maps dist to a normalized value that is derived from a *normal* distribution with same average and stadared deviation
  
  #need library:
  library(rand)
  
  #get statistics:
  n=length(dist)
  m=mean(dist)
  s=sd(dist)
  
  #get ranks of dist. this is the key for the mapping
  r=rank(dist,"first")  
  
  #create a syntetic normal substitute distribution to be mapped to
  goal=rnorm(n = n, mean = m, sd = s)
  
  #make position correspond to ranking of values in distribution
  goal=sort(goal)
  
  #use the new ranking positions to get a corresponding values from the substitute normal distribution
  normal=goal[r]         
  return(normal)
}



