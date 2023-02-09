---LOGIN---

CREATE USER Super_usuario WITH PASSWORD 'superuser123'
CREATE USER Usuario_normal WITH PASSWORD 'usernormal123'
CREATE USER Usuario_backup WITH PASSWORD 'userbackup123'

---ROLES---
GRANT ALL PRIVILEGES ON DATABASE club_activo_20_30 TO Super_usuario;
GRANT SELECT PRIVILEGES ON DATABASE club_activo_20_30 TO Usuario_normal;
GRANT ALL PRIVILEGES ON DATABASE club_activo_20_30 TO Usuario_backup;

