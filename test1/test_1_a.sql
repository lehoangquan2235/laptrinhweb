--- LÊ HOÀNG QUÂN
---22002094
---22CTMDT01

a5. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến
9(>=5, <= 9), email dùng dịch vụ Gmail, trong tên email có chữ i (trong tên, chứ
hông phải domain exampleitest@yahoo.com), chiều dài email từ 10 đến 20 ký tự
(>=10, <= 20)
		SELECT * FROM users						
	WHERE												
	(user_name LIKE '%a%' AND LENGTH(user_name) >= 5 AND LENGTH(user_name) <= 9)						
OR
	(user_email LIKE '%@gmail.com' AND user_email LIKE '%i%'AND LENGTH(user_name) >=10 AND LENGTH(user_name) <= 20)
	
