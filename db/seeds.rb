require 'json'
require 'open-uri'

Movie.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

movie_results = movies['results']

movie_results.each do |movie_result|
  Movie.create!(title: movie_result.original_title, overview: movie_result.overview, poster_url: "https://image.tmdb.org/t/p/w500#{movie_result.poster_path}", rating: movie_result.vote_average)
end
