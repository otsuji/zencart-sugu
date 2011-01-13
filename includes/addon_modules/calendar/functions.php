<?php
/**
 * CALENDAR modules functions.php
 *
 * @package functions
 * @copyright Copyright 2008 Liquid System Technology, Inc.
 * @author Koji Sasaki
 * @copyright Portions Copyright 2003-2005 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: functions.php $
 */
  // �����ǡ���
  $addon_calendar = array();

  // ����ǯ��κǽ�����׻�����
  // (28,29,30,31�Τɤ줫)
  function countDays($year, $month) {
    return date('t', mktime(0, 0, 0, $month, 1, $year));
  }

  // ����׻�����
  function nextMonth($year, $month) {
    $month++;
    return mktime(0, 0, 0, $month, 1, $year);
  }

  // ����ǯ������������׻�����
  // (0:����6:��)
  function weekNo($year, $month, $day) {
    return date('w', mktime(0, 0, 0, $month, $day, $year));
  }

  // ����ǯ�����������ܤ��׻�����
  function weekCnt($year, $month, $day) {
    return (int)(($day-1)/7)+1;
  }

  // �����������������Ķ�����Ƚ�Ǥ���
  function isOpen($year, $month, $day) {
    global $addon_calendar;

    // �����ǡ�����ư���ɤ߹���
    if (count($addon_calendar) == 0)
      getHolidayWeekday();

    // �����Ȳ����ܤ�׻�
    $weekno  = weekNo($year, $month, $day);
    $weekcnt = weekCnt($year, $month, $day);

    // ����Ƚ��
    $open = true;
    for ($i=0; $i<count($addon_calendar); $i++) {
      $holiday_year    = $addon_calendar[$i]['year'];
      $holiday_month   = $addon_calendar[$i]['month'];
      $holiday_day     = $addon_calendar[$i]['day'];
      $holiday_week    = $addon_calendar[$i]['week'];
      $holiday_weekcnt = $addon_calendar[$i]['weekcnt'];
      $holiday_open    = $addon_calendar[$i]['open'];

      // ��������
      if ($holiday_year  == -1 &&
          $holiday_month == -1 &&
          $holiday_day   == $day) {
        $open = $holiday_open;
      }

      // ����������
      if ($holiday_year    == -1      &&
          $holiday_month   == -1      &&
          $holiday_day     == -1      &&
          $holiday_week    == $weekno &&
          $holiday_weekcnt == -1) {
        $open = $holiday_open;
      }

      // �����Ƚ�������
      if ($holiday_year    == -1      &&
          $holiday_month   == -1      &&
          $holiday_day     == -1      &&
          $holiday_week    == $weekno &&
          $holiday_weekcnt == $weekcnt) {
        $open = $holiday_open;
      }

      // ��������Ƚ�������
      if ($holiday_year    == -1      &&
          $holiday_month   == $month  &&
          $holiday_day     == -1      &&
          $holiday_week    == $weekno &&
          $holiday_weekcnt == $weekcnt) {
        $open = $holiday_open;
      }

      // ����������
      if ($holiday_year  == -1     &&
          $holiday_month == $month &&
          $holiday_day   == $day) {
        $open = $holiday_open;
      }

      // ǯ����������
      if ($holiday_year  == $year  &&
          $holiday_month == $month &&
          $holiday_day   == $day) {
        $open = $holiday_open;
      }
    }

    return $open;
  }

  // ���������ƥ����Ȥ��ֵѤ���
  function holidayText($year=-1, $month=-1) {
    global $addon_calendar;

    $weeks = array(MODULE_CALENDAR_SUN,
                   MODULE_CALENDAR_MON,
                   MODULE_CALENDAR_TUE,
                   MODULE_CALENDAR_WED,
                   MODULE_CALENDAR_THU,
                   MODULE_CALENDAR_FRI,
                   MODULE_CALENDAR_SAT);

    // �����ǡ�����ư���ɤ߹���
    if (count($addon_calendar) == 0)
      getHolidayWeekday();

    // ����Ƚ��
    $text = "";
    for ($i=0; $i<count($addon_calendar); $i++) {
      $holiday_year    = $addon_calendar[$i]['year'];
      $holiday_month   = $addon_calendar[$i]['month'];
      $holiday_day     = $addon_calendar[$i]['day'];
      $holiday_week    = $addon_calendar[$i]['week'];
      $holiday_weekcnt = $addon_calendar[$i]['weekcnt'];
      $holiday_open    = $addon_calendar[$i]['open'];

      // �Ķ�����̵��
      if ($holiday_open == 1)
        continue;

      // ǯ��˴ط��Τʤ�����
      if ($year  == -1 &&
          $month == -1) {
        // ��������
        if ($holiday_year  == -1 &&
            $holiday_month == -1 &&
            $holiday_day   != -1) {
          $info = MODULE_CALENDAR_HOLIDAY_DAY;
          $info = str_replace('%_DAY_%', $holiday_day, $info);
          $text .= ",".$info;
        }

        // ����������
        if ($holiday_year    == -1 &&
            $holiday_month   == -1 &&
            $holiday_day     == -1 &&
            $holiday_week    != -1 &&
            $holiday_weekcnt == -1) {
          $info = MODULE_CALENDAR_HOLIDAY_WEEK;
          $info = str_replace('%_WEEK_%', $weeks[$holiday_week], $info);
          $text .= ",".$info;
        }

        // �����Ƚ�������
        if ($holiday_year    == -1 &&
            $holiday_month   == -1 &&
            $holiday_day     == -1 &&
            $holiday_week    != -1 &&
            $holiday_weekcnt != -1) {
          $info = MODULE_CALENDAR_HOLIDAY_WEEKCNT;
          $info = str_replace('%_WEEKCNT_%', $holiday_weekcnt,      $info);
          $info = str_replace('%_WEEK_%',    $weeks[$holiday_week], $info);
          $text .= ",".$info;
        }
      }

      // ǯ��ȴ�Ϣ�Τ������
      else {
        // ��������Ƚ�������
        if ($holiday_year    == -1      &&
            $holiday_month   == $month  &&
            $holiday_day     == -1      &&
            $holiday_week    != -1      &&
            $holiday_weekcnt != -1) {
          $info = MODULE_CALENDAR_HOLIDAY_MONTHWEEKCNT;
          $info = str_replace('%_MONTH_%',   $holiday_month,        $info);
          $info = str_replace('%_WEEKCNT_%', $holiday_weekcnt,      $info);
          $info = str_replace('%_WEEK_%',    $weeks[$holiday_week], $info);
          $text .= ",".$info;
        }

        // ����������
        if ($holiday_year  == -1     &&
            $holiday_month == $month &&
            $holiday_day   != -1) {
          $info = MODULE_CALENDAR_HOLIDAY_MONTHDAY;
          $info = str_replace('%_MONTH_%', $holiday_month, $info);
          $info = str_replace('%_DAY_%',   $holiday_day,   $info);
          $text .= ",".$info;
        }

        // ǯ����������
        if ($holiday_year  == $year  &&
            $holiday_month == $month &&
            $holiday_day   != -1) {
          $info = MODULE_CALENDAR_HOLIDAY_MONTHDAY;
          $info = str_replace('%_MONTH_%', $holiday_month, $info);
          $info = str_replace('%_DAY_%',   $holiday_day,   $info);
          $text .= ",".$info;
        }
      }
    }

    return $text;
  }

  // �����Ķ������ɲä���
  function insertHoliday($year, $month, $day, $week, $weekcnt, $open=0) {
    global $db;
    $sql = "insert into ".TABLE_CALENDAR_HOLIDAYS." "
         . "(year, month, day, week, weekcnt, open) "
         . "values ("
         . $year.","
         . $month.","
         . $day.","
         . $week.","
         . $weekcnt.","
         . $open.")";
    $db->execute($sql);
  }

  // �����Ķ����򹹿�����
  function updateHoliday($id, $year, $month, $day, $week, $weekcnt, $open) {
    global $db;
    $sql = "update ".TABLE_CALENDAR_HOLIDAYS." "
         . "set "
         . "year    =".(int)$year.","
         . "month   =".(int)$month.","
         . "day     =".(int)$day.","
         . "week    =".(int)$week.","
         . "weekcnt =".(int)$weekcnt.","
         . "open    =".(int)$open." "
         . "where id=".(int)$id;
    $db->execute($sql);
  }

  // �����Ķ�����������
  function delHoliday($id) {
    global $db;
    $sql = "delete from ".TABLE_CALENDAR_HOLIDAYS." "
         . "where id=".(int)$id;
    $db->execute($sql);
  }

  // �������Ķ����Υǡ������������
  // ����С����ѿ�$addon_calendar����¸����ȤȤ��return
  function getHolidayWeekday() {
    global $db;
    global $addon_calendar;
    $sql            = "select id,year,month,day,week,weekcnt,open from ".TABLE_CALENDAR_HOLIDAYS
                    . " order by open,year,month,day,weekcnt,week,id";
    $result         = $db->execute($sql);
    $addon_calendar = array();
    while (!$result->EOF) {
      $addon_calendar[] = array(
        'id'     =>$result->fields['id'],
        'year'   =>$result->fields['year'],
        'month'  =>$result->fields['month'],
        'day'    =>$result->fields['day'],
        'week'   =>$result->fields['week'],
        'weekcnt'=>$result->fields['weekcnt'],
        'open'   =>$result->fields['open'],
      );
      $result->movenext();
    }

    return $addon_calendar;
  }

  // ����ǯ��Υ����������������
  function calCalendar($year, $month, $day=0) {
    $sundayStart       = MODULE_CALENDAR_START_SUNDAY == 'true';
    $calendar          = array();
    $calendar['year']  = $year;
    $calendar['month'] = $month;
    $calendar['today'] = -1;

    // ���Υ����ȥ����
    if ($sundayStart) { // ���ˤ��Ϥ�
      $week_header = array(MODULE_CALENDAR_SUN,
                           MODULE_CALENDAR_MON,
                           MODULE_CALENDAR_TUE,
                           MODULE_CALENDAR_WED,
                           MODULE_CALENDAR_THU,
                           MODULE_CALENDAR_FRI,
                           MODULE_CALENDAR_SAT);
      $week_style  = array("w0",
                           "w1",
                           "w2",
                           "w3",
                           "w4",
                           "w5",
                           "w6");
    }
    else {
      $week_header = array(MODULE_CALENDAR_MON,
                           MODULE_CALENDAR_TUE,
                           MODULE_CALENDAR_WED,
                           MODULE_CALENDAR_THU,
                           MODULE_CALENDAR_FRI,
                           MODULE_CALENDAR_SAT,
                           MODULE_CALENDAR_SUN);
      $week_style  = array("w1",
                           "w2",
                           "w3",
                           "w4",
                           "w5",
                           "w6",
                           "w0");
    }
    $calendar['week_header'] = $week_header;
    $calendar['week_style']  = $week_style;

    $dayCount     = countDays($year, $month);
    $weekOffset   = weekNo($year, $month, 1);
    $calendarDay  = array();
    $calendarAttr = array();
    $calendarOpen = array();

    // �����ޤǤζ���׻�
    if ($sundayStart) { // ���ˤ��Ϥ�
      for ($i=0; $i<$weekOffset; $i++) {
        $calendarDay[]  = 0;
        $calendarAttr[] = "d".$i;
        $calendarOpen[] = 0;
      }
    }
    else {
      $week = $weekOffset-1;
      if ($week < 0)
        $week = 6;
      for ($i=0; $i<$week; $i++) {
        $calendarDay[]  = 0;
        $calendarAttr[] = "d".($i+1)%7;
        $calendarOpen[] = 0;
      }
    }

    // ���շ׻�
    $nowyear  = date('Y');
    $nowmonth = date('m');
    $nowday   = date('d');

    for ($i=1; $i<=$dayCount; $i++) {
      $isOpen = isOpen($year,$month,$i);
      $rest   = $isOpen?"":"rest";
      $calendarDay[]  = $i;
      if ($year  == $nowyear  &&
          $month == $nowmonth &&
          $i     == $nowday) {
        $calendarAttr[]    = $rest."today";
        $calendar['today'] = count($calendarDay)-1;
        $calendarOpen[]    = $isOpen;
      }
      else {
        $calendarAttr[] = $rest."d".$weekOffset;
        $calendarOpen[] = $isOpen;
      }
      $weekOffset     = ($weekOffset+1)%7;
    }

    $calendarLine = ceil(count($calendarDay)/7);

    // �����ʹߤζ���
    $n = count($calendarDay);
    for ($i=$n; $i<$calendarLine*7; $i++) {
        $calendarDay[]  = 0;
        $calendarAttr[] = "d".$weekOffset;
        $weekOffset     = ($weekOffset+1)%7;
    }
    $calendar['calendarLine'] = $calendarLine;
    $calendar['calendarDay']  = $calendarDay;
    $calendar['calendarAttr'] = $calendarAttr;
    $calendar['calendarOpen'] = $calendarOpen;

    return $calendar;
  }

  // ����ǯ����������������ǧ����
  function isCorrectCalendar($year, $month, $day) {
    if ($year > 0)
      return checkdate($month, $day, $year);
    else
      return checkdate($month, $day, 2000);
  }

  function html_make_calendar($calendar) {
    $html  = '';
    $html .= '<div class="calendar">';
    $html .= '  <table>';

    $html .= '      <caption>'.sprintf(MODULE_CALENDAR_TITLE_STYLE,$calendar['year'],$calendar['month']) .'</caption>';
    $html .= '    <tr>';

    // ���إå�������
    for ($i=0; $i<count($calendar['week_header']); $i++) {
      $html .= '      <td class="'.$calendar['week_style'][$i].'">'.$calendar['week_header'][$i].'</td>';
    }
    $html .= '    </tr>';

    // ��������
    for ($i=0; $i<$calendar['calendarLine']; $i++) {
      $html .= '    <tr>';
      for ($j=0; $j<7; $j++) {
        $offset = $i*7+$j;
        if ($calendar['calendarDay'][$offset]==0)
          $html .= '      <td>&nbsp;</td>';
        else
          $html .= '      <td class="'.$calendar['calendarAttr'][$offset].'">'.$calendar['calendarDay'][$offset].'</td>';
      }
      $html .= '    </tr>';
    }
    $html .= '  </table>';
    $html .= '</div>';

    return $html;
  }

?>
