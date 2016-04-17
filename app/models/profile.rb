class Profile < ActiveRecord::Base
  validates_presence_of :ref

  private

    def self.generate_key
      key = DateTime.current.to_formatted_s(:number) + ('0'..'9').to_a.shuffle[0..3].join
    end
end
