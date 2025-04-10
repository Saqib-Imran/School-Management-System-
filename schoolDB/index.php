<?php
include 'db_connect.php'; // Database connection

// Fetch counts from the database
$studentCount = $conn->query("SELECT COUNT(*) FROM student")->fetch_row()[0];
$teacherCount = $conn->query("SELECT COUNT(*) FROM teacher")->fetch_row()[0];
$classCount = $conn->query("SELECT COUNT(*) FROM class")->fetch_row()[0];
$guardianCount = $conn->query("SELECT COUNT(*) FROM guardian")->fetch_row()[0];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
            width: 90%;
            margin: auto;
            padding: 20px;
        }

        .dashboard {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
        }

        .card {
            background: linear-gradient(145deg, #1f1f1f, #333333);
            padding: 20px;
            border-radius: 10px;
            width: 20%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 15px rgba(0, 123, 255, 0.6);
        }

        h3 {
            color: #00B0FF;
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.2rem;
            color: white;
            margin-bottom: 10px;
        }

        button {
            background-color: #00B0FF;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #0066cc;
            transform: translateY(-3px);
        }

        .buttons {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .buttons button {
            margin: 10px;
            font-size: 1.2rem;
        }

        canvas {
            display: block;
            margin: 40px auto;
            border-radius: 10px;
        }

        .chart-container {
            display: flex;
            justify-content: space-between;
            margin-top: 40px;
        }

        .chart-container canvas {
            width: 30%; /* Further reduced width */
            height: 200px; /* Further reduced height */
        }

        .events {
            margin-top: 40px;
            background-color: #1f1f1f;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .event-item {
            color: white;
            font-size: 1.2rem;
            margin-bottom: 10px;
        }
        .chart-container {
            display: flex;
            justify-content: center;
            gap: 20px; /* Adjust spacing */
            margin-top: 20px;
       }
        .chart-container canvas {
            width: 500px !important; /* Balanced width */
            height: 400px !important; /* Balanced height */
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>St Alphonsus Primary School Dashboard</h1>

        <div class="dashboard">
            <div class="card">
                <h3>Students</h3>
                <p id="studentCount"><?php echo $studentCount; ?></p>
                <button onclick="window.location.href='view_students.php'">View Students</button>
            </div>
            <div class="card">
                <h3>Teachers</h3>
                <p id="teacherCount"><?php echo $teacherCount; ?></p>
                <button onclick="window.location.href='view_teachers.php'">View Teachers</button>
            </div>
            <div class="card">
                <h3>Classes</h3>
                <p id="classCount"><?php echo $classCount; ?></p>
                <button onclick="window.location.href='view_classes.php'">View Classes</button>
            </div>
            <div class="card">
                <h3>Guardians</h3>
                <p id="guardianCount"><?php echo $guardianCount; ?></p>
                <button onclick="window.location.href='view_guardian.php'">View Guardians</button>
            </div>
        </div>

        <div class="buttons">
            <button onclick="window.location.href='add_student.php'">Add Student</button>
            <button onclick="window.location.href='add_teacher.php'">Add Teacher</button>
            <button onclick="window.location.href='add_guardian.php'">Add Guardian</button>
        </div>

        <!-- Container for both charts -->
        <div class="chart-container">
            <!-- Student Chart -->
            <canvas id="studentChart" width="400" height="200"></canvas>

            <!-- Guardian Chart -->
            <canvas id="guardianChart" width="400" height="200"></canvas>
        </div>

        <div class="events">
            <h2>Upcoming Events</h2>
            <div class="event-item">📅 Parents' Evening - April 10, 2025</div>
            <div class="event-item">⚽ Sports Day - May 5, 2025</div>
            <div class="event-item">📚 Exam Week - June 1-7, 2025</div>
            <div class="event-item">🏖 Summer Holidays - July 20 - August 30, 2025</div>
        </div>
    </div>

    <script>
        // Chart Data for Students
        var ctx1 = document.getElementById('studentChart').getContext('2d');
        var studentChart = new Chart(ctx1, {
            type: 'bar',
            data: {
                labels: ['Year 1', 'Year 2', 'Year 3', 'Year 4', 'Year 5', 'Year 6'],
                datasets: [{
                    label: 'Number of Students',
                    data: [20, 18, 22, 19, 21, 20], // Placeholder data
                    backgroundColor: 'rgba(0, 123, 255, 0.5)',
                    borderColor: 'rgba(0, 123, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Chart Data for Guardians
        var ctx2 = document.getElementById('guardianChart').getContext('2d');
        var guardianChart = new Chart(ctx2, {
            type: 'pie',
            data: {
                labels: ['Single Parent', 'Both Parents', 'Guardians', 'Other'],
                datasets: [{
                    label: 'Guardian Distribution',
                    data: [25, 50, 15, 10], // Placeholder data
                    backgroundColor: ['rgba(0, 123, 255, 0.5)', 'rgba(255, 99, 132, 0.5)', 'rgba(75, 192, 192, 0.5)', 'rgba(153, 102, 255, 0.5)'],
                    borderColor: ['rgba(0, 123, 255, 1)', 'rgba(255, 99, 132, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw + '%'; // Show percentage in tooltip
                            }
                        }
                    }
                }
            }
        });
    </script>

</body>
</html>
