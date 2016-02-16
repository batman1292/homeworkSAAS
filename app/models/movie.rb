class Movie < ActiveRecord::Base
    attr_accessible :title, :rating, :description, :release_date

    def self.all_ratings ; %w[G PG PG-13 R NC-17] ; end #  shortcut: array of strings

    def released_1930_or_later
      errors.add(:release_date, 'must be 1930 or later') if
        release_date && release_date < Date.parse('1 Jan 1930')
    end

    def grandfathered?
      release_date && release_date >= @@grandfathered_date
    end

    before_save :capitalize_title
    def capitalize_title
      self.title = self.title.split(/\s+/).map(&:downcase).
        map(&:capitalize).join(' ')
    end

end
