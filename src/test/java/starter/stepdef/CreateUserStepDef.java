package starter.stepdef;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.annotations.Steps;
import starter.reqres.ReqresAPI;
import starter.reqres.ReqresResponses;
import starter.utils.Constants;

import java.io.File;
import static org.hamcrest.Matchers.equalTo;
public class CreateUserStepDef {
    @Steps
    ReqresAPI reqresAPI;
    @Given("Create user with valid json {string}")
    public void createUserWithValidJson(String json) {
        File jsonFile =new  File(Constants.REQ_BODY+json);
        reqresAPI.postCreateUser(jsonFile);
    }

    @When("Send request create new user")
    public void sendRequestCreateNewUser() {
        SerenityRest.when().post(ReqresAPI.CREATE_USER);

    }
    @And("Response body name should be {string} and job id is {string}")
    public void responseBodyNameShouldBeAndJobIdIs(String name, String job) {
        SerenityRest.and().body(ReqresResponses.NAME,equalTo(name)).body(ReqresResponses.JOB, equalTo(job));
    }

    @Given("Create user with invalid json {string}")
    public void createUserWithInvalidJson(String json) {File jsonFile =new  File(Constants.REQ_BODY+json);
        reqresAPI.postCreateUser(jsonFile);
    }
}
