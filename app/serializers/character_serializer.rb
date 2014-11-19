class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :file, :created_at, :updated_at
end
