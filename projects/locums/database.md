# Database Structure

## Table: users
### Description: This table holds the user data
### Columns:
``` 
- id
- address_id
- name
- email
- email_verified_at
- password
- remember_token
- created_at
- updated_at
- stripe_id
- pm_type
- pm_last_four
- trial_ends_at
```

# Data: Here is an example of the 3 types of users, consultant, practice and Super Admin
```csv
id,"address_id","name","email","email_verified_at","password","remember_token","created_at","updated_at","stripe_id","pm_type","pm_last_four","trial_ends_at"
1,,"Super Admin","administrator@mfl.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","EN51HYDZmIE5Hl7WqPNhro9xgAPRhbNIEzOEJ7FaSElfdHhljXOaJtsMv0eG","2023-3-6 16:37:41","2023-5-2 13:24:58",,,,
2,,"Example Locum","locum@example.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","VX4nFVnWdz","2023-4-15 13:34:28","2023-5-2 13:24:58",,,,
3,,"Example Vet User","vet@example.com","2023-5-2 13:24:58","$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi","Kc1eThOsyEMygxZZ02G6kDGOKVkTQlnn1SrMFzsc8oTmYTITwpz8EFkx7DNL","2023-3-21 08:04:30","2023-5-2 13:24:59","cus_NovAyYQmK2MesO",,,
```

## Table: roles
### Description: This table has 3 entries
### Columns:
```
- id
- name
- guard_name
- created_at
- updated_at
```

### Data:
```csv
id,name, guard_name, created_at, updated_at
1, consultant,web,2023-05-02 13:24:58, 2023-05-02 13:24:58
2, practice,web,2023-05-02 13:24:58, 2023-05-02 13:24:58
3, Super Admin,web,2023-05-02, 13:24:58, 2023-05-02 13:24:58
```


## Table: model_has_roles
### Description: This table contains the role_id and the model_id and the model_type, so basically it can assign roles to any model,  This table joins to the users table on the model_id and where the model_type = `App\Models\User`
### Columns:
```
- role_id
- model_type
- model_id
```

Data:
```csv
role_id,model_type,model_ud
3,App\Models\User,1
1,App\Models\User,2
2,App\Models\User,3
1,App\Models\User,5
2,App\Models\User,6
1,App\Models\User,7
2,App\Models\User,8
```

## Table:  user_vacancy
### Description: This table contains the user_id and the vacancy_id and the status, So this table is responsible for linking users to a vacancy a practice posted, and the status can be either successful, declined or pending. The entries in this table get talked about as applications
### Columns:
```
- user_id
- vacancy_id
- status, this can be either be successful, declined or pending
- created_at
- updated_at
```
Data:
```csv
user_id,vacancy_id,status,created_at,updated_at
9,108,successful,2023-06-09 15:03:00,2023-06-15 19:20:03
24,476,declined,2023-07-05 13:22:53,2023-07-07 14:56:28
122,1165,declined,2023-07-08 20:54:29,2023-08-24 14:23:03
24,1291,pending,2023-07-14 18:27:19,2023-07-14 18:27:19
```

## Table: practices
### Description: This refer to veterinary practices that can add entries to the vacancies table  
### Columns:
```
- id
- address_id
- user_id
- name
- phone_number
- email
- description
- agency
- credits
- created_at
- updated_at
- logo
```
### Data:
```csv
id,"address_id","user_id","name","phone_number","email","description","agency","credits","created_at","updated_at","logo"
2,,"6","Molly Fiander","07412225220","info@managementforlocums.com",,"0","200","2023-5-3 14:24:56","2023-7-13 14:46:01","practice_logos/5463b68b-c029-477a-9c42-5b1a76546422MFL logo.png"
3,,"8","Help Search Locate","07535587851","hannah@helpsearchlocate.com",,"1","9999682","2023-5-4 15:09:11","2023-8-24 14:22:42","practice_logos/f97a88d1-8044-43aa-9df1-45a4aab6d945you (1).png"
5,,"34","CVS","01328 862137","kerrie.allen@cvsvets.com",,"0","0","2023-5-10 19:18:33","2023-6-6 16:08:11",
```

