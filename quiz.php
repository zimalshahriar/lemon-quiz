<?php
include 'includes/db.php';

// Fetch 10 random questions
$query = "SELECT * FROM questions ORDER BY RAND() LIMIT 10";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Take the Quiz 🍋</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

  <div class="container my-5">
    <h2 class="mb-4 text-center">📝 Answer these 10 questions</h2>

    <form action="result.php" method="post">
      <?php
      $questionNumber = 1;
      while ($row = mysqli_fetch_assoc($result)) {
        echo '<div class="card">';
        echo '<div class="card-body">';
        echo '<p class="question">' . $questionNumber . '. ' . $row['question'] . '</p>';
        echo '<div class="options">';
        echo '<input type="hidden" name="question_ids[]" value="' . $row['id'] . '">';
        echo '<input type="radio" id="q' . $row['id'] . '_a" name="answer[' . $row['id'] . ']" value="a" required>';
        echo '<label for="q' . $row['id'] . '_a">A. ' . $row['option_a'] . '</label>';

        echo '<input type="radio" id="q' . $row['id'] . '_b" name="answer[' . $row['id'] . ']" value="b">';
        echo '<label for="q' . $row['id'] . '_b">B. ' . $row['option_b'] . '</label>';

        echo '<input type="radio" id="q' . $row['id'] . '_c" name="answer[' . $row['id'] . ']" value="c">';
        echo '<label for="q' . $row['id'] . '_c">C. ' . $row['option_c'] . '</label>';

        echo '<input type="radio" id="q' . $row['id'] . '_d" name="answer[' . $row['id'] . ']" value="d">';
        echo '<label for="q' . $row['id'] . '_d">D. ' . $row['option_d'] . '</label>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
        $questionNumber++;
      }
      ?>
      <div class="text-center">
        <button type="submit" class="btn btn-warning btn-lg mt-4 shadow-sm">Submit Answers</button>
      </div>
    </form>
  </div>

  <footer>
    🍋 Lemon Quiz &copy; <?php echo date("Y"); ?>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
