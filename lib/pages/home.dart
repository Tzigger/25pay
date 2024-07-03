import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191C23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF191C23),
        automaticallyImplyLeading: false,
        bottomOpacity: 0.0,
        elevation: 0.2,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/24pay-removebg-preview.png',
                width: 137,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Urmeaza butonu de noti bell
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF2E353F),
                          ),
                          child: const Icon(
                            Icons.notifications_none,
                          ),
                        ),
                      )
                    ],
                  ),

                  const VerticalDivider(
                    width: 5,
                  ),
                  //Urmeaza butonu de setari
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF2E353F),
                          ),
                          child: const Icon(
                            Icons.settings,
                          ),
                        ),
                      )
                    ],
                  ),
                  const VerticalDivider(
                    width: 5,
                  ),
                  //Urmeaza butonu de profil
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF2E353F),
                          ),
                          child: const Icon(
                            Icons.person_2_outlined,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // De aici urmeaza body-ul

      //De aici urmeaza nav bar
      body: const Stack(
        children: [
          //divider

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisSize: MainAxisSize.max, children: [
                Text(
                  'Portofel',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
              SizedBox(
                width: 125,
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF191C23),
        selectedItemColor: const Color(0xFFE8D433),
        items: const [
          //acasa
          BottomNavigationBarItem(
            label: 'Acasa',
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
          ),
          //Servicii
          BottomNavigationBarItem(
            label: 'Servicii',
            icon: Icon(
              Icons.select_all_outlined,
              size: 24,
            ),
          ),
          //Scaneaza
          BottomNavigationBarItem(
            label: 'Scanează',
            icon: Icon(
              Icons.qr_code_scanner,
              color: Color(0x75000000),
              size: 24,
            ),
          ),
          //Tranzactii
          BottomNavigationBarItem(
            label: 'Tranzacții',
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 24,
            ),
          ),
          //Portofel
          BottomNavigationBarItem(
            label: 'Portofel',
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              size: 24,
            ),
          ),
        ],
      ), //nav bar
    );
  }
}