## Table: vacancies
### Description: This is where practices posts vacancies, and consultants can apply to them
### Columns:
```
- id
- title
- description
- location
- lat
- lng
- day_hourly_salary
- night_hourly_salary
- night_rate_multiplier
- day_rate_multiplier
- currency
- position_type
- position_level
- start_date
- end_date
- charge_type
- filled
- practice_id
- created_at
- updated_at
- clicks
```
### Data:
```csv
id,"title","description","location","lat","lng","day_hourly_salary","night_hourly_salary","night_rate_multiplier","day_rate_multiplier","currency","position_type","position_level","start_date","end_date","charge_type","filled","practice_id","created_at","updated_at","clicks"  
19,"Locum Vet - Breeder Imaging Services, Lincolnshire","<div>Locum Vet - Spalding, Lincolnshire<br>Start date: any considered<br>End date: ongoing<br>Hours: 3 days per week - 9am - 5pm<br>Accommodation may be available<br>main focus is radiography for canine health schemes, so proficiency in administering IV sedation is important.&nbsp
20,"Locum Vet - Berkshire","<div>Independent practice - Windsor, Berkshire<br><br>Start: 7th August<br>End: 18th August<br><br>Some sole charge may be involved<br><br>Hours: 4 or 5 days week, Mon to Fri. One late night til 9pm<br><br>Weekends: none<br><br>Accommodation and use of a car can be provided, if required. &nbsp
```

## DB as JSON

