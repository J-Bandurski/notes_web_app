require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  
  test "Should not save empty note" do
    note = Note.new
    
    note.save
    
    refute note.valid?
  end
  
  test "Should save non empty note" do
    note = Note.new
    
    note.title = "My Note"
    note.description = "My Description"
    
    note.save
    
    assert note.valid?
  end
  
  test "Should not save duplicate note title" do
    note1 = Note.new
    note1.title = "My Note"
    note1.description = "My Description"
    note1.save
    assert note1.valid?
    
    note2 = Note.new
    note2.title = "My Note"
    note2.description = "My Description"
    note2.save
    refute note2.valid?
    
  end
  

end