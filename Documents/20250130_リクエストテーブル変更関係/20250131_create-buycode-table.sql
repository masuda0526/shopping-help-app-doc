create table help_shopping_app.buycodes (
    buycode int not null,
    seq int not null,
    r_id int not null,
    b_uid int not null,
    b_at datetime not null,
    isdelivery boolean default false,
    d_at datetime default null,
    isrecieve boolean default false,
    r_at datetime default null,
    r_acp_at datetime default null,
    b_acp_at datetime default null,
)