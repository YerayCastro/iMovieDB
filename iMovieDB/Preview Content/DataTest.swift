//
//  DataTest.swift
//  Employees
//
//  Created by Yery Castro on 29/2/24.
//

import Foundation

extension PersonajeDB {
    static let test = PersonajeDB(id: 1,
                                name: "Anuciador",
                                genre: .masculino,
                                race: "Humano",
                                image: "https://www.dragonballapi.com/static/images/saga/Anunciador_Dokkan.png",
                                planet: .tierra,
                                description: "El Anunciador (アナウンサー Anaunsā¿?, Announcer) es quien presenta cada edición del Torneo Mundial de las Artes Marciales en Isla Papaya como locutor desde el comienzo del manga y anime de Dragon Ball hasta Dragon Ball GT, siendo principalmente el comentarista en todas las peleas de la competición. Aunque no lo aparente con su traje negro, sus gafas de sol y su cabello rubio peinado hacia atrás, el Anunciador también es uno de los monjes que resguarda el templo sagrado que alberga el torneo.",
                                biography:  "El Anunciador presentando la batalla entre Krilin y Bacterian. En cada torneo, aparte de el 21, se produce un suceso desafortunado que realiza su papel, como en la saga del Rey Piccolo cuando fue testigo del asesinato de Krilin a manos de Tambourine. Más tarde, se vuelve muy importante como testigo de Goku en la lucha contra Piccolo desde la barrera, junto con los amigos de Goku. El Anunciador Mundial de Artes Marciales es el único que no es de los Guerreros Z en no abandonar el torneo cuando Piccolo dice que masacrará a todos. Finalmente, cuando Goku es declarado el Ganador del Torneo porque Piccolo se cae fuera de la arena, haciendo de él uno de los pocos civiles en acordarse de esto (este suceso se hace referencia más adelante en la saga de Majin Buu cuando Piccolo compite en el torneo, en el que en tono de broma le pide no destruir el Tatami otra vez, a lo que Piccolo respondió de forma amistosa que lo intentará).",
                                transformations: [Transformation(id: 0, title: .empty, image: "", description: "")])
}
extension PersonajeDBZ {
    static let test2 = PersonajeDBZ(id: 47,
                                    name: "Androide Número 16",
                                    genre: .masculino,
                                    race: "Cyborg",
                                    image: "https://www.dragonballapi.com/static/images/sagaz/Androide16.png",
                                    planet: "Tierra",
                                    description: "Número 16 fue creado por Gero al tomar como referencia a Gebo o «Gold» entre el Alto Mando del Listón Rojo para conmemorar a su hijo biológico que cayó en combate tras impactarle una bala enemiga.",
                                    biography: "El androide número 16 apareció por primera vez dentro de su cápsula contenedora en el Laboratorio del Dr. Gero. Desde un principio, los androides número 17 y 18 trataron de convencer al Dr. Gero de liberarlo, pero este se rehusaba, causando como consecuencia su muerte. Una vez eliminado el Dr. Gero, el androide número 17 procedió a despertar al androide número 16, pero son interrumpidos por Trunks, quien utiliza todas sus fuerzas para evitar que este sea reactivado. Sin embargo, los androides logran despertarlo fácilmente. Al despertar, el androide número 16 causó un gran miedo a todos debido a su inmenso tamaño, así como fuerza física. Sus compañeros androides intentaron persuadirlo para que eliminara a los Guerreros Z, pero el androide se rehúsa al decir que su único objetivo era Son Goku. Impresionados, los androides número 17 y 18 se marchan resignados junto a número 16.",
                                    transformations: [Transformation2(id: 0,
                                                                      title: "",
                                                                      image: "",
                                                                      description: "",
                                                                      trans: 0)])
}

extension PersonajeDBGT {
    static let test3 = PersonajeDBGT(id: 99,
                                     name: "Androide 18",
                                     genre: .femenino,
                                     race: "Androide",
                                     image: "https://www.dragonballapi.com/static/images/sagagt/Android18.png",
                                     planet: .tierra,
                                     description: "Androide 18 es una androide poderosa creada por el Dr. Gero. Originalmente diseñada para destruir a Goku, más tarde se convierte en una aliada y esposa de Krilin.",
                                     biography: "Androide 18, junto con su hermano Androide 17, fue creada por el Dr. Gero para eliminar a Goku. Sin embargo, después de liberarse del control de Gero, comienza a desarrollar una vida más humana. Se casa con Krilin y tienen una hija llamada Marron. En Dragon Ball GT, aunque no juega un papel principal, ayuda en la lucha contra Super 17, mostrando su lealtad y fuerza al enfrentarse a su propio hermano.",
                                     transformations: [Transformation3(id: 0,
                                                                       title: "",
                                                                       image: "",
                                                                       description: "")])
}

