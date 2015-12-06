package controllers;

import com.avaje.ebean.Model;
import models.User;
import play.*;
import play.mvc.*;
import play.data.Form;
import views.html.*;

import java.util.List;

import static play.libs.Json.toJson;

public class Application extends Controller {

    public Result index() {
        return ok(index.render("Main Anggar : Aplikasi Anti Permainan Anggaran"));
    }

    public Result addUser() {
        User user = Form.form(User.class).bindFromRequest().get();
        System.out.println(user.name);
        user.save();
        return redirect(routes.Application.index());
    }

    public Result getUsers() {
        Model.Finder<Integer, User> find = new Model.Finder<>(User.class);
        List<User> users = find.all();
        return ok(toJson(users));
    }

}
