
//questions taken from https://opentdb.com
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'category.dart';
import 'question.dart';

const Map<int,dynamic> demoAnswers = {
  0:"Uma doença infectocontagiosa que ataca a pele.",
  1:"Manchas e bolhas na pele, formigamento e fraqueza nas mãos e nos pés.",
  2:"Lepra.",
  3:"Contato com o doente que não se encontra em tratamento.",
  4:"Todas as idades e sexos.",
  5:"Não, desde que o paciente se encontre em tratamento.",
  6:"Reiniciar o tratamento a partir da primeira dose.",
  7:"Sim. Qualquer que seja a forma de hanseníase, a cura acontece tratando-se corretamente.",
  8:"Sim, suas atividades não devem ser interrompidas, desde que o indivíduo esteja se tratando.",
  9:"Examinar a pele das pessoas que moram ou moraram na mesma casa nos últimos 5 anos.",
};

final List<Category> categories = [
  Category(0,"Hanseníase", icon: FontAwesomeIcons.leanpub),
];

final List<Question> demoQuestions = Question.fromData([
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "O que é Hanseníase?",
      "correct_answer": "Uma doença infectocontagiosa que ataca a pele.",
      "incorrect_answers": [
        "Uma doença infecciosa nos olhos.",
        "Uma doença parasitária que ataca o intestino.",
        "Uma doença transmitida pelo rato."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Quais os principais sintomas da hanseníase?",
      "correct_answer": "Manchas e bolhas na pele, formigamento e fraqueza nas mãos e nos pés.",
      "incorrect_answers": [
        "Diarreia, náuseas e tontura.",
        "Febre, tosse e inflamação na garganta",
        "Mudança de peso, febre e visão turva."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Como a hanseníase é conhecida?",
      "correct_answer": "Lepra.",
      "incorrect_answers": [
        "Barriga d’água.",
        "Elefantíase.",
        "Catapora."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Como a hanseníase é transmitida?",
      "correct_answer": "Contato com o doente que não se encontra em tratamento.",
      "incorrect_answers": [
        "Através da urina do rato.",
        "Ingestão de alimentos contaminados.",
        "Picada de mosquito."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Qual as idades e sexo que a hanseníase pode acometer?",
      "correct_answer": "Todas as idades e sexos.",
      "incorrect_answers": [
        "Apenas masculino, entre 20 e 60 anos.",
        "Crianças entre 1 e 5 anos.",
        "Apenas adultos"
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Existe necessidade de isolar o paciente portador de hanseníase?",
      "correct_answer": "Não, desde que o paciente se encontre em tratamento.",
      "incorrect_answers": [
        "Sim, mesmo que o indivíduo esteja em tratamento.",
        "Não, mesmo que o individuo não esteja se tratando.",
        "Sim, principalmente os adultos."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "O que fazer quando um paciente em abandono de tratamento retornar a um serviço de saúde?",
      "correct_answer": "Reiniciar o tratamento a partir da primeira dose.",
      "incorrect_answers": [
        "É desnecessário continuar o tratamento",
        "Dobrar as doses do medicamento.",
        "Retomar o tratamento de onde o paciente parou."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "8)	A hanseníase tem cura?",
      "correct_answer": "Sim. Qualquer que seja a forma de hanseníase, a cura acontece tratando-se corretamente.",
      "incorrect_answers": [
        "Sim, se o indivíduo ainda estiver no início da doença.",
        "Não, existe apenas o controle da doença através de medicamentos.",
        "Não, mesmo que o indivíduo se encontre no primeiro estágio da doença."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "O paciente pode continuar trabalhando normalmente durante o período do tratamento?",
      "correct_answer": "Sim, suas atividades não devem ser interrompidas, desde que o indivíduo esteja se tratando.",
      "incorrect_answers": [
        "Sim, mesmo que o paciente não esteja se tratando.",
        "Não, somente 6 meses após concluir o tratamento.",
        "Não, somente quando concluir o tratamento."
      ]
    },
    {
      "category": "",
      "type": "multiple",
      "difficulty": "easy",
      "question": "Qual a conduta a ser tomada em relação à família do paciente?",
      "correct_answer": "Examinar a pele das pessoas que moram ou moraram na mesma casa nos últimos 5 anos.",
      "incorrect_answers": [
        "Nenhuma, pois não há risco de contágio.",
        "O indivíduo deve ser isolado de todas as pessoas com quem convive mesmo estando em tratamento."
      ]
    }
  ]);