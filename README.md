# MyClubLife — J2EE

Projet web **Java EE** (module dynamique Eclipse), prévu pour déploiement sur un serveur d’applications compatible **Jakarta EE** (ex. WildFly).

## Contenu du dépôt

| Élément | Description |
|--------|-------------|
| `JEE_student/` | Projet web Eclipse (sources, `WEB-INF`, configuration facettes) |
| `mabase.sql.sql` / `mabasedata.sql.sql` | Scripts SQL de référence pour la base |

## Prérequis

- JDK 17 (ou la version alignée sur les facettes du projet)
- Eclipse IDE for Enterprise Java and Web Developers (ou équivalent)
- Serveur d’applications (ex. WildFly), configuré comme runtime dans Eclipse
- MySQL (schéma/données via les scripts `.sql` si besoin)

## Importer dans Eclipse

1. **File → Import → Existing Projects into Workspace**
2. Sélectionner le dossier `JEE_student`
3. Associer le runtime WildFly (ou autre) au projet si demandé

## Git

```bash
git remote add origin https://github.com/ranym-eng/MyClubLife-J2EE.git
git branch -M main
git push -u origin main
```

*(Après le premier `git push`, GitHub demandera une authentification : token personnel ou SSH selon votre configuration.)*
