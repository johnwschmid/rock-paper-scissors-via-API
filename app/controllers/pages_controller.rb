class PagesController < ApplicationController
	require 'rest-client'

  def home
  end

  def throw
	  response = RestClient.get 'https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw'
	  puts response

		if response == '{"statusCode":200,"body":"\"rock\""}' && params[:throw] == 'rock'
			@response_throw = 'rock'
			@result = 'tie'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"paper\""}' && params[:throw] == 'rock'
			@response_throw = 'paper'
			@result = 'lose'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"scissors\""}' && params[:throw] == 'rock'
			@response_throw = 'scissors'
			@result = 'win'
			render 'home'

		elsif response == '{"statusCode":200,"body":"\"rock\""}' && params[:throw] == 'paper'
			@response_throw = 'rock'
			@result = 'win'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"paper\""}' && params[:throw] == 'paper'
			@response_throw = 'paper'
			@result = 'tie'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"scissors\""}' && params[:throw] == 'paper'
			@response_throw = 'scissors'
			@result = 'lose'
			render 'home'

		elsif response == '{"statusCode":200,"body":"\"rock\""}' && params[:throw] == 'scissors'
			@response_throw = 'rock'
			@result = 'lose'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"paper\""}' && params[:throw] == 'scissors'
			@response_throw = 'paper'
			@result = 'win'
			render 'home'
		elsif response == '{"statusCode":200,"body":"\"scissors\""}' && params[:throw] == 'scissors'
			@response_throw = 'scissors'
			@result = 'tie'
			render 'home'	 
		  
		elsif response == '{"statusCode":200,"body":"\"cereal\""}'
			@response_throw = 'cereal'
			@result = 'other player threw "cereal" for some reason. throw again, but slowly this time'
			render 'home'

		else
			@result = 'Something went wrong (on their end), try again.' 
			render 'home'
	  end

  end
end
