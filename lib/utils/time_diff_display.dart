import 'package:intl/intl.dart';

class DataSource {
  timeDiffDisplay(String pastDateString) {
    DateTime pastDate = DateTime.parse(pastDateString);

    // 현재 시간
    DateTime now = DateTime.now();

    // 시간 차이 계산
    Duration diff = now.difference(pastDate);

    // 초 단위로 시간 차이를 계산
    int seconds = diff.inSeconds;

    // 1시간 미만인 경우 (분 단위 표시)
    if (seconds < 3600) {
      int minutes = diff.inMinutes;
      return "$minutes분 전";
    }

    // 24시간 미만인 경우 (시간 단위 표시)
    else if (seconds < 86400) {
      int hours = diff.inHours;
      return "$hours시간 전";
    }

    // 7일 미만인 경우 (일 단위 표시)
    else if (seconds < 604800) {
      int days = diff.inDays;
      if (days == 1) {
        return "하루 전";
      } else {
        return "$days일 전";
      }
    }

    // 7일 이상인 경우 (날짜만 표시)
    else {
      DateFormat formatter = DateFormat('yy.MM.dd');
      return formatter.format(pastDate);
    }
  }
}
