class Post < ApplicationRecord
    validates :account, {presence: true}
end
