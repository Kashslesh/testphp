<?php
require "includes/Layout/header.php";
?>
<main>
  <div class="messages">
  </div>
  <!-- Table -->
  <table cellspacing="0">
    <tr>
      <th>id</th>
      <th>Prénom</th>
      <th>Nom</th>
      <th>Profession</th>
      <th>Status</th>
      <th>Action</th>
    </tr>
    <?php
    // Import logic from request.php
    require 'includes/request.php';
    $users = get_users();
    $pages = $count_pages;
    ?>
    <?php foreach ($users as $user) : ?>
      <tr>
        <td> <?= $user["id"] ?> </td>
        <?= $user["first_name"]  ?  "<td>" . $user["first_name"] . "</td>" : "<td>-</td>" ?>
        <?= $user["last_name"]  ?  "<td>" . $user["last_name"] . "</td>" : "<td>-</td>" ?>
        <td><?= $user["profession"] ?> </td>
        <?= $user["activity"] === 1 ?
          "<td><form method='post' action='index.php' onsubmit='return false'>
        <select name='nameselect'>
        <option  value='true'>True</option>
        <option value='false'>False</option>
        </select>
        </td>" : "<td>-</td>" ?>
        <?= $user["last_name"]  ?  "<td>
              <button type='submit' name='btn'>Change it</button>
            </form></td>" : "<td>-</td>" ?>

      </tr>
    <?php endforeach; ?>
  </table>
  <!-- Pagination -->
  <article>
    <nav>
      <ul>
        <?php for ($i = 1; $i <= $pages; $i++) {
        ?>
          <li>
            <a href='?page=<?= $i ?>'><?= $i ?></a>
          </li>
        <?php } ?>
      </ul>
    </nav>
  </article>
</main>
<?php
require "includes/Layout/footer.php";
?>