class Profile < ActiveRecord::Base
  belongs_to :user

  validate :not_both_names_null, :gender_mail_or_female, :no_male_named_sue

  def not_both_names_null
    if first_name.nil? and last_name.nil?
      errors.add(:first_name, "and last name cannot both be null!")
    end
  end

  def gender_mail_or_female
    if gender != "male" and gender != "female"
      errors.add(:gender, "may be either male or female! *TRIGGERED*")
    end
  end

  def no_male_named_sue
    if gender == "male" and first_name == "Sue"
      errors.add(:gender, ', you may not be a male called "Sue"')
    end
  end

  def self.get_all_profiles min,max
    Profile.where("birth_year BETWEEN :min AND :max", min: min, max: max).order(:birth_year)
  end
end
