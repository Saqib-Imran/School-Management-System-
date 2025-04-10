<?php
include 'db_connect.php'; // Database connection

// Handle deletion
if (isset($_GET['delete_id'])) {
    $teacher_id = $_GET['delete_id'];

    // Remove the teacher_id from the class table to avoid foreign key issues
    $conn->query("UPDATE class SET teacher_id = NULL WHERE teacher_id = '$teacher_id'");

    // Now delete the teacher
    $deleteQuery = "DELETE FROM teacher WHERE teacher_id = '$teacher_id'";
    if ($conn->query($deleteQuery) === TRUE) {
        echo "<script>alert('Teacher removed successfully!'); window.location.href='view_teachers.php';</script>";
    } else {
        echo "<script>alert('Error removing teacher.'); window.location.href='view_teachers.php';</script>";
    }
}

// Query to fetch teacher data
$query = "SELECT teacher.teacher_id, teacher.first_name, teacher.last_name, teacher.address, 
                 teacher.phone_number, teacher.email, teacher.annual_salary, class.class_id, class.year_group 
          FROM teacher
          LEFT JOIN class ON teacher.teacher_id = class.teacher_id";

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Teachers</title>
    <style>
        /* Futuristic Style */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #121212;
            color: white;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: white;
            text-align: center;
            font-size: 2.5rem;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background: linear-gradient(145deg, #1f1f1f, #333333);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 12px;
            text-align: left;
            color: white;
        }

        /* Darker Blue Header */
        th {
            background-color: #003366; /* Darker Blue */
            font-size: 1.1rem;
        }

        td {
            background-color: #2c2c2c;
            border-bottom: 1px solid #444;
        }

        td a {
            color: #FF4081;
            text-decoration: none;
        }

        td a:hover {
            color: #00B0FF;
        }

        .action-btn-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .delete-btn {
            background-color:rgb(255, 0, 0);
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .delete-btn:hover {
            background-color:rgb(255, 50, 50);
            transform: translateY(-3px);
        }

        .edit-btn {
            background-color: #28a745;
        }

        .edit-btn:hover {
            background-color: #218838;
        }

        .no-data {
            text-align: center;
            color: #FF4081;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>View Teachers</h2>

        <table>
            <tr>
                <th>Teacher ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Annual Salary</th>
                <th>Class ID</th>
                <th>Year Group</th>
                <th>Action</th>
            </tr>
            <?php
            // Check if any records were found
            if ($result->num_rows > 0) {
                // Loop through each record and display the data
                while ($row = $result->fetch_assoc()) {
                    // Format the salary with currency symbol and commas
                    $formattedSalary = "£" . number_format($row['annual_salary']);
                    echo "<tr>
                            <td>" . $row['teacher_id'] . "</td>
                            <td>" . $row['first_name'] . "</td>
                            <td>" . $row['last_name'] . "</td>
                            <td>" . $row['address'] . "</td>
                            <td>" . $row['phone_number'] . "</td>
                            <td>" . $row['email'] . "</td>
                            <td>" . $formattedSalary . "</td>
                            <td>" . ($row['class_id'] ? $row['class_id'] : 'Not Assigned') . "</td>
                            <td>" . ($row['year_group'] ? $row['year_group'] : 'Not Assigned') . "</td>
                            <td class='action-btn-container'>
                                <a href='edit_teacher.php?teacher_id=" . $row['teacher_id'] . "'>
                                    <button class='delete-btn edit-btn'>Edit</button>
                                </a>
                                <a href='view_teachers.php?delete_id=" . $row['teacher_id'] . "' onclick='return confirm(\"Are you sure you want to remove this teacher?\")'>
                                    <button class='delete-btn'>Remove</button>
                                </a>
                            </td>
                        </tr>";
                }
            } else {
                echo "<tr><td colspan='10'>No teachers found</td></tr>";
            }
            ?>
        </table>
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
