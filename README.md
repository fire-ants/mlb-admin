# MLB Pitchers Friend

*"Helping hitters become batters...and then sitting them back down"*

The **MLB Pitchers Friend** uses data analytics techniques to visualize hitting characteristics for specific Major League Baseball (MLB) players.  Future releases will perform regression modeling and principal component analysis (PCA) to recommend specific pitching techniques to defeat them.

**MLB Pitchers Friend** uses a cloud-based, microservice architecture.  The major components are described below.

* [**Analytics Ant**](https://github.com/fire-ants/mlb-analytics-ant) - analyzes pitches experienced by hitters and the outcomes.  Applies the **Fire Ant** proprietary **Hitter Val (HVAL) qualitative and quantitative scoring algorithm** on a per pitch basis to determine expected outcome per pitch.  Creates a comparison visualization between traditional Heat Map and HVAL and stores it in the **Virtustream Object Storage** for the Mobile Application.  Written in R.
* [**Queen Ant**](https://github.com/fire-ants/mlb-queen-ant) - orchestrates the aggregation (Crawler Ant) and analysis (Analytics Ant) microservices.  
* [**Crawler Ant**](https://github.com/fire-ants/mlb-crawler-ant) - connects to MLB Game Day data mart and extracts observed variables on every pitch thrown and At Bat events for the targeted analysis window.  Writes information to the database (Database Ant) via the API (API Ant).  Written in Java.
* [**API Ant**](https://github.com/fire-ants/mlb-api) - provides a front-end to the Database Ant and facilitates bi-directly communication (read / write). Written in Java.
* [**Database Ant**](https://github.com/fire-ants/mlb-database-ant) - stores all raw data provided by the Crawler Ant.  Currently hosted on MongoDB.
* [**Mobile App**](https://github.com/fire-ants/mlb-mobile-app) - presents visualizations and per-pitch analysis to the user.  Written in React Native to allow for Apple and Android compatibility.

![](https://github.com/fire-ants/mlb-admin/images/pf-appflow4.png)
