create table help_shopping_app.userlinks (
    id int AUTO_INCREMENT not null unique,
    uid1 int ,
    uid1_at datetime,
    uid2 int,
    uid2_at datetime,
    ismatch boolean default false,
    match_at datetime,
    delete_flg boolean default false
)