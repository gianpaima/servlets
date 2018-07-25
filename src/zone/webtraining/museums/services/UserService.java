package zone.webtraining.museums.services;

import zone.webtraining.museums.pojos.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {

    public List<User> getAll() {

        User esmeralda = new User(1, "esmeralda", "Rodriguez");

        ArrayList<User> users = new ArrayList<User>();
        users.add(esmeralda);

        return users;

    }
}
