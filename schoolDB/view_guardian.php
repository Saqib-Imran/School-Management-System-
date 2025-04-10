<?php
include 'db_connect.php'; // Database connection

// Query to fetch guardian data with associated student information
$query = "SELECT guardian.guardian_id, guardian.first_name, guardian.last_name, guardian.relationship_to_student, guardian.address, guardian.phone_no, guardian.email, guardian.student_id, student.first_name AS student_first_name, student.last_name AS student_last_name 
          FROM guardian
          LEFT JOIN student ON guardian.student_id = student.student_id";

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Guardians</title>
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

        .btn-container {
            display: flex;
            gap: 10px;
            justify-content: center;
        }

        .delete-btn, .edit-btn {
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .delete-btn {
            background-color: rgb(255, 0, 0);
            color: white;
        }

        .delete-btn:hover {
            background-color: rgb(255, 50, 50);
            transform: translateY(-3px);
        }

        .edit-btn {
            background-color: #28a745;
            color: white;
        }

        .edit-btn:hover {
            background-color: #218838;
            transform: translateY(-3px);
        }

        .no-data {
            text-align: center;
            color: #FF4081;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>View Guardians</h2>

        <table>
            <tr>
                <th>Guardian ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Relationship to Student</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Student</th>
                <th>Student ID</th>
                <th>Action</th>
            </tr>
            <?php
            // Check if any records were found
            if ($result->num_rows > 0) {
                // Loop through each record and display the data
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>" . $row['guardian_id'] . "</td>
                            <td>" . $row['first_name'] . "</td>
                            <td>" . $row['last_name'] . "</td>
                            <td>" . $row['relationship_to_student'] . "</td>
                            <td>" . $row['address'] . "</td>
                            <td>" . $row['phone_no'] . "</td>
                            <td>" . $row['email'] . "</td>
                            <td>" . $row['student_first_name'] . " " . $row['student_last_name'] . "</td>
                            <td>" . $row['student_id'] . "</td>
                            <td>
                                <div class='btn-container'>
                                    <a href='edit_guardian.php?guardian_id=" . $row['guardian_id'] . "'>
                                        <button class='edit-btn'>Edit</button>
                                    </a>
                                    <a href='remove_guardian.php?guardian_id=" . $row['guardian_id'] . "' onclick='return confirm(\"Are you sure you want to remove this guardian?\")'>
                                        <button class='delete-btn'>Remove</button>
                                    </a>
                                </div>
                            </td>
                        </tr>";
                }
            } else {
                echo "<tr><td colspan='10' class='no-data'>No guardians found</td></tr>";
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
