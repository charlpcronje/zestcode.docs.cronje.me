## DB as JSON
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
  "triggers": [],
  "engine": "mysql@dbgate-plugin-mysql"
}