namespace :notification do
  desc "To send SMS notifications to employees asking them to log overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees…
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to a log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    #
    # end
    # no spaces or dashes
    # exactly 10 characters
    # all charcters have to be a number
  end
end
