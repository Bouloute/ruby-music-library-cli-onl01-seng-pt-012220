module Concerns
  module Findable
    def self.find_by_name(name)
      @@all.find{|song| song.name == name}
    end
  end
end
