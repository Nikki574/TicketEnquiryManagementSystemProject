<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RAILways Ticket Booking</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('railways.jpg') no-repeat center center/cover;
            color: #fff;
        }

        .ticket-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        .ticket {
            background: rgba(0, 0, 0, 0.85);
            border-radius: 10px;
            padding: 20px;
            width: 350px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 255, 153, 0.7);
            animation: glowing-border 1.5s infinite;
        }

        .ticket-title {
            text-align: center;
            color: #00ff99;
            text-shadow: 0 0 10px #00ff99, 0 0 20px #00ff99;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .ticket-body {
            font-size: 14px;
            line-height: 1.6;
            color: #fff;
        }

        .ticket-body h3 {
            color: #00ff99;
            font-size: 18px;
            margin-bottom: 8px;
        }

        .ticket-body p {
            margin: 8px 0;
            color: #fff;
        }

        .ticket-body hr {
            border: 0;
            border-top: 2px solid #00ff99;
            margin: 10px 0;
        }

        @keyframes glowing-border {
            0% {
                box-shadow: 0 0 5px #00ff99, 0 0 10px #00ff99;
            }
            50% {
                box-shadow: 0 0 20px #00ff66, 0 0 40px #00ff66;
            }
            100% {
                box-shadow: 0 0 5px #00ff99, 0 0 10px #00ff99;
            }
        }
    </style>
</head>
<body>
    <?php

    $host = "localhost";
    $dbname = "cse_travels";
    $username = "root";
    $password = "";

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        exit();
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['name'], $_POST['mobile'], $_POST['email'], $_POST['source'], $_POST['destination']) &&
            !empty($_POST['name']) && !empty($_POST['mobile']) && !empty($_POST['email']) &&
            !empty($_POST['source']) && !empty($_POST['destination'])) {

            $name = htmlspecialchars($_POST['name']);
            $mobile = htmlspecialchars($_POST['mobile']);
            $email = htmlspecialchars($_POST['email']);
            $source = htmlspecialchars($_POST['source']);
            $destination = htmlspecialchars($_POST['destination']);

            $sql = "SELECT train_name, price, departure_time, arrival_time FROM train_routes WHERE source_station = :source AND destination_station = :destination";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':source', $source);
            $stmt->bindParam(':destination', $destination);

            try {
                $stmt->execute();
                $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

                if ($results) {
                    echo "<div class='ticket-container'>";
                    echo "<div class='ticket'>";
                    echo "<h2 class='ticket-title'>RAILways Ticket</h2>";
                    echo "<div class='ticket-body'>";
                    echo "<h3>Passenger Details</h3>";
                    echo "<p><strong>Name:</strong> $name</p>";
                    echo "<p><strong>Mobile:</strong> $mobile</p>";
                    echo "<p><strong>Email:</strong> $email</p>";
                    echo "<hr>";
                    echo "<h3>Train Details</h3>";

                    foreach ($results as $result) {
                        $train_name = htmlspecialchars($result['train_name']);
                        $price = htmlspecialchars($result['price']);
                        $departure_time = htmlspecialchars($result['departure_time']);
                        $arrival_time = htmlspecialchars($result['arrival_time']);

                        echo "<p><strong>Train Name:</strong> $train_name</p>";
                        echo "<p><strong>Price:</strong> ₹$price</p>";
                        echo "<p><strong>Departure Time:</strong> $departure_time</p>";
                        echo "<p><strong>Arrival Time:</strong> $arrival_time</p>";
                    }

                    echo "</div>";
                    echo "</div>";
                    echo "</div>";
                } else {
                    echo "<p>No trains available for the selected route.</p>";
                }
            } catch (PDOException $e) {
                echo "Error executing query: " . $e->getMessage();
            }
        } else {
            echo "<p>Please fill out all the fields in the form.</p>";
        }
    } else {
        echo "<p>Form was not submitted correctly.</p>";
    }
    ?>
</body>
</html>
