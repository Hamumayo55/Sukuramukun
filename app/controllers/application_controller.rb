class ApplicationController < ActionController::Base
  def hello
    render html: "さよなら人類、ようこそ機械"
  end
end
