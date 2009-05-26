class BwClassesController < ApplicationController

  hobo_model_controller

  auto_actions :write_only, :new, :index, :edit
  
end
