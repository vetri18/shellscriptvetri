#!/bin/bash -x

function birthMonth(){
    MAX_COUNT  = 50;
    count = 0;
    let janCount = 0,febCount = 0,marchCount = 0,aprilCount = 0,mayCount = 0,juneCount = 0,julyCount = 0,augustCount = 0,
        septCount = 0,octCount = 0,novCount = 0,decCount = 0;
    while(true){
        if(count == MAX_COUNT){
            break;
        }
        let randomBirthMonth = Math.floor(Math.random() * 12 + 1);
        switch (randomBirthMonth) {
            case 1:
                janCount++;
                break;
            case 2:
                febCount++;
                break;
            case 3:
                marchCount++;
                break;
            case 4:
                aprilCount++;
                break;
            case 5:
                mayCount++;
                break;
            case 6:
                juneCount++;
                break;
            case 7:
                julyCount++;
                break;
            case 8:
                augustCount++;
                break;
            case 9:
                septCount++;
                break;
            case 10:
                octCount++;
                break;
            case 11:
                novCount++;
                break;
            case 12:
                decCount++;
                break;
            default:
                break;
        }
        count++;
    }
    let mapOfBirhDayMonths = new Map();
    mapOfBirhDayMonths.set(1,janCount);
    mapOfBirhDayMonths.set(2,febCount);
    mapOfBirhDayMonths.set(3,marchCount);
    mapOfBirhDayMonths.set(4,aprilCount);
    mapOfBirhDayMonths.set(5,mayCount);
    mapOfBirhDayMonths.set(6,juneCount);
    mapOfBirhDayMonths.set(7,julyCount);
    mapOfBirhDayMonths.set(8,augustCount);
    mapOfBirhDayMonths.set(9,septCount);
    mapOfBirhDayMonths.set(10,octCount);
    mapOfBirhDayMonths.set(11,novCount);
    mapOfBirhDayMonths.set(12,decCount);

    console.log(mapOfBirhDayMonths);
}
birthMonth(); 
 100  
Maps/Rolldie.js
@@ -0,0 +1,100 @@

/**
 * Problem : Write a program in the following steps
 *           a. Roll a die and find the number between 1 to 6
 *           b. Repeat the Die roll and find the result each time
 *           c. Store the result in a dictionary 
 *           d. Repeat till any one of the number has reached 10 times
 *           e. Find the number that reached maximum times and the one that was for minimum times
 */


function rollDie(){
    let map = new Map();
    let MAX_COUNT = 10;
    let oneCount = 0,twoCount = 0,threeCount = 0,fourCount = 0,fiveCount = 0,sixCount = 0;
    let count = 1;
    flag = true;
    while(flag){
        let diceNumber = Math.floor(Math.random() * 6 + 1);
        switch (diceNumber) {
            case 1:
                if(oneCount == MAX_COUNT){
                   flag = false;
                }
                if(flag == true){
                    oneCount += 1;
                }
                break;
            case 2:
                if(twoCount == MAX_COUNT){
                    flag = false;
                }
                if(flag == true){
                    twoCount += 1;
                }
                break;
            case 3:
                if(threeCount == MAX_COUNT){
                    flag = false;
                }
                if(flag == true){
                    threeCount += 1;
                }
                break;
            case 4:
                if(fourCount == MAX_COUNT){
                    flag = false;
                }
                if(flag == true){
                    fourCount += 1;
                }
                break;
            case 5:
                if(fiveCount == MAX_COUNT){
                    flag = false;
                }
                if(flag == true){
                    fiveCount += 1;
                }
                break;
            case 6:
                if(sixCount == MAX_COUNT){
                    flag = false;
                }
                if(flag == true){
                    sixCount += 1;
                }
                break;
            default:
                console.log("Reached Max Count ...");
                break;
        }
        count ++;
    }
   map.set(1,oneCount);
   map.set(2,twoCount);
   map.set(3,threeCount);
   map.set(4,fourCount);
   map.set(5,fiveCount);
   map.set(6,sixCount);
   console.log(map);

   max = 0;
   maxKey = null;
   minKey = null;
   min = 10;
   map.forEach(function(value,key){
       if(max < value){
           maxKey = key;
           max = value;
       }
       if(min > value){
           minKey = key;
           min = value;
       }
   })
   console.log("Dice Number which repeated maximum times is : "+maxKey);
   console.log("Dice Number which repeated minimum times is : "+minKey);
}
rollDie();
