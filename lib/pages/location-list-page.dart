import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/location-card.dart';

class LocationListPage extends StatefulWidget {
  @override
  _LocationListPageState createState() => _LocationListPageState();
}

class _LocationListPageState extends State<LocationListPage> {

  var asiaLocations = ['Asia/Almaty', ' Asia/Amman', ' Asia/Anadyr', ' Asia/Aqtau',
    ' Asia/Aqtobe', ' Asia/Ashgabat', ' Asia/Atyrau', ' Asia/Baghdad', ' Asia/Baku',
    ' Asia/Bangkok', ' Asia/Barnaul', ' Asia/Beirut', ' Asia/Bishkek', ' Asia/Brunei',
    ' Asia/Chita', ' Asia/Choibalsan', ' Asia/Colombo', ' Asia/Damascus', ' Asia/Dhaka',
    ' Asia/Dili', ' Asia/Dubai', ' Asia/Dushanbe', ' Asia/Famagusta', ' Asia/Gaza',
    ' Asia/Hebron', ' Asia/Ho_Chi_Minh', ' Asia/Hong_Kong', ' Asia/Hovd', ' Asia/Irkutsk',
    ' Asia/Jakarta', ' Asia/Jayapura', ' Asia/Jerusalem', ' Asia/Kabul', ' Asia/Kamchatka',
    ' Asia/Karachi', ' Asia/Kathmandu', ' Asia/Khandyga', ' Asia/Kolkata', ' Asia/Krasnoyarsk',
    ' Asia/Kuala_Lumpur', ' Asia/Kuching', ' Asia/Macau', ' Asia/Magadan', ' Asia/Makassar',
    ' Asia/Manila', ' Asia/Nicosia', ' Asia/Novokuznetsk', ' Asia/Novosibirsk', ' Asia/Omsk',
    ' Asia/Oral', ' Asia/Pontianak', ' Asia/Pyongyang', ' Asia/Qatar', ' Asia/Qostanay',
    ' Asia/Qyzylorda', ' Asia/Riyadh', ' Asia/Sakhalin', ' Asia/Samarkand', ' Asia/Seoul',
    ' Asia/Shanghai', ' Asia/Singapore', ' Asia/Srednekolymsk', ' Asia/Taipei', ' Asia/Tashkent',
    ' Asia/Tbilisi', ' Asia/Tehran', ' Asia/Thimphu', ' Asia/Tokyo', ' Asia/Tomsk', ' Asia/Ulaanbaatar',
    ' Asia/Urumqi', ' Asia/Ust-Nera', ' Asia/Vladivostok', ' Asia/Yakutsk', ' Asia/Yangon',
    ' Asia/Yekaterinburg', ' Asia/Yerevan'];

  var africaLocations = ["Africa/Abidjan","Africa/Accra","Africa/Algiers"
    ,"Africa/Bissau","Africa/Cairo","Africa/Casablanca","Africa/Ceuta",
    "Africa/El_Aaiun","Africa/Johannesburg","Africa/Juba","Africa/Khartoum",
    "Africa/Lagos","Africa/Maputo","Africa/Monrovia","Africa/Nairobi",
    "Africa/Ndjamena","Africa/Sao_Tome","Africa/Tripoli","Africa/Tunis",
    "Africa/Windhoek"];

