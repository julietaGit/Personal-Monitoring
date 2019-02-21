class ProjectSearch
	attr_reader :start_from, :start_to

	def initialize(params)
		params ||= {}
		@start_from = parsed_start(params[:start_from], 7.days.ago.to_date.to_s)
		@start_to = parsed_start(params[:start_to], Date.today.to_s)
	end

	def scope
		Project.where('start BETWEEN ? AND ?', @start_from, @start_to)
	end

	private

	def parsed_start(start_string, default)
		 Date.parse(start_string)
	rescue ArgumentError, TypeError
		default
	end
end
