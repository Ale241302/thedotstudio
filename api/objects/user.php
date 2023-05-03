<?php
class User{
 
    // database connection and table name
    private $conn;
    private $table_name = "usuario";
 
    // object properties
    public $id;
    public $usuario;
    public $password;
    public $nombre;
    public $correo;
    public $telefono;
    public $accion;
    public $fecha;
    public $rol;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    // signup user
    function signup(){
    
        if($this->isAlreadyExist()){
            return false;
        }
        // query to insert record
        $query = "INSERT INTO
                    " . $this->table_name . "
                SET
                    usuario=:usuario, password=:password, nombre=:nombre, correo=:correo, telefono=:telefono, rol=:rol";
    
        // prepare query
        $stmt = $this->conn->prepare($query);
    
        // sanitize
        $this->usuario=htmlspecialchars(strip_tags($this->usuario));
        $this->password=htmlspecialchars(strip_tags($this->password));
        $this->nombre=htmlspecialchars(strip_tags($this->nombre));
        $this->correo=htmlspecialchars(strip_tags($this->correo));
        $this->telefono=htmlspecialchars(strip_tags($this->telefono));
        $this->rol=htmlspecialchars(strip_tags($this->rol));
    
        // bind values
        $stmt->bindParam(":usuario", $this->usuario);
        $stmt->bindParam(":password", $this->password);
        $stmt->bindParam(":nombre", $this->nombre);
        $stmt->bindParam(":correo", $this->correo);
        $stmt->bindParam(":telefono", $this->telefono);
        $stmt->bindParam(":rol", $this->rol);
    
        // execute query
        if($stmt->execute()){
            $this->id = $this->conn->lastInsertId();
            return true;
        }
    
        return false;
        
    }
    public function getRol() {
        return $this->rol;
    }
    // login user
    function login(){
        // select all query
        $query = "SELECT
                    `id`, `usuario`, `password`
                FROM
                    " . $this->table_name . " 
                WHERE
                    usuario='".$this->usuario."' AND password='".$this->password."'";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        return $stmt;
    }
    
    function log(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Inicio de sesión";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        return $stmt2;
    }
    
    // log user logout
    function log2(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Cerró sesión";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        session_destroy(); // Destruimos la sesión
        header('Location: ../../index.php'); // Redirigimos al usuario a la página de inicio de sesión
        return $stmt2;
    }
    function log3(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Creacion de Usuario";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        return $stmt2;
    }
    function ina(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Sesion Cerrada Por Inactividad";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        session_destroy(); // Destruimos la sesión
        header('Location: ../../index.php'); // Redirigimos al usuario a la página de inicio de sesión
        return $stmt2;
    }
    
    function cernav(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Cierre forzado";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        session_destroy(); // Destruimos la sesión
        return $stmt2;
    }
    function off(){
        session_start(); // Iniciamos la sesión
        $fecha = date('Y-m-d H:i:s');
        $accion = "Usuario sin Red";
        $stmt2 = $this->conn->prepare('INSERT INTO log (usuario, accion, fecha) VALUES (:usuario, :accion, :fecha)');
        $stmt2->bindValue(':usuario', $this->usuario);
        $stmt2->bindValue(':accion', $accion);
        $stmt2->bindValue(':fecha', $fecha);
        $stmt2->execute();
        return $stmt2;
    }
    function isAlreadyExist(){
        $query = "SELECT *
            FROM
                " . $this->table_name . " 
            WHERE
                usuario='".$this->usuario."'";
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        if($stmt->rowCount() > 0){
            return true;
        }
        else{
            return false;
        }
    }
}