require 'notes'

describe Note do
  let(:note) { Note.new }

  it 'creates new instance of Note' do
    expect(note).to be_an_instance_of(Note)
  end

  it 'initializes note_list' do
    expect(note.notes_list).to eql([])
  end

end
