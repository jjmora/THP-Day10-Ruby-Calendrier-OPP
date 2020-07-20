require 'pry'
require 'time'

class Event < EventCreator
  attr_accessor :start_date, :duration, :title, :attendees
  

  # def initialize(start_date, duration, title, attendees)
  #   @start_date = string_to_time(start_date)
  #   @duration = duration
  #   @title = title
  #   @attendees = attendees
  # end

  def string_to_time(string)
    Time.parse(string)
  end

  def postpone_24h()
    @start_date = @start_date + 24*60*60
  end

  def end_date
    @start_date + @duration*60
  end

  def is_past?
    @start_date < Time.now ? true : false
  end

  def is_future?
    @start_date > Time.now ? true : false #Alt -> !new.is_past?
  end

  def is_soon?
    if @start_date > Time.now && @start_date < (Time.now + 30*60)
      true
    else
      false
    end
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de debut : #{@start_date}"
    puts "Duree : #{@duration}"
    attendees_liste = @attendees#.join(', ')
    puts "Invites : #{attendees_liste}"
  end

  def self.all
    return @@all_events
  end
end

#Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

