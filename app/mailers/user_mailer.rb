class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation(user, order_id, line_items)
    puts 'this executes'
    @user = user
    @order_id = order_id
    @line_items = line_items
    @url = 'localhost:3000/orders/' + order_id.to_s
    mail(to: @user.email, subject: @order_id)
  end

end
