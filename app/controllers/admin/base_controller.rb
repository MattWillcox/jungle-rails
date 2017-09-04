#Base controller for admin name space. Sets authorization to use admin section
class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: ENV['AUTHENTICATE_USER_ID'], password: ENV['AUTHENTICATE_PASSWORD']
end