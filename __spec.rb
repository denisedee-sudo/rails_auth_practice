require 'spec_helper'
require 'rails_helper'

describe SessionsController, :type => :routing do
  context "Route test" do
    it "routes to #sessions" do
      get("/login").should route_to("sessions#new")
    end
  end
end