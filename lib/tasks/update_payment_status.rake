# ./lib/tasks/update_payment_status.rake

namespace :dues_status do
    desc "Rake task to update payment status based on membership type and time."
    task :update_records => :environment do
      dues = Dues.nba_search
      dues.each do |item|
        item.each do |hash|
          @due = Due.new(due_params)
          @due.save
        end
  
        #semester payment
        if due_type == 'semester' && Time.now > (transaction_date + 119.days) then
          updated_at = Dues.where('updated_at <= ?', Time.now - 119.days)
          is_paid = 'not paid'
          dues.save
        end
  
        #year payment
        if due_type == 'year' && Time.now > (transaction_date + 365.days) then
          updated_at = Dues.where('updated_at <= ?', Time.now - 365.days)
          is_paid = 'not paid'
          dues.save
        end
  
        #lifetime payment
        if due_type == 'life' then
          dues.save
        end
      end
  
      puts "#{Time.now} - Success!"    end
end