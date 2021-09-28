import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VirtualTours extends StatefulWidget {
  @override
  _VirtualToursState createState() => _VirtualToursState();
}

class _VirtualToursState extends State<VirtualTours> {
  @override
  void initState() {
    super.initState();
    tours.forEach((element) {
      items.add(createTile(
          element.title!, element.agency!, element.link!, element.type!));
    });
    setState(() {});
  }

  List<VirtualTour> tours = [
    VirtualTour(
        title: "ISRO Video Gallery",
        link: "https://www.isro.gov.in/video-gallery",
        agency: "ISRO | India",
        type: TourType.video),
    VirtualTour(
        title: "VIS Museum Space Technology Virtual Gallery",
        link: "https://www.vismuseum.gov.in/space-technology-gallery/",
        agency: "VIS Museum | India",
        type: TourType.ar),
    VirtualTour(
        title: "SpaceX Crew Dragon Tour",
        link: "https://www.youtube.com/watch?v=Rc5D2Jb7qXQ",
        agency: "SpaceX | USA",
        type: TourType.ar),
    VirtualTour(
        title: "Air & Space Museum Vircual Tour",
        link:
            "https://artsandculture.google.com/streetview/national-air-and-space-museum-washington-dc-second-floor/mAGIjNwvdyVBNA?sv_lng=-77.01985119124066&sv_lat=38.88814141871478&sv_h=157.8&sv_p=-13.299999999999997&sv_pid=7Tb8VlE8GxmLwjrXMB8XCw&sv_z=1",
        agency: "Air And Space Museum | USA",
        type: TourType.streetView),
    VirtualTour(
        title: "ISS Interior Virtual Tour",
        link:
            "https://artsandculture.google.com/streetview/international-space-station/WgFE9b04h8A0ww?sv_lng=-95.08533878466375&sv_lat=29.56040149436038&sv_h=46.239999999999995&sv_p=-13.299999999999997&sv_pid=2Lx7fxjE5hcAAAQvxgbyLQ&sv_z=1.0000000000000002",
        agency: "Global",
        type: TourType.streetView),
    VirtualTour(
        title: "Stafford Air And Space Museum Virtual Tour",
        link:
            "https://artsandculture.google.com/streetview/stafford-air-space-museum/bgGDbE_ufGzotQ?sv_lng=-98.66994783304925&sv_lat=35.54509082158833&sv_h=255.88&sv_p=0&sv_pid=rWbsOplDTDJDGgmLqtX89A&sv_z=1.0000000000000002",
        agency: "Stafford Air And Space Museum | USA",
        type: TourType.streetView),
    VirtualTour(
        title: "Space Shuttle Discovery",
        link: "https://www.youtube.com/watch?v=o3XS_5L--Qg",
        agency: "Google Arts And Culture",
        type: TourType.ar)
  ];
  List<Widget> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VIRTUAL TOURS".toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey.shade800,
        elevation: 0,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/background.jpg"))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: items,
            ),
          )),
    );
  }

  Widget createTile(String title, String agency, String link, TourType type) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        agency,
        style: TextStyle(color: Colors.grey),
      ),
      onTap: () async {
        if (await canLaunch(link)) {
          launch(link);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Failed to open the tour!")));
        }
      },
      leading: Icon(
        type == TourType.video
            ? Icons.smart_display
            : type == TourType.streetView
                ? Icons.streetview
                : type == TourType.ar
                    ? Icons.view_in_ar
                    : Icons.smart_display,
        size: 30,
        color: type == TourType.video
            ? Colors.red
            : type == TourType.streetView
                ? Colors.orange
                : type == TourType.ar
                    ? Colors.green
                    : Colors.white,
      ),
    );
  }
}

class VirtualTour {
  String? title;
  String? agency;
  String? link;
  TourType? type;
  VirtualTour({this.agency, this.link, this.title, this.type});
}

enum TourType { video, ar, streetView }
