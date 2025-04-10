<?php
// Include the database connection
include('db_connection.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $class_id = $_POST['class_id'];  // The class ID to update
    $teacher_id = $_POST['teacher_id'];  // The teacher ID to assign
    $year_group = $_POST['year_group'];  // The year group for the class

    // Update the teacher_id for the class
    $sql = "UPDATE class SET teacher_id = '$teacher_id', year_group = '$year_group' WHERE class_id = '$class_id'";

    if ($conn->query($sql) === TRUE) {
        echo "Class updated successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!-- Form to update a class -->
<form action="update_class.php" method="POST">
    <label for="class_id">Class ID:</label>
    <input type="number" name="class_id" id="class_id" required>

    <label for="teacher_id">Teacher ID:</label>
    <select name="teacher_id" id="teacher_id" required>
        <option value="1">Teacher 1</option>
        <option value="2">Teacher 2</option>
        <option value="3">Teacher 3</option>
        <option value="4">Teacher 4</option>
        <option value="5">Teacher 5</option>
        <option value="6">Teacher 6</option>
    </select>

    <label for="year_group">Year Group:</label>
    <input type="text" name="year_group" id="year_group" required>

    <input type="submit" value="Update Class">
</form>
