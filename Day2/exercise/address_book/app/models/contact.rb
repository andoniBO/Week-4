class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  validate :my_custom_validation

  def self.get_all_contacts
    all.order('lower(name) ASC')
  end

  def self.create_contact(contact)
    contact.save
  end

  def self.find_by_id(id)
    contact = find(id.to_i)
  end

  def self.get_favorites
    where(favorites:true)
  end

  def self.make_search(key)
    where("name like ?", "#{key}%").order('lower(name) ASC')
  end

  def make_favorite
    self.favorites = true
  end

  private

  def my_custom_validation

  end
end
