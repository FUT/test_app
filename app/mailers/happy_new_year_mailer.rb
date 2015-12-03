class HappyNewYearMailer < ApplicationMailer
  def happy_new_year(year)
    @year = year
    mail(to: 'fut.wrk@gmail.com', subject: 'Happy new year!')
  end
end
