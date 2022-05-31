import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class HelloWorld {
    public static void main(String[] args){
        Map<String, Object> attribute = new HashMap<>();
        get("/test",(req,res) -> {
            String test = req.queryParams("test");
            attribute.put("test","Hello World");
            return new FreeMarkerEngine().render(new ModelAndView(attribute, "test.ftl"));
        });
    }
}