namespace :grace_period do
  desc "TODO"
  task evaluate_expirations: :environment do

    # TODO:
    # load the expiration.yml
    # evaluate the entry
    # make exceptions
    full_file_path = File.join(Rails.root, 'grace_period', 'expiration.yml')
    grace_hash = YAML.load_file(ERB.new(full_file_path).result)
    if Time.parse(grace_hash['grace_period']['exipration_time']) < Time.now
      raise grace_hash['grace_period']['expiration_message']
    end

    # Grace needs to open and evaluate the passed-in file
  end
end
