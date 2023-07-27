class SearchHistorySerializer < ActiveModel::Serializer
  attributes :id, :query, :created_at
end