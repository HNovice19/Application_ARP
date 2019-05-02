package com.user.mngmnt;

import com.user.mngmnt.model.RoleNames;
import com.user.mngmnt.model.User;
import com.user.mngmnt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class InitialSetup {

    @Autowired
    private UserService userService;

    @Value("${admin.nom}")
    private String nom;

    @Value("${admin.matricule}")
    private String matricule;

    @Value("${admin.email.address}")
    private String emailAddress;

    @Value("${admin.password}")
    private String password;



    @PostConstruct
    public void initIt() throws Exception {

        User dbUser = userService.findUserByEmail(emailAddress);

        if (dbUser == null) {
            User user = new User();
            user.setNom(nom);
            user.setMatricule(matricule);
            user.setEmail(emailAddress);
            user.setPassword(password);
            user.setActive(Boolean.TRUE);
            user.setRoleName(RoleNames.ADMIN.name());
            userService.saveUser(user);
        }
        loadUsers();
    }

    private void loadUsers() {
        User user1 = new User("user1", "matricule1",
                "john@doe.com", "123456", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user1);

        User user2 = new User("user2", "matricule2",
                "user2@gmail.com", "123456", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user2);

        User user3 = new User("user3", "matricule3",
                "user3@gmail.com", "123456", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user3);

        User user4 = new User("user4", "matricule4",
                "user4@gmail.com", "123456", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user4);

        User user5 = new User("user1", "matricule1",
                "user5@gmail.com", "123456", RoleNames.ADMIN.name(), Boolean.TRUE);
        userService.saveUser(user5);

    }
}
