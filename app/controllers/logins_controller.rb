class LoginsController < ApplicationController
  def new
    
  end
  
  def create
    chef = chef.find_by(email: params[:email])
    if chef && chef.authenticate(params[:password])
      session[:chef_id] = chef.id
      flash[:success]= 'You Have Successfully Logged In'
      redirect_to recipes_path
    else
      flash.now[:danger] = 'Your Password or Email Address Does Not Match'
      render 'new'
    end
  end
  
  def destroy
    session[:chef_id] = nil
    flash[:success]= 'You Have Logged Out'
    redirect_to root_path
  end
  
end