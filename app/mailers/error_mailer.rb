class ErrorMailer < ActionMailer::Base
  default from: "jalsamn@gmail.com"
  
  def error_email(unupdatable)
    @unupdatable = unupdatable
    mail(to: 'jalsamn@gmail.com', subject: 'Product Update Errors')
  end
end
