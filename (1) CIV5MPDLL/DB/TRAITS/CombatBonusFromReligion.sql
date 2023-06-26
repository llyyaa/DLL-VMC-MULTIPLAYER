-- <Row Class="6" Name="TRAITS_SPREAD_RELIGION_AFTER_KILLING" Value="0"/>
alter table Traits add column SpreadReligionFromKilledUnitStrengthPercent integer not null default 0;
alter table Traits add column SpreadReligionRadius integer not null default 0;
