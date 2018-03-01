class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation(user, order_id, line_items)
    puts 'this executes'
    if user
    @user = user.email
    else
    @user = 'example1@example.com'
    end
    @order_id = order_id
    @line_items = line_items
    @url = 'localhost:3000/orders/' + order_id.to_s
    mail(to: @user, subject: @order_id)
  end

end
