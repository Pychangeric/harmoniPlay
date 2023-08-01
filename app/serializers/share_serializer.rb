
class ShareSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :platform, :share_url
end
