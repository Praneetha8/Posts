class MonthImage < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "960x178>", :thumb => "100x100>" }, :default_url => "/images/January.png"
end
