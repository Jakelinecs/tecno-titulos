
drop table if exists "type_academic_degree" cascade;
create table "type_academic_degree"
(
    "id" int not null,
    "name" varchar(50) null ,
    "descriptión" varchar(250) null
    primary key ("id")
)
;

drop table if exists "emity" cascade;
create table "emity"
(
    "id" int not null,
    "code" varchar(50) null,
    "name" varchar(50) null ,
    primary key ("id")
)
;

drop table if exists "user" cascade;
create table "user"
(
    "id" int not null,
    "name" varchar(250) null ,
    "ci" int null,
    "phone" int null,
    "direction" varchar(250) null,
    "date_birth" date null,
    "gender" varchar(1) null,
    "country" varchar(50) null,
    "city" varchar(50) null,
    "province" varchar(50) null,
    "email" varchar(250) null,
    "password" varchar(250) null
    primary key ("id")
)
;

drop table if exists "role" cascade;
create table "role"
(
    "id" int not null,
    "name" varchar(50) null ,
    "guard_name" varchar(50) null,
    "created_at" timestamp null,
    "updeted_at" timestamp null
    primary key ("id")
)
;

drop table if exists "model_has_roles" cascade;
create table "model_has_roles"
(
    "id" int not null,
    "model_type" varchar(45) null,
    "model_id" varchar(45) null,
    "roleid" int null,
    "userid" int null
    primary key ("id")
    foreign key ("roleid") references "role" ("id") on delete no action on update no action
    foreign key ("userid") references "user" ("id") on delete no action on update no action
)
;

drop table if exists "permissions" cascade;
create table "permissions"
(
    "id" int not null,
    "name" varchar(50) null ,
    "guard_name" varchar(50)null,
    "created_at" timestamp null,
    "update_at" timestamp null
    primary key ("id")
)
;

drop table if exists "role_has_permissions" cascade;
create table "role_has_permissions"
(
    "id" int not null,
    "roleid" int null,
    "permissionsid" int null
    primary key ("id")
    foreign key ("roleid") references "role" ("roleid") on delete no action on update no action
    foreign key ("permissionsid") references "permissions" ("id") on delete no action on update no action
)
;


drop table if exists "model_has_permissions" cascade;
create table "model_has_permissions"
(
    "id" int not null,
    "permissionsid" int null
    "roleid" int null
    primary key ("id")
)
;

drop table if exists "student_emity" cascade;
create table "student_emity"
(
    "id" int not null,
    "register" varchar(50)null,
    "entry_date" timestamp null,
    "graduation_date" date null,
    "userid" int null,
    "emityid" int null
    primary key ("id")
    foreign key ("userid") references "user" ("id") on delete no action on update no action
    foreign key ("emityid") references "emity" ("id") on delete no action on update no action
)
;

drop table if exists "procedure_request" cascade;
create table "procedure_request"
(
    "id" int not null,
    "nro_request" int null,
    "date" timestamp null,
    "requestid" int not null,
    "generateid" int 
    primary key ("id")
    foreign key ("requestid") references "user" ("id") on delete no action on update no action
    foreign key ("generateid") references "user" ("id") on delete no action on update no action
)
;

drop table if exists "procedure_state" cascade;
create table "procedure_state"
(
    "id" int not null,
    "name" varchar(50) null ,
    "message" varchar(250) null,
    "procedure_requestid" int not null
    primary key ("id")
    foreign key ("procedure_requestid") references "procedure_request" ("id") on delete no action on update no action
)
;

drop table if exists "minute_acta_" cascade;
create table "minute_acta"
(
    "id" int not null,
    "id_nro_request" int null,
    "date" timestamp null,
	"procedure_requestid" int not null
    primary key ("id")
    foreign key ("procedure_requestid") references "procedure_request" ("id") on delete no action on update no action
)
;

drop table if exists "academic_degree_user" cascade;
create table "academic_degree_user"
(
    "id" int not null,
    "cod_title" varchar(50) null,
    "procedure_requestid" int not null
    primary key ("id")
    foreign key ("procedure_requestid") references "procedure_request" ("id") on delete no action on update no action
)
;

drop table if exists "academic_degree" cascade;
create table "academic_degree"
(
    "id" int not null,
    "name" varchar(50) null ,
    "type_academic_degreeid" int not null,
    "emityid" int not null,
    "procedure_requestid" int not null
    primary key ("id")
    foreign key ("type_academic_degreeid") references "type_academic_degree" ("id") on delete no action on update no action
    foreign key ("emityid") references "emity" ("id") on delete no action on update no action
    foreign key ("procedure_requestid") references "procedure_request" ("id") on delete no action on update no action
)
;

drop table if exists "requirements" cascade;
create table "requirements"
(
    "id" int not null,
    "code" varchar(50) null,
    "position" varchar(50) null,
    "public_digital_key" varchar(250) null
    primary key ("id")
)
;

drop table if exists "degree_requeriment" cascade;
create table "degree_requeriment"
(
    "id" int not null,
    "type_academic_degreeid" int null,
    "requirementsid" int null
    primary key ("id")
    foreign key ("type_academic_degreeid") references "type_academic_degree" ("id") on delete no action on update no action
    foreign key ("requirementsid") references "requirements" ("id") on delete no action on update no action
)
;

drop table if exists "step_signer" cascade;
create table "step_signer"
(
    "name" varchar(50) null ,
    "id" int not null
    primary key ("id")
)
;

drop table if exists "signer" cascade;
create table "signer"
(
    "id" int not null,
    "step" varchar(50)null,
    "is_signed" varchar(250)null,
    "userid" int not null,
    "academic_degree_userid" int not null,
    "minute_acta_id" int not null,
    "step_signerid" int not null
    primary key ("id")
    foreign key ("userid") references "user" ("id") on delete no action on update no action
    foreign key ("academic_degree_userid") references "academic_degree_user" ("id") on delete no action on update no action
    foreign key ("minute_acta_id") references "minute_acta" ("id") on delete no action on update no action
    foreign key ("step_signerid") references "step_signer" ("id") on delete no action on update no action
)
;

