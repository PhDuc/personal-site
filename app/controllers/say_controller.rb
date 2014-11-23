class SayController < ActionController::Base
  def hello
    @data = {
      time: Time.now.strftime('%m/%d/%Y')
    }
  end

  def goodbye
  end
end
