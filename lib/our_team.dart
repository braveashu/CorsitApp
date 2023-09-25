import 'package:flutter/material.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({super.key});

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  final int totalBoxes = 38;
  int currentBox = 1;
  List<String> position = [
    'Chairman','Vice Chairman','Treasurer','Tech Lead','Senior Member','Senior Member','Senior Member','Senior Member',
    'Senior Member','Member', 'Member','Member','Member','Member','Member','Member','Treasurer',
    'Member','Member','Member','Member','Member','Member','Member','Member','Member',
    'Member','Member','Member','Member','Member','Member','Member','Member','Member',
    'Member','Member','Member',

    'Member','Member','Member','Member','Member','Member','Member','Member','Member',
    'Member','Member','Member','Member','Member','Member','Member','Member','Member',


  ];
  List<String> names = [
    'Ojas Sangra','Ashish Mahant','Aditya Dubey','Sameer Shetty','Kunal Roy','Tannistha Nandy','Yashaswini K',
    'Ayushman Sharma','Jeevitha K A', 'Ashutosh Malviya','Jatin Sharma','Mayank Pandey','Kumar Harsh', 'Suraj Aribenchi',
    'Aryan Kapoor','Aditi Joshi', 'Ujjawal Singh','Siddhant Raj','Badal P N','Sharanya Bhat', 'Harsh Gaurav',
    'Aadarsh Shriniwas','Rishav Shekhar', 'Lekhana H V','Vaishali Choudhary','Namratha Bhardwaj', 'Vivek M',
    'Sai Likitha','Yatin Bhatia','C R Ananya','Neethu G','Aishwarya Acharya','Ketaki Jojane','Om Manikya','Varsha T K',
    'Chaithra H R', 'Guru Srisha','Mudit Shekhar',

    'Member','Member','Member','Member','Member','Member','Member','Member','Member',
    'Member','Member','Member','Member','Member','Member','Member','Member','Member',

  ];
  List<String> messages = [
    'CSE 4th Year','CSE 4th Year','ETE 4th Year','ISE 4th Year','ECE 4th Year','ECE 4th Year','AIDS 4th Year',
    'ETE 4th Year', 'ECE 4th Year','ECE 3rd Year','ECE 3rd Year', 'ECE 3rd Year','ECE 3rd Year','ECE 3rd Year','ECE 3rd Year',
    'ECE 3rd Year','ECE 3rd Year','ECE 3rd Year','ECE 3rd Year','CSE 3rd Year','CSE 3rd Year', 'ISE 3rd Year',
    'AIDS 3rd Year', 'AIDS 3rd Year','ETE 3rd Year','EEE 3rd Year','EEE 3rd Year',
    'CSE 2nd Year','CSE 2nd Year', 'CSE 2nd Year','CSE 2nd Year','ISE 2nd Year',
    'ISE 2nd Year','AIDS 2nd Year','AIDS 2nd Year','AIML 2nd Year', 'ECE 2nd Year','EEE 2nd Year',

    'Member','Member','Member','Member','Member','Member','Member','Member','Member',
    'Member','Member','Member','Member','Member','Member','Member','Member','Member',

  ];

  List<String> imagePaths = [
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FOjasSangra.jpg?alt=media&token=80c6acf9-7fe6-494d-91e9-ce11949bdd4d','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAshish.jpg?alt=media&token=36eb5c8e-2d6a-4e87-b41c-d8d90081a9b9',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAditya.jpg?alt=media&token=6d977c2e-2b28-4507-8b78-b5cdbb367fe9','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FSameer.jpg?alt=media&token=b9c4b25a-38d3-4dce-8983-c192c7862699',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FKunal.jpg?alt=media&token=9d2ac883-4ce3-4ad3-b65e-ccb77d7267e5','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FTannistha%20Nandy_.jpg?alt=media&token=8e21e631-59bc-4132-8899-4b0f34e48c04',
    'assets/pic1.jpeg','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAyushman%20Sharma.jpeg?alt=media&token=e3b1003c-9056-41dc-bb02-f14540d71578',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FSAVE_20220102_085044.jpg?alt=media&token=e1f2d2a0-dcb0-456e-8e69-555e64faea5d','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FWhatsApp%20Image%202023-09-25%20at%207.50.33%20AM.jpeg?alt=media&token=dd2f060d-4207-4fcc-94f3-17e5a97b6c1e','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FMayank%20Pandey.jpg?alt=media&token=bcefdfc4-5839-4b5a-84ea-138abc672941',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FKumar%20Harsh.jpg?alt=media&token=904a31a0-a61d-4b43-a1f9-d4ddf8aaeb2a','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAryan.jpg?alt=media&token=76a4b12a-dda9-4e22-9cab-1c1ec3d2a0af','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAditi%20Joshi%20ECE.jpg?alt=media&token=33a8a668-2c11-4d2a-97fb-82a02d210fcb',
    'assets/pic1.jpeg','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FSIDDHANT%20RAJ.jpeg?alt=media&token=13ab037f-c42f-4b8c-8d88-6bb2d8db3116',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FBADAL.jpg?alt=media&token=a2c0ef08-f662-4e3c-a6ce-a5309a5adaeb','assets/pic1.jpeg',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FHarsh%20Gaurav.jpg?alt=media&token=9a81ccd6-39c8-4913-9067-cf2d121f596a','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAadarsh.jpg?alt=media&token=3322e06f-7aa9-444d-bd6f-c78497cf5728',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FIMG-20221119-WA0000.jpg?alt=media&token=28c299bb-9242-4dbe-9c75-14a86d9472ac','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FIMG_20230216_144211.jpg?alt=media&token=c804892f-e839-4e2d-a24f-4379ee25c1a2',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FB%20Vaishali%20Choudhary_.jpg?alt=media&token=3409f6f3-bb92-4df9-9dc9-7779c2521052','assets/pic1.jpeg',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FVivek%20M%20(EEE).jpg?alt=media&token=d2ac1e30-8817-4fdf-acb1-86a08beac964','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FNM%20Sai%20Likhitha.jpg?alt=media&token=62ca5c81-7b74-4b85-93e1-5e78308f7e8a',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FCopy%20of%20YATIN%20BHATIA.jpg?alt=media&token=9fd8b011-4f1d-4329-8383-0e865b4f85f3','assets/pic1.jpeg',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FNeethu.jpg?alt=media&token=c1246594-ad00-4634-8ee8-ee213c32816f','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FAishwarya%20Acharya%20PK%20%2CISE.jpg?alt=media&token=f15aa4a2-3408-4ef2-9bda-a9368ad8ed0e',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FKetaki%20Jojane%20ISE.jpg?alt=media&token=1e5b09df-ede9-4e94-9555-6fbb5603e61f','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FOm%20.jpg?alt=media&token=633d4708-5ee7-4d83-b33b-e2667010d65e',
    'assets/pic1.jpeg','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FChaithra.jpg?alt=media&token=02298d38-186b-4fce-8a08-d5f2d01f001d',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FGuru%20Srisha.jpg?alt=media&token=180cbe1d-5e13-494f-baa9-385d557d0d62','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2FMudit%20shekhar%20%2C%20EEE.jpg?alt=media&token=1bdf446d-137a-4890-ba8a-26fff197b730',

    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf','https://firebasestorage.googleapis.com/v0/b/authformany.appspot.com/o/Profiles%2Fpic1.jpeg?alt=media&token=a87bd94e-9495-4dca-af74-7c689c4a8bdf',
    'assets/pic1.jpeg','assets/pic1.jpeg','assets/pic1.jpeg','assets/pic1.jpeg',
    'assets/pic1.jpeg','assets/pic1.jpeg','assets/pic1.jpeg','assets/pic1.jpeg',
  ];

  Widget generateBox(int boxNumber) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  backgroundColor: Color.fromRGBO(77, 55, 73, .7),
                  title: Center(child: Text(names[boxNumber-1],
                  style: TextStyle(color: Colors.white),),),
                  content: Text(messages[boxNumber-1],
                  style: TextStyle(color: Colors.white70),),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(
                            135, 11, 32, 1),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20), // Rounded corners
                          ),) ,
                        child: const Center(
                            child: Text('BACK'
                            ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 100,
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Color.fromRGBO(77, 55, 73, 1),
                  backgroundImage: NetworkImage(imagePaths[boxNumber - 1]),
                ),
              ),
            ),
          ),
        ),
        Text(position[boxNumber-1],
          style: TextStyle( color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CORSIT TEAM')), // Add your app bar title here
        backgroundColor: Color.fromRGBO(77, 55, 73, 1),
        elevation: 0,
      ),

      body: Container(
        decoration:BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4,0.6],
                colors: [
                  Color.fromRGBO(77, 55, 73, 1),

                  Color.fromRGBO(135, 11, 32, 1),

                ])
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 40.0,
                ),
                itemCount: totalBoxes,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return generateBox(index + 1);
                },
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}