package com.spring.dao;

import com.spring.entity.Notes;
import com.spring.entity.User;
import java.util.List;
public interface UserDao {
    public int saveUser(User user);
    public User login(String email,String password);
    public int saveNotes(Notes notes);
    public List<Notes> getNotesByUSer(User user);
    public Notes getNotesById(int id);
    public void deleteNotes(int id);
    public void updateNote(Notes n);
}
