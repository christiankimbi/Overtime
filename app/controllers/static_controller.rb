class StaticController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :homepage ]
  def homepage

  end
end