library(shinytest2)

test_that("{shinytest2} recording: Biodiversity-Dashboard", {
  app <- AppDriver$new(variant = platform_variant(), name = "Biodiversity-Dashboard", 
      height = 730, width = 1235)
  app$set_inputs(dark_mode = FALSE, allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(timeline_visible = character(0), allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "Wolf")
  app$set_inputs(bioLeafMap_center = c(15.985107421875, 53.1467703308508), allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("2007-08-12T11:39:08.924Z", "2020-05-08T11:25:40.692Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "Wild Cat")
  app$set_inputs(timeline_window = c("2016-03-12T07:39:40.645Z", "2016-09-11T05:20:19.354Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("116351443@OBS", "115724148@OBS", "123017084@OBS", 
      "123399832@OBS"), allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "White-spotted Pug")
  app$set_inputs(timeline_window = c("2014-02-16T07:39:40.645Z", "2014-08-18T05:20:19.354Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = "84896969@OBS", allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "Water scorpion")
  app$set_inputs(timeline_window = c("2017-05-07T06:06:46.451Z", "2019-09-03T06:53:13.548Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("156866402@OBS", "140772065@OBS", "176600856@OBS"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(53.425900839266, 24.510498046875, 52.4995037224275, 
      21.8325805664062), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.1717939376831, 52.9650840253573), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 9, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8396913053202, 24.1568756103516, 52.606800578826, 
      23.4873962402344), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.8217973709106, 52.7232551574707), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 11, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseover = c(0.190418104340645, 52.7130432128906, 
      23.8540477752686), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_click = c(0.57370358020644, 52.7130432128906, 
      23.8540477752686), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseout = c(0.673108345919021, 52.7130432128906, 
      23.8540477752686), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_click = c(52.7728625816634, 23.5145045513151, 0.212350134189162), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8201929144883, 23.8279724121094, 52.703850845899, 
      23.4932327270508), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.6607696546739, 52.7620607308411), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 12, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8782474407977, 23.9955139160156, 52.6455632159662, 
      23.3260345458984), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 11, allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("2016-10-06T23:55:09.676Z", "2020-04-02T13:04:50.322Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("2017-05-07T06:06:46.450Z", "2019-09-03T06:53:13.547Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "Water Rail")
  app$set_inputs(bioLeafMap_bounds = c(56.6803737895014, 26.69677734375, 49.2964716026581, 
      5.2734375), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(15.99289, 53.15163), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 6, allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("1993-06-17T13:47:57.966Z", "1995-07-04T23:12:02.033Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("69227070@OBS", "69230254@OBS", "69289371@OBS", 
      "76333340@OBS"), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(51.5566889146345, 17.3977088928223, 51.526795047194, 
      17.3140239715576), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(17.3558902740479, 51.5417319396498), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 14, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseover = c(0.813906171821956, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_click = c(0.660043849989188, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseout = c(0.243991169530186, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseover = c(0.0745388891557961, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_click = c(0.673818648381201, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseout = c(0.982739599885627, 51.5394706726074, 
      17.3614349365234), allow_no_input_binding_ = TRUE)
  app$set_inputs(filterData = "scientificName")
  app$set_inputs(filterSpecies = "Canis lupus")
  app$set_inputs(bioLeafMap_bounds = c(56.6803737895014, 26.69677734375, 49.2964716026581, 
      5.2734375), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(15.99289, 53.15163), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 6, allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("2007-08-21T11:38:57.618Z", "2020-04-29T15:16:43.780Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("126582235@OBS", "116351439@OBS", "116351440@OBS", 
      "116351531@OBS", "116348966@OBS", "102389901@OBS", "102400522@OBS", "101911079@OBS", 
      "126674915@OBS", "97880803@OBS", "84927467@OBS", "182093609@OBS", "69898950@OBS", 
      "69899898@OBS", "68723449@OBS", "63626410@OBS", "55914052@OBS", "55922089@OBS", 
      "55935115@OBS", "55964963@OBS", "55085647@OBS", "49257753@OBS", "49546375@OBS", 
      "47721816@OBS", "44202130@OBS", "45831655@OBS", "51962942@OBS", "95580943@OBS", 
      "44457668@OBS", "41047924@OBS", "41047951@OBS", "45783592@OBS", "45990941@OBS", 
      "138650754@OBS", "122344924@OBS", "122086332@OBS", "122027969@OBS", "133398405@OBS", 
      "134523873@OBS", "141009868@OBS", "141009849@OBS", "156530349@OBS", "156866326@OBS", 
      "156866319@OBS", "156530248@OBS", "156810630@OBS", "158068882@OBS", "157714884@OBS", 
      "158216578@OBS", "158085756@OBS", "158329025@OBS", "160767546@OBS", "162059571@OBS", 
      "161937539@OBS", "171450730@OBS", "171450860@OBS", "171809565@OBS", "171982108@OBS", 
      "171945310@OBS", "171912315@OBS", "177867619@OBS", "176600833@OBS", "176836921@OBS", 
      "177469409@OBS", "176836628@OBS", "177939394@OBS"), allow_no_input_binding_ = TRUE)
  app$set_inputs(filterSpecies = "Capreolus capreolus")
  app$set_inputs(timeline_window = c("2006-07-31T00:02:05.897Z", "2020-12-03T03:37:08.733Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("119217705@OBS", "119217764@OBS", "119217805@OBS", 
      "119217812@OBS", "119217825@OBS", "119217829@OBS", "119217838@OBS", "119075981@OBS", 
      "119473039@OBS", "118856723@OBS", "117914841@OBS", "116176895@OBS", "118197226@OBS", 
      "115843881@OBS", "115710299@OBS", "115710305@OBS", "115710310@OBS", "115710318@OBS", 
      "115505417@OBS", "115505538@OBS", "115505554@OBS", "115505603@OBS", "114339956@OBS", 
      "114339957@OBS", "113466405@OBS", "113466484@OBS", "113281413@OBS", "109551208@OBS", 
      "108803164@OBS", "105477639@OBS", "121872237@OBS", "105277314@OBS", "103949390@OBS", 
      "104059504@OBS", "103857541@OBS", "103949412@OBS", "104059527@OBS", "103857718@OBS", 
      "119110382@OBS", "105522602@OBS", "102659190@OBS", "102654544@OBS", "102666997@OBS", 
      "102666983@OBS", "102536262@OBS", "102666969@OBS", "102536477@OBS", "102401605@OBS", 
      "102536774@OBS", "102543567@OBS", "126675427@OBS", "126797757@OBS", "102397169@OBS", 
      "102403105@OBS", "102551974@OBS", "126699398@OBS", "102347742@OBS", "102282438@OBS", 
      "102341151@OBS", "126675286@OBS", "102340882@OBS", "126675252@OBS", "102347634@OBS", 
      "102347643@OBS", "101874787@OBS", "126674926@OBS", "101819343@OBS", "164474593@OBS", 
      "126674752@OBS", "101552469@OBS", "114144248@OBS", "100392841@OBS", "98394335@OBS", 
      "98283704@OBS", "98081855@OBS", "98082702@OBS", "97881563@OBS", "97888965@OBS", 
      "97887034@OBS", "97881373@OBS", "97888838@OBS", "97886992@OBS", "97881285@OBS", 
      "97881362@OBS", "97888833@OBS", "97886934@OBS", "97886990@OBS", "97888178@OBS", 
      "97881243@OBS", "97886929@OBS", "97888165@OBS", "97879454@OBS", "97355853@OBS", 
      "87167852@OBS", "86712157@OBS", "87406998@OBS", "86559294@OBS", "86689782@OBS", 
      "87402019@OBS", "86486387@OBS", "86486552@OBS", "86505604@OBS", "86414752@OBS", 
      "86303560@OBS", "86266156@OBS", "86266139@OBS", "86150204@OBS", "86107852@OBS", 
      "86050826@OBS", "85965206@OBS", "89361888@OBS", "85538804@OBS", "86993219@OBS", 
      "86991686@OBS", "88216585@OBS", "87633382@OBS", "87471609@OBS", "115219886@OBS", 
      "81973192@OBS", "81217342@OBS", "81217400@OBS", "81217459@OBS", "81217491@OBS", 
      "81124164@OBS", "81126436@OBS", "78269202@OBS", "78370588@OBS", "78373457@OBS", 
      "78373467@OBS", "78373472@OBS", "78102633@OBS", "78042919@OBS", "78043456@OBS", 
      "78019592@OBS", "77994139@OBS", "77970569@OBS", "104465823@OBS", "76329400@OBS", 
      "76329402@OBS", "76328342@OBS", "76102413@OBS", "76822188@OBS", "76310888@OBS", 
      "74716621@OBS", "124420499@OBS", "74716268@OBS", "124420524@OBS", "74706339@OBS", 
      "74674136@OBS", "74670224@OBS", "74671270@OBS", "74671396@OBS", "124420567@OBS", 
      "74663291@OBS", "74599572@OBS", "74599576@OBS", "74599559@OBS", "70932269@OBS", 
      "69899415@OBS", "69899919@OBS", "69300937@OBS", "68940480@OBS", "63590235@OBS", 
      "63559167@OBS", "55085697@OBS", "55085564@OBS", "54809718@OBS", "56873721@OBS", 
      "54333951@OBS", "49546389@OBS", "47638367@OBS", "47584527@OBS", "146840437@OBS", 
      "51250746@OBS", "41405095@OBS", "41179705@OBS", "41179623@OBS", "41003374@OBS", 
      "40994408@OBS", "40871618@OBS", "40573757@OBS", "40553428@OBS", "40499463@OBS", 
      "40461279@OBS", "40444896@OBS", "40444900@OBS", "40436942@OBS", "40428306@OBS", 
      "40388258@OBS", "145865934@OBS", "45696596@OBS", "145865829@OBS", "40408720@OBS", 
      "119217664@OBS", "119075836@OBS", "119820676@OBS", "119613254@OBS", "119613012@OBS", 
      "119613008@OBS", "119613004@OBS", "119781126@OBS", "119781033@OBS", "119780959@OBS", 
      "119780951@OBS", "121241476@OBS", "122100290@OBS", "138651472@OBS", "122704611@OBS", 
      "122368330@OBS", "122097290@OBS", "122028583@OBS", "138651470@OBS", "138651458@OBS", 
      "122368328@OBS", "122368316@OBS", "122097288@OBS", "122097276@OBS", "122028581@OBS", 
      "122028569@OBS", "138651238@OBS", "122367995@OBS", "122096948@OBS", "122028359@OBS", 
      "121823191@OBS", "121823185@OBS", "122073916@OBS", "122073887@OBS", "122924270@OBS", 
      "122361526@OBS", "122482970@OBS", "125832025@OBS", "125795013@OBS", "137030674@OBS", 
      "136818622@OBS", "137104019@OBS", "137767383@OBS", "137726610@OBS", "137726609@OBS", 
      "137726608@OBS", "137726607@OBS", "137726606@OBS", "137726605@OBS", "137738941@OBS", 
      "137738940@OBS", "137738932@OBS", "138209077@OBS", "138146158@OBS", "138085663@OBS", 
      "137908934@OBS", "138209049@OBS", "138146118@OBS", "138085705@OBS", "139437084@OBS", 
      "139610599@OBS", "140821807@OBS", "140821776@OBS", "140900151@OBS", "141000817@OBS", 
      "141009847@OBS", "140995422@OBS", "141668448@OBS", "141192773@OBS", "141733195@OBS", 
      "141551159@OBS", "141508757@OBS", "141456748@OBS", "141192820@OBS", "141733122@OBS", 
      "141605780@OBS", "141550899@OBS", "141508838@OBS", "141456643@OBS", "141466775@OBS", 
      "141733623@OBS", "141605840@OBS", "141550803@OBS", "141508956@OBS", "141456703@OBS", 
      "141455877@OBS", "141466837@OBS", "141263918@OBS", "141455869@OBS", "141732634@OBS", 
      "141605666@OBS", "141550755@OBS", "141509382@OBS", "141456554@OBS", "141455855@OBS", 
      "141455836@OBS", "141466665@OBS", "141351232@OBS", "142051525@OBS", "142051524@OBS", 
      "141718243@OBS", "141718238@OBS", "142245698@OBS", "142245697@OBS", "145551630@OBS", 
      "146916254@OBS", "154972692@OBS", "154736953@OBS", "162708682@OBS", "162708680@OBS", 
      "155592661@OBS", "156729450@OBS", "156670283@OBS", "156670275@OBS", "156680736@OBS", 
      "156826166@OBS", "156825817@OBS", "156825733@OBS", "156825718@OBS", "156825492@OBS", 
      "156825393@OBS", "157071622@OBS", "157716665@OBS", "161246953@OBS", "158841817@OBS", 
      "158839866@OBS", "161246280@OBS", "159107010@OBS", "161245463@OBS", "159323029@OBS", 
      "161245342@OBS", "159994190@OBS", "159488975@OBS", "159676104@OBS", "159676103@OBS", 
      "159676102@OBS", "160570280@OBS", "160570194@OBS", "160570192@OBS", "161050138@OBS", 
      "161316867@OBS", "161767181@OBS", "161767167@OBS", "161766990@OBS", "161766966@OBS", 
      "161766895@OBS", "161766883@OBS", "161766857@OBS", "161766846@OBS", "161766762@OBS", 
      "162059570@OBS", "161937540@OBS", "168561194@OBS", "170163101@OBS", "170163094@OBS", 
      "170400987@OBS", "171131017@OBS", "171700979@OBS", "171681178@OBS", "171681177@OBS", 
      "171681176@OBS", "171681174@OBS", "171681173@OBS", "171836706@OBS", "172812520@OBS", 
      "172219664@OBS", "172295866@OBS", "172700808@OBS", "172700807@OBS", "172700418@OBS", 
      "173790171@OBS", "174104808@OBS", "175803769@OBS", "176341234@OBS", "176998594@OBS", 
      "176855867@OBS", "177469949@OBS", "177469742@OBS", "176837059@OBS", "176836885@OBS", 
      "184354218@OBS", "185358101@OBS", "185330337@OBS", "185133146@OBS", "185358163@OBS", 
      "185358160@OBS", "185330343@OBS", "185330340@OBS", "185184556@OBS", "185184553@OBS", 
      "185327075@OBS", "185288587@OBS", "185357636@OBS"), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(53.9657810216127, 25.7958984375, 52.1166256737882, 
      20.4400634765625), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.119288444519, 53.0503608779895), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 8, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(53.0585487930451, 24.345703125, 52.5938720695592, 
      23.0067443847656), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.6761112213135, 52.8266836763384), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 10, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8359582483485, 23.9038467407227, 52.7778471474789, 
      23.7364768981934), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.8200902938843, 52.8069403532293), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 13, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8073793680229, 23.8479280471802, 52.7928493220813, 
      23.8060855865479), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.8270072937011, 52.8001159125389), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 15, allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseover = c(0.852262101561182, 52.8019830605053, 
      23.8282299041748), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_click = c(0.0146935417518235, 52.8019830605053, 
      23.8282299041748), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_marker_mouseout = c(0.651956259756587, 52.8019830605053, 
      23.8282299041748), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_bounds = c(52.8083911011271, 23.8479280471802, 52.7938613932676, 
      23.8060855865479), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(23.827006816864, 52.8011268540084), allow_no_input_binding_ = TRUE)
  app$set_inputs(filterData = "vernacularName")
  app$set_inputs(filterSpecies = "Wolf")
  app$set_inputs(bioLeafMap_bounds = c(56.6803737895014, 26.69677734375, 49.2964716026581, 
      5.2734375), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_center = c(15.99289, 53.15163), allow_no_input_binding_ = TRUE)
  app$set_inputs(bioLeafMap_zoom = 6, allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_window = c("2007-08-21T11:38:57.618Z", "2020-04-29T15:16:43.780Z"), 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_visible = c("97880803@OBS", "95580943@OBS", "55964963@OBS", 
      "55935115@OBS", "55922089@OBS", "55914052@OBS", "55085647@OBS", "51962942@OBS", 
      "49546375@OBS", "49257753@OBS", "141009868@OBS", "141009849@OBS", "138650754@OBS", 
      "171982108@OBS", "171945310@OBS", "171912315@OBS", "171809565@OBS", "171450860@OBS", 
      "171450730@OBS", "84927467@OBS", "47721816@OBS", "45990941@OBS", "45831655@OBS", 
      "45783592@OBS", "44457668@OBS", "44202130@OBS", "41047951@OBS", "41047924@OBS", 
      "134523873@OBS", "133398405@OBS", "126674915@OBS", "126582235@OBS", "122344924@OBS", 
      "122086332@OBS", "122027969@OBS", "162059571@OBS", "161937539@OBS", "182093609@OBS", 
      "116351531@OBS", "116351440@OBS", "116351439@OBS", "116348966@OBS", "160767546@OBS", 
      "158329025@OBS", "158216578@OBS", "158085756@OBS", "158068882@OBS", "157714884@OBS", 
      "156866326@OBS", "156866319@OBS", "156810630@OBS", "156530349@OBS", "156530248@OBS", 
      "69899898@OBS", "69898950@OBS", "68723449@OBS", "63626410@OBS", "177939394@OBS", 
      "177867619@OBS", "177469409@OBS", "176836921@OBS", "176836628@OBS", "176600833@OBS", 
      "102400522@OBS", "102389901@OBS", "101911079@OBS"), allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_selected = "55964963@OBS", allow_no_input_binding_ = TRUE)
  app$set_inputs(timeline_selected = "95580943@OBS", allow_no_input_binding_ = TRUE)
  app$expect_screenshot()
  app$expect_values()
  app$set_inputs(bioLeafMap_click = c(50.5860268659639, 25.6900508898501, 0.496654032762875), 
      allow_no_input_binding_ = TRUE)
})
