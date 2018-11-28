const expect = require("chai").expect;
const env = process.env.SERVER;

describe("Going to stage", function() {
  it("login to stage", function() {
    browser.url("./");
    let pageTitle = browser.getTitle();
    let pageURL = browser.getUrl();
    console.log("Title is: " + pageTitle);
    console.log("URL is: " + pageURL);
    expect(pageTitle).to.equal("Registration");
    expect(pageURL).to.contain("/registration#/login");
  });
});
