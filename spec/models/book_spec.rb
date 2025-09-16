require 'rails_helper'

RSpec.describe Book, type: :model do 
    
    it "Book title is valid" do 
        book = Book.new(title: "Valid Title", author: "author name", price: 19.99, published_date: Date.today)
        expect(book).to be_valid
    end

    it "Book title is not valid" do 
        book = Book.new(title: nil) 
        expect(book).to_not be_valid 
    end

    it "Author is valid" do 
        book = Book.new(title: "Valid Title", author: "author name", price: 19.99, published_date: Date.today)
        expect(book).to be_valid 
    end 

    it "Author is not valid" do 
        book = Book.new(title: "valid title", author: nil) 
        expect(book).to_not be_valid 
    end

    it "Price is valid" do 
        book = Book.new(title: "Valid Title", author: "author name", price: 19.99, published_date: Date.today)
        expect(book).to be_valid
    end

    it "Price is not valid" do 
        book = Book.new(price: -5) 
        expect(book).to_not be_valid 
    end

    it "Date is valid" do 
        book = Book.new(title: "Valid Title", author: "author name", price: 19.99, published_date: Date.today)
        expect(book).to be_valid 
    end 

    it "Date is not valid" do 
        book = Book.new(published_date: nil) 
        expect(book).to_not be_valid 
    end
end