class StaffController < ApplicationController
	
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
			redirect_to '/staff/home_page'
		end
	end
end
