package com.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mvc.models.Book;
import com.mvc.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepository;
	
	public BookService(BookRepository bookRepository) {
		this.bookRepository = bookRepository;
	}
	
	 // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book book) {
        return bookRepository.save(book);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    
    // retrieves a book and update it
    public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
    	// get the book by id
    	Book book = this.findBook(id);
    	
    	if(book == null) { return null; }
    	// update the book
    	book.setTitle(title);
    	book.setDescription(desc);
    	book.setLanguage(lang);
    	book.setNumberOfPages(numOfPages);
    	
    	// now save the book
    	return bookRepository.save(book);
    }
    
    
    public void deleteBook(Long id) {
    	bookRepository.deleteById(id);
    }
}
