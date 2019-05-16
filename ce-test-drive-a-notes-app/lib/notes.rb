class Note
  attr_reader :notes_list

  def initialize
    @notes_list = []
  end

  def add(title, body)
    @notes_list.push({ title: title, body: body })
  end

  def show_titles
    @notes_list.each { |hash| puts hash[:title] } 
  end
end
