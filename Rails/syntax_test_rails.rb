# SYNTAX TEST "Packages/Rails/Ruby on Rails.sublime-syntax"
class ApplicationController < ApplicationController
  before_filter :find_model
# ^ support.function.actionpack.rails

  before_action :require_login
# ^ support.function.actionpack.rails

  class_attribute :subject
# ^ support.function.activesupport.rails

  def find_model
    @model = User.find(params[:id]) if params[:id]
  end
end

# <- source.ruby.rails
