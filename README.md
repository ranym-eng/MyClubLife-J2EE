# MyClubLife — J2EE

> **Academic project** — This repository is coursework / a learning exercise for **Java EE** web development. It is not intended as production software.

Dynamic web module (Eclipse), targeting deployment on a **Jakarta EE**–compatible application server (e.g. WildFly).

## Repository layout

| Path | Description |
|------|-------------|
| `JEE_student/` | Eclipse web project (sources, `WEB-INF`, facet settings) |
| `mabase.sql.sql` / `mabasedata.sql.sql` | Reference SQL scripts for the database |

## Prerequisites

- JDK 17 (or the version matching the project facets)
- Eclipse IDE for Enterprise Java and Web Developers (or equivalent)
- Application server (e.g. WildFly) configured as a runtime in Eclipse
- MySQL (schema/data via the `.sql` scripts if needed)

## Import into Eclipse

1. **File → Import → Existing Projects into Workspace**
2. Select the `JEE_student` folder
3. Attach the WildFly (or other) runtime when prompted

## Git

```bash
git remote add origin https://github.com/ranym-eng/MyClubLife-J2EE.git
git branch -M main
git push -u origin main
```

After the first `git push`, GitHub will ask for authentication (personal access token or SSH, depending on your setup).
