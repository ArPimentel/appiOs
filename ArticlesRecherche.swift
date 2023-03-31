//
//  TestbarreRecherche.2.swift
//  PROJET GAMEMATCH
//
//  Created by apprenant53 on 24/03/2023.
//

import SwiftUI

struct TestbarreRecherche_2: View {
    
    let meteoParam: ListConsole
    var body: some View {
       
            VStack{
                Image(systemName: meteoParam.imageName)
                    .resizable()
                    .scaledToFit()
                Text(meteoParam.name)
            }
        }
    }
struct TestbarreRecherche_2_Previews: PreviewProvider {
    static var previews: some View {
        TestbarreRecherche_2(meteoParam: m1)
    }
}
