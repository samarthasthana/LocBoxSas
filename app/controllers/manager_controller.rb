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
	# SHOW ALL THE STAFF THAT ARE UNASSIGNED TO MANAGERS and add	
		@uid=session[:id]
		@as=Assoc.all()			
		
	end

	def add_staff_helper
			@as=Assoc.find_by_s_id(params[:sid])
			if(!@as.nil?)
			Assoc.update(@as.id,:m_id=>session[:id], :s_id=>params[:sid])
			flash[:notice]="Update successful"
			redirect_to '/manager/home_page'
		else
			flash[:notice]="Update NOT successful"
			redirect_to '/manager/add_staff'
		end					
	end

	def read_staff
	# show all the staff that are assigned to this manager
		@uid=session[:id]
		@as=Assoc.all()	
	end

	def update_staff
	# update staff info
	end

	def delete_staff
	# remove staff from this manager
	end
end
