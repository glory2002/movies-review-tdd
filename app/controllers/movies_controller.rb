class MoviesController < ApplicationController
  def index
    @movies = @category.movies

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, movies: @movies } }
    end
  end

  def show
  end
end
