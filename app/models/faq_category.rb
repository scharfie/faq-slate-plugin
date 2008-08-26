class FaqCategory < ActiveRecord::Base
  has_many :faqs
  validates_uniqueness_of :name
end