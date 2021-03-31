package com.huawei.controller;

import com.huawei.bean.Book;
import com.huawei.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model){
        List<Book> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }
    @RequestMapping("/toAddBook")
    public String toAddpage(){
        return "addBook";
    }
    @RequestMapping("/addBook")
    public String addBook(Book book){
        System.out.println("addbokk==>"+book);
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/toupdateBook")
    public String toUpdatepage(int id, Model model){
        Book book = bookService.queryBookById(id);
        model.addAttribute("book",book);
        return "updateBook";
    }
    @RequestMapping("/updateBook")
    public String updateBook(Book book, Model model){
        System.out.println("updateBook===>"+book);
        bookService.updateBook(book);
        Book temp = bookService.queryBookById(book.getBookID());
        model.addAttribute("book", temp);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model){
        Book book = bookService.queryBookByName(queryBookName);
        List<Book> books = new ArrayList<>();
        if(book==null){
            books=bookService.queryAllBook();
            model.addAttribute("error","未查询到相关书籍");
        }
        books.add(book);
        model.addAttribute("list",books);
        return "allBook";
    }

}
