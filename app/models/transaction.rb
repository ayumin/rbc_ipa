class Transaction < ActiveRecord::Base
  has_attached_file :kaizan, :path => ":rails_root/public/:attachment/:basename_:id.data"
end
