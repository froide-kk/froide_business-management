import org.seasar.doma.*;


@Entity(metamodel = @Metamodel)
public class Dev_periods {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer work_detail_id;
    Integer dev_period_id;

    Integer delete_flag;

    public Integer getWork_detail_id() {
        return work_detail_id;
    }

    public void setWork_detail_id(Integer work_detail_id) {
        this.work_detail_id = work_detail_id;
    }

    public Integer getDev_period_id() {
        return dev_period_id;
    }

    public void setDev_period_id(Integer dev_period_id) {
        this.dev_period_id = dev_period_id;
    }

    public Integer getDelete_flag() {
        return delete_flag;
    }

    public void setDelete_flag(Integer delete_flag) {
        this.delete_flag = delete_flag;
    }

}