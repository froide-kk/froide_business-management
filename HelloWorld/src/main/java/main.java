import org.eclipse.jetty.util.thread.strategy.EatWhatYouKill;
import org.seasar.doma.jdbc.tx.TransactionManager;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import static spark.Spark.*;

public class main {
    public static void main(String[] args) {
        staticFileLocation("/css");

        //業務経歴閲覧画面
        get("/career/show", (req, res) -> {
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //IDで一人一人の画面を取得し、表示
            tm.required(() ->{
                String id = req.queryParams("id");
                System.out.print(id);
                Employees employees = empDao.selectById(Integer.valueOf(id));
                attribute.put("name",employees.name);
                attribute.put("birthday",employees.birthday);
                attribute.put("license",employees.license);
                attribute.put("id",Integer.valueOf(id));

            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_show.ftl"));
        });

        //一覧画面
        get("/career", (req, res) -> {
            //一覧画面を表示
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            DepartmentsDao depDao = new DepartmentsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //名前検索
            tm.required(() -> {


                //URLに値が渡されるのでそれをsearchNameに渡す
                String searchName = req.queryParams("searchName");
                String searchDepartment = req.queryParams("searchDepartment");
                String join_date = req.queryParams("join_date");
                String searchSkillList = req.queryParams("searchSkillList");
                String searchBirthDay = req.queryParams("searchBirthDay");
                String search = req.queryParams("search");
                System.out.println(searchName + searchDepartment + join_date + searchSkillList + searchBirthDay + search);

                    //もし、searchNameの値がnullじゃないなら、名前で検索
                    if(search == null){
                        List<Employees> Emplists = empDao.selectAll();
                        attribute.put("Emplists", Emplists);
                    }
                    if (searchName != null) {
                        List<Employees> EmpNames = empDao.selectByName(searchName);
                        attribute.put("Emplists", EmpNames);
                        //もし、searchDepartmentの値がnullでないなら、所属部署で検索
                    //部署検索
                    }
                   if(searchDepartment != null){
                        System.out.print(searchDepartment);
                        List<Employees> EmpDepartments = empDao.selectByDepartment(Integer.valueOf(searchDepartment));
                        attribute.put("Emplists", EmpDepartments);
                    }
                    //入社年月ソート
                    if(join_date != null){
                        System.out.print(join_date);
                        List<Employees> EmpDes = empDao.selectAllDes();
                        attribute.put("Emplists", EmpDes);
                    }
                    //技術チェックリスト検索
                   if(searchSkillList != null){

                    }
                    //生年月日検索
                    if(true){

                    }
            });

            //プルダウンメニューの表示
            tm.required(() -> {
                List<Departments> departmentsList = depDao.selectAll();
                attribute.put("departmentLists",departmentsList);
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "list.ftl"));
        });

        //業務経歴編集画面
        get("/career/update(id)", (req, res) -> {
            Dev_period_phasesDao dev_period_phasesDao = new Dev_period_phasesDaoImpl(DbConfig.singleton());
            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //スキルチェックの○・△を選ぶところ
            tm.required(() -> {
            List<Skills> OSList = skillDao.select_os_All();
            attribute.put("OSLists",OSList);

            List<Skills> scriptList = skillDao.select_script_All();
            attribute.put("ScriptLists",scriptList);

            List<Skills> DBList = skillDao.select_db_All();
            attribute.put("DBLists",DBList);
            });

            //開発担当フェーズのチェックボックス。
            tm.required(() -> {
                List<Dev_period_phases> dev_period_phases = dev_period_phasesDao.selectAll();
                attribute.put("dev_period_phasesLists",dev_period_phases);
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_update.ftl"));
        });

        //ログイン画面
        get("/career/login", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "login.ftl"));
        });

        //パスワード確認画面
        get("/career/passforget", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "check_login.ftl"));
        });

        //プロジェクトメンバー確認管理グラフ
        get("/career/projectEmp/(id)", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "project_term.ftl"));
        });

        //管理者画面
        get("/career/management", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "admin.ftl"));
        });

        //技術チェック編集画面
        get("/career/skillCheck", (req, res) -> {
            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());

            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            tm.required(() -> {
                List<Skills> OSlists = skillDao.select_os_All();
                List<Skills> Scriptlists = skillDao.select_script_All();
                List<Skills> DBlists = skillDao.select_db_All();
                attribute.put("os_lists",OSlists);
                attribute.put("script_lists", Scriptlists);
                attribute.put("db_lists", DBlists);
                attribute.put("name","");
                attribute.put("id","");
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "skill_check.ftl"));
        });

        //技術の削除
        post("/career/skillCheck/delete", (req, res) -> {
            String name = req.queryParams("name");
            String id = req.queryParams("id");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("id",id);
            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                skillDao.update_delete_skill(Integer.valueOf(req.queryParams("id")));
            });
            res.redirect("/career/skillCheck");
            return res;
        });

