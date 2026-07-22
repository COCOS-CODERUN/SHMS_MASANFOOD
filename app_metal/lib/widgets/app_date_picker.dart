import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

// 앱 날짜 선택
Future<DateTime?> showAppDatePicker({
  required BuildContext context,
  required DateTime initialDate,
  required DateTime firstDate,
  required DateTime lastDate,
}) async {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;
  final isDark = theme.brightness == Brightness.dark;
  final textColor = isDark ? Colors.white : const Color(0xFF172033);
  final subTextColor = isDark
      ? const Color(0xFF94A3B8)
      : const Color(0xFF64748B);
  final disabledColor = isDark
      ? const Color(0xFF475569)
      : const Color(0xFFCBD5E1);
  final dialogColor = isDark ? const Color(0xFF111827) : Colors.white;
  final selectedDates = await showCalendarDatePicker2Dialog(
    context: context,
    value: [initialDate],
    dialogSize: const Size(340, 430),
    borderRadius: BorderRadius.circular(28),
    dialogBackgroundColor: dialogColor,
    barrierColor: Colors.black.withValues(alpha: 0.48),
    // 작은 화면 스크롤
    builder: (context, child) =>
        Center(child: SingleChildScrollView(child: child)),
    config: CalendarDatePicker2WithActionButtonsConfig(
      calendarType: CalendarDatePicker2Type.single,
      calendarViewMode: CalendarDatePicker2Mode.day,
      firstDate: firstDate,
      lastDate: lastDate,
      currentDate: DateTime.now(),
      firstDayOfWeek: 1,
      weekdayLabels: const ['일', '월', '화', '수', '목', '금', '토'],
      controlsHeight: 62,
      centerAlignModePicker: true,
      disableMonthPicker: true,
      animateToDisplayedMonthDate: true,
      closeDialogOnCancelTapped: true,
      closeDialogOnOkTapped: true,
      gapBetweenCalendarAndButtons: 8,
      dayBorderRadius: BorderRadius.circular(14),
      yearBorderRadius: BorderRadius.circular(14),
      monthBorderRadius: BorderRadius.circular(14),
      selectedDayHighlightColor: colorScheme.primary,
      daySplashColor: colorScheme.primary.withValues(alpha: 0.12),
      controlsTextStyle: TextStyle(
        color: textColor,
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
      weekdayLabelTextStyle: TextStyle(
        color: subTextColor,
        fontSize: 13,
        fontWeight: FontWeight.w800,
      ),
      dayTextStyle: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      selectedDayTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w900,
      ),
      todayTextStyle: TextStyle(
        color: colorScheme.primary,
        fontSize: 14,
        fontWeight: FontWeight.w900,
      ),
      disabledDayTextStyle: TextStyle(
        color: disabledColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      yearTextStyle: TextStyle(color: textColor, fontWeight: FontWeight.w700),
      selectedYearTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
      monthTextStyle: TextStyle(color: textColor, fontWeight: FontWeight.w700),
      selectedMonthTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
      customModePickerIcon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: colorScheme.primary,
      ),
      lastMonthIcon: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: colorScheme.primary.withValues(alpha: 0.10),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.chevron_left_rounded, color: colorScheme.primary),
      ),
      nextMonthIcon: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: colorScheme.primary.withValues(alpha: 0.10),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.chevron_right_rounded, color: colorScheme.primary),
      ),
      dayTextStylePredicate: ({required date}) {
        // 일요일
        if (date.weekday == DateTime.sunday) {
          return TextStyle(
            color: isDark ? const Color(0xFFFCA5A5) : const Color(0xFFEF4444),
            fontSize: 14,
            fontWeight: FontWeight.w800,
          );
        }

        // 토요일
        if (date.weekday == DateTime.saturday) {
          return TextStyle(
            color: isDark ? const Color(0xFF93C5FD) : const Color(0xFF3B82F6),
            fontSize: 14,
            fontWeight: FontWeight.w800,
          );
        }

        return null;
      },
      cancelButton: Text(
        '취소',
        style: TextStyle(
          color: subTextColor,
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
      okButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: BorderRadius.circular(14),
        ),
        child: const Text(
          '선택',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      buttonPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    ),
  );

  // 날짜 취소
  if (selectedDates == null ||
      selectedDates.isEmpty ||
      selectedDates.first == null) {
    return null;
  }

  return selectedDates.first;
}
