class UserController < ApplicationController

	def login
		if request.post?		
			@user=User.find_by_name(params[:name])
			if(@user.nil?)
				flash[:error]="User has not been registered"
			else
				session[:id]=@user.id
				if(@user.memtype=='m')
					 redirect_to '/manager/home_page'								
				else		
					redirect_to '/staff/home_page'
				end
							
			end
		end

	end

	def create
		if request.post?
			@us=User.new
			@as=Assoc.new
		 	@u=User.find_by_name(params[:name])
		 	if(@u.nil?)
		 		@us.name=params[:name]
		 		@us.email=params[:email]
		 		@us.memtype='s'
		 		@us.save!
		 		@as.s_id=@us.id
		 		@as.save!
			 	flash[:notice]="New user was successfully registered"
			 	redirect_to '/'
		 	else
				flash[:error]="Name already exists, try again with a different name"
				redirect_to '/create'
		 	end		
		 end
	end	

	def home_page

	end	

end
