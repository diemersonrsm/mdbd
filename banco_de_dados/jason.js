import React, { useState, useEffect } from 'react';
import { 
  View, Text, TextInput, Pressable, StyleSheet, 
  ScrollView, ActivityIndicator, Alert 
} from 'react-native';

// Altere para o caminho completo onde sua API PHP está hospedada
const API_URL = 'http://172.23.192';

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

      {/* --- TELA 1: CONSULTA --- */}
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
  container: { flex: 1, padding: 20, backgroundColor: '#f8f9fa', paddingTop: 50 },
  tituloApp: { fontSize: 24, fontWeight: 'bold', textAlign: 'center', marginBottom: 20 },
  subtitulo: { fontSize: 18, fontWeight: 'bold', marginBottom: 15 },
  botao: { padding: 12, backgroundColor: '#007bff', borderRadius: 5, alignItems: 'center', marginBottom: 10 },
  textoBotao: { color: '#fff', fontWeight: 'bold' },
  card: { backgroundColor: '#fff', padding: 15, borderRadius: 5, marginBottom: 10, shadowColor: '#000', shadowOffset: { width: 0, height: 1 }, shadowOpacity: 0.2, shadowRadius: 1.41, elevation: 2 },
  txtNome: { fontSize: 16, fontWeight: 'bold' },
  containerBotoes: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 10 },
  btnEditar: { backgroundColor: '#ffc107', padding: 8, borderRadius: 3, marginRight: 5 },
  btnExcluir: { backgroundColor: '#dc3545', padding: 8, borderRadius: 3 },
  txtBtnAcao: { color: '#fff', fontWeight: 'bold' },
  form: { backgroundColor: '#fff', padding: 20, borderRadius: 5, elevation: 2 },
  input: { borderWidth: 1, borderColor: '#ccc', padding: 10, borderRadius: 5, marginBottom: 15 }
});