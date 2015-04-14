class Detail < ActiveRecord::Base

validates :to, presence: true
validates :from , presence: true
validates :billno, presence: true
validates_numericality_of :billno, on: :create


end
