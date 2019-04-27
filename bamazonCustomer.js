
// My notes: in command line run: nodemon bamazonCustomer.js 
// running this application will first display all of the items available for sale. 
// Include the ids, names, prices, etc. of products for sale 

// The app should then prompt users with two messages: 

// 1.   The first should ask them the ID of the product they would like to buy. 
// 2.   The second message should ask how many units of the product they would like to buy. 

// 3.   Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request. (done)

// If not, the app should log a phrase like "Insufficient quantity!", and then prevent the order from going through. 
// However, if your store does have enough of the product, you should fulfill the customer's order. 

// This means updating the SQL database to reflect the remaining quantity.
// Once the update goes through, show the customer the total cost of their purchase.

var mysql = require("mysql");
var inquirer = require("inquirer");

var item = process.argv[2];
var units = process.argv[3];

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "hiya1234",
  database: "bamazon_db"
});


connection.connect(function(err) {
  if (err) {
      throw err;
  } else {
      console.log("connected as id " + connection.threadId + "\n");
      showProducts();
     
  }
});

function showProducts() { 

inquirer.prompt([{
    type: "list",
    name: "action",
    message: "pick one: ",
    choices: ["MAKE A PURCHASE"]
}
]).then(function(data) {  
  if(data.action == "MAKE A PURCHASE") {
    connection.query("SELECT products.item_id AS item, products.product_name AS name, products.department_name AS dept, products.price AS price, products.stock_quantity AS quantity FROM products", function(err, show) {
      console.log(show);
      makeSelection(); 
      });
    }
});
}

function makeSelection() {

      inquirer.prompt([
        {
          type: "input",
          name: "product_id",
          message: "Input a product id that you would like to buy? : ",
        },
        {
          type: "input",
          name: "name",
          message: "What is this item? : ",
        },
        {
          type: "input",
          name: "units",
          message: "How many units of the product would you like to buy? : ",
        },
        {
          type: "input",
          name: "max_quantity",
          message: "What is the current quantity? " ,
        },
        {
          type: "input",
          name: "guest",
          message: "Give me your name: "
        }
      ]) // add a console log of the item customer wants to purchase as well as quantity 
    .then(function(inquirerResponse) {
      console.log(inquirerResponse);
      console.log("\nI understand you want to buy a/an, " + inquirerResponse.name + ", which is product id # " + inquirerResponse.product_id);
      console.log("\nThe quantity you would like is "+ inquirerResponse.units + ", please wait a moment " + inquirerResponse.guest + " while I check if the item is in stock.\n"); 
      
      if (inquirerResponse.units <= inquirerResponse.max_quantity) {
        console.log("we have your item in stock!\n");
        deleteProduct();
        showCustomer();
      } else {
        console.log("Insufficient quantity.");
      }
      connection.end();
    });
   
  }

  function deleteProduct() {
    console.log("Updating the current quantity.\n" );
  
  }
 
  function showCustomer() {
    
  }
