class Role < ActiveRecord::Base
    has_many :auditions
def actors
    self.auditions.map do |audition|
        audition.actor
    end
end
def locations
    self.auditions.map do |audition|
     audition.location
    end
end
def lead
    self.auditions.select {|audition| audition.hired == true}.first || "no actor has been hired for this role"  ###takes an array 
end
def understudy
    self.auditions.select {|audition| audition.hired == true}.second || "no actor has been hired for understudy for this role"
end

end


