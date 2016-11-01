class GuessesController < ApplicationController
  def index
  g = Guess.new
  g.first_num = params["first_number"]
  g.second_num =params["second_number"]
  g.third_num = params["third_number"]
  g.save

  @list = Guess.all

  @first = params["first_number"]
  @second = params["second_number"]
  @third = params["third_number"]

  if @first_number == nil
  render("guesses/index.html.erb")
  elsif @first_number < @second_number && @second_number < @third_number
  @outcome = "Yes!"
  elsif
  @outcome = "No."
  end
  end

def answer

  #params = {"rule" => "Hi there"}

  @user_answer = params["rule"]

  render ("guesses/answer.html.erb")

end

end
