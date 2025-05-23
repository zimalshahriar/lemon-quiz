<?php include 'includes/db.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lemon Quiz 🍋</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">
    <div class="text-center w-100">
        <h1 class="mb-4 display-4">🍋 Welcome to <span class="text-warning">Lemon Quiz</span></h1>
        <p class="lead">Test your knowledge across science, history, and more. Ready for the challenge?</p>
        <a href="quiz.php" class="btn btn-warning btn-lg mt-4 shadow-sm">Start Quiz!</a>
    </div>
</div>

  <footer>
    🍋 Lemon Quiz &copy; <?php echo date("Y"); ?> — Learn with Fun!
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
