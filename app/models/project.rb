class Project < ActiveRecord::Base
  
  default_scope order('started_at DESC')
  
  def time
    start_date_time = started_at
    end_date_time = finished_at.nil? ? Time.now() : finished_at
    inc_date_time = end_date_time - start_date_time
    days = (inc_date_time / (60*60*24)).floor
    inc_date_time = inc_date_time % (60*60*24)
    hours = (inc_date_time / (60*60)).floor
    inc_date_time = inc_date_time % (60*60)
    minutes = (inc_date_time / 60).floor
    seconds = (inc_date_time % 60).floor
    days.to_s + ':' + hours.to_s.rjust(2, '0') + ':' + minutes.to_s.rjust(2, '0') + ':'+ seconds.to_s.rjust(2, '0')
  end
end
