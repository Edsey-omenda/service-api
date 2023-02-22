# Microservice system

##

The system has two main models that form one to many relationship:

## Customer
*  A customer has many accounts.
*  A customer has multiple credit/debit card numbers.
*  A customer can be created with specific attrubutes and related to an account that solely belongs to that customer.
*  Live link for customer route is: https://service-api.onrender.com/customers

## Account.
*  An account belongs to a customer.
*  An account can be created and is related to a customer(new or existing one)
*  Account can be topped up  and withrawal made via the amount attribute.(Operation managed by the update method in the account controller).
* Live link for account routes is: https://service-api.onrender.com/accounts

## API Reference
### Get all /customers
  GET /https://service-api.onrender.com/customers
### Get customers/:id
  GET /https://service-api.onrender.com/customers/${id}
Parameter	Type	Description
id	integer	Required. Id of item to fetch
### Get all /accounts
  GET /https://service-api.onrender.com/accounts
### Get accounts/:id
  GET /https://service-api.onrender.com/accounts/${id}
Parameter	Type	Description
id	integer	Required. Id of item to fetch
### Post customers/
#### Creating a Customer
  POST /https://service-api.onrender.com/customers/

|Parameter	     | Type	         |  Description                  |
| :--------      | :-------      | :-----------------------------|
|name            |  String.      |  Name of the customer.        |
|account_type    |  String.      |  Type of customer account.    |
|account_number. |  String.      |  Customer account number.     |
|email           |  String.      |  Customer email.              |
|age             |  integer.      |  Customer age.                |
|contact         |  integer.     |  Customer contact number.     |


### Post accounts/
#### Creating an account for a specific customer.
  POST /https://service-api.onrender.com/accounts/

|Parameter	     | Type	         |  Description                           |
| :--------      | :-------      | :--------------------------------------|
|customer_id     |  integer.      | Id of the customer relating toaccount. |
|account_name    |  String.      | Name of customer account.              |
|account_number. |  integer.      | Customer account number.               |
|debit_Cnumber   |  integer.      | Account debit card number.             |
|credit_Cnumber  |  integer.      | Account credit card number.            |
|account_type    |  integer.     | Type of customer account.              |
|amount          |  integer.     | Amount of money inside the account.    |



### Updating accounts/
#### UPdating account
  PATCH/PUT /https://service-api.onrender.com/accounts/${id}

| Parameter | Type     | Description                         |
| :-------- | :------- | :-----------------------------------|
| amount    | `integer`| Amount of money inside the account. |



## Technologies used
* Ruby on rails.
* Postgresql.
* Render