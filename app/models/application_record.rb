class ApplicationRecord < ActiveRecord::Base
  include Knock::Authenticable
  self.abstract_class = true
end
