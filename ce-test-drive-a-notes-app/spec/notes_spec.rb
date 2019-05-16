require 'notes'

describe Note do
  it 'initializes a new Note' do
    note = Note.new
    expect(note).to be_an_instance_of(Note)
  end

  

end
