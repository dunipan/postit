module ApplicationHelper
	def fix_url(str)
		str.starts_with?("http://") ? str : "http://#{str}"
	end
end


#use helpers when there is presentation logic or redundant code
#mono layer deals with pure data structures, arrays and hashes