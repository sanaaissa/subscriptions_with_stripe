class SubscriptionsController < ApplicationController
  before_action :authenticate_user!, except: [:new]
  before_action :redirect_to_signup, only: [:new]

  def show

  end

  def new

  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    plan: "monthly"
    )
    raise customer
  end

  def destroy

  end


  def redirect_to_signup
    unless user_signed_in?
      session['user_return_to'] = new_subscription_path
      redirect_to new_user_registration_path
    end
  end

end
