class MusicSerializer < ActiveModel::Serializer
  attributes :id, :title, :avatar, :genre, :album, :video, :created_at, :updated_at
end