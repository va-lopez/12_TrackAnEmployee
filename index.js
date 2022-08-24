const inquirer = require('inquirer');
const mysql = require('mysql2');
const {table} = require('console');
// const db = require('./db/connection');


function getCompany(){
    inquirer.createPromptModule([{
        message: 'What would you like to do',
        type: 'list',
        choices: ['View Departments', 'View Roles', 'View Employees', 'Add Departments', 'Add Role', 'Add Employee', 'Update Employee'],
        name: 'choice'
    }])
    .then(action => {
        // if(action.choice === choices[0]){

        // }else if (action.choice === choices[1]){

        // }else if (action.choice === choices[2]){

        // }else if (action.choice === choices[3]){

        // }else if (action.choice === choices[4]){

        // }else if (action.choice === choices[5]){

        // }else if (action.choice === choices[6]){

        // };
        console.log("you made a choice "+ action);
    })
};

getCompany();
