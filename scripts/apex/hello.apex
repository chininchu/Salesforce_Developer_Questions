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
// Integer requiredYearsWorked = 10;
// Integer yearsWorked = 3;
// Double percent = 0;
// Decimal salary = 1000;
// System.debug('Years worked ' + yearsWorked);
// System.debug('Curent Salary ' + salary);
// System.debug('Percent before switch ' + percent);
// if (yearsWorked >= requiredYearsWorked){

//     percent = 0.1;
// } else{


//     if (salary <= 1000){

//         percent = 0.075;
//     } else if (salary > 1000 && salary <= 2000){
//         percent = 0.05;
//     } else{

//         percent = 0.025;
//     }
// }

// System.debug('Percent after swiitch ' + percent);
// //SCENARIO A store sells accessories for parties and special events. It prices its balloons based on their colors as there are colors that are more popular, and others that are harder to find, or more expensive to buy from its suppliers. A default price is applied for the rest of the colors. How can this scenario be translated using only one type of control flow in Apex?

// String color = 'gold dust';
// Decimal price = 0;
// System.debug('Baloon color ' + color);
// System.debug('Price before switch ' + price);
// switch  on color{

//     when 'gold dust', 'silver dust'{

//         price = 1.0;
//     }

//     when 'gold glossy', 'silver glossy'{

//         price = 0.75;
//     }

//     when else{
//         price = 0.5;
//     }
// }
// System.debug('Price after switch ' + price);

// //A method returns a list of sObjects which object types are unknown beforehand as the object type is only determined during run-time. Once the type is determined, a field is updated for all the records. How can an Apex control flow be used to handle this requirement?
// // Let's instantiate an empty list that holds sObjects

// List<SObject> records = new List<SObject>();
// records.addAll([SELECT Id, Type
//                 FROM Account 
//                 LIMIT 5]);
// records.add([SELECT Id, Department
//              FROM Contact
//              LIMIT 1]);
// records.add([SELECT Id, Description
//              FROM Lead
//              LIMIT 1]);
// System.debug('Records before control flow ' + records);
// for (SObject record : records){

//     switch  on record{

//         when Account a{a.Type = 'External'; }

//         when Contact a{a.Department = 'Temporary'; }

//         when Lead a{a.Description = 'Auto'; }


//     }

// if (!records.isEmpty()){


//     System.debug('Records after control flow ' + records);

//     update records;
// }


// A developer needs to query a large number of records from the database for processing. How can the records be queried from the database that it avoids potential heap size error and DML governor limits when updating?



for(List<Opportunity> opps : [SELECT Name, Description FROM Opportunity]){





    for(Opportunity opp: opps){

        if(String.isBlank(opp.Description)){

            opp.Description = 'updated';



        }






    }

    if(Limits.getDmlStatements() < Limits.getLimitDmlStatements()){

        update opps;

        System.debug('Current Limits ' + Limits.getDmlStatements() + 'Total Limits ' + Limits.getLimitDmlStatements());


    } else{

        break;
    }




}

// A feature in an application needs to perform a process that may fail or succeed. If it succeeds, it will exit the loop and move on. If it fails, it will try again. However, it will stop trying after failing a maximum number of times.SUCCESSFAILSTOPScenarios and Solutions



