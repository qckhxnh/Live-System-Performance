# System Performance Monitoring

## Overview

This project allows you to monitor and record essential system performance metrics, such as CPU usage, memory usage, network activity, and disk usage, into a PostgreSQL database. The collected data can be visualized and analyzed using Power BI with the provided Power BI file (`System Performance.pbix`).

## How to Use

1. **Create Database Table**
   - Execute the SQL script (`System Performance.sql`) in your PostgreSQL database to create the `performance` table, where system performance data will be stored.

2. **Update Connection Details**
   - Modify the connection details (host, port, database, user, password) in the `main.py` script to match your PostgreSQL setup.

3. **Run the Monitoring Script**
   - Execute the Python script (`main.py`) to start monitoring and recording system performance metrics into the PostgreSQL database.

4. **Visualize Data with Power BI**
   - Open the Power BI file (`System Performance.pbix`) to visualize and analyze the collected system performance data. Update the connection string in Power BI to connect to your PostgreSQL database.

## Important Notes

- This project utilizes Python, psutil for system monitoring, and psycopg2 for database interaction.
- Ensure you have PostgreSQL installed and running on your machine.
- Adjust the connection details in the script for your PostgreSQL setup.

Feel free to contribute, report issues, or suggest improvements!
