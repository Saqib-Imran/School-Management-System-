<?php
include 'db_connect.php'; // Database connection

// Handle deletion
if (isset($_GET['delete_id'])) {
    $student_id = $_GET['delete_id'];

    // Delete student record
    $deleteQuery = "DELETE FROM student WHERE student_id = '$student_id'";
    if ($conn->query($deleteQuery) === TRUE) {
        echo "<script>alert('Student removed successfully!'); window.location.href='view_students.php';</script>";
    } else {
        echo "<script>alert('Error removing student.'); window.location.href='view_students.php';</script>";
    }
}

// Query to fetch student data
$query = "SELECT student.student_id, student.first_name, student.last_name, student.age, 
                 student.address, student.medical_information, student.gender, class.class_id, class.year_group 
          FROM student
          LEFT JOIN class ON student.class_id = class.class_id";

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Students</title>
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

        .no-data {
            text-align: center;
            color: #FF4081;
        }

        .delete-btn.edit-btn {
        background-color: #28a745;
        }

        .delete-btn.edit-btn:hover {
            background-color: #218838;
        }
        
    </style>
</head>
<body>

    <div class="container">
        <h2>View Students</h2>

        <table>
            <tr>
                <th>Student ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Age</th>
                <th>Address</th>
                <th>Medical Information</th>
                <th>Gender</th>
                <th>Class ID</th>
                <th>Year Group</th>
                <th>Action</th>
            </tr>
            <?php
            // Check if any records were found
            if ($result->num_rows > 0) {
                // Loop through each record and display the data
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>" . $row['student_id'] . "</td>
                            <td>" . $row['first_name'] . "</td>
                            <td>" . $row['last_name'] . "</td>
                            <td>" . $row['age'] . "</td>
                            <td>" . $row['address'] . "</td>
                            <td>" . $row['medical_information'] . "</td>
                            <td>" . $row['gender'] . "</td>
                            <td>" . ($row['class_id'] ? $row['class_id'] : 'Not Assigned') . "</td>
                            <td>" . ($row['year_group'] ? $row['year_group'] : 'Not Assigned') . "</td>
                            <td>
                                <a href='edit_student.php?student_id=" . $row['student_id'] . "'>
                                    <button class='delete-btn' style='background-color: #28a745;'>Edit</button>
                                </a>
                                <a href='view_students.php?delete_id=" . $row['student_id'] . "' onclick='return confirm(\"Are you sure you want to remove this student?\")'>
                                    <button class='delete-btn'>Remove</button>
                                </a>
                            </td>

                        </tr>";
                }
            } else {
                echo "<tr><td colspan='10' class='no-data'>No students found</td></tr>";
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
