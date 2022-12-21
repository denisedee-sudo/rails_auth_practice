require 'spec_helper'
require 'rails_helper'

describe SessionsController, :type => :controller do
  let(:controller) { SessionsController.new }

  context "user create action" do
    it "should have a create action" do
      expect(controller).to respond_to(:create), "Did you implement the create action?"
    end

  end
end
