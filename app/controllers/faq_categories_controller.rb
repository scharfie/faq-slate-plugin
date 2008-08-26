class FaqCategoriesController < ApplicationController
  resources_controller_for :faq_categories, :in => [:space]
end