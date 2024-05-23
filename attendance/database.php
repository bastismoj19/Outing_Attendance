<?php
    class mySQLDB {
        private $hostname = "localhost";
        private $username = "root";
        private $password = "";
        private $dbName = "loginattendance";
        public $db_link;

        function __construct() {
            $mysqli = new mysqli($this->hostname,$this->username,$this->password,$this->dbName); 
            $mysqli->select_db($this->dbName);
            $this->db_link= $mysqli;
        }

        public function execquery($sql_query) {
            //$statement = $this->db_link->prepare($sql_query);
            $this->db_link->query($sql_query);
        }

        public function getData($sql_query) {

            //$statement = $this->db_link->prepare($sql_query);
            $result = $this->db_link->query($sql_query);

            $allData = array();

            while($current_row =  $result->fetch_object()) {
            
                array_push($allData, $current_row);
            }

            return $allData;
        }

        public function getOneData($sql_query) {

            //$statement = $this->db_link->prepare($sql_query);
            $result = $this->db_link->query($sql_query);

            $oneData = "";

            while($current_row =  $result->fetch_array()) {
                $oneData = $current_row[0];
            }

            return $oneData;
        }
    }
?>