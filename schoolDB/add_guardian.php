<?php
include 'db_connect.php'; // Database connection

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $relationship_to_student = $_POST['relationship_to_student'];
    $address = $_POST['address'];
    $phone_no = $_POST['phone_no'];
    $email = $_POST['email'];
    $student_id = $_POST['student_id'];

    // Insert data into the guardian table
    $query = "INSERT INTO guardian (first_name, last_name, relationship_to_student, address, phone_no, email, student_id) 
              VALUES ('$first_name', '$last_name', '$relationship_to_student', '$address', '$phone_no', '$email', '$student_id')";

    if ($conn->query($query) === TRUE) {
        echo "New guardian added successfully!";
    } else {
        echo "Error: " . $query . "<br>" . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Guardian</title>
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
</head>
<body>

<div class="container">
    <h1>Add Guardian</h1>

    <form method="POST" action="add_guardian.php">
        <label for="first_name">First Name</label>
        <input type="text" id="first_name" name="first_name" required>

        <label for="last_name">Last Name</label>
        <input type="text" id="last_name" name="last_name" required>

        <label for="relationship_to_student">Relationship to Student</label>
        <input type="text" id="relationship_to_student" name="relationship_to_student" required>

        <label for="address">Address</label>
        <textarea id="address" name="address" rows="4" required></textarea>

        <label for="phone_no">Phone Number</label>
        <input type="text" id="phone_no" name="phone_no" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="student_id">Student ID (Link Guardian to Student)</label>
        <input type="number" id="student_id" name="student_id" required>

        <button type="submit">Add Guardian</button>
    </form>
</div>
<div style="text-align: center; margin-top: 20px;">
    <a href="index.php" style="background-color: #007bff; color: white; font-size: 1.1rem; padding: 12px 20px; text-align: center; border: none; border-radius: 8px; text-decoration: none; display: inline-block; transition: background-color 0.3s ease, transform 0.3s ease;" 
       onmouseover="this.style.backgroundColor='#0056b3'; this.style.transform='translateY(-3px)';" 
       onmouseout="this.style.backgroundColor='#007bff'; this.style.transform='translateY(0)';">
        Back to Dashboard
    </a>
</div>

</body>
</html>

<?php
// Close the database connection
$conn->close();
?>
