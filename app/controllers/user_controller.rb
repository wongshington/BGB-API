class UserController < ApplicationController
	def index
		render html: "hello, world!"
	end
end