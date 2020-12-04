class Cat < ApplicationRecord

    validates :name
    validates  :sex
    validates :color, :inclusion => {:in => VALID_VALUES}


end