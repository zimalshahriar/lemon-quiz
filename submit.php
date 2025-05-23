<?php
include('db.php');

$userAnswers = $_POST['answers'] ?? [];
$score = 0;

foreach ($userAnswers as $questionId => $userOption) {
    $stmt = $pdo->prepare("SELECT correct_option FROM questions WHERE id = ?");
    $stmt->execute([$questionId]);
    $correct = $stmt->fetchColumn();

    if ($correct === $userOption) {
        $score++;
    }
}

header("Location: result.php?score=$score");
exit;
?>
