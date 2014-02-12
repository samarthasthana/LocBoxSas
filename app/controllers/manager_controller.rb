class ManagerController < ApplicationController

	def home_page
		@uid=session[:id]
		@user=User.find(@uid)
	end	

	def edit
		@uid=session[:id]
		@user=User.find(@uid)
		if request.post?
			if(!(params[:name].nil? || params[:email].nil?))
				User.update(@user.id,:name=>params[:name],:email =>params[:email])
				flash[:notice]="Update successful"
			else
				flash[:error]="Update not successful"
			end
			redirect_to '/manager/home_page'
		end
	end

	def add_staff
		
	end

	def read_staff
		
	end

	def update_staff
	end

	def delete_staff
		
	end
end
