<?php
include 'db_connect.php'; // Ensure the database connection is correct

// Check if guardian_id is passed
if (!isset($_GET['guardian_id'])) {
    echo "<script>alert('No guardian selected.'); window.location.href='view_guardians.php';</script>";
    exit();
}

$guardian_id = $_GET['guardian_id'];

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $relationship_to_student = $_POST['relationship_to_student'];
    $address = $_POST['address'];
    $phone_no = $_POST['phone_no'];
    $email = $_POST['email'];
    $student_id = $_POST['student_id'];

    $updateQuery = "UPDATE guardian SET 
                    first_name = '$first_name',
                    last_name = '$last_name',
                    relationship_to_student = '$relationship_to_student',
                    address = '$address',
                    phone_no = '$phone_no',
                    email = '$email',
                    student_id = '$student_id'
                    WHERE guardian_id = '$guardian_id'";

    if ($conn->query($updateQuery) === TRUE) {
        // Redirect to the guardians list after successful update
        header("Location: view_guardians.php");
        exit();
    } else {
        echo "<script>alert('Error updating guardian.');</script>";
    }
}

// Fetch current guardian data
$query = "SELECT * FROM guardian WHERE guardian_id = '$guardian_id'";
$result = $conn->query($query);
$guardian = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Guardian</title>
    <style>
        /* Styling */
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

<h2>Edit Guardian</h2>

<form method="post" action="edit_guardian.php?guardian_id=<?php echo $guardian_id; ?>">
    <label>First Name:</label>
    <input type="text" name="first_name" value="<?php echo $guardian['first_name']; ?>" required>

    <label>Last Name:</label>
    <input type="text" name="last_name" value="<?php echo $guardian['last_name']; ?>" required>

    <label>Relationship to Student:</label>
    <input type="text" name="relationship_to_student" value="<?php echo $guardian['relationship_to_student']; ?>" required>

    <label>Address:</label>
    <input type="text" name="address" value="<?php echo $guardian['address']; ?>" required>

    <label>Phone Number:</label>
    <input type="text" name="phone_no" value="<?php echo $guardian['phone_no']; ?>" required>

    <label>Email:</label>
    <input type="email" name="email" value="<?php echo $guardian['email']; ?>" required>

    <label>Student ID:</label>
    <input type="number" name="student_id" value="<?php echo $guardian['student_id']; ?>" required>

    <button type="submit">Update Guardian</button>
</form>

<!-- Back to Guardians Link -->
<a href="view_guardians.php">← Back to Guardians</a>

</body>
</html>

<?php
$conn->close();
?>
