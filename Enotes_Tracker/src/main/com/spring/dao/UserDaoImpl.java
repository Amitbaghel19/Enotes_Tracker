package com.spring.dao;

import com.spring.entity.Notes;
import com.spring.entity.User;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import java.util.List;

@Repository

@Transactional
public class UserDaoImpl implements UserDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Override

    public int saveUser(User user) {
        int i=(Integer)hibernateTemplate.save(user);
        return i;
    }

    @Override
    public User login(String email, String password) {
        String str = "from User where email=:em and password=:pwd";
      User user=(User)  hibernateTemplate.execute(s->{
                   Query q = s.createQuery(str);
                        q.setString("em",email);
                        q.setString("pwd",password);
                        return q.uniqueResult();
        });
        return user;
    }

    @Override
    public int saveNotes(Notes notes) {
      int i=(Integer)  hibernateTemplate.save(notes);
        return i;
    }

    @Override
    public List<Notes> getNotesByUSer(User user) {
        String str = "from Notes where user=:us";
                    List<Notes> list = hibernateTemplate.execute(s->{
                        Query query =  s.createQuery(str);
                        query.setEntity("us",user);
                        return query.getResultList();
                    } );
        return list;
    }

    @Override
    public Notes getNotesById(int id) {
      Notes n = hibernateTemplate.get(Notes.class,id);
        return n;
    }
    @Override
    public void deleteNotes(int id) {
        Notes n = hibernateTemplate.get(Notes.class,id);
                   hibernateTemplate.delete(n);
    }

    @Override
    public void updateNote(Notes n) {
        hibernateTemplate.update(n);
    }

}
