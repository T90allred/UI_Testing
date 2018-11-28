describe("TEST 1", function() {
  it("login to site", function() {
    browser.url("./");
    let pageTitle = browser.getTitle();
    let pageURL = browser.getUrl();
    console.log("Title is: " + pageTitle);
    console.log("URL is: " + pageURL);
    expect(pageTitle).to.equal("Registration");
    // browser.debug();
    expect(pageURL).to.contain("/registration#/login");
  });
});
