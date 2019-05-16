require 'notes'

describe Note do
  let(:note) { Note.new }

  it 'creates new instance of Note' do
    expect(note).to be_an_instance_of(Note)
  end

  it 'initializes note_list' do
    expect(note.notes_list).to eql([])
  end

  it '.add title and body to notes_list' do
    #Arrange
    title = "Title"
    body = "Body"
    # Act
    note.add(title, body)
    # Assert
    expect(note.notes_list).to include({ title: "Title", body: "Body" })
  end

  it 'Note responds to .show_titles' do
    expect(note).to respond_to(:show_titles)
  end

  it '.show_titles returns a list of titles ONLY' do
    note.notes_list.push(
      { title: "A", body: "B" },
      { title: "C", body: "D" },
      { title: "E", body: "F" }
    )
    expect(note.show_titles).to eql(note.notes_list)
  end

end
