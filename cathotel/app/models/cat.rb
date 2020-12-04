require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    VALID_VALUES = ['Orange', 'Grey','Black', 'Calico']

    validates :name, presence: true
    validates  :sex, presence: true
    validates :color, :inclusion => {:in => VALID_VALUES}, presence: true

    def age
        time_ago_in_words(birth_date)
    end
end