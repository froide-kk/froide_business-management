import org.seasar.doma.jdbc.tx.TransactionManager;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static spark.Spark.*;

public class main {
    public static void main(String[] args){
        staticFileLocation("/css");

        //業務経歴閲覧画面
        get("/career/show",(req,res) -> {
                EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
                TransactionManager tm = DbConfig.singleton().getTransactionManager();
                Map<String, Object> attribute = new HashMap<>();

            attribute.put("id",Integer.valueOf(req.queryParams("id")));
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_show.ftl"));
        });

        //一覧画面
        get("/career",(req,res) -> {
            //一覧画面を表示
            EmployeesDao empDao= new EmployeesDaoImpl(DbConfig.singleton());
            TransactionManager tm = DbConfig.singleton().getTransactionManager();
            Map<String, Object> attribute = new HashMap<>();

            //名前検索
            tm.required(() -> {
                List<Employees> Emplists = empDao.selectAll();
                attribute.put("Emplists",Emplists);

                //URLに値が渡されるのでそれをsearchNameに渡す
                String searchName = req.queryParams("searchName");
                String searchDepartment = req.queryParams("searchDepartment");

                //もし、searchNameの値がnullじゃないなら、名前で検索
                if(searchName != null){
                   List<Employees> EmpNames = empDao.selectByName(searchName);
                    attribute.put("Emplists",EmpNames);
                    //もし、searchDepartmentの値がnullでないなら、所属部署で検索
                }else if(searchDepartment != null){
                List<Employees> EmpDepartments = empDao.selectByDepartment(Integer.valueOf(searchDepartment));
                attribute.put("Emplists",EmpDepartments);
            }
            });

            return new FreeMarkerEngine().render(new ModelAndView(attribute, "list.ftl"));
        });

        //業務経歴編集画面
        get("/career/update(id)",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "career_update.ftl"));
        });

        //ログイン画面
        get("/career/login",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "login.ftl"));
        });

        //パスワード確認画面
        get("/career/passforget",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "check_login.ftl"));
        });

        //プロジェクトメンバー確認管理グラフ
        get("/career/projectEmp/(id)",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "project_term.ftl"));
        });

        //管理者画面
        get("/career/management",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "admin.ftl"));
        });

        //技術チェック編集画面
        get("/career/skillCheck",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "skill_check.ftl"));
        });

        //管理者権限編集画面
        get("/career/managementUpdate",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "admin_authorize.ftl"));
        });

        //従業員編集画面
        get("/career/empUpdate",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "emp_update.ftl"));
        });

        //プロジェクト編集画面
        get("/career/projectsUpdate",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "project_update.ftl"));
        });



    }
}