extension PersonajeDBSuper {
    static let test4 = PersonajeDBSuper(id: 134,
                                        name: "Rey de Todo",
                                        genre: .masculino,
                                        race: "Unico",
                                        image: "https://www.dragonballapi.com/static/images/sagaSuper/ReyDelTodo.png",
                                        planet: "Palacete del Rey de Todo",
                                        description: "Es un tierno humanoide de muy baja estatura, teniendo una cabeza con forma ovalada, tiene secciones de rayas color celeste y purpura en su cara, no posee nariz alguna. Viste una túnica rosa con bordes de color amarillo, en su torso posee una vestimenta con los dos kanji de (全) que significa 'todo' (uno de ellos invertido para solo darle significado al kanji (王) que significa 'rey') y tacones rosas con medias doradas, por último sus dos orejas son como la mitad de una esfera con una parte plana de color gris.",
                                        biography: "El Rey de Todo (全ぜん王おう Zen’ō¿?), también conocido como Zen Oo (Zeno Sama en España y Zen Oo Sama en Hispanoamerica) y apodado por Son Goku como Todito (全ぜんちゃん Zen-chan¿?), es el gobernante y dios absoluto de todos los universos y el máximo soberano de todo lo existente en Dragon Ball. Es un personaje que aparece por primera vez en el Arco del Universo 6 contra el Universo 7 del anime y manga de Dragon Ball Super. Presenta una personalidad de buenos modales y amable, habla de manera muy respetuosa y no le ofende la presencia despreocupada de Son Goku, tanto así que él mismo pidió a Son Goku que fuera su amigo y fuese a su palacio a jugar con él, a lo que él accedió; ha demostrado ser bastante paciente cuando se trata de pedirle a Son Goku que vaya a jugar con él, ya que comprendió perfectamente cuando Son Goku le dijo que en aquel momento no podía porque tenía otras cosas que hacer. No obstante puede ser impredecible, caprichoso y de un temperamento frágil ya que este destruyó 6 de los 18 universos que habían anteriormente en un ataque de ira. Esta actitud sumada a un carácter algo infantil e irresponsable hace que el Rey de Todo dé un mal uso de sus poderes. Por esta razón es temido entre los dioses de todos los universos, temor nacido de sus berrinches. Debido a su enorme poder como rey de los doce universos, a los testimonios de anteriores ocasiones en las que se ha enfurecido y destruido algo, y a la facilidad con la que, en su opinión, Son Goku podría hacerlo enojar al ofenderlo sin querer, la vez que el Rey de Todo quería hablar con Son Goku, Beerus, Whis, y los Kaio-shin fueron enfáticos al decirle a Son Goku que fuese muy amable y cuidara muy bien sus palabras a la hora de hablar con él. Su flexibilidad, combinada con sus tendencias infantiles, también lo incita a permitir lo que de otra forma serían violaciones a las reglas en el torneo que él mismo confeccionó, como permitir el uso del Mafuba y los Pothala. Sin embargo, él tiene límites a lo que él puede tolerar. Inmediatamente borró a Frost cuando intentó atacar desde fuera del Lugar de Supervivencia a Freezer, y luego amenazó con borrar el Universo 6 para asegurarse de que no vuelva a suceder. Parece que no tiene ningún problema con el contacto físico, incluso con extraños, como se ve cuando no le molesta el animado apretón de manos de Goku. El Gran Sacerdote revela que el Rey de Todo planearía borrar de la existencia todo si el ganador del Torneo de la Fuerza pedía un deseo egoísta, es especulado por Whis que Goku y sus amigos tuvieron un impacto importante en las decisiones del rey, quien ahora tiene expectativas en que los mortales pueden cambiar y mejorar. Es el Rey del Todo y por lo tanto su poder es inmenso. Beerus le menciona a Son Goku que, aunque no lucha, su poder se encuentra en una escala inimaginable para él y que puede hacer desaparecer cualquier cosa que desee, inclusive un Universo en un instante. Se menciona que nadie en ningún universo le puede vencer o superar en poder, diciendo que este destruyó seis de los dieciocho universos que había anteriormente en un ataque de ira, dejando solo doce Universos en la actualidad (información revelada por Whis y Beerus). También Shin menciona que no importa qué tan fuerte alguien pueda ser, nadie puede superar al Rey de Todo y mucho menos asesinarlo.",
                                        transformations: [Transformation4(id: 0,
                                                                           title: "",
                                                                           image: "",
                                                                           description: "")])
}
extension PersonajeDragones {
    static let test5 = PersonajeDragones(id: 84,
                                         name: "Dragón del Humo Negro",
                                         genre: "",
                                         race: .diosDragon,
                                         image: "https://www.dragonballapi.com/static/images/dragons/HumoNegro.png",
                                         planet: .empty,
                                         description: "El Dragón del Humo Negro (黒こく煙えんの龍りゅう Kokuen no Ryū¿?) es un malvado dragón de la franquicia Dragon Ball. Hace su debut (y en última instancia, su única aparición) en el episodio 47 de Dragon Ball GT, que se estrenó el 4 de junio de 1997. Es un extraño dragón que aparece cuando Son Goku reúne las Esferas del Dragón de la Tierra tras derrotar a Super Número 17. Estas habían sido corrompidas por su uso desmesurado, por lo que, en lugar de Shen Long, resultó al ser invocado, un dragón negro-azulado de apariencia malvada, prepotente y déspota que anunciaba a Goku y compañía la llegada de unos Dragones Malignos, cada uno resultado de un deseo que alguna vez se les concedió. Todo esto lo acabó confirmando Kaio del Norte y el Kaio-shin Anciano. Esta fue su única aparición, para después subdividirse en los respectivos dragones.",
                                         biography: "Es un dragón eterno de maldad pura, y es responsable de la creación de los siete dragones de las tinieblas. Los dragones de las tinieblas nacen del uso excesivo de las esferas del dragón y la acumulación de energía negativa en toda la serie de deseos altruistas los cuales dan como manifiesto al Dragón del Humo Negro. Cuando Goku y sus amigos intentan utilizar las esferas del dragón para restaurar la vida de las personas muertas durante el ataque del Super-17, es este dragón quien emerge de las esferas. En poco tiempo, la misteriosa deidad se divide en siete dragones malvados. El Kaio-shin Anciano observa que cada vez que las esferas del dragón se han utilizado en el pasado, la energía negativa dentro de cada esfera aumentaría. Cuando esta energía está completamente llena las esferas de Dragón, se agrietan, lo que le permite al Dragón del Humo Negro escapar y liberar sus siete personajes. la personalidad de este dragón también refleja la energía negativa que fue usada para crearlo, mientras que Shen Long fue bien educado y hablaba correctamente, el Dragón del Humo Negro es malhablado y de mala educación con quienes lo invocaron, como se muestra cuando Pan trató de decirle cómo debe actuar el Dragón Divino. También fuma puros y le sopla humo a los que lo invocaron para demostrar que no tiene ningún interés en la concesión de deseos. Mr. Popo toma nota de que esto no es la primera vez que el dragón ha aparecido, e indica que la malicia del dragón destruyó un sistema solar entero. Este dragón no es un Shen Long como tal y no concedió deseo alguno. No debe ser confundido con Shen Long Definitivo, el cual provino de las Esferas del Dragón Definitivas.",
                                         transformations: [Transformation5(id: 0,
                                                                           title: "",
                                                                           image: "",
                                                                           description: "")])
}

