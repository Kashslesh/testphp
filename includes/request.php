<!-- PDO Statement -->
<?php
function get_users()
{
    require 'configDB.php';
    $page = $_GET['page'] ?? 1;
    // Paginations has to be  an integer
    $page = (int)$page;
    // Conditions for pages 
    if (!$page || $page < 1) {
        $page = 1;
    }
    $per_page = 5;
    // The first page 
    $start_page = ($page - 1) * $per_page;
    $query = $db->prepare("SELECT * FROM users INNER JOIN  professions  ON users.id = professions.user_id JOIN  users_actions ON users_actions.user_id = users.id LIMIT $start_page ,$per_page");
    if ($query === false) {
        var_dump($pdo->errorInfo());
        die('Erreur SQL');
    }
    $query->execute();
    $data = $query->fetchAll();
    return $data;
}
function get_numbers_users()
{
    require 'configDB.php';
    $query = $db->prepare("SELECT * FROM users ");
    if ($query === false) {
        var_dump($pdo->errorInfo());
        die('Erreur SQL');
    }
    $query->execute();
    $numbers_users = $query->fetchAll();
    return $numbers_users;
}
$data_page = get_numbers_users();
// A step of paginations
$per_page = 5;
// total of pages
$total = count($data_page);

// numbers of pages
$count_pages = ceil($total / $per_page);

?>