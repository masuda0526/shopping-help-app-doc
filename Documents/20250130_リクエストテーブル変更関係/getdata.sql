 SELECT
    r.id,
    r.product_name,
    r.vol,
    r.unit,
    r.request_user_id,
    r.inCart,
    r.inCart_user_id,
    r.buycode,
    r.created_at,
    r.updated_at,
    r.delete_flg,
    b.r_uid,
    b.b_uid,
    b.b_at,
    b.isdelivery,
    b.d_at,
    b.isrecieve,
    b.r_at,
    b.r_acp_at,
    b.b_acp_at
FROM
     requests AS r 
LEFT JOIN 
    buycodes AS b 
ON 
    r.buycode = b.buycode 
WHERE 
    request_user_id IN (SELECT uid1 FROM userlinks WHERE uid2=3)
 OR 
    request_user_id IN (SELECT uid2 FROM userlinks WHERE uid1=3);



SELECT r.id, r.product_name, r.vol, r.unit, r.request_user_id, r.inCart, r.inCart_user_id, r.buycode, r.created_at, r.updated_at, r.delete_flg, b.r_uid, b.b_uid, b.b_at, b.isdelivery, b.d_at, b.isrecieve, b.r_at, b.r_acp_at, b.b_acp_at FROM requests AS r LEFT JOIN buycodes AS b ON r.buycode = b.buycode WHERE request_user_id IN (SELECT uid1 FROM userlinks WHERE uid2=3) OR request_user_id IN (SELECT uid2 FROM userlinks WHERE uid1=3);