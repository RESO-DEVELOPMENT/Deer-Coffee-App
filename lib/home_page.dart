import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5EDFF),
      bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.coffee_outlined), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.store_outlined), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.assignment), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.segment_sharp), label: ''), 
  ],
  currentIndex: _currentIndex,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  onTap: _changeItem, // Đổi màu khi nổi lên (chọn)
),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/waving_hand.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chào buổi sáng",
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Quốc Khánh",
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.blue,
                      ),
                      child: Transform.rotate(
                        angle: 44 *
                            3.14159265359 /
                            180, // Rotate 30 degrees to the left
                        child: IconButton(
                          icon: Icon(
                            Ionicons.ticket_sharp,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Ionicons.notifications_outline,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),

            /// dang nhap  //
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 291,
              width: 356,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Column(
                // Use a Column to stack the text widgets vertically
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Đăng nhập',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Sử dụng app để tích điểm và đổi những ưu đãi',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.center, // Center align the text
                  ),
                  SizedBox(height: 10),
                  Text(
                    'chỉ dành riêng cho thành viên bạn nhé !',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.center, // Center align the text
                  ),
                  SizedBox(height: 30,),
                Stack(
  children: [
    Image.asset(
      'assets/images/hinhchunhat.png',
      height: 100,
      width: 329,
      fit: BoxFit.cover,
    ),
    Positioned(
      right: 42,
      top: -10, // Giữ nguyên vị trí của nút đăng nhập

      child: Container(
        width: 190,
        height: 39,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment(-1, -1.133),
          end: Alignment(1, 1.367),
          colors: <Color>[Color(0xff549ffd), Color(0xffc8ddff)],
          stops: <double>[0.014, 1],
        ),
        ),
        child: TextButton(
        onPressed: () {
          // Xử lý sự kiện khi nút được nhấn
          // Thêm mã xử lý đăng nhập ở đây
        },
        child: Text(
          'Đăng nhập',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xffffffff),
          ),
        ),
        
        ),
      ),
    ),
    SizedBox(height: 50,),
     Positioned(
      right: 15,
      top: 70, 
      child: Container(
        width: 245,
        height: 39,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment(-1, -1.133),
          end: Alignment(1, 1.367),
          colors: <Color>[Color(0xff549ffd), Color(0xffc8ddff)],
          stops: <double>[0.014, 1],
        ),
        ),
        child: TextButton(
  onPressed: () {
    // Xử lý sự kiện khi nút được nhấn
    // Thêm mã xử lý đăng nhập ở đây
  },
  child: Row(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 5), // Thụt lề văn bản ra bên phải
        child: Text(
        'Deer Coffee House\'s Reward',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xffffffff),
        ),
        ),
      ),
      SizedBox(width: 35,),
      Icon(
        Icons.chevron_right, // Thay đổi biểu tượng "back" thành biểu tượng bạn muốn
        color: Colors.black, // Màu sắc của biểu tượng
        size: 25, // Kích thước của biểu tượng
      ),
    ],
  ),
),

      ),
    ),
  ],
  clipBehavior: Clip.none, // Đảm bảo không cắt bớt phần nào của các phần tử
),
                ],
              ),
            ),
            // hop trang ben duoi
            SizedBox(height: 40,),
         Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    padding: EdgeInsets.only(bottom: 120),
    child: Center(
      child: Container(
        width: 330, // Đặt chiều rộng của hộp con
        height: 100, // Đặt chiều cao của hộp con
        decoration: BoxDecoration(
          color: Colors.white, // Màu nền của hộp con
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black, // Màu của đường viền
            width: 0.5, // Độ dày của đường viền
          ),
        ),

        child: Column(
  mainAxisAlignment: MainAxisAlignment.end, // Đẩy cả hai nút lên phía dưới cùng
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center, // Căn chỉnh các phần tử vào giữa
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút "Giao hàng" được nhấn
          },
          child: Text("Giao hàng"),
        ),
        SizedBox(width: 10), // Tạo khoảng cách ngang giữa nút và đường thẳng
        Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: Transform.rotate(
            angle: 90 * (3.14159265359 / 180),
            child: Container(
              height: 2,
              width: 49,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 10), // Tạo khoảng cách ngang giữa đường thẳng và nút "Mang đi"
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút "Mang đi" được nhấn
          },
          child: Text("Mang đi"),
        ),
      ],
    ),
  ],
)



      ),
    ),
  ),
)



           
          ],
        ),
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}
