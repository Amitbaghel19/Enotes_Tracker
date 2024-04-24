package com.spring.Controller;

import com.spring.dao.UserDao;
import com.spring.entity.Notes;
import com.spring.entity.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/user/")
public class UserController {
    @Autowired
    private UserDao userDao;
    @RequestMapping("/addNotes")
    public String addNotes(HttpSession session){
        User user = (User) session.getAttribute("userObj");
         if(user==null)
             return "redirect:/login";
        return "add_notes";
    }
    @RequestMapping("/viewNotes")
    public String viewNotes(HttpSession session,Model model){
         User user=(User) session.getAttribute("userObj");
         if(user==null)
             return "redirect:/login";
        List<Notes> notes = userDao.getNotesByUSer(user);
        model.addAttribute("list",notes);
        return "view_notes";
    }
    @RequestMapping("/editNotes")
    public String editNotes(@RequestParam("id") int id,Model model){
         Notes note=   userDao.getNotesById(id);
         model.addAttribute("edit",note);
        return "edit_notes";
    }
    @RequestMapping(path = "/updateNotes",method = RequestMethod.POST)
    public String updateNotes(@ModelAttribute Notes notes,HttpSession session){
      User user=(User) session.getAttribute("userObj");
       notes.setUser(user);
       notes.setDate(LocalDateTime.now().toString());
        userDao.updateNote(notes);
        session.setAttribute("update","updated successfully");
        return "redirect:/user/viewNotes";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("userObj");
        session.setAttribute("msg","logout successfully");
        return "login";
    }

    @RequestMapping(path = "/saveNotes",method = RequestMethod.POST)
    public String saveNotes(@ModelAttribute Notes notes,HttpSession session){
     User user=(User) session.getAttribute("userObj");
     notes.setDate(LocalDateTime.now().toString());
     notes.setUser(user);
        userDao.saveNotes(notes);
        session.setAttribute("nts","Notes added successfully");
        return "redirect:/user/addNotes";
    }
    @RequestMapping("/deleteNotes")

    public String deleteNotes(@RequestParam("id") int id,HttpSession session){
        userDao.deleteNotes(id);
        session.setAttribute("dlts","Notes deleted successfully");
        return "redirect:/user/viewNotes";
    }
}
