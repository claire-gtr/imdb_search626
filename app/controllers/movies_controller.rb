class MoviesController < ApplicationController
  def index
    if params[:query]
      # sql_query = " \
      #   movies.title @@ :query \
      #   OR movies.synopsis @@ :query \
      #   OR directors.first_name @@ :query \
      #   OR directors.last_name @@ :query \
      # "
      # @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
      @movies = Movie.where(synopsis: params[:query])
    end
    if params[:status]
      @movies = @movies.where(synopsis: params[:status])
    end
  end
end