// 技術の追加
        post("/career/skillCheck/add", (req, res) -> {
            String name = req.queryParams("name");
            String id = req.queryParams("id");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("name",name);
            attribute.put("id",id);

            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            if(Objects.equals(id, "1") || Objects.equals(id, "2") || Objects.equals(id, "3")) {
                tm.required(() -> {
                    Skills skills = new Skills();
                    skills.setName(name);
                    skills.setSkill_attribute_id(Integer.valueOf(id));
                    skillDao.insertSkill(skills);
                });
            }
            res.redirect("/career/skillCheck");
            return res;
        });


        //管理者権限編集画面
        get("/career/managementUpdate",(req,res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();
            //権限所持者の表示
            tm.required(() -> {
                List<Employees> AdminLists = empDao.selectByAdmin();
                attribute.put("AdminLists", AdminLists);
            });
            //権限なしの表示
            tm.required(() -> {
                List<Employees> OrdinaryLists = empDao.selectByOrdinary();
                attribute.put("OrdinaryLists", OrdinaryLists);

                String searchName = req.queryParams("searchName");
                //権限なしの人の検索
                if (searchName != null) {
                    List<Employees> OrdSearchLists = empDao.selectOrdinaryByName(searchName);
                    attribute.put("OrdinaryLists", OrdSearchLists);
                }
            });
                return new FreeMarkerEngine().render(new ModelAndView(attribute, "admin_authorize.ftl"));
        });

//        権限管理者の権限を削除するところ
        post("/career/managementUpdate",(req,res) ->{
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                Employees employees = empDao.selectById(Integer.valueOf(req.queryParams("id")));
                empDao.updateAdmin(Integer.valueOf(req.queryParams("id")));
            });

            res.redirect("/career/managementUpdate");
            return res;
        });

//        権限一般の人に権限を付与するところ
        post("/career/managementUpdate/ord",(req,res) ->{
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                empDao.updateAdminOrd(Integer.valueOf(req.queryParams("id")));
            });

            res.redirect("/career/managementUpdate");
            return res;
        });
        //管理者権限画面ここまで

        //従業員編集画面
        get("/career/empUpdate", (req, res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            DepartmentsDao depDao = new DepartmentsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();
            //現在いる従業員の一覧表示
            tm.required(() -> {
                String searchName = req.queryParams("searchName");
                List<Employees> EmpLists = empDao.selectByNotDelete();
                attribute.put("EmpDeleteLists", EmpLists);
                //従業員の検索
                if (searchName != null) {
                    List<Employees> EmpSearchName = empDao.selectDeleteEmpByName(searchName);
                    attribute.put("EmpDeleteLists", EmpSearchName);
                }

            });

            //削除された従業員の一覧表示
            tm.required(() -> {
                List<Employees> DeleteEmpLists = empDao.selectByDeleteEmp();
                attribute.put("DeleteEmpLists",DeleteEmpLists);
            });

            attribute.put("id","");
            attribute.put("name","");
            attribute.put("department_id","");
            attribute.put("join_date","");
            attribute.put("email","");
            attribute.put("error","");

            //プルダウンメニューの表示
            tm.required(() -> {
                List<Departments> departmentsList = depDao.selectAll();
                attribute.put("departmentLists",departmentsList);
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "emp_update.ftl"));
        });

//        従業員追加のためのデータが送られてくるところ
        post("/career/empUpdate/add",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            //画面から受け取る
            String name = req.queryParams("name");
            String department_id = req.queryParams("department_id");
            String join_date = req.queryParams("join_date");
            String email = req.queryParams("email");
            if(name.isEmpty()) {
                attribute.put("error", "全て入力してください");
            }else if(department_id == "") {
                attribute.put("error", "全て入力してください");
            }else if(join_date == "") {
                attribute.put("error", "全て入力してください");
            }else if(email == ""){
                attribute.put("error", "全て入力してください");
            }else{
                //データベースに登録する
                EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
                TransactionManager tm = DbConfig.singleton().getTransactionManager();
                tm.required(() -> {
                    Employees employee = new Employees();
                    employee.setName(name);
                    employee.setDepartment_id(Integer.valueOf(department_id));
                    employee.setJoin_date(Date.valueOf(join_date));
                    employee.setEmail(email);
                    empDao.insertEmp(employee);
                });
            }
            //画面に表示する
            attribute.put("name",name);
            attribute.put("department_id",department_id);
            attribute.put("join_date",join_date);
            attribute.put("email",email);

            //戻る
            res.redirect("/career/empUpdate");
            return res;
        });

//        従業員削除のデータが送られてくるところ
        post("/career/empUpdate/delete",(req,res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                empDao.updateEmpDelete(Integer.valueOf(req.queryParams("id")));
            });

            res.redirect("/career/empUpdate");
            return res;
        });

//        従業員再追加のためのデータが送られてくるところ
        post("/career/empUpdate/reAdd",(req,res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                empDao.updateEmpReAdd(Integer.valueOf(req.queryParams("id")));
            });

            res.redirect("/career/empUpdate");
            return res;
        });
//        従業員画面ここまで

        //プロジェクト編集画面
        get("/career/projectsUpdate", (req, res) -> {
            ProjectsDao projectDao = new ProjectsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            tm.required(() -> {
                List<Projects> PJlists = projectDao.selectProjectAll();
                attribute.put("pj_lists",PJlists);
            });
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "project_update.ftl"));
        });

        post("/career/projectsUpdate", (req, res) -> {
            ProjectsDao projectDao = new ProjectsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                projectDao.update_delete_project(Integer.valueOf(req.queryParams("id")));
            });
            res.redirect("/career/projectsUpdate");
            return res;
        });
    }
}