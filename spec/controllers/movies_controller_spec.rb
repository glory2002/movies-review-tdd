require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:category) { FactoryGirl.create(:category) }
  let(:movie) { FactoryGirl.create(:movie) }

  describe "GET index" do
    it "assigns all Movies to @movies" do
    get :index
    expect(assigns(:movie)).to eq(movie)
    end
  end

  describe "GET index" do
    it "assigns the category to an instance var called @category" do
      get :index, category_id: category.to_param
      expect do(assigns(:category)).to eq(category)
      end
    end
  end

  describe "category scope" do
    before { create(:movie) }

    it "only assigns movies in the current category" do
      get :index, category_id: category.to_param
      expect(assigns(:movies)).to eq(movies)
    end
  end


end
