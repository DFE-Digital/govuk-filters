module Govuk
  module Filters
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
