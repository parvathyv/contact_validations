class Contact < ActiveRecord::Base
validates :first_name,  presence: true

validates :last_name,  presence: true
validates :email,  presence: true, uniqueness: true, format: {with: /\A\w[^@]*@\w[^@.]+.\w[^.]{2,4}\Z/, message: "Email is invalid"}
validates :phone,  presence: true, format: {with: /\A[1]{1}[0-9]{3}[0-9]{3}[0-9]{4}\Z/, message: "Please enter phone number in 1xxxxxxxxxx format"}
validates :state, presence: true, inclusion: { within:["AL", "AK", "AS","AZ","AR","CA","CO","CT","DE","DC","FM","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA", 
	"ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ",
	"NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VI","VA","WA",
	"WV","WI","WY"],
    message: "State must be real" }
validates :notes, length: { maximum: 500, message:"Notes are too long (max 500 characters)" }    

  def full_name
    [first_name, last_name].join(' ')
  end

  def location
    [city, state].join(', ')
  end

  def self.alphabetically
    order('LOWER(first_name) ASC')
  end

end
