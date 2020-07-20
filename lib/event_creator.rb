require 'pry'

class EventCreator
  attr_accessor :title, :start_date, :duration, :attendees
  @@all_events = []

  def getting_data_from_user
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    @title = gets.chomp

    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    @start_date = gets.chomp

    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    @duration = gets.chomp
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print "> "
    @attendees = gets.chomp
    puts "Super, c'est noté, ton évènement a été créé !"

    add_event_to_list
  end

  def add_event_to_list
    @@all_events.push([@title, @start_date, @duration, @attendees])
  end
end