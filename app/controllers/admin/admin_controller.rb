class Admin::AdminController < ApplicationController
  before_filter :require_login

  layout "backoffice"
end
