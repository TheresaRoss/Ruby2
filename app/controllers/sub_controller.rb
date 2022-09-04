class SubController < ApplicationController
  def Second
    @cock = session[:cock]
    @kick = @cock.to_i
    i=1;
    b=0;
    jesus = "what"
    max=0;
    loop do 
      i=i.to_i
      a= session["score#{i}"]
      aa = session["subj#{i}"]
      a=a.to_i
      puts "score of"
      puts aa
      puts "is"
      puts a
     
     
      if a>max
        max = a
        @maxu = a
        @sub = aa
       
      
      end
      if i == @kick
          break 
      end
      i=i+1
  
    
    end 
   
   
    @testt = i

    
    #<%=@cock1.each do |cock1| %>

   
 # <%end%>
  #<%=@cock2.each do |cock2| %>
   
   
  #<%end%>
  end
end
