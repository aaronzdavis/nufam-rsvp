class Subscriber < ActiveRecord::Base

  validates :name, :email, presence: true

  after_create :mailchimp

  def mailchimp
    Newsletter.new.subscribe('04f2bc1f4f', self.email, self.first_name, self.last_name)
  end

  def first_name
    name.split(' ').first
  end

  def last_name
    name.split(' ').first
  end

end
