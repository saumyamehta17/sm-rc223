class Order < ActiveRecord::Base
  #validates :number, presence: true
  #validates_acceptance_of :shipping, accept: true
  #validates_exclusion_of :name , in:  %W[sweety manoj] , message: "%{value} is reserved"
  validates_length_of :price, in: 2..4 , if: 'number.nil?'
  #def to_param
  #  'manok'
  #end

  def self.search(search)
    if search
      where(shipping: search)
    else
      all
    end
  end
end
