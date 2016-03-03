# SYNTAX TEST "Packages/Rails/Ruby on Rails.sublime-syntax"
class ApplicationController < ApplicationController
  before_filter :find_model
# ^ support.function.actionpack.rails

  before_action :require_login
# ^ support.function.actionpack.rails

  class_attribute :subject
# ^ support.function.activesupport.rails

  self.config = { after_filter: 1, after_filter?: 2, after_filter!: 3 }
  #               ^ constant.other.symbol.ruby.19syntax
  #                                ^ constant.other.symbol.ruby.19syntax
  #                                                  ^ constant.other.symbol.ruby.19syntax

  def find_model
    @model = User.find(params[:id]) if params[:id]
  end
end

# <- source.ruby.rails
