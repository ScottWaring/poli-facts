class StateTable < ApplicationRecord
    has_many :politicians
    has_one :governor
end
