<a name="title"></a>

<!-- TITLE -->

# 🏷️ Vet Clinic

This is the first project of the fourth module in the **Microverse** program.
<br/>
Check the below contents for further details about this project.

<!-- CONTENTS -->

# 📗 Contents

- [Description](#description)
- [Instructions](#instructions)
- [Authors](#authors)
- [Future](#future)
- [Contributions](#contributions)
- [Support](#support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- DESCRIPTION -->

<a name="description"></a>

# 📖 Description

This repository includes files with plain `SQL` that can be used to recreate a database:
- Use [schema.sql](schema.sql) to create all tables
- Use [data.sql](data.sql) to populate tables with sample data
- Check [queries.sql](queries.sql) for examples of queries that can be run on a newly created database

**Important note:**
<br/>
This file might include queries that make changes in the database (e.g., remove records). Use them responsibly!

📌 **Tech Stack:**
- Database built with `PostgreSQL`
- Queries uses `SQL`

📌 **Key Features:**
- Table for animals information which include (name / birth date / escape attempts / weight / neutering)
- Each animal is linked with the owners & species tables through foreign keys (owner_id / species_id)
- Table for animal owners information which include (name / age)
- Table for animal species information which include (name)
- Table for vets information which include (name / age / graduation)
- Table for specializations information which is linked with the vets & species tables through foreign keys (vet_id / species_id)
- Table for visits information which include (date)
- Each visit is linked with the vets & species tables through foreign keys (animal_id / vet_id)

<p align="right"><a href="#title">back to top</a></p>

<!-- INSTRUCTIONS -->

<a name="instructions"></a>

# 🛠️ Instructions

You can easily download or fork this repository and work on it immadiately!

📌 **Prerequisites:**
- `PostgreSQL` or any other `SQL` database

📌 **Installation:**
- Create a new database called `vet_clinic`
- Run queries in [schema.sql](schema.sql) for creating all tables
- Use [data.sql](data.sql) to populate tables with sample data

📌 **Development:**
- Check [queries.sql](queries.sql) for examples of queries that can be run on a newly created database

<p align="right"><a href="#title">back to top</a></p>

<!-- AUTHORS -->

<a name="authors"></a>

# 👥 Authors

📌 **Mahammad:**
- [GitHub](https://github.com/mahammad-mostafa)
- [Twitter](https://twitter.com/mahammad_mostfa)
- [LinkedIn](https://linkedin.com/in/mahammad-mostafa)

📌 **Carlos:**
- [GitHub](https://github.com/CarlosZ96)

📌 **Austin:**
- [GitHub](https://github.com/stino-x)

<p align="right"><a href="#title">back to top</a></p>

<!-- FUTURE -->

<a name="future"></a>

# 🔭 Future

Some additional features I may implement in the project:
- [ ] Using `Binary` data types in tables
- [ ] Implement stored procedures like `SQL Trigger`

<p align="right"><a href="#title">back to top</a></p>

<!-- CONTRIBUTIONS -->

<a name="contributions"></a>

# 🤝🏻 Contributions

Wish to contribute to this project?
<br/>
Contributions, issues, and feature requests are more than welcome!
<br/>
Feel free to check the [issues](../../issues) page too.

<p align="right"><a href="#title">back to top</a></p>

<!-- SUPPORT -->

<a name="support"></a>

# ⭐️ Support

Like this project? Show your support by starring!

<p align="right"><a href="#title">back to top</a></p>

<!-- ACKNOWLEDGEMENTS -->

<a name="acknowledgements"></a>

# 🙏🏻 Acknowledgements

I thank everyone at **Microverse** for guiding me through this project.

<p align="right"><a href="#title">back to top</a></p>

<!-- LICENSE -->

<a name="license"></a>

# 📝 License

This project is [MIT](LICENSE.md) licensed.

<p align="right"><a href="#title">back to top</a></p>