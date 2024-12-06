# databaseStore
Database Project Repository  
This repository includes:
- A PostgreSQL backup file to create a relational database with constraints.
- Pre-populated synthetic data included in the backup.
- Five test queries in an executable file to validate database functionality.

---

## **Creating a PostgreSQL Database Using pgAdmin (Initial Setup)**

This guide walks you through restoring a `.backup` file into a PostgreSQL database using **pgAdmin**.  
**Disclaimer**: This process can also be completed using the command line. See **command-line instructions** for details.

---

### **1. Install PostgreSQL**
- Download and install PostgreSQL from [PostgreSQL's official website](https://www.postgresql.org/download/).
- Follow the installation wizard and ensure you install the PostgreSQL server, command-line tools, and optionally pgAdmin.

---

### **2. Install pgAdmin**
- If pgAdmin was not included with your PostgreSQL installation, download it separately from [pgAdmin's official website](https://www.pgadmin.org/download/).
- Follow the installation steps to set it up on your system.

---

### **3. Launch pgAdmin**
- Open **pgAdmin** from your system after installation.

---

### **4. Connect to Your PostgreSQL Server**
1. In pgAdmin, expand the **"Servers"** node in the left-hand navigation panel.
2. Select your PostgreSQL server and log in with your credentials (if not already connected).  
   If prompted, enter the server name, username, and password configured during PostgreSQL installation.

---

### **5. Create a New Database (If Needed)**
1. In the left-hand navigation panel, right-click the **"Databases"** node under your server.
2. Select **"Create" > "Database…"**.
3. Enter the name of the new database as 'park' and click **"Save"**.

---

### **6. Open the Restore Dialog**
1. Right-click the target database where you want to restore the `.backup` file.
2. Select **"Restore…"** from the context menu.

---

### **7. Configure the Restore Options**
1. In the **"Restore"** dialog:
   - **Filename**: Click the ellipsis button (`...`) to browse and select the 'amusementFinder.backup` file located in this repo.
   - **Format**: Ensure it is set to **"Custom or tar"** since `.backup` files are in this format.
2. Expand **"Restore Options"** (optional, if applicable):
   - **Clean**: Check this box to drop existing objects before restoring them.
   - **Verbose Messages**: Check this box to view detailed output during the process.

---

### **8. Start the Restoration**
1. Click **"Restore"** to begin the process.
2. Monitor the progress in the dialog box. Any errors or success messages will appear here.
3. After Successful Restore, move onto the next step to test queries.

---

---

## **Running Test Queries**

### **1. Launch pgAdmin**
- Open **pgAdmin** and connect to your PostgreSQL server.

---

### **2. Select the Restored Database**
1. In the left-hand navigation panel, expand the **"Servers"** node.
2. Locate and click on the **database** you just restored. This ensures the database is selected.

---

### **3. Open the Query Tool**
1. Right-click on the restored database in the navigation panel.
2. From the context menu, select **"Query Tool"**. This will open a new tab with a query editor where you can write SQL queries.

---

### **4. Write and Execute SQL Queries**
- Copy and paste the query from the list of test queries into the query editor (Test Scripts located in the SampleQueries.txt or SampleQueries.sql file).
- To execute a query, click the **Execute/Play** button (the lightning bolt icon) or press **F5**.

---

### **5. View Query Results**
- The results of your query will appear in the **output panel** at the bottom of the Query Tool tab.
  - Use the **Data** tab to view the result set.
  - Use the **Messages** tab for any query execution messages or errors.
  - The **Query History** tab can show previously executed queries.

---

