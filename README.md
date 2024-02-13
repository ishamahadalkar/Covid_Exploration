<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ishamahadalkar/Covid_Exploration">
    <img src="logo.jpeg" alt="Logo" >
  </a>

<h3 align="center">COVID Exploration</h3>

  <p align="center">
    This project involved exploring COVID-19 data using SQL queries and analysis techniques. We aimed to uncover trends, patterns, and insights regarding infection rates, mortality rates, testing trends, and vaccination progress. 
    Through various SQL queries and data manipulation methods, we gained valuable insights into the pandemic's impact on different regions and demographics.
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


### Built With

* [![MySQL][MySQL.com]][MySQL-url]
* [![MySQLWorkbench][MySQLWorkbench.com]][MySQLWorkbench-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

You will need to install MySQL Workbench or another similar SQL software to load the data and run the queries. Download and install MySQL Workbench from the official website if you haven't already.

Make sure you have a MySQL database instance set up where you can import the provided SQL data. If you haven't already, install MySQL and create a database for this project.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/ishamahadalkar/Covid_Exploration
   ```
2. Set Up Your Database: Make sure you have a MySQL database instance set up where you can import the provided SQL data. If you haven't already, install MySQL and create a database for this project.
   
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DATA SOURCES -->
## Data Sources

The data was downloaded from the official site: https://ourworldindata.org/covid-deaths

### Preprocessing

1. Created two separate files for CovidDeaths and CovidVaccinations from the original data for better organization and clarity.
2. Standardized the date format to "yyyy-MM-dd" to ensure compatibility with SQL date format.
3. Replaced empty values with NULL to facilitate easier data loading and to maintain data integrity during the import process.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- APPROACH -->
## Approach

1. Conducted data preprocessing, including standardizing date formats and handling missing values, before loading the data into two separate tables.
2. Verified the integrity of the tables by confirming that the data was correctly uploaded, leveraging the upload wizard in MySQL Workbench for efficient validation.
3. Initiated exploratory analysis on the dataset, starting with basic queries and gradually progressing to more complex SQL queries to extract meaningful insights from the data.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CODE STRUCTURE -->
## Code Structure

- Exploration.sql: Contains SQL queries for data exploration and analysis.
- CovidDeaths.csv: Dataset containing COVID-19 death statistics.
- CovidVaccinations.csv: Dataset containing COVID-19 vaccination statistics.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- Lessons Learned -->
## Lessons Learned

1. Learned how to import large files and encountered the challenges of dealing with tedious processes and errors. Cleaning the data and figuring out the import process took considerable time and effort.
2. Learned about working with CSV files, including considerations for line encodings and the process of importing files into databases. Encountered challenges related to line encodings and gained experience in resolving them during the import process.
3. Gained knowledge about common data types in SQL such as INTEGER, VARCHAR, DATE, and TIMESTAMP, and understanding when to use each based on the nature of the data being stored.
4. Practiced techniques for manipulating and transforming data within SQL queries, including aggregation, filtering, and data cleaning operations.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE WORK -->
## Future Work

For future work, utilizing Tableau for data visualization would enhance the analysis, offering dynamic visualizations to explore trends and patterns in the COVID-19 datasets. This integration would enable clearer communication of insights and facilitate deeper exploration of geographic, temporal, and demographic aspects of the data.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@LinkedIn]([linked-url]) - mahadalkar.isha@gmail.com

Project Link: [https://github.com/ishamahadalkar/Covid_Exploration](https://github.com/ishamahadalkar/Covid_Exploration)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Our World in Data](https://ourworldindata.org/covid-deaths)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ishamahadalkar/Covid_Exploration.svg?style=for-the-badge
[contributors-url]: https://github.com/ishamahadalkar/Covid_Exploration/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ishamahadalkar/Covid_Exploration.svg?style=for-the-badge
[forks-url]: https://github.com/ishamahadalkar/Covid_Exploration/network/members
[stars-shield]: https://img.shields.io/github/stars/ishamahadalkar/Covid_Exploration.svg?style=for-the-badge
[stars-url]: https://github.com/ishamahadalkar/Covid_Exploration/stargazers
[issues-shield]: https://img.shields.io/github/issues/ishamahadalkar/Covid_Exploration.svg?style=for-the-badge
[issues-url]: https://github.com/ishamahadalkar/Covid_Exploration/issues
[license-shield]: https://img.shields.io/github/license/ishamahadalkar/Covid_Exploration.svg?style=for-the-badge
[license-url]: https://github.com/ishamahadalkar/Covid_Exploration/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/isha-mahadalkar
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
[MySQL.com]: https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white
[MySQL-url]: https://www.mysql.com
[MySQLWorkbench.com]: https://img.shields.io/badge/MySQL_Workbench-4479A1?style=for-the-badge&logo=mysql&logoColor=white
[MySQLWorkbench-url]: https://www.mysql.com/products/workbench/

