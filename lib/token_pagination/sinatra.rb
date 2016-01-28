require 'sinatra/base'
require 'active_record'

require_relative 'active_record_relation_extention'

module Sinatra
  module TokenPagination
    def self.registered(app)
      app.configure do
        ActiveRecord::Relation.send(:include, ::TokenPagination::ActiveRecordRelationExtention)
      end
    end
  end
end
