require_relative 'contact'

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
  end
end

  def print_main_menu
    puts '[1] Add a new contact'
  puts '[2] Modify an existing contact'
  puts '[3] Delete a contact'
  puts '[4] Display all the contacts'
  puts '[5] Search by attribute'
  puts '[6] Exit'
  puts 'Enter a number: '
  end


  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
    end
  end

  def add_new_contact
  print 'Enter First Name: '
  first_name = gets.chomp

  print 'Enter Last Name: '
  last_name = gets.chomp

  print 'Enter Email Address: '
  email = gets.chomp

  print 'Enter a Note: '
  note = gets.chomp

  Contact.create(first_name, last_name, email, note)
end

  def modify_existing_contact
    p 'Enter contact ID'
    id = gets.to_i
    p  Contact.find(id)
    p 'What part of contact requires update?'
    attribute = gets.chomp

    p "Please enter new information"
    new_info = gets.chomp
    p attribute + new_info

       Contact.update(id,attribute,new_info)
p      Contact.find(id)


  end

  def delete_contact
      Contact.delete
  end

  def display_all_contacts
    @contacts = Contact.all
    @contacts.each do |contact|
      p contact.full_name
    end
  end

  def search_by_attribute
    p "enter user name or email"
    user_input = gets.chomp
    contact = Contact.find_by(user_input)
  p contact.inspect
  end


end
contact_1 = CRM.new
contact_1.main_menu
