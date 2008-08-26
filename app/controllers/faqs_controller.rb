class FaqsController < ApplicationController
  resources_controller_for :faqs, :in => [:space]
  current_tab 'FAQs'
  
  response_for :edit do |wants|
    wants.html { render :action => 'new' }
  end
end