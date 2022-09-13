class MainController < ApplicationController
  def test

    if(params.has_key?("Subject"))
      @cick = params['Subject']
      @k = @cick.to_i
      session[:k] = @k
      a = 1
    else
      @k = session[:k]
      a = 2 
    end
    @subjV = Array.new(@k+1,false)
    @scoreV = Array.new(@k+1,false)
    if a==2
      for i in 1..@k do
        if session.key?("subjV#{i}")
        @subjV[i] = session["subjV#{i}"]
        end
        if session.key?("scoreV#{i}")
        @scoreV[i] =session["scoreV#{i}"]
        end
      end
    else
      for i in 1..@k do
      
        @subjV[i] = false

       
        @scoreV[i] =false
     
      end

    end

  end

  def test2
    valid = true
    @k = session[:k]
    
    @subjV = []
    @scoreV =[]
    for i in 1..@k do

      puts "value of each session #{i}"

      @subjV[i] = session["subjV#{i}"]
      @scoreV[i] = session["scoreV#{i}"]
      if @subjV[i]
        puts "dddddddddddddddddddddd"
      end
      puts @scoreV[i]
     

      if params["sub#{i}"] == ""
        valid = false
        session["subjV#{i}"] = true
      else
        session["subj#{i}"] = params["sub#{i}"]
        session["subjV#{i}"] = false
      end
      if params["sco#{i}"] == ""
        valid = false
        session["scoreV#{i}"] = true
      else
        session["score#{i}"] = params["sco#{i}"]
        session["scoreV#{i}"] = false
      end
    end
    if valid == false 
      redirect_back(fallback_location: "/main/test")
    else
      redirect_to "/sub/Second"
    end
  end

end