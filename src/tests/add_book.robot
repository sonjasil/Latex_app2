*** Settings ***
Resource  resource.robot
Test Setup  Input Add Command To Add Book

*** Test Cases ***
Add Book Successfully
    Input Book Reference  book  kalle  otsikko  2000  otava  kalle2000
    Output Should Contain  \nReference type book added

Add Book With Invalid Year
    Input Book Reference  book  kalle  otsikko  2100  otava  kalle2100
    Output Should Contain  Year has to be in the range of 0-2023. Please try again.
    

*** Keywords ***
Input Add Command To Add Book
    Input Add Command  