```json
{
  "tables": [
    {
      "pureName": "addresses",
      "tableRowCount": "1320",
      "modifyDate": "2023-09-05 14:32:24",
      "objectId": "addresses",
      "contentHash": "2023-09-05 14:32:24",
      "columns": [
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "addressable_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "addressable_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "address_line_1",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "address_line_2",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "city",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "county",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "postcode",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "lat",
          "columnComment": "",
          "dataType": "double",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "lng",
          "columnComment": "",
          "dataType": "double",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "addresses",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "addresses",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [
        {
          "constraintName": "addresses_addressable_id_addressable_type_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "addressable_id"
            },
            {
              "columnName": "addressable_type"
            }
          ],
          "pureName": "addresses",
          "constraintType": "index"
        },
        {
          "constraintName": "addresses_lat_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "lat"
            }
          ],
          "pureName": "addresses",
          "constraintType": "index"
        },
        {
          "constraintName": "addresses_lng_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "lng"
            }
          ],
          "pureName": "addresses",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "failed_jobs",
      "tableRowCount": "0",
      "modifyDate": "2023-09-05 14:32:24",
      "objectId": "failed_jobs",
      "contentHash": "2023-09-05 14:32:24",
      "columns": [
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "uuid",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "connection",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "queue",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "payload",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "exception",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "failed_jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "failed_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": "CURRENT_TIMESTAMP",
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "failed_jobs",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [
        {
          "constraintName": "failed_jobs_uuid_unique",
          "columns": [
            {
              "columnName": "uuid"
            }
          ],
          "pureName": "failed_jobs",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "jobs",
      "tableRowCount": "2",
      "modifyDate": "2023-09-05 14:32:24",
      "objectId": "jobs",
      "contentHash": "2023-09-05 14:32:24",
      "columns": [
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "queue",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "payload",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "attempts",
          "columnComment": "",
          "dataType": "tinyint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "reserved_at",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "available_at",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "jobs",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "jobs",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [
        {
          "constraintName": "jobs_queue_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "queue"
            }
          ],
          "pureName": "jobs",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "migrations",
      "tableRowCount": "29",
      "modifyDate": "2023-09-05 14:32:24",
      "objectId": "migrations",
      "contentHash": "2023-09-05 14:32:24",
      "columns": [
        {
          "pureName": "migrations",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "migrations",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "migration",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "migrations",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "batch",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "migrations",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "model_has_permissions",
      "tableRowCount": "0",
      "modifyDate": "2023-09-05 14:32:24",
      "objectId": "model_has_permissions",
      "contentHash": "2023-09-05 14:32:24",
      "columns": [
        {
          "pureName": "model_has_permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "permission_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "model_has_permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_has_permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "model_has_permissions",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "permission_id"
          },
          {
            "columnName": "model_id"
          },
          {
            "columnName": "model_type"
          }
        ]
      },
      "foreignKeys": [
        {
          "constraintName": "model_has_permissions_permission_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "model_has_permissions",
          "refTableName": "permissions",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "permission_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "indexes": [
        {
          "constraintName": "model_has_permissions_model_id_model_type_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "model_id"
            },
            {
              "columnName": "model_type"
            }
          ],
          "pureName": "model_has_permissions",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "model_has_roles",
      "tableRowCount": "406",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "model_has_roles",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "model_has_roles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "role_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "model_has_roles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_has_roles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "model_has_roles",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "role_id"
          },
          {
            "columnName": "model_id"
          },
          {
            "columnName": "model_type"
          }
        ]
      },
      "foreignKeys": [
        {
          "constraintName": "model_has_roles_role_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "model_has_roles",
          "refTableName": "roles",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "role_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "indexes": [
        {
          "constraintName": "model_has_roles_model_id_model_type_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "model_id"
            },
            {
              "columnName": "model_type"
            }
          ],
          "pureName": "model_has_roles",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "model_reviews",
      "tableRowCount": "2",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "model_reviews",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "model_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "user_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "review",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "ratings",
          "columnComment": "",
          "dataType": "json",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "reply",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "active",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": "1",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "model_reviews",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "approved",
          "columnComment": "",
          "dataType": "tinyint",
          "defaultValue": "0",
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "model_reviews",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "password_resets",
      "tableRowCount": "7",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "password_resets",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "password_resets",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "email",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "password_resets",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "token",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "password_resets",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "password_resets",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "email"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "permissions",
      "tableRowCount": "4",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "permissions",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "permissions",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "guard_name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "permissions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "permissions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "permissions",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [
        {
          "constraintName": "permissions_name_guard_name_unique",
          "columns": [
            {
              "columnName": "name"
            },
            {
              "columnName": "guard_name"
            }
          ],
          "pureName": "permissions",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [
        {
          "constraintName": "model_has_permissions_permission_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "model_has_permissions",
          "refTableName": "permissions",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "permission_id",
              "refColumnName": "id"
            }
          ]
        },
        {
          "constraintName": "role_has_permissions_permission_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "role_has_permissions",
          "refTableName": "permissions",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "permission_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "personal_access_tokens",
      "tableRowCount": "0",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "personal_access_tokens",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "personal_access_tokens",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "tokenable_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "tokenable_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "token",
          "columnComment": "",
          "dataType": "varchar(64)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "abilities",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "last_used_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "expires_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "personal_access_tokens",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "personal_access_tokens",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [
        {
          "constraintName": "personal_access_tokens_tokenable_type_tokenable_id_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "tokenable_type"
            },
            {
              "columnName": "tokenable_id"
            }
          ],
          "pureName": "personal_access_tokens",
          "constraintType": "index"
        }
      ],
      "uniques": [
        {
          "constraintName": "personal_access_tokens_token_unique",
          "columns": [
            {
              "columnName": "token"
            }
          ],
          "pureName": "personal_access_tokens",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "practices",
      "tableRowCount": "16",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "practices",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "practices",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "address_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "user_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "phone_number",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "email",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "description",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "agency",
          "columnComment": "",
          "dataType": "tinyint",
          "defaultValue": "0",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "credits",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": "0",
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "practices",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "logo",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "practices",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "role_has_permissions",
      "tableRowCount": "4",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "role_has_permissions",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "role_has_permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "permission_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "role_has_permissions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "role_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "role_has_permissions",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "permission_id"
          },
          {
            "columnName": "role_id"
          }
        ]
      },
      "foreignKeys": [
        {
          "constraintName": "role_has_permissions_permission_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "role_has_permissions",
          "refTableName": "permissions",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "permission_id",
              "refColumnName": "id"
            }
          ]
        },
        {
          "constraintName": "role_has_permissions_role_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "role_has_permissions",
          "refTableName": "roles",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "role_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "indexes": [
        {
          "constraintName": "role_has_permissions_role_id_foreign",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "role_id"
            }
          ],
          "pureName": "role_has_permissions",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "roles",
      "tableRowCount": "3",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "roles",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "roles",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "roles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "roles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "guard_name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "roles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "roles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "roles",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [
        {
          "constraintName": "roles_name_guard_name_unique",
          "columns": [
            {
              "columnName": "name"
            },
            {
              "columnName": "guard_name"
            }
          ],
          "pureName": "roles",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [
        {
          "constraintName": "model_has_roles_role_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "model_has_roles",
          "refTableName": "roles",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "role_id",
              "refColumnName": "id"
            }
          ]
        },
        {
          "constraintName": "role_has_permissions_role_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "role_has_permissions",
          "refTableName": "roles",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "role_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "scheduled_notifications",
      "tableRowCount": "15",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "scheduled_notifications",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "target_id",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "target_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "target",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "notification_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "notification",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "send_at",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "sent_at",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "rescheduled_at",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "cancelled_at",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "scheduled_notifications",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "meta",
          "columnComment": "",
          "dataType": "json",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "scheduled_notifications",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "slots",
      "tableRowCount": "0",
      "modifyDate": "2023-09-05 16:28:15",
      "objectId": "slots",
      "contentHash": "2023-09-05 16:28:15",
      "columns": [
        {
          "pureName": "slots",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "slots",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "start_date",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "slots",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "end_date",
          "columnComment": "",
          "dataType": "datetime",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "slots",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "day_of_week",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "slots",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "slots",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "slots",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "subscription_items",
      "tableRowCount": "10",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "subscription_items",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "subscription_items",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "subscription_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "stripe_id",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "stripe_product",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "stripe_price",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "quantity",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscription_items",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "subscription_items",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [
        {
          "constraintName": "subscription_items_subscription_id_stripe_price_unique",
          "columns": [
            {
              "columnName": "subscription_id"
            },
            {
              "columnName": "stripe_price"
            }
          ],
          "pureName": "subscription_items",
          "constraintType": "unique"
        },
        {
          "constraintName": "subscription_items_stripe_id_unique",
          "columns": [
            {
              "columnName": "stripe_id"
            }
          ],
          "pureName": "subscription_items",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "subscriptions",
      "tableRowCount": "10",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "subscriptions",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "subscriptions",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "user_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "stripe_id",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "stripe_status",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "stripe_price",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "quantity",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "trial_ends_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "ends_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "subscriptions",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "subscriptions",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [
        {
          "constraintName": "subscriptions_user_id_stripe_status_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "user_id"
            },
            {
              "columnName": "stripe_status"
            }
          ],
          "pureName": "subscriptions",
          "constraintType": "index"
        }
      ],
      "uniques": [
        {
          "constraintName": "subscriptions_stripe_id_unique",
          "columns": [
            {
              "columnName": "stripe_id"
            }
          ],
          "pureName": "subscriptions",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "user_profiles",
      "tableRowCount": "225",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "user_profiles",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "user_profiles",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "user_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "approved",
          "columnComment": "",
          "dataType": "tinyint",
          "defaultValue": "0",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "phone",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "identity_document",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "profile_image",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "rcs_number",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "role",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_profiles",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "description",
          "columnComment": "",
          "dataType": "longtext",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "user_profiles",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [
        {
          "constraintName": "user_profiles_user_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_profiles",
          "refTableName": "users",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "user_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "indexes": [
        {
          "constraintName": "user_profiles_user_id_foreign",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "user_id"
            }
          ],
          "pureName": "user_profiles",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "user_vacancy",
      "tableRowCount": "28",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "user_vacancy",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "user_vacancy",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "user_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "user_vacancy",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "vacancy_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "user_vacancy",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "status",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": "'pending'",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_vacancy",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": "CURRENT_TIMESTAMP",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "user_vacancy",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": "CURRENT_TIMESTAMP",
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "foreignKeys": [
        {
          "constraintName": "user_vacancy_user_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_vacancy",
          "refTableName": "users",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "user_id",
              "refColumnName": "id"
            }
          ]
        },
        {
          "constraintName": "user_vacancy_vacancy_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_vacancy",
          "refTableName": "vacancies",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "vacancy_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "indexes": [
        {
          "constraintName": "user_vacancy_user_id_foreign",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "user_id"
            }
          ],
          "pureName": "user_vacancy",
          "constraintType": "index"
        },
        {
          "constraintName": "user_vacancy_vacancy_id_foreign",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "vacancy_id"
            }
          ],
          "pureName": "user_vacancy",
          "constraintType": "index"
        }
      ],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "users",
      "tableRowCount": "409",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "users",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "users",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "address_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "name",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "email",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "email_verified_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "password",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "remember_token",
          "columnComment": "",
          "dataType": "varchar(100)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "stripe_id",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "pm_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "pm_last_four",
          "columnComment": "",
          "dataType": "varchar(4)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "users",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "trial_ends_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "users",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [
        {
          "constraintName": "users_stripe_id_index",
          "indexType": "BTREE",
          "isUnique": false,
          "columns": [
            {
              "columnName": "stripe_id"
            }
          ],
          "pureName": "users",
          "constraintType": "index"
        }
      ],
      "uniques": [
        {
          "constraintName": "users_email_unique",
          "columns": [
            {
              "columnName": "email"
            }
          ],
          "pureName": "users",
          "constraintType": "unique"
        }
      ],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [
        {
          "constraintName": "user_profiles_user_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_profiles",
          "refTableName": "users",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "user_id",
              "refColumnName": "id"
            }
          ]
        },
        {
          "constraintName": "user_vacancy_user_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_vacancy",
          "refTableName": "users",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "user_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "objectTypeField": "tables",
      "checks": []
    },
    {
      "pureName": "vacancies",
      "tableRowCount": "992",
      "modifyDate": "2023-09-05 14:32:25",
      "objectId": "vacancies",
      "contentHash": "2023-09-05 14:32:25",
      "columns": [
        {
          "pureName": "vacancies",
          "notNull": true,
          "autoIncrement": true,
          "columnName": "id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "title",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "description",
          "columnComment": "",
          "dataType": "text",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "location",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "lat",
          "columnComment": "",
          "dataType": "double",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "lng",
          "columnComment": "",
          "dataType": "double",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "day_hourly_salary",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "night_hourly_salary",
          "columnComment": "",
          "dataType": "int",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "night_rate_multiplier",
          "columnComment": "",
          "dataType": "smallint",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "day_rate_multiplier",
          "columnComment": "",
          "dataType": "smallint",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "currency",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "position_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "position_level",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "start_date",
          "columnComment": "",
          "dataType": "date",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "end_date",
          "columnComment": "",
          "dataType": "date",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "charge_type",
          "columnComment": "",
          "dataType": "varchar(255)",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "filled",
          "columnComment": "",
          "dataType": "tinyint",
          "defaultValue": "0",
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "practice_id",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": null,
          "isUnsigned": true,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "created_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": false,
          "autoIncrement": false,
          "columnName": "updated_at",
          "columnComment": "",
          "dataType": "timestamp",
          "defaultValue": null,
          "isUnsigned": false,
          "isZerofill": false
        },
        {
          "pureName": "vacancies",
          "notNull": true,
          "autoIncrement": false,
          "columnName": "clicks",
          "columnComment": "",
          "dataType": "bigint",
          "defaultValue": "0",
          "isUnsigned": true,
          "isZerofill": false
        }
      ],
      "primaryKey": {
        "constraintName": "PRIMARY",
        "pureName": "vacancies",
        "constraintType": "primaryKey",
        "columns": [
          {
            "columnName": "id"
          }
        ]
      },
      "foreignKeys": [],
      "indexes": [],
      "uniques": [],
      "engine": "mysql@dbgate-plugin-mysql",
      "dependencies": [
        {
          "constraintName": "user_vacancy_vacancy_id_foreign",
          "constraintType": "foreignKey",
          "pureName": "user_vacancy",
          "refTableName": "vacancies",
          "updateAction": "NO ACTION",
          "deleteAction": "CASCADE",
          "columns": [
            {
              "columnName": "vacancy_id",
              "refColumnName": "id"
            }
          ]
        }
      ],
      "objectTypeField": "tables",
      "checks": []
    }
  ],
  "collections": [],
  "views": [],
  "matviews": [],
  "functions": [],
  "procedures": [
    {
      "pureName": "ShowAllTableStructures",
      "modifyDate": "2023-09-15 14:19:27",
      "returnDataType": "",
      "routineDefinition": "BEGIN\r\n  DECLARE done INT DEFAULT 0;\r\n  DECLARE tableName CHAR(64);\r\n  DECLARE tableCursor CURSOR FOR SELECT table_name FROM information_schema.tables WHERE table_schema = DATABASE();\r\n\r\n  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;\r\n\r\n  OPEN tableCursor;\r\n\r\n  read_loop: LOOP\r\n    FETCH tableCursor INTO tableName;\r\n    IF done THEN\r\n      LEAVE read_loop;\r\n    END IF;\r\n\r\n    SET @sql = CONCAT('SHOW CREATE TABLE ', tableName, ';');\r\n    PREPARE stmt FROM @sql;\r\n    EXECUTE stmt;\r\n    DEALLOCATE PREPARE stmt;\r\n  END LOOP;\r\n\r\n  CLOSE tableCursor;\r\nEND",
      "isDeterministic": "NO",
      "createSql": "DELIMITER //\n\nCREATE PROCEDURE `ShowAllTableStructures`()\nBEGIN\r\n  DECLARE done INT DEFAULT 0;\r\n  DECLARE tableName CHAR(64);\r\n  DECLARE tableCursor CURSOR FOR SELECT table_name FROM information_schema.tables WHERE table_schema = DATABASE();\r\n\r\n  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;\r\n\r\n  OPEN tableCursor;\r\n\r\n  read_loop: LOOP\r\n    FETCH tableCursor INTO tableName;\r\n    IF done THEN\r\n      LEAVE read_loop;\r\n    END IF;\r\n\r\n    SET @sql = CONCAT('SHOW CREATE TABLE ', tableName, ';');\r\n    PREPARE stmt FROM @sql;\r\n    EXECUTE stmt;\r\n    DEALLOCATE PREPARE stmt;\r\n  END LOOP;\r\n\r\n  CLOSE tableCursor;\r\nEND\n\nDELIMITER ;\n",
      "objectId": "ShowAllTableStructures",
      "contentHash": "2023-09-15 14:19:27",
      "engine": "mysql@dbgate-plugin-mysql",
      "objectTypeField": "procedures"
    }
  ],
  "triggers": [],
  "engine": "mysql@dbgate-plugin-mysql"
}
```


