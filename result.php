<?php
include 'includes/db.php';

$score = 0;
$total = count($_POST['question_ids']);

if (!empty($_POST['answer'])) {
    foreach ($_POST['question_ids'] as $question_id) {
        $user_answer = $_POST['answer'][$question_id] ?? null;

        $query = "SELECT correct_option FROM questions WHERE id = $question_id";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);

        if ($user_answer == $row['correct_option']) {
            $score++;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Your Result 🍋</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <style>
    .result-container {
      text-align: center;
      padding: 60px 20px;
    }
    .result-score {
      font-size: 4rem;
      font-weight: 800;
      color: #facc15;
      animation: pop 0.8s ease;
    }
    @keyframes pop {
      0% { transform: scale(0.6); opacity: 0.2; }
      100% { transform: scale(1); opacity: 1; }
    }
  </style>
</head>
<body>

  <div class="container result-container">
    <h1 class="mb-3">🎉 Quiz Completed!</h1>
    <p class="lead">Here’s how you did:</p>
    <div class="result-score shadow-sm">
      <?php echo $score . ' / ' . $total; ?>
    </div>
    <p class="mt-4 fs-5">
      <?php
        if ($score == $total) {
          echo "🍋 Perfect! You're a quiz master!";
        } elseif ($score >= $total * 0.7) {
          echo "👏 Great job! You're pretty smart.";
        } elseif ($score >= $total * 0.4) {
          echo "👍 Not bad, try again to beat your score.";
        } else {
          echo "😅 Keep practicing. You’ll get better!";
        }
      ?>
    </p>
    <a href="quiz.php" class="btn btn-warning btn-lg mt-4">Try Again</a>
  </div>

  <footer>
    🍋 Lemon Quiz &copy; <?php echo date("Y"); ?>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
