class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: ENV['AUTHENTICATE_USER_ID'], password: ENV['AUTHENTICATE_PASSWORD']
end