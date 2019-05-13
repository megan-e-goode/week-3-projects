require 'library'

describe Library do
  it 'can display a list of all books' do
    # Arrange
      lib = Library.new
    # Act
      lib.list_books
    # Assert
      expect(lib.list_books).to eql([
        {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
        {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
        {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
        {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}
      ])
  end

  it 'can add book' do
    # Arrange
    lib = Library.new
    book = { title: 'Abc', author: 'Def Ghi', subject: 'JKL'}
    # Act
    lib.add_book(book)
    # Assert
    expect(lib.list_books).to include(book)
  end

  it 'can find a specified book by title' do
    # Arrange
      lib = Library.new
      title = "POODR"
    # Act
      lib.find_book(title)
    # Assert
      expect(lib.find_book(title)).to eql({title: 'POODR',
        author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can remove a book/s using a specified title' do
    # Arrange
      lib = Library.new
      title = "POODR"
    # Act
      lib.remove_book(title)
    # Assert
      expect(lib.list_books).not_to include(
        {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
      )
  end

  it 'can find all books by subject' do
    # Arrange
      lib = Library.new
      subject = "Ruby"
    # Act
      lib.all_books_by_subject(subject)
    # Assert
      expect(lib.all_books_by_subject(subject)).to eql([
        {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
        {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}
      )
  end
end
