create table Policy_CityResources (
    PolicyType text not null references Policies(Type),
    ResourceType text not null references Resources(Type),
    Quantity integer not null default 0,
    
    -- optional conditions
    CityScaleType text null references CityScales(Type),
    MustCoastal boolean not null default 0
);
