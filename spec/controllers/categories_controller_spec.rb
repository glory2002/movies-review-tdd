require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  before do
    @category = Category.create!(name: "Movie reviews contollers")
  end

  describe "GET #index" do
    it "returns http success" do
      get :index, id: @category
      expect(response).to have_http_status(:success)
    end
  end
end
