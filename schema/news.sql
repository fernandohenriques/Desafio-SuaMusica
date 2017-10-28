CREATE DATABASE  IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `news`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: news
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `author` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` blob NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (12,'Mario Sabino',' O que Léo vai falar de Franklin?','Léo Pinheiro, em sua delação premiada à Lava Jato, vai falar da troca de mensagens com Cezar Uzeda e Mônica Monteiro sobre a intermediação de negócios em Moçambique pelo ex-ministro Franklin Martins?\n\nDona da produtora Cine Group, Mônica abriu em 2009 a \'Valore Moçambique\' em sociedade com Evanise Santos, então mulher de José Dirceu, e Sandra Louise Dantas, ex-tesoureira do PT-DF casada com Chico Floresta.\n\nConforme contrato social, a empresa foi criada para atuar nas atividades de sondagem eleitoral, sondagem de opinião na área de mídia, audiência para TV, rádio e imprensa, consultoria para o setor público na estruturação de projetos de infraestrutura, impacto ambiental, formação profissional, mercado imobiliário, serviços de telecomunicações, assessoria de planos estratégicos, soluções de parcerias e financiamentos, projetos de investimento, importação e exportação, intermediação e representação comercial, gestão de tecnologias e sistema de informações.\n\nFranklin e Mônica rendem um documentário.'),(13,'Diogo Mainardi','Comissão de Ética investigará Mercadante e Cardozo','Inspirada pela OAB, a Comissão de Ética Pública da Presidência resolveu cumprir seu papel e abriu processos contra os ministros Aloizio Mercadante e José Eduardo Cardozo.\n\n\n\n\nMercadante tentou calar Delcídio do Amaral, Cardozo usou o cargo de AGU para defender o projeto de poder do PT.'),(14,'Mario Sabino','Janot: Lula pode ser ministro, mas será investigado por Moro','Rodrigo Janot tomou uma decisão salomônica. Em manifestação ao STF, o PGR disse que Lula pode ser ministro da Casa Civil, mas deverá ser investigado pela Justiça Federal em Curitiba.\n\nSegundo Janot, qualquer investigação criminal aberta em primeira instância antes da nomeação deve continuar na primeira instância. Na prática, o PGR sugeriu ao STF que Lula não tenha direito ao foro especial.\n\n\"Deve ser mantida a nomeação de Luiz Inácio Lula da Silva para o cargo de ministro de Estado Chefe da Casa Civil da Presidência da República, mas investigações criminais e possíveis ações penais referentes a ele devem, em princípio, ser mantidas no primeiro grau de jurisdição\", escreveu.\n\nPara ele, a atuação inusual da presidência da República em torno da nomeação indica \"ocorrência de desvio de finalidade no ato\". É necessário, portanto, \"evitar que a nomeação produza efeitos negativos na investigação\".\n\nJanot explicou que a prerrogativa de foro não é absoluta. \"Caso se apure ter sido a nomeação praticada com abuso de direito ou tentativa de fraude processual, pode autorizar-se deslocamento da competência para outro juízo.\"'),(15,'Diogo Mainardi','O presente de Temer','Amanhã é aniversário de Curitiba, que ganhou status de República com Sergio Moro.\n\nO desembarque do PMDB é o presente de Michel Temer.'),(16,'Diogo Mainardi','Marina mentindo na TV','Marina Silva mentindo na Globonews, em entrevista a Miriam Leitão.\n\nDefende que haja eleições ainda este ano, mas diz que \"não sabe se será candidata\".'),(17,'Diogo Mainardi','A ficha caiu','Até Aloizio Mercadante admite que o governo Dilma acabou.\n\nSe a PF deixar, vão descer a rampa juntos.'),(18,'Mario Sabino','Lula dedo-duro','A verdade é dura: Lula era informante da ditadura.\n\nMais precisamente do Dops, como revelou Romeu Tuma Jr.'),(19,'O Financista','Vendas da Páscoa despencam 9,6% e registram o pior resultado da história','SÃO PAULO – As vendas da Páscoa registraram o pior desempenho da série histórica, iniciada em 2007, com tombo de 9,6% durante a semana passada (21 a 27 de março) na comparação com período equivalente no ano passado.\n\nSe levado em consideração apenas o fim de semana, as vendas caíram 9,9% em relação ao período de 2015, segundo a Serasa Experian.\n\nO aprofundamento da recessão econômica, o aumento do desemprego e a queda do poder de compra dos consumidores devido à inflação, impactaram negativamente o movimento varejista durante a Páscoa deste ano, explica a Serasa Experian.\n\nNa cidade de São Paulo, a queda do comércio durante a Páscoa foi ainda maior. As vendas caíram 11,6% na semana do feriado e recuaram 8,4% no fim de semana.'),(20,'Mario Sabino','O primeiro a cair fora','Henrique Eduardo Alves acaba de entregar o cargo de ministro do Turismo.\n\nÉ o primeiro dos sete ministros do PMDB a cair fora.'),(21,'Diogo Mainardi','Sem ele, não dá','O Antagonista recomenda o programa Roda Viva de hoje.\n\nO entrevistado será Marcos Lisboa.\n\nNenhuma equipe econômica séria pode prescindir dele.'),(22,'Mario Sabino','OAB acusa Dilma de \"permissividade não republicana\"','Em seu pedido de impeachment, a OAB também argumenta que os atos praticados por Dilma Rousseff não satisfazem o interesse público, mas apenas a sua \"manutenção no poder\" e com \"auxílio direto\" de Lula nas instâncias policial, administrativa e judicial.\n\nA OAB acusa Dilma de \"permissividade com relações não republicanas\" que a afastaram da \"sobriedade e da equidistância que deveria manter de apurações penais conduzidas pelas instâncias constitucionalmente competentes para, uma vez mais, praticar crime de responsabilidade\".\n\n\"Essas ingerências culminaram com o uso do seu poder constitucional para uma manipulação de foro tendente a afastar o juiz natural das investigações em curso, o que resta demonstrado pela nomeação e posse do ex-presidente Luiz Inácio Lula da Silva no cargo de Ministro de Estado Chefe da Casa Civil.\"\n\n\"Fato que corrobora tal entendimento é o açodamento da Excelentíssima Senhora Presidente da República na nomeação do senhor Luiz Inácio Lula da Silva, cujo decreto foi publicado em edição extra do Diário Oficial da União.\"\n\n\"Qual o interesse público relevante e inadiável a justificar uma edição extraordinária que teve como único propósito formalizar a nomeação de um ministro de estado? Uma vez mais, nobres pares, a instituição Presidência da República foi utilizada para a satisfação de interesses outros que não aquele de matiz pública.\"\n\n\"Tal conduta ofende de forma incisiva os princípios constitucionais da impessoalidade e da moralidade, estampados no art. 37 da Carta Magna, uma vez que desloca o poder constitucional do âmbito da sua função da satisfação do bem comum para o atingimento de interesses outros, em flagrante desvio de finalidade.\"\n\nClaudio Lamachia menciona, ainda,os grampos da conversa de Lula com Dilma divulgados por Sérgio Moro.\n\n\"É impossível não mencionarmos as gravações obtidas nos autos do processo que tramitava perante a 13ª Vara Federal de Curitiba, e que foram agregadas aos presentes autos. Digo isso porque nem mesmo a eventual dúvida quanto à legalidade da forma pela qual essas gravações vieram a público é capaz de apagar ou nos fazer ignorar os acachapantes fatos que elas acabaram por revelar.\"\n\n\"Demonstram, por exemplo, que em inusual contato telefônico, diretamente, a Presidente da República encaminhou previamente ao seu antecessor um termo de posse para, em seu dizer, ser utilizado apenas \'em caso de necessidade\', o que corrobora, uma vez mais, que a apressada nomeação teve como escopo fundamental ingerência da Presidência da República no deslocamento do foro ao qual estava submetido o ex-presidente.\" \n\n\"Também causam estarrecimento os diálogos nos quais fica denotado que a nomeação do novo Ministro da Justiça teria por objetivo controlar a Polícia Federal, no que diz respeito à operação Lava Jato, quando o ex-presidente questiona a sua lealdade como \'amigo\' para implementar tal desiderato, como se o dever republicano de um Ministro da Justiça não se restringisse ao respeito à lei e à Constituição.\"');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `active` char(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Fernando Henriques','teste123','fernando.trabalhos@gmail.com','Y'),(2,'Alan Trope','123456','alan@suamusica.com.br','N'),(3,'Rodrigo Henriques','123456','rsh.trabalho@gmail.com','N'),(4,'Rodrigo Henriques','123456','rsh.trabalho@gmail.com','N');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-28 22:22:28
