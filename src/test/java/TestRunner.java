import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        features = "src/test/resources_yody",
        glue = "src/test/java",
        tags = "@YodyTesting",
        plugin = {"pretty", "html:target/cucumber"}
)
public class TestRunner {
}