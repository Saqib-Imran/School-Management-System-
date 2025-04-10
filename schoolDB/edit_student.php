<?php
include 'db_connect.php'; // Make sure this contains your $conn connection

// Check if student_id is passed
if (!isset($_GET['student_id'])) {
    echo "<script>alert('No student selected.'); window.location.href='view_students.php';</script>";
    exit();
}

$student_id = $_GET['student_id'];

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $age = $_POST['age'];
    $address = $_POST['address'];
    $medical_info = $_POST['medical_information'];
    $gender = $_POST['gender'];
    $class_id = $_POST['class_id'];

    $updateQuery = "UPDATE student SET 
                    first_name = '$first_name',
                    last_name = '$last_name',
                    age = '$age',
                    address = '$address',
                    medical_information = '$medical_info',
                    gender = '$gender',
                    class_id = '$class_id'
                    WHERE student_id = '$student_id'";

    if ($conn->query($updateQuery) === TRUE) {
        echo "<script>alert('Student updated successfully!'); window.location.href='view_students.php';</script>";
    } else {
        echo "<script>alert('Error updating student.');</script>";
    }
}

// Fetch current student data
$query = "SELECT * FROM student WHERE student_id = '$student_id'";
$result = $conn->query($query);
$student = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <style>
        body {
            background-color: #121212;
            color: white;
            font-family: 'Segoe UI', sans-serif;
            padding: 20px;
        }

        h2 {
            text-align: center;
            font-size: 2rem;
        }

        form {
            max-width: 600px;
            margin: auto;
            background-color: #1f1f1f;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 10px #00000088;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            border-radius: 6px;
            border: none;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        button {
            background-color: #00B0FF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #0088cc;
        }

        a {
            color: #00B0FF;
            display: block;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<h2>Edit Student</h2>

<form method="post">
    <label>First Name:</label>
    <input type="text" name="first_name" value="<?php echo $student['first_name']; ?>" required>

    <label>Last Name:</label>
    <input type="text" name="last_name" value="<?php echo $student['last_name']; ?>" required>

    <label>Age:</label>
    <input type="number" name="age" value="<?php echo $student['age']; ?>" required>

    <label>Address:</label>
    <input type="text" name="address" value="<?php echo $student['address']; ?>" required>

    <label>Medical Information:</label>
    <input type="text" name="medical_information" value="<?php echo $student['medical_information']; ?>">

    <label>Gender:</label>
    <select name="gender" required>
        <option value="Male" <?php if ($student['gender'] == 'Male') echo 'selected'; ?>>Male</option>
        <option value="Female" <?php if ($student['gender'] == 'Female') echo 'selected'; ?>>Female</option>
        <option value="Other" <?php if ($student['gender'] == 'Other') echo 'selected'; ?>>Other</option>
    </select>

    <label>Class ID:</label>
    <input type="number" name="class_id" value="<?php echo $student['class_id']; ?>">

    <button type="submit">Update Student</button>
</form>

<a href="view_students.php">← Back to Students</a>

</body>
</html>

<?php
$conn->close();
?>
