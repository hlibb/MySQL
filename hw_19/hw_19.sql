SELECT 
	u.name,
    u.surname,
    w.currency,
    w.amount
FROM users u
JOIN wallet w
	USING (user_id)