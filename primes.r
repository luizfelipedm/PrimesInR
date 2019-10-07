prime <- function() {
  fileConn<-file("C:/Users/GAMER/Desktop/primos.txt","w")
  
  for(count in 2:999){
    primo = TRUE;
    for(i in 2:(sqrt(count)))
    {
      if(count %% i == 0)
      {
        primo = FALSE;
      }
    }
    if(primo  | count == 2)
    {
      write(as.character(count), fileConn, append=TRUE)
      
    }
  }
  close(fileConn)
  
}
