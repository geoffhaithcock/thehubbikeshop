class Bike < ActiveRecord::Base
    belongs_to :user
    has_many :reviews
    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
