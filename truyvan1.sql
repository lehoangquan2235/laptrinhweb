1. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name ASC;				
2. Lấy ra 07 người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name ASC LIMIT 7;						
3. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z), trong đó tên
người dùng có chữ a
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC						
4. Lấy ra danh sách người dùng trong đó tên người dùng bắt đầu bằng chữ m
SELECT * FROM users where user_name like 'm%';
5. Lấy ra danh sách người dùng trong đó tên người dùng kết thúc bằng chữ i
SELECT * FROM users where user_name like '%i';
6. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com)
SELECT * FROM users where user_email like '%gmail%';
7. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com), tên người dùng bắt đầu bằng chữ m
SELECT * FROM users where user_email like '%@gmail.com%'and user_name like 'm%';

8. Lấy ra danh sách người dùng trong đó email người dùng là Gmail (ví dụ:
example@gmail.com), tên người dùng có chữ i và tên người dùng có chiều dài lớn
hơn 5
SELECT * FROM users WHERE user_email LIKE '%gmail%' and user_name like '%i%' and Length (user_name) > 5
9. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến 9,
email dùng dịch vụ Gmail, trong tên email có chữ i
SELECT * FROM users WHERE user_name LIKE '%a%' and Length (user_name) BETWEEN 5  and 9 and user_email like '%i'and user_email like '%@gmail.com'
10. Lấy ra danh sách người dùng trong đó tên người dùng có chữ a, chiều dài từ 5 đến
9 hoặc tên người dùng có chữ i, chiều dài nhỏ hơn 9 hoặc email dùng dịch vụ Gmail,
trong tên email có chữ i
SELECT*from users where user_name like '%a%' or user_name like '%i%' or user_email like '%gmail%' and user_email like '%i%' order by length(user_name) < 9;