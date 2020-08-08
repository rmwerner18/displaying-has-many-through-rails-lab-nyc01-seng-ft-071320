class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def formatted_datetime
        splits = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ")
        splits[0] + " " + splits[1] + " " + splits[2] + " at " + splits[3]
    end
end
