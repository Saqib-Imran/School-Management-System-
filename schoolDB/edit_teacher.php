<?php
include 'db_connect.php'; // Connect to DB

// Fetch teacher data
if (isset($_GET['teacher_id'])) {
    $teacher_id = $_GET['teacher_id'];
    $result = $conn->query("SELECT * FROM teacher WHERE teacher_id = '$teacher_id'");
    $teacher = $result->fetch_assoc();
}

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $teacher_id = $_POST['teacher_id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $address = $_POST['address'];
    $phone_number = $_POST['phone_number'];
    $email = $_POST['email'];
    $annual_salary = $_POST['annual_salary'];

    $updateQuery = "UPDATE teacher 
                    SET first_name='$first_name', last_name='$last_name', address='$address', 
                        phone_number='$phone_number', email='$email', annual_salary='$annual_salary'
                    WHERE teacher_id='$teacher_id'";

    if ($conn->query($updateQuery) === TRUE) {
        echo "<script>alert('Teacher updated successfully!'); window.location.href='view_teachers.php';</script>";
    } else {
        echo "<script>alert('Error updating teacher.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Teacher</title>
    <style>
        body {
            background-color: #121212;
            font-family: 'Roboto', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 50%;
            margin: 40px auto;
            background-color: #1e1e1e;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.6);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #00B0FF;
        }

        label {
            display: block;
            margin: 12px 0 6px;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: none;
            background-color: #2c2c2c;
            color: white;
        }

        .btn-container {
            text-align: center;
            margin-top: 25px;
        }

        .btn-container button,
        .btn-container a {
            padding: 10px 20px;
            font-size: 1rem;
            margin: 0 10px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .submit-btn {
            background-color: #00B0FF;
            color: white;
        }

        .submit-btn:hover {
            background-color: #0088cc;
        }

        .cancel-btn {
            background-color: gray;
            color: white;
        }

        .cancel-btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Edit Teacher</h2>
    <form method="POST">
        <input type="hidden" name="teacher_id" value="<?php echo $teacher['teacher_id']; ?>">

        <label for="first_name">First Name</label>
        <input type="text" name="first_name" value="<?php echo $teacher['first_name']; ?>" required>

        <label for="last_name">Last Name</label>
        <input type="text" name="last_name" value="<?php echo $teacher['last_name']; ?>" required>

        <label for="address">Address</label>
        <input type="text" name="address" value="<?php echo $teacher['address']; ?>" required>

        <label for="phone_number">Phone Number</label>
        <input type="text" name="phone_number" value="<?php echo $teacher['phone_number']; ?>" required>

        <label for="email">Email</label>
        <input type="email" name="email" value="<?php echo $teacher['email']; ?>" required>

        <label for="annual_salary">Annual Salary</label>
        <input type="number" name="annual_salary" value="<?php echo $teacher['annual_salary']; ?>" required>

        <div class="btn-container">
            <button type="submit" class="submit-btn">Save Changes</button>
            <a href="view_teachers.php" class="cancel-btn">Cancel</a>
        </div>
    </form>
</div>

</body>
</html>

<?php
$conn->close();
?>
