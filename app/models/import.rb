# Validates and executes an import process based on a CSV file
# TODO Validate csv format, handle error messages

require 'etl/user_csv'

class Import
  include ActiveModel::Model

  attr_accessor :file, :user, :producer

  def self.headers
    %w{
      user_profile_id
      user_layer_id
      latitude
      longitude
      country
      top
      bottom
      date
      bdws
      tceq
      cfvo
      ecec
      elco
      orgc
      phaq
      phkc
      clay
      silt
      sand
      wrvo
    }
  end

  def self.template
    CSV.generate headers: true, force_quotes: true do |csv|
      csv << self.headers
    end
  end

  def save
    Etl::UserCsv::Job.new.import! file, profile_attributes

    true
  rescue
    false
  end

  private

  # Filter attributes needed for Profile creation
  def profile_attributes
    {
      usuario: user,
      reconocedor_list: producer
    }
  end
end
