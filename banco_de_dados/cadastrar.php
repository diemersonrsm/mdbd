<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

$servidor = "localhost";
$banco = "bd_escola";
$usuario = "root";
$senha = "";

try {
    $pdo = new PDO("mysql:host=$servidor;dbname=$banco;charset=utf8", $usuario, $senha);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(["sucesso" => false, "mensagem" => "Erro na conexão: " . $e->getMessage()]);
    exit;
}

$metodo = $_SERVER['REQUEST_METHOD'];
$dados = json_decode(file_get_contents("php://input"), true);

switch ($metodo) {
    
    case 'GET':
        // Ajustado para usar as colunas exatas: ID_Aluno, Nome e Status
        $sql = "SELECT ID_Aluno AS id, Nome AS nome, Status AS status FROM alunos WHERE Status = 'A' ORDER BY Nome";
        $stmt = $pdo->query($sql);
        $alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($alunos);
        break;

    case 'POST':
        if (!empty($dados['nome'])) {
            // Ajustado para a coluna Nome e Status
            $sql = "INSERT INTO alunos (Nome, Status) VALUES (:nome, 'A')";
            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(":nome", $dados['nome']);
            $stmt->execute();
            echo json_encode(["sucesso" => true, "mensagem" => "Aluno cadastrado com sucesso."]);
        } else {
            echo json_encode(["sucesso" => false, "mensagem" => "Nome do aluno é obrigatório."]);
        }
        break;

    case 'PUT':
        if (empty($dados['id'])) {
            echo json_encode(["sucesso" => false, "mensagem" => "ID do aluno é obrigatório."]);
            break;
        }

        if (isset($dados['desativar']) && $dados['desativar'] === true) {
            // Ajustado para as colunas Status e ID_Aluno
            $sql = "UPDATE alunos SET Status = 'I' WHERE ID_Aluno = :id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(":id", $dados['id']);
            $stmt->execute();
            echo json_encode(["sucesso" => true, "mensagem" => "Aluno desativado logicamente."]);
        } 
        else if (!empty($dados['nome'])) {
            // Ajustado para as colunas Nome e ID_Aluno
            $sql = "UPDATE alunos SET Nome = :nome WHERE ID_Aluno = :id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(":nome", $dados['nome']);
            $stmt->bindValue(":id", $dados['id']);
            $stmt->execute();
            echo json_encode(["sucesso" => true, "mensagem" => "Dados do aluno atualizados."]);
        } else {
            echo json_encode(["sucesso" => false, "mensagem" => "Dados incompletos para atualização."]);
        }
        break;

    default:
        http_response_code(405);
        echo json_encode(["sucesso" => false, "mensagem" => "Método HTTP não suportado."]);
        break;
}
?>