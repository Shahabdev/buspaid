import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/color.dart';
class SeatSelectionScreen extends StatefulWidget {
  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  final int totalRows = 7; // Number of rows (excluding the first driver row and the last row of 6 seats)
  final List<int> filledSeats = [0, 1, 4, 5, 10, 11, 14]; // Indices of filled seats
  List<int> selectedSeats = []; // List to keep track of selected seats

  void toggleSeatSelection(int seatIndex) {
    setState(() {
      if (selectedSeats.contains(seatIndex)) {
        selectedSeats.remove(seatIndex);
      } else {
        selectedSeats.add(seatIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choose Seat'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: [

            LegendWidget(),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: totalRows + 4, // Including driver row, two door rows, and the last row with 6 seats
                itemBuilder: (context, rowIndex) {
                  if (rowIndex == 0) {
                    return DriverRow(onSeatSelected:toggleSeatSelection); // Driver row at index 0
                  } else if (rowIndex == 2) {
                    return SeatRow(
                      startSeatIndex: 0,
                      filledSeats: filledSeats,
                      selectedSeats: selectedSeats,
                      onSeatTapped: toggleSeatSelection,
                    ); // Regular two-seat row
                  } else if (rowIndex == 1) {
                    return DoorRow(onSeatSelected: toggleSeatSelection,); // Door row after second row
                  } else if (rowIndex == totalRows + 2) {
                    return DoorRow(onSeatSelected: toggleSeatSelection,); // Another door row before the last row
                  } else if (rowIndex == totalRows + 3) {
                    return SixSeatRow(
                      filledSeats: filledSeats,
                      selectedSeats: selectedSeats,
                      onSeatTapped: toggleSeatSelection,
                    ); // Last row with 6 seats
                  } else {
                    int seatStartIndex = (rowIndex - 3) * 4;
                    return SeatRow(
                      startSeatIndex: seatStartIndex,
                      filledSeats: filledSeats,
                      selectedSeats: selectedSeats,
                      onSeatTapped: toggleSeatSelection,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle booking action
                print('Selected seats: $selectedSeats');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:primaryColor,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  'BOOK NOW',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SeatRow extends StatelessWidget {
  final int startSeatIndex;
  final List<int> filledSeats;
  final List<int> selectedSeats;
  final Function(int) onSeatTapped;

  const SeatRow({
    required this.startSeatIndex,
    required this.filledSeats,
    required this.selectedSeats,
    required this.onSeatTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SeatWidget(
          seatIndex: startSeatIndex,
          isFilled: filledSeats.contains(startSeatIndex),
          isSelected: selectedSeats.contains(startSeatIndex),
          onTap: onSeatTapped,
        ),
        SeatWidget(
          seatIndex: startSeatIndex + 1,
          isFilled: filledSeats.contains(startSeatIndex + 1),
          isSelected: selectedSeats.contains(startSeatIndex + 1),
          onTap: onSeatTapped,
        ),
        SizedBox(width: 16), // Space for aisle
        SeatWidget(
          seatIndex: startSeatIndex + 2,
          isFilled: filledSeats.contains(startSeatIndex + 2),
          isSelected: selectedSeats.contains(startSeatIndex + 2),
          onTap: onSeatTapped,
        ),
        SeatWidget(
          seatIndex: startSeatIndex + 3,
          isFilled: filledSeats.contains(startSeatIndex + 3),
          isSelected: selectedSeats.contains(startSeatIndex + 3),
          onTap: onSeatTapped,
        ),
      ],
    );
  }
}

class DoorRow extends StatelessWidget {
  final ValueChanged<int> onSeatSelected;

  const DoorRow({required this.onSeatSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Door',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                SeatWidget(
                  isFilled: false,
                  seatIndex: -1, // Example index for door seats
                  isSelected: false, onTap: onSeatSelected,
                ),
                const SizedBox(width: 43),
                SeatWidget(
                  isFilled: false,
                  seatIndex: -1, // Example index for door seats
                  isSelected: false, onTap: onSeatSelected,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DriverRow extends StatelessWidget {
  final ValueChanged<int> onSeatSelected;

  const DriverRow({required this.onSeatSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SeatWidget(
            isFilled: false,
            seatIndex: -1, // Example index for driver seat
            onTap: onSeatSelected, isSelected: false,
          ),
          SeatWidget(
            isFilled: false,
            seatIndex: -1, // Example index for driver seat
            onTap: onSeatSelected, isSelected: true,
          ),
          const SizedBox(width: 36), // Space for aisle
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/driver.png",
                  height: 49,
                ),
                const Text(
                  'Driver',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

class SixSeatRow extends StatelessWidget {
  final List<int> filledSeats;
  final List<int> selectedSeats;
  final Function(int) onSeatTapped;

  const SixSeatRow({
    required this.filledSeats,
    required this.selectedSeats,
    required this.onSeatTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(6, (index) {
        int seatIndex = 28 + index;
        return SeatWidget(
          seatIndex: seatIndex,
          isFilled: filledSeats.contains(seatIndex),
          isSelected: selectedSeats.contains(seatIndex),
          onTap: onSeatTapped,
        );
      }),
    );
  }
}

class SeatWidget extends StatelessWidget {
  final int seatIndex;
  final bool isFilled;
  final bool isSelected;
  final Function(int) onTap;

  const SeatWidget({
    required this.seatIndex,
    required this.isFilled,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isFilled) {
          onTap(seatIndex);
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Image.asset(
          "assets/seat.png",
          color:isSelected ? primaryColor : Colors.grey,
          height: 43,
        ),
      ),
    );
  }
}

class LegendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LegendItem(color: primaryColor, label: 'Filled'),
        SizedBox(width: 16),
        LegendItem(color: Colors.white, label: 'Available'),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(width: 4),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}