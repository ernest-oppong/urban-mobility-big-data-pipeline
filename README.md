# 🚦 Distributed Big Data Architecture for Urban Mobility Analytics

## 🧠 Project Overview

This project designs and implements a **distributed Big Data architecture** to analyze urban mobility using multiple datasets:

* Vehicle mobility data
* Traffic sensor data
* Public transport data

The system leverages **HDFS for distributed storage**, **Hive for SQL-based processing**, and **YARN for resource management**, with results visualized through **Power BI dashboards**.

The objective is to identify congestion patterns, traffic intensity, and public transport demand to support **data-driven urban planning decisions**.

---

## ⚙️ Architecture

```
Data Sources → HDFS → Hive (SQL Processing) → YARN → Power BI
```

📸 Architecture Diagram:
![Architecture](architecture/architecture_diagram.png)

---

## 🛠️ Tech Stack

* Python
* Apache Hive
* HDFS
* YARN
* Power BI

---

## 🔄 Data Pipeline

1. Data ingestion from multiple sources (CSV / JSON)
2. Storage in HDFS (distributed system)
3. Data processing using Hive (SQL queries)
4. Query execution managed by YARN
5. Visualization using Power BI dashboards

---

## 📊 Key Analyses & Queries

### 🚦 1. Congestion by Zone

```sql
SELECT zona, congestion_level, COUNT(*) 
FROM movilidad
GROUP BY zona, congestion_level;
```

📸 Result:
![Congestion](hive_results/01_congestion_by_zone_result.png)

---

### 🚗 2. Average Speed by Vehicle Type

```sql
SELECT vehicle_type, AVG(velocidad_kmh) 
FROM movilidad
GROUP BY vehicle_type;
```

📸 Result:
![Speed](hive_results/02_avg_speed_vehicle_result.png)

---

### ⏰ 3. Peak Hours Analysis

```sql
SELECT SUBSTR(ts,12,2) AS hora, COUNT(*) 
FROM movilidad
GROUP BY SUBSTR(ts,12,2);
```

📸 Result:
![Peak Hours](hive_results/03_peak_hours_result.png)

---

### 📡 4. Vehicles Detected by Zone (Sensors)

```sql
SELECT zona, SUM(vehiculos_detectados)
FROM sensores_trafico
GROUP BY zona;
```

📸 Result:
![Sensors](hive_results/04_vehicles_by_zone_result.png)

---

### ⚙️ 5. Sensor Status Monitoring

```sql
SELECT estado_sensor, COUNT(*) 
FROM sensores_trafico
GROUP BY estado_sensor;
```

📸 Result:
![Sensor Status](hive_results/05_sensor_status_result.png)

---

### 🚌 6. Passengers per Line

```sql
SELECT linea, SUM(pasajeros)
FROM transporte_publico
GROUP BY linea;
```

📸 Result:
![Passengers](hive_results/07_passengers_by_line_result.png)

---

### 🔥 7. Cross Analysis: Congestion + Public Transport

```sql
SELECT m.zona, COUNT(*) AS congestion, SUM(t.pasajeros)
FROM movilidad m
JOIN transporte_publico t
ON m.zona = t.zona
WHERE m.congestion_level = 'alto'
GROUP BY m.zona;
```

📸 Result:
![Cross Analysis](hive_results/10_cross_analysis_result.png)

---

## 📊 Dashboards (Power BI)

### 🌍 Overview Dashboard

![Dashboard Overview](dashboards/dashboard_overview.png)

### 📡 Sensors Dashboard

![Dashboard Sensors](dashboards/dashboard_sensors.png)

### 🚌 Transport Analysis and Combined Analysis

![Dashboard Transport](dashboards/dashboard_transport_and_cross_analysis.png)

---

## 💼 Business Impact

* Identifies high congestion areas across the city
* Detects peak traffic hours and movement patterns
* Evaluates sensor reliability and data quality
* Analyzes public transport demand by zone and line
* Supports decision-making for urban mobility optimization

---

## 🚀 Future Improvements

* Integrate real-time data streaming with Kafka
* Add Spark for large-scale distributed processing
* Orchestrate pipelines using Apache Airflow
* Deploy as a scalable cloud-based solution (AWS / Azure)

---

## 📁 Project Structure

```
├── architecture/
├── dashboards/
├── hive_results/
├── sql/
├── data/
├── README.md
```

---

## 👨‍💻 Author

**Ernest Oppong**