  var americaLocations = ["America/Adak","America/Anchorage","America/Araguaina",
    "America/Argentina/Buenos_Aires","America/Argentina/Catamarca",
    "America/Argentina/Cordoba","America/Argentina/Jujuy","America/Argentina/La_Rioja",
    "America/Argentina/Mendoza","America/Argentina/Rio_Gallegos","America/Argentina/Salta",
    "America/Argentina/San_Juan","America/Argentina/San_Luis","America/Argentina/Tucuman",
    "America/Argentina/Ushuaia","America/Asuncion","America/Atikokan","America/Bahia",
    "America/Bahia_Banderas","America/Barbados","America/Belem","America/Belize",
    "America/Blanc-Sablon","America/Boa_Vista","America/Bogota","America/Boise",
    "America/Cambridge_Bay","America/Campo_Grande","America/Cancun","America/Caracas",
    "America/Cayenne","America/Chicago","America/Chihuahua","America/Costa_Rica",
    "America/Creston","America/Cuiaba","America/Curacao","America/Danmarkshavn",
    "America/Dawson","America/Dawson_Creek","America/Denver","America/Detroit",
    "America/Edmonton","America/Eirunepe","America/El_Salvador","America/Fort_Nelson",
    "America/Fortaleza","America/Glace_Bay","America/Goose_Bay","America/Grand_Turk",
    "America/Guatemala","America/Guayaquil","America/Guyana","America/Halifax",
    "America/Havana","America/Hermosillo","America/Indiana/Indianapolis",
    "America/Indiana/Knox","America/Indiana/Marengo","America/Indiana/Petersburg",
    "America/Indiana/Tell_City","America/Indiana/Vevay","America/Indiana/Vincennes",
    "America/Indiana/Winamac","America/Inuvik","America/Iqaluit","America/Jamaica",
    "America/Juneau","America/Kentucky/Louisville","America/Kentucky/Monticello",
    "America/La_Paz","America/Lima","America/Los_Angeles","America/Maceio",
    "America/Managua","America/Manaus","America/Martinique","America/Matamoros",
    "America/Mazatlan","America/Menominee","America/Merida","America/Metlakatla",
    "America/Mexico_City","America/Miquelon","America/Moncton","America/Monterrey",
    "America/Montevideo","America/Nassau","America/New_York","America/Nipigon",
    "America/Nome","America/Noronha","America/North_Dakota/Beulah",
    "America/North_Dakota/Center","America/North_Dakota/New_Salem","America/Nuuk",
    "America/Ojinaga","America/Panama","America/Pangnirtung","America/Paramaribo",
    "America/Phoenix","America/Port-au-Prince","America/Port_of_Spain",
    "America/Porto_Velho","America/Puerto_Rico","America/Punta_Arenas",
    "America/Rainy_River","America/Rankin_Inlet","America/Recife","America/Regina",
    "America/Resolute","America/Rio_Branco","America/Santarem","America/Santiago",
    "America/Santo_Domingo","America/Sao_Paulo","America/Scoresbysund","America/Sitka",
    "America/St_Johns","America/Swift_Current","America/Tegucigalpa","America/Thule",
    "America/Thunder_Bay","America/Tijuana","America/Toronto","America/Vancouver",
    "America/Whitehorse","America/Winnipeg","America/Yakutat","America/Yellowknife"];

  var antarcticaLocations = ["Antarctica/Casey","Antarctica/Davis","Antarctica/DumontDUrville",
    "Antarctica/Macquarie","Antarctica/Mawson","Antarctica/Palmer",
    "Antarctica/Rothera","Antarctica/Syowa","Antarctica/Troll","Antarctica/Vostok"];

  var atlanticLocations = ["Atlantic/Azores","Atlantic/Bermuda","Atlantic/Canary",
    "Atlantic/Cape_Verde","Atlantic/Faroe","Atlantic/Madeira","Atlantic/Reykjavik",
    "Atlantic/South_Georgia","Atlantic/Stanley"];

  var australiaLocations = ["Australia/Adelaide","Australia/Brisbane",
    "Australia/Broken_Hill","Australia/Currie","Australia/Darwin","Australia/Eucla",
    "Australia/Hobart","Australia/Lindeman","Australia/Lord_Howe","Australia/Melbourne",
    "Australia/Perth","Australia/Sydney"];

  var europeLocations = ["Europe/Amsterdam","Europe/Andorra","Europe/Astrakhan",
    "Europe/Athens","Europe/Belgrade","Europe/Berlin","Europe/Brussels",
    "Europe/Bucharest","Europe/Budapest","Europe/Chisinau","Europe/Copenhagen",
    "Europe/Dublin","Europe/Gibraltar","Europe/Helsinki","Europe/Istanbul",
    "Europe/Kaliningrad","Europe/Kiev","Europe/Kirov","Europe/Lisbon","Europe/London",
    "Europe/Luxembourg","Europe/Madrid","Europe/Malta","Europe/Minsk",
    "Europe/Monaco","Europe/Moscow","Europe/Oslo","Europe/Paris","Europe/Prague",
    "Europe/Riga","Europe/Rome","Europe/Samara","Europe/Saratov","Europe/Simferopol",
    "Europe/Sofia","Europe/Stockholm","Europe/Tallinn","Europe/Tirane",
    "Europe/Ulyanovsk","Europe/Uzhgorod","Europe/Vienna","Europe/Vilnius",
    "Europe/Volgograd","Europe/Warsaw","Europe/Zaporozhye","Europe/Zurich"];

  List currentArea ;

  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context).settings.arguments;
    var area = data['area'].toString();
    print(area);
    /*
    * var areas = ['Africa','America','Antarctica','Asia',
  'Atlantic','Australia','Europe'];
    * */

    switch(area){
      case 'Africa': currentArea = africaLocations; break;
      case 'America': currentArea = americaLocations; break;
      case 'Antarctica': currentArea = antarcticaLocations; break;
      case 'Asia': currentArea = asiaLocations; break;
      case 'Atlantic': currentArea = atlanticLocations; break;
      case 'Australia': currentArea = australiaLocations; break;
      case 'Europe': currentArea = europeLocations; break;
      default : currentArea = asiaLocations; break;
    }

    print(currentArea);

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Location"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(

              children: currentArea.map((name) => LocationCard(name.toString().split("/").last,(){
                Navigator.pushReplacementNamed(context, "/loading",arguments:{
                  'location':name
                }
                );
              })).toList(),

            ),
          )
        ],
      ),
    );
  }
}
