%w{ agata ania basia emi julia karolina magda monika wiktoria}.each do |muse|
  AdminUser.create(:username => i, :email => "#{i}@applicake.com", :password => "ticckle", :password_confirmation =>"ticckle")
end

