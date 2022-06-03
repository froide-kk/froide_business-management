import org.seasar.doma.*;
@Entity(metamodel = @Metamodel)
public class Work_details {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String work_history_id;
    String industry;
    String system_sum;
    String system_details;
    String role;
    String dev_scale;
    String dev_environment;
    Integer delete_flag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWork_history_id() {
        return work_history_id;
    }

    public void setWork_history_id(String work_history_id) {
        this.work_history_id = work_history_id;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSystem_sum() {
        return system_sum;
    }

    public void setSystem_sum(String system_sum) {
        this.system_sum = system_sum;
    }

    public String getSystem_details() {
        return system_details;
    }

    public void setSystem_details(String system_details) {
        this.system_details = system_details;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDev_scale() {
        return dev_scale;
    }

    public void setDev_scale(String dev_scale) {
        this.dev_scale = dev_scale;
    }

    public String getDev_environment() {
        return dev_environment;
    }

    public void setDev_environment(String dev_environment) {
        this.dev_environment = dev_environment;
    }

    public Integer getDelete_flag() {
        return delete_flag;
    }

    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }


}