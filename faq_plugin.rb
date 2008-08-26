class FaqPlugin < Slate::Plugin
  name 'FAQ'
  description 'Create frequently asked questions for your site'
  
  navigation do |tabs|
    tabs.add 'FAQs', space_faqs_path(Space.active)
  end
  
  routes do |map|
    map.with_space do |space|
      space.resources :faqs
      space.resources :faq_categories
    end
  end
end