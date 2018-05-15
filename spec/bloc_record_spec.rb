require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

RSpec.describe AddressBook do
  let(:book) { AddressBook.create(name: 'NewBook') }

  def check_entry(entry, expected_name, expected_number, expected_email)
    expect(entry.name).to eq expected_name
    expect(entry.phone_number).to eq expected_number
    expect(entry.email).to eq expected_email
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book.add_entry(name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com')
      expect(book.entries.size).to eq(1)
    end
  end
end
