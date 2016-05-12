class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews

    respond_to do | format|
      format.html
      format.json { render json: { movie: @movie, reviews: @reviews} }
    end
  end

  def show
      @movie = Movie.find(params[:movie_id])
      @review = @movie.reviews.find(params[:id])

      respond_to do |format|
        format.html
        format.json { render json: { movie: @movie, review: @review} }
      end
    end

  def create
    @review = Review.new(review_params)
    @review.movies = @movies

    if @review.save
      redirect_to movies_review_path(@movies, @review), notice: "Thanks for your review"
    else
      render :new
    end
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      render json: { review: @review}, status: :accepted
    else
      render json: { errors: @review.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])

    if @review.destroy
      render json: { review: nil}, status: :accepted
    else
      render json: { errors: @review.errors}, status: :unprocessable_entity
    end
  end

  protected
  def set_movie
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.find(params[:id])
  end

end
