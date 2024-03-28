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

public class GetListResourceStepDef {
    @Steps
    ReqresAPI reqresAPI;

    @Given("Get List resource with valid parameter {int}")
    public void getListResourceWithValidParameter(int page) {
        reqresAPI.getListResource(page);
    }
    @When("Send request get list resource")
    public void sendRequestGetListResource() {SerenityRest.when().get(ReqresAPI.LIST_RESOURCE);
    }

    @Then("Status Code should be {int}")
    public void statusCodeShouldBeStatusCode(int statusCode) {SerenityRest.then().statusCode(statusCode);

    }

    @And("Response Body page should be {int}")
    public void responseBodyPageShouldBe(int page) {
        SerenityRest.and().body(ReqresResponses.PAGE, equalTo(page));
    }

    @Given("Get List resource with invalid parameter {int}")
    public void getListResourceWithInvalidParameter(int page) {
        reqresAPI.getListResource(page);
    }
}
