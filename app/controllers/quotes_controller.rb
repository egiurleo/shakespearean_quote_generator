class QuotesController < ApplicationController
  def generate
    number = rand

    quote = case number
    when 0..0.25
      Faker::Quotes::Shakespeare.hamlet_quote
    when 0.25..0.5
      Faker::Quotes::Shakespeare.as_you_like_it_quote
    when 0.5..0.75
      Faker::Quotes::Shakespeare.king_richard_iii_quote
    else
      Faker::Quotes::Shakespeare.romeo_and_juliet_quote
    end

    render json: quote
  end
end
