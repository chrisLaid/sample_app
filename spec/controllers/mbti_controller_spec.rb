require 'spec_helper'

describe MbtiController do

  describe "GET 'exam'" do
    it "returns http success" do
      get 'exam'
      response.should be_success
    end
  end

end
