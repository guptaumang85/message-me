class ChatboxController < ApplicationController
	before_action :require_user

	def index
		@messages = Message.all.last(20)
	end
	
end
