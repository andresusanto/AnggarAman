package models;


import com.avaje.ebean.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by jelink on 06/12/15.
 */

@Entity
public class User extends Model {
    @Id
    public Integer id;

    public String username;
    public String name;
    public int role;

}
