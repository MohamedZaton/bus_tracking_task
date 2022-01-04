class Tools {
  static String monthNumberToString(int monthNum) {
    final months = <String>[
      'month0',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    try {
      return months[monthNum];
    } catch (e) {
      return 'error month';
    }
  }
}
