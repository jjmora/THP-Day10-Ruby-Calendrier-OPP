require 'pry'
require 'time'

class DateParser
  attr_accessor :date, :parsed_date

  def initialize(date_string)
    #le [numéro du jour] [nom du mois] à [numéro de l'heure] h [numéro de la minute]"
    #le 25 juillet a 4h30
    @date = date_string.split(' ')
    @parsed_date = @date[1] + "-" + @date[2] + " " + @date[4].split('h')[0] + ":" + @date[4].split('h')[1]
    @parsed_date = Time.parse(@parsed_date)
  end
end

binding.pry