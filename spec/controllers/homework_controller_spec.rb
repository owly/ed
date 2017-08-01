require 'rails_helper'

RSpec.describe HomeworkController, type: :controller do

  describe "GET #student_list" do
    it "returns http success" do
      get :student_list
      expect(response).to have_http_status(:success)
    end
  end

end
