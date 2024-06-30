import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_search_bar/flutter_easy_search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:untitled/components/gap.dart';
import 'package:untitled/date.dart';
import 'package:untitled/destination.dart';
import 'package:untitled/flight_screen.dart';
import 'package:untitled/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchValue = '';
  final List<String> _search = [
    "Afghanistan",
    "Aland Islands",
    "Albania",
    "Algeria",
    "America",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bonaire, Sint Eustatius and Saba",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote D'Ivoire",
    "Croatia",
    "Cuba",
    "Curacao",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Dubai"
        "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands (Malvinas)",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "French Southern Territories",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Heard Island and McDonald Islands",
    "Holy See (Vatican City State)",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran, Islamic Republic of",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea, Democratic People's Republic of",
    "Korea, Republic of",
    "Kosovo",
    "Kuwait",
    "Kyrgyzstan",
    "Lao People's Democratic Republic",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libyan Arab Jamahiriya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Macedonia, the Former Yugoslav Republic of",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia, Federated States of",
    "Moldova, Republic of",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestinian Territory, Occupied",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russian Federation",
    "Rwanda",
    "Saint Barthelemy",
    "Saint Helena",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Martin",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Serbia and Montenegro",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "St Martin",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia and the South Sandwich Islands",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan, Province of China",
    "Tajikistan",
    "Tanzania, United Republic of",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "United States Minor Outlying Islands",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Viet Nam",
    "Virgin Islands, British",
    "Virgin Islands, U.s.",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Zambia",
    "Zimbabwe",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: EasySearchBar(
          backgroundColor: Colors.lightBlueAccent,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Search a flight',
            style: TextStyle(color: Colors.white),
          ),
          onSearch: (value) => setState(() {
            searchValue = value;
          }),
          elevation: 5,
          onSuggestionTap: (data) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingScreen(searchText: data),
              ),
            );
          },
          suggestions: _search,
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4093ce), Color(0xFF92c8ef)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(vertical: 30.h),
                    Row(
                      children: [
                        Card(
                          child: FlutterLogo(size: 35.r),
                        ),
                        Gap(horizontal: 10.w),
                        Text(
                          "Hi Riyaz!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const NotificationScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 35.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white70,
                            ),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(vertical: 20.h),
                    Text(
                      "Where you want to",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "go?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(vertical: 20.h),
                    Text(
                      "Upcoming Trips",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(vertical: 10.h, horizontal: 20.w),
                    Container(
                      height: 195.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xFF2f7694),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.w, top: 25.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  DateFormat.MMMd().format(DateTime.now()),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  ",",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(horizontal: 5.w),
                                Text(
                                  DateFormat.jm().format(DateTime.now()),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Gap(horizontal: 80.w),
                                Text(
                                  DateFormat.MMMd().format(DateTime(2024, 5, 22)),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Text(
                                  ",",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(horizontal: 5.w),
                                Text(
                                  DateFormat.jm().format(DateTime.now()),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Gap(vertical: 25.h),
                            Row(
                              children: [
                                Text(
                                  "ABC",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25.sp,
                                  ),
                                ),
                                Gap(horizontal: 30.w),
                                Image.asset("lib/assets/dot.png"),
                                Gap(horizontal: 15.w),
                                const Icon(
                                  CupertinoIcons.airplane,
                                  color: Colors.white30,
                                ),
                                Gap(horizontal: 20.w),
                                Image.asset("lib/assets/dot.png"),
                                Gap(horizontal: 40.w),
                                Text(
                                  "XYZ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25.sp,
                                  ),
                                ),
                              ],
                            ),
                            Gap(vertical: 22.h),
                            Row(
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 125.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFe8eff3),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Abianca, Sodaium",
                                      style: TextStyle(
                                        color: Color(0xFF528aad),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(horizontal: 30.w),
                                Container(
                                  height: 30.h,
                                  width: 125.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0XFFe8eff3),
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Xyzaira, Filanto",
                                      style: TextStyle(
                                        color: Color(0xFF528aad),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(vertical: 30.h),
                    Row(
                      children: [
                        Text(
                          "Popular Destination",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const YourDestination(),
                              ),
                            );
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 200.h,
                        width: 380.w,
                        color: Colors.white,
                        child: ScrollLoopAutoScroll(
                          duplicateChild: 1,
                          scrollDirection: Axis.horizontal,
                          duration: const Duration(seconds: 25),
                          delay: const Duration(seconds: 3),
                          child: Row(
                            children: [
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit1.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit2.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit3.jpeg",
                                height: 199.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit2.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                              Gap(vertical: 5.h),
                              Image.asset(
                                "lib/assets/visit3.jpg",
                                height: 200.h,
                                width: 300.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Gap(vertical: 20.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
