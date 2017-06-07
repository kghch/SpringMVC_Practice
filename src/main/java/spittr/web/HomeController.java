package spittr.web;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by wanghan on 2017/6/5.
 */

@Controller
public class HomeController {

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public static String home(ModelMap modelMap) {
        SessionFactory sf = new org.hibernate.cfg.Configuration().configure().buildSessionFactory();

        Session s = sf.openSession();
        s.beginTransaction();

        Query q = s.createQuery("from User p");
        List<User> ps = q.list();

        s.getTransaction().commit();
        s.close();
        sf.close();
        System.out.println(ps);
        modelMap.addAttribute("userList", ps);
        return "home";
    }
}
