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


  describe "GET #index" do
    let(:categories) { create_list(:category, 4) }

    it "assigns all categories to @categories" do
      get :index, id: @category
      expect(assigns(:categories)).to eq ([@category])
    end
  end

end
