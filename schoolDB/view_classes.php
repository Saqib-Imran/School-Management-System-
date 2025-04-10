<?php
include 'db_connect.php'; // Ensure database connection

$query = "SELECT class.class_id, class.year_group, class.teacher_id, 
                 teacher.first_name, teacher.last_name 
          FROM class 
          LEFT JOIN teacher ON class.teacher_id = teacher.teacher_id";

$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Classes</title>
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
    </style>
</head>
<body>
    <h2>Class List</h2>
    <table border="1">
        <tr>
            <th>Class ID</th>
            <th>Year Group</th>
            <th>Teacher ID</th>
            <th>Teacher Name</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['class_id']; ?></td>
            <td><?php echo $row['year_group']; ?></td>
            <td><?php echo $row['teacher_id'] ?? 'Not Assigned'; ?></td>
            <td><?php echo ($row['first_name'] && $row['last_name']) ? $row['first_name'] . " " . $row['last_name'] : 'Not Assigned'; ?></td>
        </tr>
        <?php } ?>
    </table>
    <div style="text-align: center; margin-top: 20px;">
    <a href="index.php" style="background-color: #007bff; color: white; font-size: 1.1rem; padding: 12px 20px; text-align: center; border: none; border-radius: 8px; text-decoration: none; display: inline-block; transition: background-color 0.3s ease, transform 0.3s ease;" 
       onmouseover="this.style.backgroundColor='#0056b3'; this.style.transform='translateY(-3px)';" 
       onmouseout="this.style.backgroundColor='#007bff'; this.style.transform='translateY(0)';">
        Back to Dashboard
    </a>
</div>

</body>
</html>
