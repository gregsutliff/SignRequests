class Request < ActiveRecord::Base
	validates :requester, :location, :sign_type, :description, presence: true
end
