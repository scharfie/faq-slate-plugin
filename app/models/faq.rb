class Faq < ActiveRecord::Base
  belongs_to :category, :class_name => 'FaqCategory', :foreign_key => 'faq_category_id'
end

Space.has_many :faqs