class MoviesController < ApplicationController
  def index
    @movies = @category.movies

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, movies: @movies } }
    end
  end

    def show
        @category = Category.find(params[:category_id])
        @movie = @category.movies.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: { category: @category, movie: @movie } }
    end
  end

  def create
      @movie = Movie.new(movie_params)
      @movie.category = @category

      if @movie.save
        redirect_to category_movie_path(@category, @movie), notice: "Movie created successfully"
      else
        render :new
      end
    end

    def update
      @movie = Movie.find(params[:id])

      if @movie.update(movie_params)
        render json: { movie: @movie }, status: :accepted
      else
        render json: { errors: @movie.errors }, status: :unprocessable_entity
      end
    end

    def destroy
        @movie = Movie.find(params[:id])

        if @movie.destroy
          render json: { movie: nil}, status: :accepted
        else
          render json: { errors: @movie.errors}, status: :unprocessable_entity
        end
      end

      protected
    def set_category
      @category = Category.find(params[:category_id])
      @movie = @category.movies.find(params[:id])
    end
end
