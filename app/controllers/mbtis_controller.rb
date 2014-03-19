class MbtisController < ApplicationController
  before_filter :signed_in_user
 
  def current_user?(user)
  	user == current_user
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in."
    end
  end

  def create
    @mbti = current_user.mbtis.build(params[:mbti])

    @mbti.En = 0.0
  	@mbti.In = 0.0
  	@mbti.Sg = 0.0
  	@mbti.Ng = 0.0
  	@mbti.Tg = 0.0
  	@mbti.Fg = 0.0
  	@mbti.Jg = 0.0
  	@mbti.Pg = 0.0
  	@mbti.typecode = ""

    #computation for MBTI type
    if @mbti.q1 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q2 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q3 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q4 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q5 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q6 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q7 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q8 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q9 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q10 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q11 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q12 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q13 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q14 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q15 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q16 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q17 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q18 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q19 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q20 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q21 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q22 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q23 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q24 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q25 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q26 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q27 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q28 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q29 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q30 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q31 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q32 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q33 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q34 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q35 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q36 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q37 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q38 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q39 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q40 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q41 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q42 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q43 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q44 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q45 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q46 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q47 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q48 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q49 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q50 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q51 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q52 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q53 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q54 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q55 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q56 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q57 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q58 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q59 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q60 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q61 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q62 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q63 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q64 == "A"
      @mbti.En += 1.0
    else
      @mbti.In += 1.0
    end
    if @mbti.q65 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q66 == "A"
      @mbti.Sg += 1.0
    else
      @mbti.Ng += 1.0
    end
    if @mbti.q67 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q68 == "A"
      @mbti.Tg += 1.0
    else
      @mbti.Fg += 1.0
    end
    if @mbti.q69 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end
    if @mbti.q70 == "A"
      @mbti.Jg += 1.0
    else
      @mbti.Pg += 1.0
    end

    if @mbti.In > @mbti.En
      @mbti.typecode = "I"
    else
      @mbti.typecode = "E"	
    end
    if @mbti.Ng > @mbti.Sg
      @mbti.typecode = "#{@mbti.typecode}N"
    else
      @mbti.typecode = "#{@mbti.typecode}S"	
    end
    if @mbti.Fg > @mbti.Tg
      @mbti.typecode = "#{@mbti.typecode}F"
    else
      @mbti.typecode = "#{@mbti.typecode}T"	
    end
    if @mbti.Pg > @mbti.Jg
      @mbti.typecode = "#{@mbti.typecode}P"
    else
      @mbti.typecode = "#{@mbti.typecode}J"	
    end
    
    if @mbti.save
      redirect_to personality_path
  	else
  	  render 'mbtis/exam'
  	end

  end#end create

  def destroy

  end
end