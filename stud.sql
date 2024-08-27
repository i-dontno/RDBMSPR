CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    city VARCHAR(255),
    state VARCHAR(255),
    phone VARCHAR(15)
);



CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    instructor_name VARCHAR(255)
);



CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


INSERT INTO students (student_id, first_name, last_name, gender, city, state, phone) VALUES
(1, 'Raj', 'Sharma', 'Male', 'Delhi', 'Delhi', '9876543210'),
(2, 'Simran', 'Kaur', 'Female', 'Chandigarh', 'Punjab', '9876543211'),
(3, 'Amit', 'Patel', 'Male', 'Ahmedabad', 'Gujarat', '9876543212'),
(4, 'Priya', 'Rao', 'Female', 'Bengaluru', 'Karnataka', '9876543213'),
(5, 'Vikram', 'Singh', 'Male', 'Jaipur', 'Rajasthan', '9876543214'),
(6, 'Neha', 'Verma', 'Female', 'Lucknow', 'Uttar Pradesh', '9876543215'),
(7, 'Arjun', 'Nair', 'Male', 'Kochi', 'Kerala', '9876543216'),
(8, 'Sneha', 'Joshi', 'Female', 'Pune', 'Maharashtra', '9876543217'),
(9, 'Rohit', 'Sharma', 'Male', 'Mumbai', 'Maharashtra', '9876543218'),
(10, 'Anita', 'Kumar', 'Female', 'Hyderabad', 'Telangana', '9876543219'),
(11, 'Ravi', 'Mehta', 'Male', 'Chennai', 'Tamil Nadu', '9876543220'),
(12, 'Divya', 'Sharma', 'Female', 'Bhopal', 'Madhya Pradesh', '9876543221'),
(13, 'Karan', 'Kapoor', 'Male', 'Agra', 'Uttar Pradesh', '9876543222'),
(14, 'Aisha', 'Ali', 'Female', 'Kolkata', 'West Bengal', '9876543223'),
(15, 'Suresh', 'Reddy', 'Male', 'Visakhapatnam', 'Andhra Pradesh', '9876543224'),
(16, 'Maya', 'Patel', 'Female', 'Surat', 'Gujarat', '9876543225'),
(17, 'Siddharth', 'Gupta', 'Male', 'Noida', 'Uttar Pradesh', '9876543226'),
(18, 'Sonali', 'Singh', 'Female', 'Patna', 'Bihar', '9876543227'),
(19, 'Aditya', 'Sharma', 'Male', 'Nashik', 'Maharashtra', '9876543228'),
(20, 'Rita', 'Kumari', 'Female', 'Dehradun', 'Uttarakhand', '9876543229');

INSERT INTO courses (course_id, course_name, instructor_name) VALUES
(101, 'Mathematics', 'Dr. Ramesh Gupta'),
(102, 'Physics', 'Dr. Anjali Mehta'),
(103, 'Chemistry', 'Dr. Kiran Desai'),
(104, 'Biology', 'Dr. Suresh Rao'),
(105, 'Computer Science',NULL),
(106, 'English Literature', 'Dr. Sunita Joshi'),
(107, 'History', 'Dr. Rajeev Kumar'),
(108, 'Economics', 'Dr. Meera Patel');


INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 101, '2024-01-10'),
(2, 2, 102, '2024-01-12'),
(3, 3, 103, '2024-01-15'),
(4, 4, 104, '2024-01-18'),
(5, 5, 105, '2024-01-20'),
(6, 6, 106, '2024-01-22'),
(7, 7, 107, '2024-01-25'),
(8, 8, 108, '2024-01-28'),
(9, 9, 101, '2024-01-30'),
(10, 10, 102, '2024-02-02'),
(11, 11, 103, '2024-02-05'),
(12, 12, 104, '2024-02-07'),
(13, 13, 105, '2024-02-10'),
(14, 14, 106, '2024-02-12'),
(15, 15, 107, '2024-02-15'),
(16, 16, 108, '2024-02-17'),
(17, 17, 101, '2024-02-20'),
(18, 18, 102, '2024-02-22'),
(19, 19, 103, '2024-02-25'),
(20, 20, 104, '2024-02-27'),
(21, 1, 105, '2024-03-01'),
(22, 2, 106, '2024-03-03'),
(23, 3, 107, '2024-03-05'),
(24, 4, 108, '2024-03-07'),
(25, 5, 101, '2024-03-10');

