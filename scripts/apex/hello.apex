// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents
string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);


// A developer is asked to write an application for calculating house rental subsidy for its employees. The conditions are such that if an employee's salary is lesser or equal than a certain minimum amount, the rate of 7.5% is used in calculating the subsidy amount.If the salary is between the minimum and a certain maximum amount, 5% is used. If greater than the maximum amount, the rate is 2.5%.However, if the employee has been with the company for more than a certain number of years, 10% is applied regardless of the salary amount earned by the employee.


Integer requiredYearsWorked = 10;
Integer yearsWorked = 3;
Double percent = 0;
Decimal salary = 1000;
System.debug('Years worked ' + yearsWorked);
System.debug('Curent Salary ' + salary);
System.debug('Percent before switch ' + percent);



if (yearsWorked >= requiredYearsWorked){

    percent = 0.1;
} else{


    if (salary <= 1000){

        percent = 0.075;
    } else if (salary > 1000 && salary <= 2000){
        percent = 0.05;
    } else{

        percent = 0.025;
    }
}

System.debug('Percent after swiitch ' + percent);


