import org.seasar.doma.*;
@Entity(metamodel = @Metamodel)
public class Projects {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    @Column(name = "company_name")
    String companyName;
    @Column(name = "project_name")
    String projectName;
    Integer company_id;
    Integer delete_flag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public String getCompanyName(){
        return companyName;
    }

    public void setCompanyName(String company_name){
        this.companyName = companyName;
    }

    public String getProjectName(){
        return projectName;
    }

    public void setProjectName(String project_name){
        this.projectName = projectName;
    }

    public Integer getDelete_flag() {
        return delete_flag;
    }

    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }



}