class TodoSerializer < ActiveModel::Serializer
  attributes :name, :created_at 
end
