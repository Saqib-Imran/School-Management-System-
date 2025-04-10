<?php
include 'db_connect.php'; 

// Fetch all classes for the dropdown
$classQuery = "SELECT * FROM class";
$classResult = $conn->query($classQuery);

if ($classResult === false) {
    die("Error executing query: " . $conn->error);
}
if ($classResult->num_rows == 0) {
    die("No classes found in the database.");
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Gettting the form data
    $firstName = $_POST['first_name'];
    $lastName = $_POST['last_name'];
    $age = $_POST['age'];
    $address = $_POST['address'];
    $medicalInformation = $_POST['medical_information'];
    $gender = $_POST['gender'];
    $class_id = $_POST['class_id']; // Capturing the selected class_id

    // Insert student into database
    $insertStudentQuery = "INSERT INTO student (first_name, last_name, age, address, medical_information, gender, class_id) 
                           VALUES ('$firstName', '$lastName', '$age', '$address', '$medicalInformation', '$gender', '$class_id')";
    if ($conn->query($insertStudentQuery) === TRUE) {
        echo "Student added successfully!";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
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
    <h1>Add Student</h1>
    <form method="POST" action="add_student.php">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" required>
        <label for="last_name">Last Name:</label>
        <input type="text" id="last_name" name="last_name" required>
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>
        <label for="medical_information">Medical Information:</label>
        <textarea id="medical_information" name="medical_information" required></textarea>
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>

        <!--Class Selection Dropdown-->
        <label for="class_id">Select Class:</label>
        <select id="class_id" name="class_id" required>
            <option value="">Select a Class</option>
            <?php
            // Get classes from the database
            $query = "SELECT class_id, year_group FROM class";
            $result = $conn->query($query);
            // Check if classes are available
            if ($result->num_rows > 0) {
                // Create dropdown options
                while ($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row['class_id'] . "'>" . $row['year_group'] . "</option>";
                }
            } else {
                echo "<option>No classes available</option>";
            }
            ?>
        </select>
        <button type="submit">Add Student</button>
    </form>
    <div style="text-align: center; margin-top: 20px;">
    <a href="index.php" style="background-color: #007bff; color: white; font-size: 1.1rem; padding: 12px 20px; text-align: center; border: none; border-radius: 8px; text-decoration: none; display: inline-block; transition: background-color 0.3s ease, transform 0.3s ease;" 
       onmouseover="this.style.backgroundColor='#0056b3'; this.style.transform='translateY(-3px)';" 
       onmouseout="this.style.backgroundColor='#007bff'; this.style.transform='translateY(0)';">
        Back to Dashboard
    </a>
</div>


</div>

</body>
</html>
