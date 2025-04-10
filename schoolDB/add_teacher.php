<?php
include 'db_connect.php'; // Ensure database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $address = $_POST['address'];
    $phone_number = $_POST['phone_number'];
    $email = $_POST['email'];
    $annual_salary = $_POST['annual_salary'];
    $class_id = $_POST['class_id']; // Get the class ID from the form

    // Insert teacher into the teacher table
    $query = "INSERT INTO teacher (first_name, last_name, address, phone_number, email, annual_salary) 
              VALUES ('$first_name', '$last_name', '$address', '$phone_number', '$email', '$annual_salary')";

    if ($conn->query($query) === TRUE) {
        // Get the last inserted teacher's ID
        $teacher_id = $conn->insert_id;

        // Update the class table to assign this teacher
        $updateClassQuery = "UPDATE class SET teacher_id = '$teacher_id' WHERE class_id = '$class_id'";
        $conn->query($updateClassQuery);

        echo "Teacher added successfully!";
    } else {
        echo "Error: " . $query . "<br>" . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Teacher</title>
</head>
<style>
        /* Futuristic Style */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #121212;
            color: white;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: white;
            text-align: center;
            font-size: 3rem;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }

        form {
            background: linear-gradient(145deg, #1f1f1f, #333333);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        label {
            color: #00B0FF;
            font-size: 1.2rem;
            margin-top: 10px;
            display: block;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            background-color: #333;
            color: white;
            border: 1px solid #00B0FF;
            border-radius: 5px;
            font-size: 1rem;
        }

        input:focus, select:focus, textarea:focus {
            outline: none;
            border-color: #0066cc;
        }

        button {
            background-color: #00B0FF;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1.2rem;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #0066cc;
            transform: translateY(-3px);
        }
    </style>
    <h1 >Add Teacher</h1>
    <form action="add_teacher.php" method="POST">
        <label>First Name:</label>
        <input type="text" name="first_name" required><br>

        <label>Last Name:</label>
        <input type="text" name="last_name" required><br>

        <label>Address:</label>
        <input type="text" name="address" required><br>

        <label>Phone Number:</label>
        <input type="text" name="phone_number" required><br>

        <label>Email:</label>
        <input type="email" name="email" required><br>

        <label>Annual Salary:</label>
        <input type="text" name="annual_salary" required><br>

        <label>Assign to Class:</label>
        <select name="class_id" required>
            <option value="">Select a Class</option>
            <?php
            include 'db_connect.php';
            $result = $conn->query("SELECT class_id, year_group FROM class");

            while ($row = $result->fetch_assoc()) {
                echo "<option value='{$row['class_id']}'>Class {$row['year_group']}</option>";
            }
            ?>
        </select><br>

        <button type="submit">Add Teacher</button>
    </form>
    <div style="text-align: center; margin-top: 20px;">
    <a href="index.php" style="background-color: #007bff; color: white; font-size: 1.1rem; padding: 12px 20px; text-align: center; border: none; border-radius: 8px; text-decoration: none; display: inline-block; transition: background-color 0.3s ease, transform 0.3s ease;" 
       onmouseover="this.style.backgroundColor='#0056b3'; this.style.transform='translateY(-3px)';" 
       onmouseout="this.style.backgroundColor='#007bff'; this.style.transform='translateY(0)';">
        Back to Dashboard
    </a>
</div>

</body>
</html>
