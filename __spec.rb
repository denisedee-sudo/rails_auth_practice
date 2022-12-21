require 'spec_helper'
require 'rails_helper'

describe ApplicationController, :type => :controller do
   controller do
    def index
      current_user
      render nothing: true
    end
  end

  before(:each) do
    User.delete_all
  end

  context "current_user action" do
    context "user create action" do
      it "current_user" do
      u = User.create(email: "test", password: "test", password_confirmation: "test")
      session[:user_id] = u.id

      get :index
      expect(assigns(:current_user).id).to be(u.id)
      end
    end
  end
end