import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class HelloWorld {
    public static void main(String[] args){
        staticFileLocation("/css");


        get("/career",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String list = req.queryParams("list");
            attribute.put("list", "Hello");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "list.ftl"));
        });


        get("/test",(req,res) -> {
            Map<String, Object> attribute = new HashMap<>();
            String test = req.queryParams("test");
            attribute.put("test","Hello World");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "test.ftl"));
        });

    }
}