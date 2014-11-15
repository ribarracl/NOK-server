class UsersController < ApplicationController

	def index

	end

	def data
		respond_to do |format|
			format.json do 
				data = {}
				User.all.each do |user|
					day = user.created_at.strftime('%y-%m-%d')	

					data[day] = 0 unless data.key?(day)
					data[day] = data[day] + 1
				end
				
				data = data.sort_by{ |day, count| day }
				data.insert(0, ["Fecha", "#"])
				render :json => data
			end
		end
	end
end
