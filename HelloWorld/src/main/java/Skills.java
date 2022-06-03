import org.seasar.doma.*;
@Entity(metamodel = @Metamodel)
public class Skills {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
    Integer skill_attribute_id;
    Integer delete_flag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSkill_attribute_id() {
        return skill_attribute_id;
    }

    public void setSkill_attribute_id(Integer skill_attribute_id) {
        this.skill_attribute_id = skill_attribute_id;
    }

    public Integer getDelete_flag() {
        return delete_flag;
    }

    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }



}