class ScoreController < ApplicationController
  def list
    @k = (Studentdatum.count-1)
    @subjV = Studentdatum.all.pluck :name
    @scoreV = Studentdatum.all.pluck :score
    @max = Studentdatum.maximum(:score)
    @sum = Studentdatum.sum(:score)
    @id = 0


  end
  def edit
  
    puts "name to edit!!!"
    puts  params["edi"]
    if params.has_key?("edi")
          session["edi"] = params["edi"]
    end
    if params[:first_t] == "a" and session[:first_t] != "b"
      @sb = false
      @sc = false
      session[:first_t] = "b"
    else
      @sb = session[:sb]
      @sc = session[:sc]
    end
    val = true
   puts "?"
   puts params[:sco]
    if params.has_key?("sub")
      if params["sub"] == ""
        session[:sb] = true
        val = false
      else
        session[:sb] = false
      end
      if params["sco"] == ""
        session[:sc] = true
        val = false
      else 
        session[:sc] = false
      end
      
      if val
        don = Studentdatum.find_by name: session["edi"]
        puts "name"
        puts don.name

        don.name = params[:sub]
        don.score = params[:sco]
        don.save
        redirect_to "/score/list"
      else
        redirect_to "/score/edit"
      end
    else
    end




  end
  def delete
    puts "dog"
    puts params["del"]
    don = Studentdatum.find_by name: params["del"]
    don.destroy
    redirect_back(fallback_location: "/score/list")


  end
end
