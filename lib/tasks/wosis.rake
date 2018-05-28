require 'wosis'

namespace :etl do
  namespace :wosis do
    desc 'Parse wosis db csv and load data through our models'
    task import: :environment do
      Wosis.new(file_prefix: ENV['WOSIS_FILE_PREFIX']).import!
    rescue ArgumentError => e
      Rails.logger.error e.message
      Rails.logger.error "Missing 'wosis_file_prefix' param for importing profiles"
    end
  end
end
