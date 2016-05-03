//
//  MasterViewController.m
//  SordoMudos
//
//  Created by Fernando Alonso on 07/03/15.
//  Copyright (c) 2015 UMN. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "FraseViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}
- (CGFloat)tableView:(UITableView *)tableView
estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}
- (void)viewDidLoad {
    [super viewDidLoad];
  //  UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItem target:self action:@selector(playVideo)];
   // self.navigationItem.rightBarButtonItem = addButton;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"frases"]) {
        if(numeroDeCelda==6)
        {
                NSMutableArray *nombres=[[NSMutableArray alloc] init];
                NSMutableArray *videos=[[NSMutableArray alloc] init];

            FraseViewController *frases = [segue destinationViewController];
            
            
            //0
            [videos addObject:@"Aaron"];
            [videos addObject:@"Abel"];
            [videos addObject:@"Abraham"];
            [videos addObject:@"Adan"];
            [videos addObject:@"Angel"];
            [videos addObject:@"apostol"];
            [videos addObject:@"Booz"];
            [videos addObject:@"Cain"];
            [videos addObject:@"Cristo"];
            [videos addObject:@"daniel"];
            [videos addObject:@"david"];
            [videos addObject:@"Diablo"];
            [videos addObject:@"Dios"];
            [videos addObject:@"Discipulo"];
            [videos addObject:@"elias"];
            [videos addObject:@"eliseo"];
            [videos addObject:@"Emmanuel"];
            [videos addObject:@"Enoc"];
            [videos addObject:@"Esau"];
            [videos addObject:@"esther"];
            [videos addObject:@"Eva"];
            [videos addObject:@"faraon"];
            [videos addObject:@"Fariseo"];
            [videos addObject:@"Filemon"];
            [videos addObject:@"goliat"];
            [videos addObject:@"Isaac"];
            [videos addObject:@"Isaias"];
            [videos addObject:@"jacob"];
            [videos addObject:@"Jehova"];
            [videos addObject:@"jeremias"];
            [videos addObject:@"Jesus"];
            [videos addObject:@"Job"];
            [videos addObject:@"Jonas"];
            [videos addObject:@"Jose (Egipto)"];
            [videos addObject:@"Jose (Jesus)"];
            
            
            
            
            [nombres addObject:@"Aarón"];
            [nombres addObject:@"Abel"];
            [nombres addObject:@"Abrahám"];
            [nombres addObject:@"Adán"];
            [nombres addObject:@"Ángel"];
            [nombres addObject:@"Apostol"];
            [nombres addObject:@"Booz"];
            [nombres addObject:@"Caín"];
            [nombres addObject:@"Cristo"];
            [nombres addObject:@"Daniel"];
            [nombres addObject:@"David"];
            [nombres addObject:@"Diablo"];
            [nombres addObject:@"Dios"];
            [nombres addObject:@"Discípulo"];
            [nombres addObject:@"Elías"];
            [nombres addObject:@"Eliseo"];
            [nombres addObject:@"Emmanuel"];
            [nombres addObject:@"Enoc"];
            [nombres addObject:@"Esaú"];
            [nombres addObject:@"Esther"];
            [nombres addObject:@"Eva"];
            [nombres addObject:@"Faraón"];
            [nombres addObject:@"Fariseo"];
            [nombres addObject:@"Filemón"];
            [nombres addObject:@"Goliat"];
            [nombres addObject:@"Isaac"];
            [nombres addObject:@"Isaías"];
            [nombres addObject:@"Jacob"];
            [nombres addObject:@"Jehová"];
            [nombres addObject:@"Jeremías"];
            [nombres addObject:@"Jesús"];
            [nombres addObject:@"Job"];
            [nombres addObject:@"Jonás"];
            [nombres addObject:@"José (hijo de Jacob)"];
            [nombres addObject:@"José (esposo de María)"];
            
            
            [videos addObject:@"Juan el bautista"];
            [videos addObject:@"judas"];
            [videos addObject:@"lucas discipulo"];
            [videos addObject:@"maria (Jesus)"];
            [videos addObject:@"Mesias"];
            [videos addObject:@"Moises"];
            [videos addObject:@"nabucodonosor"];
            [videos addObject:@"Noe"];
            [videos addObject:@"Noemi (Ruth)"];
            [videos addObject:@"Onesimo"];
            [videos addObject:@"Orfa"];
            [videos addObject:@"pablo"];
            [videos addObject:@"pedro"];
            [videos addObject:@"Profeta"];
            [videos addObject:@"ruth"];
            [videos addObject:@"salomon"];
            [videos addObject:@"samuel"];
            [videos addObject:@"Sanson"];
            [videos addObject:@"Señor"];
            [videos addObject:@"Timoteo"];
            
            [nombres addObject:@"Juan el bautista"];
            [nombres addObject:@"Judas"];
            [nombres addObject:@"Lucas"];
            [nombres addObject:@"María"];
            [nombres addObject:@"Mesías"];
            [nombres addObject:@"Moisés"];
            [nombres addObject:@"Nabucodonosor"];
            [nombres addObject:@"Noé"];
            [nombres addObject:@"Noemí"];
            [nombres addObject:@"Onésimo"];
            [nombres addObject:@"Orfa"];
            [nombres addObject:@"Pablo"];
            [nombres addObject:@"Pedro"];
            [nombres addObject:@"Profeta"];
            [nombres addObject:@"Ruth"];
            [nombres addObject:@"Salomón"];
            [nombres addObject:@"Samuel"];
            [nombres addObject:@"Sansón"];
            [nombres addObject:@"Señor"];
            [nombres addObject:@"Timoteo"];
            
            
            //1
            [videos addObject:@"apocalipsis"];
            [nombres addObject:@"Apocalipsis"];
            [videos addObject:@"Biblia"];
            [nombres addObject:@"Biblia"];
            [videos addObject:@"capitulo"];
            [nombres addObject:@"Capítulo"];
            [videos addObject:@"Evangelios"];
            [nombres addObject:@"Evangelios"];
            [videos addObject:@"juan evangelio"];
            [nombres addObject:@"Juan"];
            [videos addObject:@"lucas evangelio"];
            [nombres addObject:@"Lucas"];
            [videos addObject:@"marcos evangelio"];
            [nombres addObject:@"Marcos"];
            [videos addObject:@"salmos"];
            [nombres addObject:@"Salmos"];
            [videos addObject:@"testamento"];
            [nombres addObject:@"Testamento"];
            [videos addObject:@"versiculo"];
            [nombres addObject:@"Versículo"];
            //2
            [videos addObject:@"Belen ciudad"];
            [nombres addObject:@"Belén"];
            [videos addObject:@"Cielo"];
            [nombres addObject:@"Cielo"];
            [videos addObject:@"eden"];
            [nombres addObject:@"Edén"];
            [videos addObject:@"gomorra"];
            [nombres addObject:@"Gomorra"];
            [videos addObject:@"iglesia"];
            [nombres addObject:@"Iglesia"];
            [videos addObject:@"jerico"];
            [nombres addObject:@"Jericó"];
            [videos addObject:@"jerusalen"];
            [nombres addObject:@"Jerusalén"];
            [videos addObject:@"Juda (tribu)"];
            [nombres addObject:@"Judá"];
            [videos addObject:@"Moab"];
            [nombres addObject:@"Moab"];
            [videos addObject:@"nazareth"];
            [nombres addObject:@"Nazareth"];
            [videos addObject:@"Ninive"];
            [nombres addObject:@"Nínive"];
            [videos addObject:@"Roma"];
            [nombres addObject:@"Roma"];
            [videos addObject:@"templo"];
            [nombres addObject:@"Templo"];
            
            //3
            [videos addObject:@"oh"];
            [nombres addObject:@"¡Oh!"];
            [videos addObject:@"adorar"];
            [nombres addObject:@"Adorar"];
            [videos addObject:@"Adulterio"];
            [nombres addObject:@"Adulterio / Fornicación"];
            [videos addObject:@"alabar"];
            [nombres addObject:@"Alabar"];
            [videos addObject:@"Aleluya"];
            [nombres addObject:@"Aleluya"];
            [videos addObject:@"altar"];
            [nombres addObject:@"Altar"];
            [videos addObject:@"amen"];
            [nombres addObject:@"Amén"];
            [videos addObject:@"Antiguo"];
            [nombres addObject:@"Antiguo"];
            [videos addObject:@"Ayuno"];
            [nombres addObject:@"Ayuno"];
            [videos addObject:@"bautizar"];
            [nombres addObject:@"Bautizar por inmersión"];
            [videos addObject:@"Bendecir"];
            [nombres addObject:@"Bendecir"];
            [videos addObject:@"catolico"];
            [nombres addObject:@"Católico"];
            [videos addObject:@"Cristiano"];
            [nombres addObject:@"Cristiano"];
            [videos addObject:@"culto divino"];
            [nombres addObject:@"Culto divino"];
            [videos addObject:@"escuela"];
            [nombres addObject:@"Escuela"];
            [videos addObject:@"Espiritu"];
            [nombres addObject:@"Espíritu"];
            [videos addObject:@"eternidad"];
            [nombres addObject:@"Eterno (adjetivo)"];
            [videos addObject:@"Evangelio"];
            [nombres addObject:@"Evangelio"];
            [videos addObject:@"feliz"];
            [nombres addObject:@"Feliz"];
            [videos addObject:@"gloria"];
            [nombres addObject:@"Gloria"];
            [videos addObject:@"Gracia"];
            [nombres addObject:@"Gracia Divina"];
            [videos addObject:@"hermano"];
            [nombres addObject:@"Hermano"];
            [videos addObject:@"Hijo"];
            [nombres addObject:@"Hijo"];
            [videos addObject:@"himno"];
            [nombres addObject:@"Himno"];
            [videos addObject:@"idolo"];
            [nombres addObject:@"Ídolo"];
            [videos addObject:@"infiel"];
            [nombres addObject:@"Infiel"];
            [videos addObject:@"Lecciòn (Esc. sabatica)"];
            [nombres addObject:@"Lección de Escuela Sábatica"];
            [videos addObject:@"Lepra"];
            [nombres addObject:@"Lepra"];
            [videos addObject:@"loor"];
            [nombres addObject:@"Loor"];
            [videos addObject:@"mandamientos"];
            [nombres addObject:@"Mandamientos"];
            [videos addObject:@"matinal (devocional)"];
            [nombres addObject:@"Matinal"];
            [videos addObject:@"miembro (persona)"];
            [nombres addObject:@"Miembro (Persona)"];
            [videos addObject:@"misericordia"];
            [nombres addObject:@"Misericordia"];
            [videos addObject:@"nuevo"];
            [nombres addObject:@"Nuevo"];
            [videos addObject:@"ofrenda"];
            [nombres addObject:@"Ofrenda"];
            [videos addObject:@"oracion"];
            [nombres addObject:@"Oración"];
            [videos addObject:@"Padre"];
            [nombres addObject:@"Padre"];
            [videos addObject:@"Papa catolico"];
            [nombres addObject:@"Papa católico"];
            [videos addObject:@"Pastor (rebaño)"];
            [nombres addObject:@"Pastor de rebaño"];
            [videos addObject:@"Pecado"];
            [nombres addObject:@"Pecado"];
            [videos addObject:@"Profecia"];
            [nombres addObject:@"Profecía"];
            [videos addObject:@"reverencia"];
            [nombres addObject:@"Reverencia"];
            [videos addObject:@"sabado"];
            [nombres addObject:@"Sábado"];
            [videos addObject:@"Santo"];
            [nombres addObject:@"Santo"];
            [videos addObject:@"semana"];
            [nombres addObject:@"Semana"];
            [videos addObject:@"sermon"];
            [nombres addObject:@"Sermón"];
            [videos addObject:@"silencio"];
            [nombres addObject:@"Silencio"];
            //4
            
            
            [frases setTitle:@"Construye tu frase"];
            [videos addObject:@"adventista"];
            [nombres addObject:@"Adventista"];
            [videos addObject:@"Anciano (cargo)"];
            [nombres addObject:@"Anciano (cargo eclesiástico)"];
            [videos addObject:@"Asociacion (campo)"];
            [nombres addObject:@"Asociación"];
            [videos addObject:@"Club Aventureros"];
            [nombres addObject:@"Aventureros"];
            [videos addObject:@"Club Conquistadores"];
            [nombres addObject:@"Conquistadores"];
            [videos addObject:@"club Guias Mayores"];
            [nombres addObject:@"Guías Mayores"];
            [videos addObject:@"colportor"];
            [nombres addObject:@"Colportor"];
            [videos addObject:@"Diaconisa"];
            [nombres addObject:@"Diaconisa"];
            [videos addObject:@"Diacono"];
            [nombres addObject:@"Diácono"];
            [videos addObject:@"distrito"];
            [nombres addObject:@"Distrito"];
            [videos addObject:@"Division (departamental)"];
            [nombres addObject:@"División (campo)"];
            [videos addObject:@"EGW"];
            [nombres addObject:@"Elena G. de White"];
            [videos addObject:@"Mision (campo)"];
            [nombres addObject:@"Misión"];
            [videos addObject:@"Misionero"];
            [nombres addObject:@"Misionero"];
            [videos addObject:@"Pastor (Iglesia)"];
            [nombres addObject:@"Pastor"];
            [videos addObject:@"Union (departamental)"];
            [nombres addObject:@"Unión (campo)"];
            [frases setCeldas:nombres];
            [frases setVideos:videos];
            
            
        }
    }
    if ([[segue identifier] isEqualToString:@"laotra"]) {
        NSMutableArray *nombres=[[NSMutableArray alloc] init];
        NSMutableArray *videos=[[NSMutableArray alloc] init];
       
       

        if(numeroDeCelda==4)
        {
            [[segue destinationViewController] setTitle:@"Organización Adventista"];
            [videos addObject:@"adventista"];
            [nombres addObject:@"Adventista"];
            [videos addObject:@"Anciano (cargo)"];
            [nombres addObject:@"Anciano (cargo eclesiástico)"];
            [videos addObject:@"Asociacion (campo)"];
            [nombres addObject:@"Asociación"];
            [videos addObject:@"Club Aventureros"];
            [nombres addObject:@"Aventureros"];
            [videos addObject:@"Club Conquistadores"];
            [nombres addObject:@"Conquistadores"];
            [videos addObject:@"club Guias Mayores"];
            [nombres addObject:@"Guías Mayores"];
            [videos addObject:@"colportor"];
            [nombres addObject:@"Colportor"];
            [videos addObject:@"Diaconisa"];
            [nombres addObject:@"Diaconisa"];
            [videos addObject:@"Diacono"];
            [nombres addObject:@"Diácono"];
            [videos addObject:@"distrito"];
            [nombres addObject:@"Distrito"];
            [videos addObject:@"Division (departamental)"];
            [nombres addObject:@"División (campo)"];
            [videos addObject:@"EGW"];
            [nombres addObject:@"Elena G. de White"];
            [videos addObject:@"Mision (campo)"];
            [nombres addObject:@"Misión"];
            [videos addObject:@"Misionero"];
            [nombres addObject:@"Misionero"];
            [videos addObject:@"Pastor (Iglesia)"];
            [nombres addObject:@"Pastor"];
            [videos addObject:@"Union (departamental)"];
            [nombres addObject:@"Unión (campo)"];

        }
        if(numeroDeCelda==3)
        {
            [[segue destinationViewController] setTitle:@"Otras señas"];
            [videos addObject:@"oh"];
            [nombres addObject:@"¡Oh!"];
            [videos addObject:@"adorar"];
            [nombres addObject:@"Adorar"];
            [videos addObject:@"Adulterio"];
            [nombres addObject:@"Adulterio / Fornicación"];
            [videos addObject:@"alabar"];
            [nombres addObject:@"Alabar"];
            [videos addObject:@"Aleluya"];
            [nombres addObject:@"Aleluya"];
            [videos addObject:@"altar"];
            [nombres addObject:@"Altar"];
            [videos addObject:@"amen"];
            [nombres addObject:@"Amén"];
            [videos addObject:@"Antiguo"];
            [nombres addObject:@"Antiguo"];
            [videos addObject:@"Ayuno"];
            [nombres addObject:@"Ayuno"];
            [videos addObject:@"bautizar"];
            [nombres addObject:@"Bautizar por inmersión"];
            [videos addObject:@"Bendecir"];
            [nombres addObject:@"Bendecir"];
            [videos addObject:@"catolico"];
            [nombres addObject:@"Católico"];
            [videos addObject:@"Cristiano"];
            [nombres addObject:@"Cristiano"];
            [videos addObject:@"culto divino"];
            [nombres addObject:@"Culto divino"];
            [videos addObject:@"escuela"];
            [nombres addObject:@"Escuela"];
            [videos addObject:@"Espiritu"];
            [nombres addObject:@"Espíritu"];
            [videos addObject:@"eternidad"];
            [nombres addObject:@"Eterno (adjetivo)"];
            [videos addObject:@"Evangelio"];
            [nombres addObject:@"Evangelio"];
            [videos addObject:@"feliz"];
            [nombres addObject:@"Feliz"];
            [videos addObject:@"gloria"];
            [nombres addObject:@"Gloria"];
            [videos addObject:@"Gracia"];
            [nombres addObject:@"Gracia Divina"];
            [videos addObject:@"hermano"];
            [nombres addObject:@"Hermano"];
            [videos addObject:@"Hijo"];
            [nombres addObject:@"Hijo"];
            [videos addObject:@"himno"];
            [nombres addObject:@"Himno"];
            [videos addObject:@"idolo"];
            [nombres addObject:@"Ídolo"];
            [videos addObject:@"infiel"];
            [nombres addObject:@"Infiel"];
            [videos addObject:@"Lecciòn (Esc. sabatica)"];
            [nombres addObject:@"Lección de Escuela Sábatica"];
            [videos addObject:@"Lepra"];
            [nombres addObject:@"Lepra"];
            [videos addObject:@"loor"];
            [nombres addObject:@"Loor"];
            [videos addObject:@"mandamientos"];
            [nombres addObject:@"Mandamientos"];
            [videos addObject:@"matinal (devocional)"];
            [nombres addObject:@"Matinal"];
            [videos addObject:@"miembro (persona)"];
            [nombres addObject:@"Miembro (Persona)"];
            [videos addObject:@"misericordia"];
            [nombres addObject:@"Misericordia"];
            [videos addObject:@"nuevo"];
            [nombres addObject:@"Nuevo"];
            [videos addObject:@"ofrenda"];
            [nombres addObject:@"Ofrenda"];
            [videos addObject:@"oracion"];
            [nombres addObject:@"Oración"];
            [videos addObject:@"Padre"];
            [nombres addObject:@"Padre"];
            [videos addObject:@"Papa catolico"];
            [nombres addObject:@"Papa católico"];
            [videos addObject:@"Pastor (rebaño)"];
            [nombres addObject:@"Pastor de rebaño"];
            [videos addObject:@"Pecado"];
            [nombres addObject:@"Pecado"];
            [videos addObject:@"Profecia"];
            [nombres addObject:@"Profecía"];
            [videos addObject:@"reverencia"];
            [nombres addObject:@"Reverencia"];
            [videos addObject:@"sabado"];
            [nombres addObject:@"Sábado"];
            [videos addObject:@"Santo"];
            [nombres addObject:@"Santo"];
            [videos addObject:@"semana"];
            [nombres addObject:@"Semana"];
            [videos addObject:@"sermon"];
            [nombres addObject:@"Sermón"];
            [videos addObject:@"silencio"];
            [nombres addObject:@"Silencio"];
        }
        if(numeroDeCelda==2)
        {
            [[segue destinationViewController] setTitle:@"Lugares"];
            [videos addObject:@"Belen ciudad"];
            [nombres addObject:@"Belén"];
            [videos addObject:@"Cielo"];
            [nombres addObject:@"Cielo"];
            [videos addObject:@"eden"];
            [nombres addObject:@"Edén"];
            [videos addObject:@"gomorra"];
            [nombres addObject:@"Gomorra"];
            [videos addObject:@"iglesia"];
            [nombres addObject:@"Iglesia"];
            [videos addObject:@"jerico"];
            [nombres addObject:@"Jericó"];
            [videos addObject:@"jerusalen"];
            [nombres addObject:@"Jerusalén"];
            [videos addObject:@"Juda (tribu)"];
            [nombres addObject:@"Judá"];
            [videos addObject:@"Moab"];
            [nombres addObject:@"Moab"];
            [videos addObject:@"nazareth"];
            [nombres addObject:@"Nazareth"];
            [videos addObject:@"Ninive"];
            [nombres addObject:@"Nínive"];
            [videos addObject:@"Roma"];
            [nombres addObject:@"Roma"];
            [videos addObject:@"templo"];
            [nombres addObject:@"Templo"];
        }

        if(numeroDeCelda==1)
        {
            [[segue destinationViewController] setTitle:@"libros y cartas bíblicas"];
            [videos addObject:@"apocalipsis"];
            [nombres addObject:@"Apocalipsis"];
            [videos addObject:@"Biblia"];
            [nombres addObject:@"Biblia"];
            [videos addObject:@"capitulo"];
            [nombres addObject:@"Capítulo"];
            [videos addObject:@"Evangelios"];
            [nombres addObject:@"Evangelios"];
            [videos addObject:@"juan evangelio"];
            [nombres addObject:@"Juan"];
            [videos addObject:@"lucas evangelio"];
            [nombres addObject:@"Lucas"];
            [videos addObject:@"marcos evangelio"];
            [nombres addObject:@"Marcos"];
            [videos addObject:@"salmos"];
            [nombres addObject:@"Salmos"];
            [videos addObject:@"testamento"];
            [nombres addObject:@"Testamento"];
            [videos addObject:@"versiculo"];
            [nombres addObject:@"Versículo"];
        }
        if(numeroDeCelda==0)
        {
            [[segue destinationViewController] setTitle:@"Personajes"];
            [videos addObject:@"Aaron"];
            [videos addObject:@"Abel"];
            [videos addObject:@"Abraham"];
            [videos addObject:@"Adan"];
            [videos addObject:@"Angel"];
            [videos addObject:@"apostol"];
            [videos addObject:@"Booz"];
            [videos addObject:@"Cain"];
            [videos addObject:@"Cristo"];
            [videos addObject:@"daniel"];
            [videos addObject:@"david"];
            [videos addObject:@"Diablo"];
            [videos addObject:@"Dios"];
            [videos addObject:@"Discipulo"];
            [videos addObject:@"elias"];
            [videos addObject:@"eliseo"];
            [videos addObject:@"Emmanuel"];
            [videos addObject:@"Enoc"];
            [videos addObject:@"Esau"];
            [videos addObject:@"esther"];
            [videos addObject:@"Eva"];
            [videos addObject:@"faraon"];
            [videos addObject:@"Fariseo"];
            [videos addObject:@"Filemon"];
            [videos addObject:@"goliat"];
            [videos addObject:@"Isaac"];
            [videos addObject:@"Isaias"];
            [videos addObject:@"jacob"];
            [videos addObject:@"Jehova"];
            [videos addObject:@"jeremias"];
            [videos addObject:@"Jesus"];
            [videos addObject:@"Job"];
            [videos addObject:@"Jonas"];
            [videos addObject:@"Jose (Egipto)"];
            [videos addObject:@"Jose (Jesus)"];
            
            
            
            
            [nombres addObject:@"Aarón"];
            [nombres addObject:@"Abel"];
            [nombres addObject:@"Abrahám"];
            [nombres addObject:@"Adán"];
            [nombres addObject:@"Ángel"];
            [nombres addObject:@"Apostol"];
            [nombres addObject:@"Booz"];
            [nombres addObject:@"Caín"];
            [nombres addObject:@"Cristo"];
            [nombres addObject:@"Daniel"];
            [nombres addObject:@"David"];
            [nombres addObject:@"Diablo"];
            [nombres addObject:@"Dios"];
            [nombres addObject:@"Discípulo"];
            [nombres addObject:@"Elías"];
            [nombres addObject:@"Eliseo"];
            [nombres addObject:@"Emmanuel"];
            [nombres addObject:@"Enoc"];
            [nombres addObject:@"Esaú"];
            [nombres addObject:@"Esther"];
            [nombres addObject:@"Eva"];
            [nombres addObject:@"Faraón"];
            [nombres addObject:@"Fariseo"];
            [nombres addObject:@"Filemón"];
            [nombres addObject:@"Goliat"];
            [nombres addObject:@"Isaac"];
            [nombres addObject:@"Isaías"];
            [nombres addObject:@"Jacob"];
            [nombres addObject:@"Jehová"];
            [nombres addObject:@"Jeremías"];
            [nombres addObject:@"Jesús"];
            [nombres addObject:@"Job"];
            [nombres addObject:@"Jonás"];
            [nombres addObject:@"José (hijo de Jacob)"];
            [nombres addObject:@"José (esposo de María)"];
            
            
            [videos addObject:@"Juan el bautista"];
            [videos addObject:@"judas"];
            [videos addObject:@"lucas discipulo"];
            [videos addObject:@"maria (Jesus)"];
            [videos addObject:@"Mesias"];
            [videos addObject:@"Moises"];
            [videos addObject:@"nabucodonosor"];
            [videos addObject:@"Noe"];
            [videos addObject:@"Noemi (Ruth)"];
            [videos addObject:@"Onesimo"];
            [videos addObject:@"Orfa"];
            [videos addObject:@"pablo"];
            [videos addObject:@"pedro"];
            [videos addObject:@"Profeta"];
            [videos addObject:@"ruth"];
            [videos addObject:@"salomon"];
            [videos addObject:@"samuel"];
            [videos addObject:@"Sanson"];
            [videos addObject:@"Señor"];
            [videos addObject:@"Timoteo"];
            
            [nombres addObject:@"Juan el bautista"];
            [nombres addObject:@"Judas"];
            [nombres addObject:@"Lucas"];
            [nombres addObject:@"María"];
            [nombres addObject:@"Mesías"];
            [nombres addObject:@"Moisés"];
            [nombres addObject:@"Nabucodonosor"];
            [nombres addObject:@"Noé"];
            [nombres addObject:@"Noemí"];
            [nombres addObject:@"Onésimo"];
            [nombres addObject:@"Orfa"];
            [nombres addObject:@"Pablo"];
            [nombres addObject:@"Pedro"];
            [nombres addObject:@"Profeta"];
            [nombres addObject:@"Ruth"];
            [nombres addObject:@"Salomón"];
            [nombres addObject:@"Samuel"];
            [nombres addObject:@"Sansón"];
            [nombres addObject:@"Señor"];
            [nombres addObject:@"Timoteo"];
            
            
        }
        [[segue destinationViewController] setCeldas:nombres];
        [[segue destinationViewController] setVideos:videos];
        
    }
}

