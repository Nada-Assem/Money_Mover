import '../helper/import.dart';

class Account extends StatelessWidget {
  String username = '';
  String accountNumber = '';
  String amount = '';
  String User_Email = '';

  Account(this.username, this.accountNumber, this.amount, this.User_Email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: appBar(title: "Account"),
        leading: BackButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return Home(User_Email);
                  },
                ),
              );
            },
            color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          CustomImage(image: "u", hight: 200),
          const SizedBox(height: 30),
          Container(
            height: 370,
            width: 380,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const SizedBox(height: 35),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 200),
                       child: Text(
                         'User Name',
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.blue,
                         ),
                       ),
                      // txtStyle(
                      //     text: "User Name",
                      //     font: 20
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 20),
                      child: txtStyle(text: username, font: 20),
                    ),
                  ],
                ),

                const SizedBox(height: 40),
                //user name return from firebase
                const Padding(
                  padding: EdgeInsets.only(right: 135),
                  child: Text(
                    'Account Number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: txtStyle(text: accountNumber, font: 20),
                ),
                //accountNumber return from firebase
                const SizedBox(height: 20),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 240),
                      child: Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: txtStyle(text: amount, font: 20),
                    ),
                  ],
                ),

                //const SizedBox(height: 10),
                //amount return from firebase
              ],
            ),
          ),
        ],
      ),
    );
  }
}
