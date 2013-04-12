class Query
  include Mongoid::Document

  field :keyword, type: String
end
