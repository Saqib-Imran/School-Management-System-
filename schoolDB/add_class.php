<?php
// Include the database connection
include('db_connection.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $year_group = $_POST['year_group'];
    $teacher_id = 0;

    // Automatically assign teacher ID based on year group
    switch ($year_group) {
        case "Year 1":
            $teacher_id = 1;
            break;
        case "Year 2":
            $teacher_id = 2;
            break;
        case "Year 3":
            $teacher_id = 3;
            break;
        case "Year 4":
            $teacher_id = 4;
            break;
        case "Year 5":
            $teacher_id = 5;
            break;
        case "Year 6":
            $teacher_id = 6;
            break;
        default:
            // Handle case where the year group is not recognized
            echo "Invalid year group!";
            exit;
    }

    // Insert into the class table with the assigned teacher ID
    $sql = "INSERT INTO class (teacher_id, year_group) VALUES ('$teacher_id', '$year_group')";
    
    if ($conn->query($sql) === TRUE) {
        echo "New class added successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!-- Form to add a class -->
<form action="add_class.php" method="POST">
    <label for="year_group">Year Group:</label>
    <select name="year_group" id="year_group" required>
        <option value="Year 1">Year 1</option>
        <option value="Year 2">Year 2</option>
        <option value="Year 3">Year 3</option>
        <option value="Year 4">Year 4</option>
        <option value="Year 5">Year 5</option>
        <option value="Year 6">Year 6</option>
    </select>

    <input type="submit" value="Add Class">
</form>
