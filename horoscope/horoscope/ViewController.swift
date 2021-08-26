//
//  ViewController.swift
//  horoscope
//
//  Created by Pedro Léda on 26/08/21.
//

import UIKit

class ViewController: UITableViewController {

    // MARK: Properties
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    // MARK: Outlets
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setSignos()
    }
    
    // MARK: Actions
    
    // MARK: Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Sobre seu signo", message: significadoSignos [ indexPath.row ], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(acaoConfirmar)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func setSignos(){
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Áries é impaciente, não suporta limites e não costuma se dar bem com ordens e autoridades em geral. No fundo é uma criança desobediente, mas com um bom coração, com a cabeça cheia de ideias de transformar o mundo. No entanto seus humores bem como suas explosões duram pouco. Quase nunca guardam rancor.")
        significadoSignos.append("Por ser um signo de terra, fixo e muito pé no chão, os taurinos são inflexíveis e possuem uma certa aversão ao risco. ... As pessoas do signo de touro são, por natureza, extremamente confiáveis, pacientes e leais, o que os tornam um ótimo membro para sua equipe de trabalho e para o círculo de amizade.")
        significadoSignos.append("Geminianos e Geminianas são os famosos tagarelas do zodíaco. Um signo mental, racional e super ágil, são pessoas brilhantes, comunicativas e curiosas. Flutuam facilmente pela sua dupla personalidade, que em um momento está super alegre e conversador e de repente fica amuado e introspectivo.")
        significadoSignos.append("Este é tradicionalmente um signo de família. É conservador, seus humores são instáveis como as marés, sua sensibilidade e intuição suas melhores qualidades. Nunca espere objetividade de uma pessoa de câncer. ... A característica mais desconcertante de Câncer é sua capacidade de manipulação e chantagem emocional.")
        significadoSignos.append("Toda pessoa de leão é otimista, alegre, intuitiva e precisa sentir-se acima do bem e do mal. ... Leão é carismático, charmoso e possui uma personalidade forte e decisiva. Mas todos, sem exceção, não gostam de compartilhar com ninguém sua glória e aplausos.")
        significadoSignos.append("Inteligência, timidez e perfeccionismo descrevem muito bem o homem do signo de Virgem. Por ser muito rígido, não só consigo mesmo, mas também com os demais, às vezes – sem tal intenção – acaba magoando as pessoas com seu excesso de sinceridade. Costuma ser mais racional do que tudo, em todos os sentidos. Virginiano é muito prestativo e solidário. Você precisa conhecer melhor sobre este nativo")
        significadoSignos.append("São personalidades muito sociáveis, extrovertidas e charmosas, estão sempre preocupados em agradar o próximo. São avessos a discussões e brigas e muitas vezes optam pela harmonia do que pela verdade. Por serem regidos por Vênus, costumam ser pessoas atraentes, de uma beleza única.")
        significadoSignos.append("De acordo com Brendan, Escorpião é o signo mais intenso de todo o zodíaco. A pessoa que nasce com o Sol neste signo costuma ser reservada e, em um primeiro momento, calma. Porém quando você conhece um escorpiano de verdade, descobre que são indivíduos poderosos, inteligentes, misteriosos e agressivos.")
        significadoSignos.append("Sagitário é um signo duplo, meio homem, meio cavalo. Sabe ser um bom conselheiro, como um sacerdote, mas sabe também, dar seus coices. Sim, porque Sagitário é um signo agressivo, briguento, intolerante. ... Sagitário traz como principal marca, o sentido de liberdade, portanto, nem tente aprisioná-lo ou controlá-lo.")
        significadoSignos.append("A personalidade de Capricórnio é, particularmente, sábia e bastante discreta. Dificilmente você verá um capricorniano raiz cometendo loucuras impensadas ou sendo impulsivo. O comprometimento também é um ponto forte desses nativos, que fazem de tudo por quem gostam e se provam leais e confiáveis.")
        significadoSignos.append("Aquário tem forte tendência a reprimir suas emoções e não suporta melodramas e gestos melosos demais. Mostre-se sempre leal e sincero, mas nunca apaixonado. Não são muito dados à cortesia e ao romance também, portanto, puxe seu freio. Não é um signo particularmente sensual, portanto essa também não é uma boa saída.")
        significadoSignos.append("Piscianos e Piscianas podem ser considerados as pessoas com a maior conexão espiritual do zodíaco. Signo de água que transborda emoções, faz dele sensível, sensitivo, empático, ingênuo, intuitivo, sonhador e artístico. ... Possuem uma mente irracional e intuitiva, às vezes ilusória e enganadora.")
    }
}

