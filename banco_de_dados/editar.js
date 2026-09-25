<script>
import React, { useState } from 'react';
import {
View,
Text,
Pressable,
StyleSheet

} from 'react-native';
const [alunos, setAlunos] = useState([]);

const buscarAlunos = async () => {
try {
const resposta = await fetch("http://172.23.192/api_docs/cadastrar.php"
);
const dados = await resposta.json();
setAlunos(dados);
} catch (erro) {
console.log("Erro:", erro);
}
};

<Pressable
style={styles.botao}
onPress={buscarAlunos}
>
<Text style={styles.textoBotao}>
Buscar alunos
</Text>
</Pressable>



{alunos.map((aluno) => (
<View
key={aluno.id}
style={styles.card}
>
<Text>
Nome: {aluno.nome}
</Text>
<Text>
E-mail: {aluno.email}
</Text>
<Text>
Telefone: {aluno.telefone}
</Text>
</View>
))}

} from 'react-native';
export default function ConsultaAlunosScreen() {
const [alunos, setAlunos] = useState([]);
const buscarAlunos = async () => {
try {
const resposta = await fetch(
"http://172.23.192/api_docs/cadastrar.php"
);


const dados = await resposta.json();
setAlunos(dados);
} catch (erro) {
console.log("Erro:", erro);
}
};
return (
<View style={styles.container}>
<Text style={styles.titulo}>
Consulta de Alunos
</Text>
<Pressable
style={styles.botao}
onPress={buscarAlunos}
>
<Text style={styles.textoBotao}>
Buscar alunos
</Text>
</Pressable>
{alunos.map((aluno) => (
<View
key={aluno.id}
style={styles.card}
>
<Text>
Nome: {aluno.nome}
</Text>
<Text>
E-mail: {aluno.email}
</Text>
<Text>
Telefone: {aluno.telefone}
</Text>
</View>
))}
</View>
);
}


const styles = StyleSheet.create({
container: {
flex: 1,
padding: 20
},
titulo: {
fontSize: 24,
fontWeight: 'bold',
marginBottom: 20
},
botao: {
backgroundColor: '#1976D2',
padding: 15,
borderRadius: 8,
alignItems: 'center',
marginBottom: 20
},
textoBotao: {
color: '#FFFFFF',
fontSize: 16,
fontWeight: 'bold'
},
card: {
padding: 15,
marginBottom: 10,
borderWidth: 1,
borderRadius: 8
}
card: { padding2: 15,
marginBottom: 10,
borderWidth: 1,
borderRadius: 8
}
});


</script>