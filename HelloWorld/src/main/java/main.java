import org.eclipse.jetty.util.SearchPattern;
import org.eclipse.jetty.util.thread.strategy.EatWhatYouKill;
import org.seasar.doma.jdbc.tx.TransactionManager;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Month;
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
            EmployeesWork_historiesDao empWork_histories = new EmployeesWork_historiesDaoImpl(DbConfig.singleton());
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            EmployeesEachSkillsDao empEachSkills = new EmployeesEachSkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //IDで一人一人の画面を取得し、表示
            tm.required(() ->{
                String id = req.queryParams("id");
                Employees emp = empDao.selectById(Integer.valueOf(id));
                System.out.print(id);
                attribute.put("name",emp.name);
                attribute.put("birthday",emp.birthday);
                attribute.put("license",emp.license);
                attribute.put("id",Integer.valueOf(id));
                attribute.put("address",emp.address);
                attribute.put("final_education",emp.final_education);

                //プロジェクトのリスト
                List<EmployeesWork_histories> employeesWork_histories = empWork_histories.selectByAll(Integer.valueOf(id));
                attribute.put("EmpWorkLists",employeesWork_histories);

                //閲覧画面の使用言語リスト
                List<EmployeesEachSkills> EachSkillsDB = empEachSkills.select_db_All(Integer.valueOf(id));
                attribute.put("EachSkillsDB",EachSkillsDB);
                List<EmployeesEachSkills> EachSkillsOS = empEachSkills.select_os_All(Integer.valueOf(id));
                attribute.put("EachSkillsOS",EachSkillsOS);
                List<EmployeesEachSkills> EachSkillsScript = empEachSkills.select_script_All(Integer.valueOf(id));
                attribute.put("EachSkillsScript",EachSkillsScript);

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
                List<Employees> Emplists = empDao.selectAll();
                attribute.put("Emplists", Emplists);

                //URLに値が渡されるのでそれをsearchNameに渡す
                String searchName = req.queryParams("searchName");
                String searchDepartment = req.queryParams("searchDepartment");
                String searchBirthDay = req.queryParams("searchBirthDay");
                String join_date = req.queryParams("join_date");
                System.out.println(join_date + join_date);
                System.out.println(searchName + searchDepartment + " " + join_date + " " + searchBirthDay);
                //もし、searchNameの値がnullじゃないなら、名前で検索
                if (searchName != null) {
                    List<Employees> EmpNames = empDao.selectByName(searchName);
                    attribute.put("Emplists", EmpNames);
                    //もし、searchDepartmentの値がnullでないなら、所属部署で検索
                    //部署検索
                } else if (searchDepartment != null) {
                    System.out.print(searchDepartment);
                    List<Employees> EmpDepartments = empDao.selectByDepartment(Integer.valueOf(searchDepartment));
                    attribute.put("Emplists", EmpDepartments);
                    //誕生月検索
                }else if(searchBirthDay != null){
                    //searchBirthDayがnullではない時、
                    List<Employees> EmpBir = empDao.selectByBirthDay(searchBirthDay);
                    attribute.put("Emplists",EmpBir);
                    //入社年月
                } else if(join_date == null){

                }else if(join_date.equals("0")){
                    System.out.println(join_date);
                    List<Employees> EmpAsc = empDao.selectAllAsc();
                    attribute.put("Emplists", EmpAsc);
                }else if(join_date.equals("1")){
                    System.out.println(join_date);
                    List<Employees> EmpDes = empDao.selectAllDes();
                    attribute.put("Emplists", EmpDes);
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
        get("/career/update", (req, res) -> {
            EmployeesWork_historiesDao empWork_histories = new EmployeesWork_historiesDaoImpl(DbConfig.singleton());
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            ProjectsDao projectsDao = new ProjectsDaoImpl(DbConfig.singleton());
            Dev_period_phasesDao dev_period_phasesDao = new Dev_period_phasesDaoImpl(DbConfig.singleton());
            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            EmployeesEachSkillsDao empEachSkills = new EmployeesEachSkillsDaoImpl(DbConfig.singleton());

            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //career/showからidを受け取って、/career/updateに渡す処理
            String id = req.queryParams("id");
            attribute.put("id", id);

            tm.required(() ->{
                //従業員情報の表示
                Employees empUp = empDao.selectById(Integer.valueOf(id));
                attribute.put("name",empUp.name);
                attribute.put("birthday",empUp.birthday);
                attribute.put("license",empUp.license);
                attribute.put("address",empUp.address);
                attribute.put("final_education",empUp.final_education);

                //プロジェクトのリスト
                List<EmployeesWork_histories> employeesWork_histories = empWork_histories.selectByAll(Integer.valueOf(id));
                attribute.put("EmpWorkLists",employeesWork_histories);

//                プロジェクトのプルダウンメニュー
                List<Projects> projects = projectsDao.selectAll();
                attribute.put("ProLists",projects);
            });


            //スキルチェックの○・△を選ぶところ
            tm.required(() -> {
                List<EmployeesEachSkills> EachSkillsDB = empEachSkills.select_db_All(Integer.valueOf(id));
                attribute.put("EachSkillsDB",EachSkillsDB);
                List<EmployeesEachSkills> EachSkillsOS = empEachSkills.select_os_All(Integer.valueOf(id));
                attribute.put("EachSkillsOS",EachSkillsOS);
                List<EmployeesEachSkills> EachSkillsScript = empEachSkills.select_script_All(Integer.valueOf(id));
                attribute.put("EachSkillsScript",EachSkillsScript);
            });

            //開発担当フェーズのチェックボックス。
            tm.required(() -> {
                List<Dev_period_phases> dev_period_phases = dev_period_phasesDao.selectAll();
                attribute.put("dev_period_phasesLists",dev_period_phases);
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_update.ftl"));
        });

        post("/career/update",(req,res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            Work_historiesDao historiesDao = new Work_historiesDaoImpl(DbConfig.singleton());

            Employee_skillsDao e_skillsDao = new Employee_skillsDaoImpl(DbConfig.singleton());
            EmployeesWork_historiesDao e_w_historiesDao = new EmployeesWork_historiesDaoImpl(DbConfig.singleton());

            EmployeesEachSkillsDao empEachSkills = new EmployeesEachSkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

//          Employees関連
            //career/updateからidを受け取って、ftlに渡す
            String id = req.queryParams("id");
            String name = req.queryParams("name");
            String birthday = req.queryParams("birthday");
            String address = req.queryParams("address");
            String final_education = req.queryParams("final_education");
            String license = req.queryParams("license");

            //Employee_skills関連
            String osID = req.queryParams("os_id");
            String osLevel = req.queryParams("osList");
            String sID = req.queryParams("s_id");
            String scriptLevel = req.queryParams("sList");
            String dbID = req.queryParams("db_id");
            String dbLevel = req.queryParams("dbList");

            //work_history関連
            String work_history_id = req.queryParams("histories_id");
            String project_id = req.queryParams("project_id");
            String work_start = req.queryParams("work_start");
            String work_end = req.queryParams("work_end");
            String industry = req.queryParams("industry");
            String system_sum = req.queryParams("system_sum");
            String system_details = req.queryParams("system_details");
            String role = req.queryParams("role");
            String dev_scale = req.queryParams("dev_scale");
            String dev_environment = req.queryParams("dev_environment");

            attribute.put("id",id);
            attribute.put("name",name);
            attribute.put("birthday",birthday);
            attribute.put("address",address);
            attribute.put("final_education",final_education);
            attribute.put("license",license);

            attribute.put("osList",osLevel);
            attribute.put("os_id",osID);
            attribute.put("sList",scriptLevel);
            attribute.put("s_id",sID);
            attribute.put("dbList",dbLevel);
            attribute.put("db_id",dbID);

            attribute.put("histories_id",work_history_id);
            attribute.put("project_id",project_id);
            attribute.put("work_start",work_start);
            attribute.put("work_end",work_end);
            attribute.put("industry",industry);
            attribute.put("system_sum",system_sum);
            attribute.put("system_details",system_details);
            attribute.put("role",role);
            attribute.put("dev_scale",dev_scale);
            attribute.put("dev_environment",dev_environment);

            if(!Objects.equals(name, "") && name.length() <= 256) {
                //データベースに登録する
                tm.required(() -> {
//                従業員情報の登録
                    Employees employees = empDao.selectById(Integer.valueOf(req.queryParams("id")));
                    employees.setName(name);
                    employees.setBirthday(birthday);
                    employees.setAddress(address);
                    employees.setFinal_education(final_education);
                    employees.setLicense(license);
                    empDao.update_workHistry(employees);
                });
            }

//            //employees_skills関連
            if(!Objects.equals(osLevel, "-") && osID != null){
                tm.required(() -> {
                    Employee_skills employee_skills = new Employee_skills();
                    employee_skills.setId(Integer.valueOf(osID));
                    employee_skills.setSkill_level(osLevel);
                    e_skillsDao.updateSkillLevel(employee_skills);
                });
            }

            if(!Objects.equals(scriptLevel, "-") && sID != null ){
                tm.required(() -> {
                    Employee_skills employee_skills = new Employee_skills();
                    employee_skills.setId(Integer.valueOf(sID));
                    employee_skills.setSkill_level(scriptLevel);
                    e_skillsDao.updateSkillLevel(employee_skills);
                });
            }

            if(!Objects.equals(dbLevel, "-") && dbID != null){
                tm.required(() -> {
                    Employee_skills employee_skills = new Employee_skills();
                    employee_skills.setId(Integer.valueOf(dbID));
                    employee_skills.setSkill_level(dbLevel);
                    e_skillsDao.updateSkillLevel(employee_skills);
                });
            }

//          work_histories関連
            //industry,system_sum,system_details,role,dev_environmentの更新
            tm.required(() -> {
                Work_histories histories = new Work_histories();
                histories.setId(Integer.valueOf(req.queryParams("histories_id")));
                histories.setIndustry(industry);
                histories.setSystem_sum(system_sum);
                histories.setSystem_details(system_details);
                histories.setRole(role);
                histories.setDev_environment(dev_environment);
                historiesDao.updateWorkHistory(histories);
            });

            //project_idの更新
            if(!Objects.equals(project_id, "0")) {
                tm.required(() -> {
                    Work_histories histories = new Work_histories();
                    histories.setId(Integer.valueOf(req.queryParams("histories_id")));
                    histories.setProject_id(Integer.valueOf(req.queryParams("project_id")));
                    historiesDao.updateProjectID(histories);
                });
            }
            //dev_scaleの更新
            if(!Objects.equals(dev_scale, "0")) {
                tm.required(() -> {
                    Work_histories histories = new Work_histories();
                    histories.setId(Integer.valueOf(req.queryParams("histories_id")));
                    histories.setDev_scale(dev_scale);
                    historiesDao.updateDevScale(histories);
                });
            }

//            tm.required(() -> {
//                Work_histories histories = new Work_histories();
//                histories.setId(Integer.valueOf(req.queryParams("histories_id")));
//                histories.setWork_start(Date.valueOf(work_start));
//                histories.setWork_end(Date.valueOf(work_end));
//                historiesDao.updateWorkStartEnd(histories);
//            });

            tm.required(() -> {
                Dev_periods dev_periods = new Dev_periods();
            });

            res.redirect("/career/show?id=" + id);

            return res;

        });

        post("/career/updateWorkAdd",(req,res) -> {
            Work_historiesDao historiesDao = new Work_historiesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();


            String employee_id = req.queryParams("employee_id");
            String work_histories_id = req.queryParams("work_histories_id");
            String id = req.queryParams("employee_id");

            attribute.put("employee_id",employee_id);
            attribute.put("work_histories_id",work_histories_id);
            attribute.put("employee_id",id);

//            追加ボタンで経歴書が増える処理
            tm.required(() -> {
                Work_histories work_histories = new Work_histories();
                work_histories.setEmployee_id(Integer.valueOf(employee_id));
                historiesDao.insert(work_histories);

            });

            res.redirect("/career/update?id=" + id);
            return res;
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
            Skill_attributesDao skill_attributeDao = new Skill_attributesDaoImpl(DbConfig.singleton());
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
                attribute.put("skill_attribute_id","");
            });

            tm.required(() -> {
                List<Skill_attributes> skill_attributesList = skill_attributeDao.selectAll();
                attribute.put("skill_attributesList",skill_attributesList);
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
            String skill_attribute_id = req.queryParams("skill_attribute_id");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("name",name);
            attribute.put("skill_attribute_id",skill_attribute_id);

            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            if(name.length() <= 256){
                if(!Objects.equals(name, "") && Objects.equals(skill_attribute_id, "1") ||
                        Objects.equals(skill_attribute_id, "2") || Objects.equals(skill_attribute_id, "3")) {
                    tm.required(() -> {
                        Skills skills = new Skills();
                        skills.setName(name);
                        skills.setSkill_attribute_id(Integer.valueOf(skill_attribute_id));
                        skillDao.insertSkill(skills);
                    });
                }
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

            //画面に表示する
            attribute.put("name",name);
            attribute.put("department_id",department_id);
            attribute.put("join_date",join_date);
            attribute.put("email",email);

            //戻る
            res.redirect("/career/empUpdate");
            return res;
        });

        //従業員テーブルの変更を保存する
        post("/career/empUpdate/keep",(req,res) -> {
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());

            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            String departmentID = req.queryParams("input_dep_id");
            String joinDate = req.queryParams("input_joinDate");
            String Email = req.queryParams("input_email");

            Map<String, Object> attribute = new HashMap<>();

            attribute.put("input_dep_id",departmentID);
            attribute.put("input_joinDate",joinDate);
            attribute.put("input_email",Email);

            if(!Objects.equals(departmentID, "0")){
                tm.required(() -> {
                    Employees employees = new Employees();
                    employees.setDepartment_id(Integer.valueOf(req.queryParams("input_dep_id")));
                    employees.setId(Integer.valueOf(req.queryParams("id")));
                    empDao.updateDepID(employees);
                });
            }
//
            if(!Objects.equals(joinDate, "")){
                tm.required(() -> {
                    Employees employees = new Employees();
                    employees.setJoin_date(Date.valueOf(joinDate));
                    employees.setId(Integer.valueOf(req.queryParams("id")));
                    empDao.updateJoinDate(employees);
                });
            }
//
            if(Email.length() <= 256 && !Objects.equals(Email,"")) {
                tm.required(() -> {
                    Employees employees = new Employees();
                    employees.setEmail(Email);
                    employees.setId(Integer.valueOf(req.queryParams("id")));
                    empDao.updateEmail(employees);
                });
            }

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
            CompaniesDao companiesDao = new CompaniesDaoImpl(DbConfig.singleton());
            ProjectsDao projectDao = new ProjectsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            tm.required(() -> {
                List<Projects> PJlists = projectDao.selectProjectAll();
                attribute.put("pj_lists",PJlists);
            });

            //プルダウンメニューの表示
            tm.required(() -> {
                List<Companies> companiesList = companiesDao.selectAll();
                attribute.put("companiesList",companiesList);
            });
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "project_update.ftl"));
        });

        //プロジェクト名の変更を保存
        post("/career/projectsEdit",(req,res) -> {
            String inputCompany = req.queryParams("input_company");
            String inputProject = req.queryParams("input_project");

            Map<String, Object> attribute = new HashMap<>();

            attribute.put("input_company",inputCompany);
            attribute.put("input_project",inputProject);

            CompaniesDao companyDao = new CompaniesDaoImpl(DbConfig.singleton());
            ProjectsDao projectDao = new ProjectsDaoImpl(DbConfig.singleton());

            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            if(inputCompany.length() <= 256) {
                if (!Objects.equals(inputCompany, "")) {
                    tm.required(() -> {
                        Companies companies = new Companies();
                        companies.setName(inputCompany);
                        companies.setId(Integer.valueOf(req.queryParams("input_com_id")));
                        companyDao.updateCompany(companies);
                    });
                }
            }

            if(inputProject.length() <= 256) {
                if (!Objects.equals(inputProject, "")) {
                    tm.required(() -> {
                        Projects projects = new Projects();
                        projects.setName(inputProject);
                        projects.setId(Integer.valueOf(req.queryParams("id")));
                        projectDao.updateProject(projects);
                    });
                }
            }

            res.redirect("/career/projectsUpdate");
            return res;
        });

        //企業名を追加
        post("/career/CompaniesAdd", (req, res) -> {
            String company_name = req.queryParams("company_name");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("company_name",company_name);

            CompaniesDao companyDao = new CompaniesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            if(company_name.length() <= 256) {
                if (!Objects.equals(company_name, "")) {
                    tm.required(() -> {
                        Companies companies = new Companies();
                        companies.setName(company_name);
                        companyDao.insertCoｍpanyName(companies);
                    });
                }
            }
            res.redirect("/career/projectsUpdate");
            return res;
        });

        // プロジェクトの追加
        post("/career/projectAdd", (req, res) -> {
            String projectName = req.queryParams("project_name");
            String Company_id = req.queryParams("company_id");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("project_name",projectName);
            attribute.put("company_id",Company_id);

            ProjectsDao projectDao = new ProjectsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            if(projectName.length() <= 256) {
                if (!Objects.equals(projectName, "") && !Objects.equals(Company_id, "0")) {
                    tm.required(() -> {
                        Projects projects = new Projects();
                        projects.setName(projectName);
                        projects.setCompany_id(Integer.valueOf(Company_id));
                        projectDao.insertProject(projects);
                    });
                }
            }
            res.redirect("/career/projectsUpdate");
            return res;
        });

        //プロジェクトの削除
        post("/career/projectsDelete", (req, res) -> {
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