import org.seasar.doma.*;


@Entity(metamodel = @Metamodel)
public class Employee_skills {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer employee_id;
    Integer skill_id;
    Integer delete_flag;

    public Integer getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(Integer employee_id) {
        this.employee_id = employee_id;
    }

    public Integer getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(Integer skill_id) {
        this.skill_id = skill_id;
    }

    public Integer getDelete_flag() {
        return delete_flag;
    }

    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }


}