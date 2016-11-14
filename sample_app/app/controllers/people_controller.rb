class PeopleController < ApplicationController
 
 before_filter :authenticate, :only => :show

 def index
 	@people = [
 		'Anjali' ,
 		'Somya'
 	]
 end

 def show
 	@person = params[:id]
 end
 
 private
 def authenticate
 	if params[:id]== "Somya"
 		redirect_to people_url , :notice => "That page is restricted."
 	end
 end

end
