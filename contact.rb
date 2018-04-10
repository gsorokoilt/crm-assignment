class Contact

@@contacts = []
@@id = 1



  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @id = @@id
    @@id += 1
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end


  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name=first_name
  end

  def last_name=(last_name)
    @last_name=last_name
  end

  def last_name
  @last_name
  end

  def email
    @email
  end

  def email=(email)
    @email=email
  end

  def note
    @note
  end

  def note=(note)
    @note=note
  end

  def id
    @id
  end

  def full_name
    first_name + " " + last_name
  end


  def delete
    @@contacts.delete(self)
  end


  def self.delete
    p 'enter full name of contact to be deleted'
      removee = gets.chomp

    @@contacts.each do |contact|
      if contact.full_name == removee
        contact.delete
      end
    end
  end



  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all

      return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id == id
        return contact
      end
    end
  end
  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def self.update(id, attribute,new_info)
    @@contacts.each do |contact|
      if contact.id == id
        if attribute == "first name"
          @first_name = new_info
          contact.first_name = new_info
          return contact
        end
      end
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty


def self.find_by(user_input)
  @@contacts.each do |contact|
    if contact.email == user_input
      return contact
    elsif contact.first_name == user_input
      return contact
    elsif contact.last_name == user_input
      return contact
    end
  end
end
  # This method should delete all of the contacts
  def self.delete_all
    return @@contacts.clear
  end
  #
  # def full_name(first_name,last_name)
  #   @@contacts.each do |contact|
  #     if contact.first_name == first_name && contact.last_name == last_name
  #       return contact
  #     end
  #   end
  # end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here

  # Feel free to add other methods here, if you need them.



# Contact.create("billy","thompson","b@m.ca","hates cats")
#
# Contact.create("michael","thompson","b@f.ca","hates cats")
#
# Contact.create("billy","idol","b@t.ca","hates cats")






end
# billy.email="t@b.ca"
