# Microservice system

## This is a RESTFUL microservice program that will perform database operation to create CUSTOMER and create customer ACCOUNT.

The system has two main models that form one to many relationship:

## Customer
*  A customer has many accounts.
*  A customer has multiple credit/debit card numbers.
*  A customer can be created with specific attrubutes and related to an account that solely belongs to that customer.
*  Live link for customer route is: /customers

## Account.
*  An account belongs to a customer.
*  An account can be created and is related to a customer(new or existing one)
*  Account can be topped up  and withrawal made via the amount attribute.(OPeration managed by the updated method in the account controller).
* Live link for account routes is: /accounts


## Technologies used
* Ruby on rails.
* Postgresql.
* Render