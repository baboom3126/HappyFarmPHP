<?php

  //--------------------------------------------------------------------------
  // Example php script for fetching data from mysql database
  // by Trystan Lea : openenergymonitor.org : GNU GPL
  //--------------------------------------------------------------------------

  $tableName = "products";

  //--------------------------------------------------------------------------
  // 1) Connect to mysql database
  //--------------------------------------------------------------------------
  require_once("dbtools.inc.php");
  $link = create_connection();

  //--------------------------------------------------------------------------
  // 2) Query database for data
  //--------------------------------------------------------------------------

  $sql = "SELECT * FROM $tableName";
  $result = $link->query($sql);

  $products_all = array();
  if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
          $products_all[] = $row;
      }
  }else {
      echo "0 results";
  }

  $link->close();

  //--------------------------------------------------------------------------
  // 3) echo result as json
  //--------------------------------------------------------------------------

  echo json_encode($products_all);
?>