extension PersonajesVM {
    static let test = PersonajesVM(network: DataTest())
    static let test2 = PersonajesVM(network: DataTest())
    static let test3 = PersonajesVM(network: DataTest())
    static let test4 = PersonajesVM(network: DataTest())
    static let test5 = PersonajesVM(network: DataTest())
}

struct DataTest: DataInteractor {
    
    let url = Bundle.main.url(forResource: "test", withExtension: "json")!
    let urlDBZ = Bundle.main.url(forResource: "test2", withExtension: "json")!
    let urlDBGT = Bundle.main.url(forResource: "test3", withExtension: "json")!
    let urlDBSuper = Bundle.main.url(forResource: "test4", withExtension: "json")!
    let urlDBDragones = Bundle.main.url(forResource: "test5", withExtension: "json")!
    
    func getPersonajesDB() async throws -> [PersonajeDB] {
        try loadTestData(url: url)
    }
    
    func getPersonajesDBZ() async throws -> [PersonajeDBZ] {
        try loadTestData(url: urlDBZ)
    }
    
    func getPersonajesDBGT() async throws -> [PersonajeDBGT] {
        try loadTestData(url: urlDBGT)
    }
    
    func getPersonajesDBSuper() async throws -> [PersonajeDBSuper] {
        try loadTestData(url: urlDBSuper)
    }
    
    func getPersonajesDragones() async throws -> [PersonajeDragones] {
        try loadTestData(url: urlDBDragones)
    }
    
    func loadTestData<JSON>(url: URL) throws -> JSON where JSON: Codable {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(JSON.self, from: data)
    }
    
    
  
    
}


