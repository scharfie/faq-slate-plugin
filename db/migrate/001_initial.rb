class Initial < ActiveRecord::Migration
  def self.up
    create_table :faqs do |t|
      t.string :question
      t.text   :answer
      t.integer :position, :default => 0
      t.integer :faq_category_id
      t.integer :space_id
      t.timestamps
    end
    
    create_table :faq_categories do |t|
      t.string :name
      t.integer :space_id
      t.timestamps
    end
  end

  def self.down
    drop_table :faqs
    drop_table :faq_categories
  end
end