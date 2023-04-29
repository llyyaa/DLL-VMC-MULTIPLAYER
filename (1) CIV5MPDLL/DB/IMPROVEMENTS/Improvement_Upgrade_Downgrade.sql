alter table Improvements add column EnableXP boolean default false;

alter table Improvements add column EnableUpgrade boolean default false;

alter table Improvements add column UpgradeXP integer default -1;
alter table Improvements add column UpgradeImprovementType text default null;

alter table Improvements add column EnableDowngrade boolean default false;
alter table Improvements add column DowngradeImprovementType text default null;