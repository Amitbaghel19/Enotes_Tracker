package com.spring.Controller;
import com.spring.dao.UserDao;
import com.spring.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jakarta.servlet.http.HttpSession;


@Controller
public class HomeController {
@Autowired
    private UserDao userDao;
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
//    @RequestMapping("/addNotes")
//    public String addNotes(){
//        return "add_notes";
//    }
//    @RequestMapping("/viewNotes")
//    public String viewNotes(){
//        return "view_notes";
//    }
//    @RequestMapping("/editNotes")
//    public String editNotes(){
//        return "edit_notes";
//    }

    @RequestMapping(path = "/registerUser",method = RequestMethod.POST)
    public String registerUser(@ModelAttribute User user,HttpSession session){
            userDao.saveUser(user);

        session.setAttribute("reg", "Registered successfully");
        return "register";
    }
    @RequestMapping(path = "/loginUser",method = RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session){
        User user= userDao.login(email,password);
       if(user!=null){
           session.setAttribute("userObj",user);
           return "redirect:/home";
       }
       else {
           session.setAttribute("msg","invalid email and password");
           return "login";
       }
    }

}
