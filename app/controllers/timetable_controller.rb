class TimetableController < ApplicationController


  def show_table
    @timetables = Timetable.all
  end


end
