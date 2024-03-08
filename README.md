## WWG-Karate-Automation

This automation project is to verify the price in WWG site. 

# Scenarios automated: 

**Scenario1:** Verify Price in WWG Site

- Read data from a csv file which contains the ALU number and expected price and perform the below steps for each of the ALU present in the file:

- Open WWG Site 

- Navigate to PLP and read the price showing in PLP

- Compare the PLP price with the expected price mentioned in the csv file for that ALU

- Navigate to PDP and read the price showing in PDP

- Compare the PDP price with the expected price mentioned in the csv file for that ALU

**Scenario 2:** Verify Price using VTex API

- Read data from a csv file which contains the ALU number and expected price and perform the below steps for each of the ALU present in the file:

- Call the Vtex Pricing API endpoint and pass the ALU

- Save the Price from the response of the API

- Compare the Price coming from API with the Price mentioned in the CSV

## Prerequisite to run the test in local machine

- Download and Install Java 11 and setup java path in the environment variable

- Download Maven and setup  java path in the environment variable

- Download Intellij Idea/Eclipse/Visual StudioCode to execute or modify the scripts
  
- Download and install git

## Run Test
- Clone this git project in your laptop. Run command git clone https://github.com/mdigarse/WWG-Karate-Automation.git
- Open the project in the IDE Eclips/Intellij Idea/VisualStudioCode
- Modify the Update the price change csv file: https://github.com/mdigarse/WWG-Karate-Automation/blob/main/src/test/java/com/wwg/test-data/PingProd-alu-price-test.csv
- ![image](https://github.com/mdigarse/WWG-Karate-Automation/assets/32059556/87ca4d39-af4f-4a92-81f4-324357fc6f9b)

- Run command: **mvn clean test**
  
- Or run directly using the right click option in IDE
- ![image](https://github.com/mdigarse/WWG-Karate-Automation/assets/32059556/f0e1b41b-15f5-43ca-8c2f-61540cb79ac1)



