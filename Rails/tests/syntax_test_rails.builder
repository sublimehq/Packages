# SYNTAX TEST "Packages/Rails/Ruby (Rails).sublime-syntax"

class ApplicationController < ApplicationController
# <- keyword.declaration.class
#     ^ entity.name.class
#                           ^ punctuation.separator
#                             ^ entity.other.inherited-class
  before_filter :find_model
# ^ support.function.actionpack.rails

  before_action :require_login
# ^ support.function.actionpack.rails

  class_attribute :subject
# ^ support.function.activesupport.rails

  self.config = { after_filter: 1, after_filter?: 2, after_filter!: 3 }
  #               ^^^^^^^^^^^^^ constant.other.symbol.ruby
  #                                ^^^^^^^^^^^^^^ constant.other.symbol.ruby
  #                                                  ^^^^^^^^^^^^^^ constant.other.symbol.ruby

  def find_model
    @model = User.find(params[:id]) if params[:id]
  end
end

class Product < ActiveRecord::Base

# <- meta.model.rails

end

class PictureFile < ApplicationRecord

# <- meta.model.rails

  after_commit :delete_picture_file_from_disk, on: :destroy
# ^ support.function.activerecord.rails

  after_destroy_commit :delete_picture_file_from_disk
# ^ support.function.activerecord.rails
end

# <- source.ruby.rails

ActionController::Routing::Routes
# <- meta.routes.rails support.class.ruby
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.routes.rails
#               ^^ punctuation.accessor.double-colon.ruby
#                 ^^^^^^^ support.class.ruby
#                        ^^ punctuation.accessor.double-colon.ruby