#pragma mark - Table View

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    numeroDeCelda=(int)indexPath.row;
    if(indexPath.row==6)//frases
    {
        [self performSegueWithIdentifier:@"frases" sender:self];
       
    }
    else
    {
        if(indexPath.row==5)//la esperanza
        {
            NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"esperanza" ofType:@"mp4"];
            MPMoviePlayerViewController *playerController = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL fileURLWithPath:moviePath]];
            [self presentMoviePlayerViewControllerAnimated:playerController];
            [playerController.moviePlayer play];
        }
        else
        {
            if(indexPath.row==7)//message
            {
             //   [self performSegueWithIdentifier:@"message" sender:self];
            }
            else
            {
                [self performSegueWithIdentifier:@"laotra" sender:self];
            }
            
        }

    }
    

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 8;
            break;
    }
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    
    switch (indexPath.row) {
        case 0:
                cell = [tableView dequeueReusableCellWithIdentifier:@"personajes"];
            break;
        case 1:
            cell = [tableView dequeueReusableCellWithIdentifier:@"libros"];
            break;
        case 2:
            cell = [tableView dequeueReusableCellWithIdentifier:@"lugares"];
            break;
        case 3:
            cell = [tableView dequeueReusableCellWithIdentifier:@"otras"];
            break;
        case 4:
            cell = [tableView dequeueReusableCellWithIdentifier:@"organizacion"];
            break;
        case 5:
            cell = [tableView dequeueReusableCellWithIdentifier:@"esperanza"];
            break;
        case 6:
            cell = [tableView dequeueReusableCellWithIdentifier:@"frases"];
            break;
        case 7:
            cell = [tableView dequeueReusableCellWithIdentifier:@"escribe"];
            break;

            
            
        default:
            break;
    }

        return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
   }

@end
