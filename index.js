const inquirer = require('inquirer');
// const table = require('console');
const prompt = inquirer.createPromptModule();
const db = require('./db/connection');
const inputCheck = require('./utils/inputCheck');


const getCompany = () =>{
    prompt([{
        message: 'What would you like to do',
        type: 'list',
        choices: ['View Departments', 'View Roles', 'View Employees', 'Add Departments', 'Add Role', 'Add Employee', 'Update Employee'],
        name: 'action'
    }])
    .then(result => {
        if(result.choice === 'View Departments'){
             viewDepts();
        }else if (action.choice === 'View Roles'){
            viewRoles();
        }else if (action.choice === 'View Employees'){
            viewEmployees();
        }else if (action.choice === 'Add Departments'){
            addDept();
        }else if (action.choice === 'Add Role'){
            addRole();
        }else if (action.choice === 'Add Employee'){
            addEmployee();
        }else if (action.choice === 'Update Employee'){
            updateEmployee();
        }else{
            return;
        }
        getCompany();
    })
};

//to do functions to get data
