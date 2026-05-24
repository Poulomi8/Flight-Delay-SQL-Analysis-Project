# Flight-Delay-SQL-Analysis-Project
## 📊 Dataset Overview

The dataset contains US domestic flight records from **2015**, organized across three tables:

| Table      | Description                                                                 |
|------------|-----------------------------------------------------------------------------|
| `flights`  | Flight-level records including delays, cancellations, origin, destination   |
| `airlines` | Airline names mapped to their IATA codes                                    |
| `airports` | Airport details including city, state, and IATA code                        |

---

## 🎯 Project Objective

To analyze flight performance across US airlines and airports using SQL, and identify key trends in:
- Departure and arrival delays
- Flight cancellations
- Airline and airport activity levels

---

## 🔍 Analysis Summary

### 1. Airport with the Most Delayed Departures
Identified the single origin airport responsible for the highest number of delayed departures, helping pinpoint the most delay-prone location in the network.

### 2. Airlines with Wide Geographic Reach
Filtered airlines that operate from more than 50 distinct origin airports, indicating large-scale or national-level operations.

### 3. Monthly Delay Trends by Airline
Calculated the average arrival delay for each airline broken down by month, revealing seasonal patterns and which airlines struggle most at certain times of year.

### 4. Flights That Recovered Lost Time
Extracted flights where the departure delay was greater than the arrival delay — meaning the flight left late but made up time in the air.

### 5. Busiest Airports by Total Departures
Ranked all origin airports by total number of departures to identify the highest-traffic hubs in the dataset.

### 6. Airlines with High Cancellation Counts
Highlighted airlines that cancelled more than 500 flights, useful for understanding reliability and operational issues.

### 7. Flights with Full City-Level Route Information
Combined the flights table with the airports table to display the actual origin and destination **city names** instead of raw IATA codes, making the data more readable and meaningful.

### 8. Top 10 Most Delayed Airlines on Arrival
Ranked airlines by their average arrival delay and listed the top 10 worst performers, giving a clear picture of punctuality across carriers.

### 9. Total Flights Operated per Airline
Joined flight records with airline names to show how many total flights each airline operated, ranked from most to least active.

---

## 🧠 SQL Concepts Applied

| Concept                  | Purpose                                              |
|--------------------------|------------------------------------------------------|
| `WHERE`                  | Filter rows based on conditions                      |
| `GROUP BY`               | Aggregate data by category                           |
| `HAVING`                 | Filter groups after aggregation                      |
| `COUNT`, `AVG`           | Measure volume and average performance               |
| `COUNT(DISTINCT ...)`    | Count unique values within groups                    |
| `JOIN`                   | Combine data from multiple tables                    |
| `ORDER BY` + `LIMIT`     | Rank and retrieve top results                        |

---

## 🛠️ Tools Used

- **Database:** MySQL / SQLite  
- **Language:** SQL  
- **Dataset:** US Domestic Flight Delay Data (2015)

---

## 👩‍💻 Author

**Poulami Bhowmick**   
SQL Analysis Project — Academic Submission
