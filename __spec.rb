require 'spec_helper'
require 'rails_helper'

describe SessionsController, :type => :controller do
  let(:controller) { SessionsController.new }

  context "session destroy action" do
    it "should have a destroy action" do
      expect(controller).to respond_to(:destroy), "Did you implement the destroy action?"
    end

    it "should remove user id from session" do
      session[:user_id] = 1

      response =  post :destroy
      expect(session[:user_id]).to be(nil)
      expect(response).to redirect_to('/')
    end
  end
end