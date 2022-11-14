# ./lib/tasks/update_payment_status.rake

namespace :dues_status do
  desc "Update payment status based on membership type and time."
  task :update_records => :environment do
    #semester payment
    if @due.payment_type == 'semester' && Time.now > (@due.transaction_date + 119.days) then
      @due.updated_at = Dues.where('updated_at <= ?', Time.now - 119.days)
      @due.payment_status = 'not paid'
      @due.save
    end

    #year payment
    if @due.payment_type == 'year' && Time.now > (@due.transaction_date + 365.days) then
      @due.updated_at = Dues.where('updated_at <= ?', Time.now - 365.days)
      @due.payment_status = 'not paid'
      @due.save
    end

    #lifetime payment
    if @due.payment_type == 'life' then
      @due.save
    end
  end
end