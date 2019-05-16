require 'notes'

describe Note do
  it 'creates new instance of Note' do
    note = Note.new
    expect(note).to be_an_instance_of(Note)
  end

  it 'initializes note_list' do
    note = Note.new
    expect(note.notes_list).to eql([])
  end

end
