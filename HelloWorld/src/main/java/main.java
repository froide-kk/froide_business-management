import org.seasar.doma.jdbc.tx.TransactionManager;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static spark.Spark.*;

public class main {
    public static void main(String[] args) {
        staticFileLocation("/css");

        //業務経歴閲覧画面
        get("/career/show", (req, res) -> {
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            tm.required(() ->{
                String id = req.queryParams("id");
                System.out.print(id);
                Employees employees = empDao.selectById(Integer.valueOf(id));
                attribute.put("name",employees.name);
                attribute.put("id",Integer.valueOf(id));
            });



            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_show.ftl"));
        });

        //一覧画面
        get("/career", (req, res) -> {
            //一覧画面を表示
            EmployeesDao empDao = new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //名前検索
            tm.required(() -> {
                List<Employees> Emplists = empDao.selectAll();
                attribute.put("Emplists", Emplists);

                //URLに値が渡されるのでそれをsearchNameに渡す
                String searchName = req.queryParams("searchName");
                String searchDepartment = req.queryParams("searchDepartment");
                String join_date = req.queryParams("join_date");
                System.out.print(searchName + searchDepartment + join_date);

                    //もし、searchNameの値がnullじゃないなら、名前で検索
                    if (searchName != null) {
                        List<Employees> EmpNames = empDao.selectByName(searchName);
                        attribute.put("Emplists", EmpNames);
                        //もし、searchDepartmentの値がnullでないなら、所属部署で検索
                    }else if(searchDepartment != null){
                        System.out.print(searchDepartment);
                        List<Employees> EmpDepartments = empDao.selectByDepartment(Integer.valueOf(searchDepartment));
                        attribute.put("Emplists", EmpDepartments);
                    }
                    else if(join_date != null){
                        System.out.print(join_date);
                        List<Employees> EmpDes = empDao.selectAllDes();
                        attribute.put("Emplists", EmpDes);
                    } else {

                    }
            });
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "list.ftl"));
        });

        //業務経歴編集画面
        get("/career/update(id)", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
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

        post("/career/skillCheck", (req, res) -> {
            String name = req.queryParams("name");
            String id = req.queryParams("id");
            Map<String, Object> attribute = new HashMap<>();
            attribute.put("name",name);
            attribute.put("id",id);

            SkillsDao skillDao = new SkillsDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();

            tm.required(() -> {
                skillDao.update_delete_skill(Integer.valueOf(req.queryParams("id")));
            });
            tm.required(() -> {
                Skills skills = new Skills();
                skills.setName(name);
                skills.setSkill_attribute_id(Integer.valueOf(id));
                skillDao.insertSkill(skills);
            });
            res.redirect("/career/skillCheck");
            return res;
        });

        //管理者権限編集画面
        get("/career/managementUpdate", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "admin_authorize.ftl"));
        });

        //従業員編集画面
        get("/career/empUpdate", (req, res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "emp_update.ftl"));
        });

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