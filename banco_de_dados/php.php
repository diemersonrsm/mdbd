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
        $sql = "SELECT aluno, nome, status FROM alunos WHERE status = 'A' ORDER BY nome";
        $stmt = $pdo->query($sql);
        $alunos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($alunos);
        break;

   
    case 'POST':
        if (!empty($dados['nome'])) {
            $sql = "INSERT INTO alunos (nome, status) VALUES (:nome, 'A')";
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
            $sql = "UPDATE alunos SET status = 'I' WHERE id = :id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(":id", $dados['id']);
            $stmt->execute();
            echo json_encode(["sucesso" => true, "mensagem" => "Aluno desativado logicamente."]);
        } 
        else if (!empty($dados['nome'])) {
            $sql = "UPDATE alunos SET nome = :nome WHERE id = :id";
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

<script>
import React, { useState, useEffect } from 'react';
import { 
  View, Text, TextInput, Pressable, StyleSheet, 
  ScrollView, ActivityIndicator, Alert 
} from 'react-native';

// CONFIGURAÇÃO DA API: Altere para o IP da sua máquina seguido pelo caminho do seu script PHP
const API_URL = 'http://172.23.192.1';

export default function App() {
  
  const [telaAtual, setTelaAtual] = useState('Consulta');
  const [alunoSelecionado, setAlunoSelecionado] = useState(null);
  const [alunos, setAlunos] = useState([]);
  const [carregando, setCarregando] = useState(false);
  const [nomeInput, setNomeInput] = useState('');

  useEffect(() => {
    if (telaAtual === 'Consulta') {
      buscarAlunos();
    }
  }, [telaAtual]);

  
  const buscarAlunos = async () => {
    try {
      setCarregando(true);
      const resposta = await fetch(API_URL);
      if (!resposta.ok) throw new Error();
      const dados = await resposta.json();
      setAlunos(dados);
    } catch (erro) {
      Alert.alert('Erro', 'Não foi possível consultar os alunos.');
    } finally {
      setCarregando(false);
    }
  };

 
  const cadastrarAluno = async () => {
    if (!nomeInput.trim()) {
      Alert.alert('Aviso', 'Digite o nome do aluno.');
      return;
    }
    try {
      const resposta = await fetch(API_URL, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ nome: nomeInput })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno cadastrado!');
        setNomeInput('');
        setTelaAtual('Consulta');
      }
    } catch (erro) {
      Alert.alert('Erro', 'Falha ao cadastrar aluno.');
    }
  };

 
  const editarAluno = async () => {
    if (!nomeInput.trim()) {
      Alert.alert('Aviso', 'O nome não pode ficar vazio.');
      return;
    }
    try {
      const resposta = await fetch(API_URL, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: alunoSelecionado.id, nome: nomeInput })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno atualizado!');
        setNomeInput('');
        setTelaAtual('Consulta');
      }
    } catch (erro) {
      Alert.alert('Erro', 'Falha ao atualizar aluno.');
    }
  };

  
  const desativarAluno = async (id) => {
    try {
      const resposta = await fetch(API_URL, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: id, desativar: true })
      });
      const resultado = await resposta.json();
      if (resultado.sucesso) {
        Alert.alert('Sucesso', 'Aluno removido da lista ativa.');
        buscarAlunos();
      }
    } catch (erro) {
      Alert.alert('Erro', 'Não foi possível excluir o aluno.');
    }
  };

  const confirmarExclusao = (aluno) => {
    Alert.alert(
      'Excluir Aluno',
      `Deseja logicamente remover ${aluno.nome}?`,
      [
        { text: 'Cancelar', style: 'cancel' },
        { text: 'Excluir', onPress: () => desativarAluno(aluno.id) }
      ]
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.tituloApp}>🎓 App Scholar</Text>

      {/* --- TELA 1: CONSULTA DE ALUNOS --- */}
      {telaAtual === 'Consulta' && (
        <ScrollView>
          <Pressable style={[styles.botao, { backgroundColor: '#28a745' }]} onPress={() => { setNomeInput(''); setTelaAtual('Cadastro'); }}>
            <Text style={styles.textoBotao}>+ Cadastrar Novo Aluno</Text>
          </Pressable>
          
          <Pressable style={styles.botao} onPress={buscarAlunos}>
            <Text style={styles.textoBotao}>Atualizar Lista</Text>
          </Pressable>

          {carregando ? (
            <ActivityIndicator size="large" color="#007bff" style={{ marginTop: 20 }} />
          ) : (
            alunos.map((aluno) => (
              <View key={aluno.id} style={styles.card}>
                <Text style={styles.txtNome}>{aluno.nome}</Text>
                <View style={styles.containerBotoes}>
                  <Pressable style={styles.btnEditar} onPress={() => { setAlunoSelecionado(aluno); setNomeInput(aluno.nome); setTelaAtual('Edicao'); }}>
                    <Text style={styles.txtBtnAcao}>Editar</Text>
                  </Pressable>
                  {/* Correção: Fechada a tag </Text> que estava truncada */}
                  <Pressable style={styles.btnExcluir} onPress={() => confirmarExclusao(aluno)}>
                    <Text style={styles.txtBtnAcao}>Excluir</Text> 
                  </Pressable>
                </View>
              </View>
            ))
          )}
        </ScrollView>
      )}

      {/* --- TELA 2: CADASTRO --- */}
      {telaAtual === 'Cadastro' && (
        <View style={styles.form}>
          <Text style={styles.subtitulo}>Cadastrar Aluno</Text>
          <TextInput style={styles.input} placeholder="Nome do Aluno" value={nomeInput} onChangeText={setNomeInput} />
          <Pressable style={[styles.botao, { backgroundColor: '#28a745' }]} onPress={cadastrarAluno}>
            <Text style={styles.textoBotao}>Salvar</Text>
          </Pressable>
          <Pressable style={[styles.botao, { backgroundColor: '#6c757d' }]} onPress={() => setTelaAtual('Consulta')}>
            <Text style={styles.textoBotao}>Voltar</Text>
          </Pressable>
        </View>
      )}

      {/* --- TELA 3: EDIÇÃO --- */}
      {telaAtual === 'Edicao' && (
        <View style={styles.form}>
          <Text style={styles.subtitulo}>Editar Aluno</Text>
          <TextInput style={styles.input} placeholder="Nome do Aluno" value={nomeInput} onChangeText={setNomeInput} />
          <Pressable style={[styles.botao, { backgroundColor: '#007bff' }]} onPress={editarAluno}>
            <Text style={styles.textoBotao}>Atualizar</Text>
          </Pressable>
          <Pressable style={[styles.botao, { backgroundColor: '#6c757d' }]} onPress={() => setTelaAtual('Consulta')}>
            <Text style={styles.textoBotao}>Voltar</Text>
          </Pressable>
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#f8f9fa', padding: 20, paddingTop: 50 },
  tituloApp: { fontSize: 24, fontWeight: 'bold', textAlign: 'center', marginBottom: 20, color: '#343a40' },
  subtitulo: { fontSize: 18, fontWeight: 'bold', marginBottom: 15 },
  botao: { backgroundColor: '#007bff', padding: 12, borderRadius: 5, alignItems: 'center', marginBottom: 10 },
  textoBotao: { color: '#fff', fontWeight: 'bold', fontSize: 16 },
  card: { backgroundColor: '#fff', padding: 15, borderRadius: 8, marginBottom: 10, shadowColor: '#000', shadowOffset: { width: 0, height: 1 }, shadowOpacity: 0.2, shadowRadius: 1.41, elevation: 2 },
  txtNome: { fontSize: 16, fontWeight: 'bold', marginBottom: 10 },
  containerBotoes: { flexDirection: 'row', justifyContent: 'flex-end' },
  btnEditar: { backgroundColor: '#ffc107', padding: 8, borderRadius: 5, marginLeft: 5 },
  btnExcluir: { backgroundColor: '#dc3545', padding: 8, borderRadius: 5, marginLeft: 5 },
  txtBtnAcao: { color: '#fff', fontWeight: 'bold', fontSize: 12 },
  form: { backgroundColor: '#fff', padding: 20, borderRadius: 8, elevation: 2 },
  input: { borderHeight: 1, borderColor: '#ced4da', borderWidth: 1, borderRadius: 5, padding: 10, marginBottom: 15, fontSize: 16 }
});
</script>