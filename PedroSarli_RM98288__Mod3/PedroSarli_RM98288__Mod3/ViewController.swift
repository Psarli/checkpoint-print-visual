//
//  ViewController.swift
//  PedroSarli_RM98288__Mod3
//
//  Created by Usuário Convidado on 24/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtIdade: UITextField!
    
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var swtONOFF: UISwitch!
    @IBOutlet weak var sgmRegion: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        
    }

    @IBAction func sliderIdade(_ sender: UISlider) {
        txtIdade.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func btnPT1(_ sender: Any) {
        let Usuario:String = txtName.text!
        let Contato:String = txtEmail.text!
        let Idade:String = txtIdade.text!
        
        print("O Usuário \(Usuario), Email \(Contato), Idade \(Idade)")
    }
    
    @IBAction func btnPT2(_ sender: Any) {
        if(swtONOFF.isOn){
            print("Teremos acesso aos dados da sua conta")
        }
        else{
            print("Não permitido o acesso aos dados de sua conta")
        }
        
    }
    @IBAction func sgmChoice(_ sender: Any) {
        if(sgmRegion.selectedSegmentIndex==0){
            print("A região de Kanto é um local variado, cheio de pequenas vilas, cidades, montanhas, rios, florestas e mares")
        }
        if(sgmRegion.selectedSegmentIndex==1){
            print("É uma região que está localizada a oeste de Kanto, e ao sul de Sinnoh. É o cenário de Pokémon Gold Silver, Crystal, e HeartGold e SoulSilve")
        }
        if(sgmRegion.selectedSegmentIndex==2){
            print("A região de Hoenn esta localizada a Sudoeste de Kanto e Johto. Hoenn foi baseada na região de Kyushu, pois de acordo com o diretor de Ruby e Sapphire, Junichi Masuda, ele tinha o desejo de recuperar suas memórias de estar lá nas férias de verão")
        }
    }
}

