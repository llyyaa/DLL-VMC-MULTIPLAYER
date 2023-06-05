create table LuaFormula (
    ID integer primary key autoincrement not null,
    Type text not null unique,
    Formula text not null
);