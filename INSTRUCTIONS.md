# Module 4 Assignment: MySQL Practice

(**NOTE:** View a rendered version of this file in VS Code with `ctrl-shift-v` or `cmd-shift-v`)

&nbsp;
## Introduction

For this assignment, you'll be learning how to design a MySQL database and how to use SQL queries to access and modify data within that database. We'll be using a database titled `music_db` that is seeded (pre-populated) with artist, album, and song information.

&nbsp;
## Setup

Copy the starter files inside of `unsolved` into the root directory of your GitHub repository.

Ensure you include a `.gitignore` file in your repo that includes at minimum:

```
**/.DS_Store
**/node_modules/
.env
```

Run `npm i` in the root directory of your repository (your `package.json` should be in the root directory).

&nbsp;
## Instructions

First you will need to complete the [schema.sql](./unsolved/schema/schema.sql) file by filling in the column data for the three tables within the database.

**NOTE:** The [schema.sql](./unsolved/schema/schema.sql) file **must** be completed before the tests OR application will run.

Next, you'll need to fill in the missing queries within the [queries](./unsolved/queries/) folder. Each query has a comment describing what the query should do. Some of the queries are already completed as an example of more advanced queries.

&nbsp;
## App Behavior

This application relies on Docker to create the local MySQL database to run queries against. The [package.json](./unsolved/package.json) file contains many scripts that assist in creating/seeding the MySQL database.

&nbsp;
### **Using MySQL in Docker**

To start a MySQL database without schema/seed data, run:

```
npm run mysql:start
```

To start a MySQL database and also automatically run the schema/seed files in the database, run:

```
npm run mysql:start:seed
```

To connect to a running database with MySQL shell access, run:

```
npm run mysql:shell
```

Lastly, to stop the MySQL container, run:

```
npm run mysql:stop
```

&nbsp;
### **Running SQL Queries**

There are numerous ways to run the SQL files in the [queries](./unsolved/queries/) folder.

You may install the [SQLTools extension](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools), the [MySQL driver](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) and then connect to the local database container and run your queries directly from VS Code.

You could also use an external tool like [TablePlus](https://tableplus.com/) to connect to your container and run/test queries.

In either case, you can use the username of `root` and no password to connect to the MySQL container.

Alternatively, there is an included CLI tool that will allow you to run the queries in the queries folder and see their output.

To run the application, run:

```
npm start
```

&nbsp;
## Testing

Automated tests are included with this assignment that run and check all of the queries in the queries folder. To receive full credit, all automated tests must pass.

To run the tests once, run:

```
npm test
```

To run the tests in watch mode, run:

```
npm run test:watch
```

There is also a special debug mode included in the tests that will show the expected vs actual query results. To run the tests in this mode, run:

```
npm run test:watch:debug
```

&nbsp;
## Requirements for full credit

To receive full credit for this assignment, you MUST:

  * Ensure that all queries are completed in the queries folder.
  * Write your queries so that all automated tests pass.

&nbsp;
## Submission

When submitting this assignment, please include:

  * A link to the assignment's GitHub repository.
  * A screenshot of the automated test results.