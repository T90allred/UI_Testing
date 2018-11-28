describe("Going to stage", function() {
  it("login to stage", function() {
    browser.url("./");
    let pageTitle = browser.getTitle();
    let pageURL = browser.getUrl();
    console.log("Title is: " + pageTitle);
    console.log("URL is: " + pageURL);
  });
});
