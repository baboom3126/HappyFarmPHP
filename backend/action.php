<?php
  // Setting Variable
  header('Content-Type: application/json');
  $tableName = "products";
  require_once("dbtools.inc.php");
  $link = create_connection();

  // Inital GET Action Parameter
  $count = 0 ;
  foreach($_GET as $key => $value)
  {
    $KeyData[$count] = $key ;
    $ValueData[$count] = $value;
    $count++;
  }

  // 判斷 Action not is null
  if(empty($_GET["action"]))
  {
    echo 'action null';
  }
  else
    $action = $_GET["action"];

  // execute sql instruction
  switch ($action) {
      case 'Insert':
          // Insert into products ("name", "description", "image", "price") values ()
          $stmt = $link->prepare("Insert into $tableName ($KeyData[1],$KeyData[2],$KeyData[3],$KeyData[4]) VALUES (?,?,?,?)");
          $stmt->bind_param("ssss", $ValueData[1],$ValueData[2],$ValueData[3],$ValueData[4]);
          $stmt->execute();
          break;
      case 'Delete':
          $id = $_GET['Id'];
          $stmt = $link-> prepare("Delete from $tableName Where id = $id");
          $stmt->execute();
          break;
      case 'Update':
          $id = $_GET['order'];
          $stmt = $link->prepare("Update $tableName Set $KeyData[1] = ? ,$KeyData[2] = ?,$KeyData[3] = ? ,$KeyData[4] = ? Where id = $id");
          $stmt->bind_param("ssss", $ValueData[1],$ValueData[2],$ValueData[3],$ValueData[4]);
          $stmt->execute();
          break;
      case 'Select':
          // echo "Select";
          $sql = "SELECT * FROM $tableName";
          break;
  }


  // show data
  $sql = "SELECT * FROM $tableName";
  $result = $link->query($sql);

  // sql data -> array
  $products_all = array();
  if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
          $products_all[] = $row;
      }
  }else {
      echo "0 results";
  }

  // db connect close
  $link->close();

  // // output result
  // echo json_encode($products_all);
  header('Location: index.html');
?>
