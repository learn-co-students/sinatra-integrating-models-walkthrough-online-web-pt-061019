require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    @count = @analyzed_text.count_of_words
    @count_vowels = @analyzed_text.count_of_vowels
    @count_consonants = @analyzed_text.count_of_consonants
    @most_letters_used_one = @analyzed_text.most_used_letter.keys.first.upcase
    @most_letters_used_two = @analyzed_text.most_used_letter.values.first


    erb :results
  end
end
