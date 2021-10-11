import '../models/user.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppColorData {
  //General--------------------------------------------------
  static const Color primary = Color.fromRGBO(87, 51, 83, 1);
  static const Color bg = Color.fromRGBO(255, 241, 229, 1);
  static const Color floatingActionButtonBg = Color.fromRGBO(252, 157, 6, 1);
  static const Color floatingActionButtonSplash =
      Color.fromRGBO(242, 187, 137, 1);
  static const Color elevatedButtonBg = Colors.orange;
  static const Color primaryIcon = Color.fromRGBO(87, 51, 83, 1);
  static const Color buttonBg = Colors.orange;
  static const Color headline1 = Color.fromRGBO(87, 51, 83, 1);
  static const Color headline2 = Color.fromRGBO(87, 51, 83, 1);
  static const Color headline3 = Color.fromRGBO(87, 51, 83, 1);
  static const Color headline4 = Color.fromRGBO(87, 51, 83, 1);
  static const Color headline5 = Color.fromRGBO(87, 51, 83, 1);
  static const Color headline6 = Color.fromRGBO(87, 51, 83, 1);
  static const Color bodyText1 = Color.fromRGBO(87, 51, 83, 1);
  static const Color caption = Color.fromRGBO(87, 51, 83, 1);
  static const Color bodyText2 = Colors.orange;
  static const Color secondary = Colors.orange;
  static const Color secondaryIcon = Colors.orange;
  //-----------------------------------------------------------------------

  static const Color amPmActiveTxt = Color.fromRGBO(87, 51, 83, 1);
  static const Color amPmDisabledTxt = Colors.orange;
  static const Color amPmActiveBg = Colors.orange;
  static Color amPmDisabledBg = Colors.orange[50]!;
  static Color fireIcon = Colors.orange[100]!;
  static Color orangeLight = Colors.orange[50]!;
  static Color redLight = Colors.red[50]!;
  static Color redFill = Colors.red;
  static const Color habit3 = Color.fromRGBO(41, 49, 159, 1);
  static Color habit3light = Colors.blue[50]!;
  static const Color habit4 = Color.fromRGBO(152, 52, 86, 1);
  static Color habit4Light = Colors.purple[50]!;
  static Color squareEmpty = Colors.orange[100]!;
  static Color switchActive = Colors.orange[200]!;
  static Color switchInactive = Colors.indigo[100]!;
  static Color squareFill = Colors.orange;
  static Color timeTxt = Colors.orange[900]!;
  static Color appBar = Colors.transparent;
  static const Color deleteIcon = Colors.red;
  static const Color appBarButtonsPrimary = Colors.white60;
  static const Color appBarButtonsShadow = Colors.white70;
  static const Color playButton = Colors.white;
  static const Color coursePreviewShade = Colors.black45;
  static const Color secondaryTxt = Colors.grey;
  static const Color divider = Colors.grey;
  static Color share = Colors.grey[100]!;
  static const Color dropdownColor = Colors.white;
  static const Color habitDetailHeader = Colors.white;
  static const Color habitDetailGrid = Colors.white;
  static const Color congoSheetBg = Colors.white;
  static const Color loginSheetBg = Colors.white;
  static const Color socialLoginButton = Colors.white;
  static const Color socialLoginTxt = Colors.black;
  static const Color textField = Colors.white;
  static const Color habitTab = Colors.white;
  static const Color weekTab = Colors.white;
  static const Color courseCard = Colors.white;
  static const Color resetCard = Colors.white;
  static const Color gridTile = Colors.white;
  static const Color profileCard = Colors.white;
  static const Color priceCard = Colors.white;
  static const Color onBoardingBg = Colors.white;
  static const Color tabColor = Colors.white;
  static const Color markHabitAsMissedButton = Colors.white;
  static const Color bmAdded = Colors.green;
  static const Color timeSelected = Colors.black;
  static const Color checkColor = Colors.black;
  static const Color circularPercentBg = Colors.black12;
  static const Color logoutTheme = Colors.red;
  static const Color flashIcon = Colors.red;
  static Color circularPercentBg1 = Colors.red[100]!;
  static const Color circularPercent1 = Colors.red;
  static const Color fbIcon = Colors.blue;
  static Color barIcon = Colors.indigo[200]!;
  static Color premiumTimer = Colors.indigo[100]!;
  static Color flagIcon = Colors.blue[50]!;
  static Color profileDropdown = Colors.black54;
  static Color purpleButtonChild = Colors.white;
}

class AppConstant {
  static const String courseTitle =
      "30 Day Journal Challenge - Establish a Habit of Daily Journaling";
  static const String profile = "Profile";
  static const String readabook = "Read a book";
  static const String newhabit = "New Habit";
  static const String homepage = "Homepage";
  static const String community = "Community";
  static const String settings = "Settings";
  static const String courses = "Courses";
  static const String wefirstmakeourhabits =
      "WE FIRST MAKE OUR HABITS,\nAND THEN OUR HABITS\nMAKES US.";
  static const String anonymous = "\n- ANONYMOUS";
  static const String habits = "HABITS";
  static const String exercise = "Exercise";
  static const String wakeupearly = "Wake Up Early";
  static const String walkdog = "Walk Dog";
  static const String enterhabitname = "Enter habit name";
  static const String habitfrequency = "Habit Frequency";
  static const String remainder = "Reminder";
  static const String notification = "Notification";
  static const String select = "Select";
  static const String repeateveryday = "Repeat everyday";
  static const String remiders5am = "Reminders 5:00 am";
  static const String analytics = "Analytics";
  static const String twentydays = "20 Days";
  static const String largeststreak = "Largest Streak";
  static const String zerodays = "0 Days";
  static const String currentstreak = "Current Streak";
  static const String ninetyeight = "98%";
  static const String completionrate = "Completion Rate";
  static const String seven = "7";
  static const String avgEasinessScore = "Average Easiness Score";
  static const String congratulationsCapital = "CONGRATULATIONS!";
  static const String random =
      "nkjsdnvksdb snc scsdv cdcs jksd  \n ncdcdvksdb snc dbcjksd";
  static const String createANewHabit = "Create a new habit";
  static const String continueTxt = "Continue";
  static const String markHabitAsComplete = "Mark Habit as Complete";
  static const String markHabitAsMissed = "Mark Habit as Missed";
  static const String habitCourses = "HABIT\nCOURSES";
  static const String findWhatFascinates =
      "\nFind what fascinates you as you explore \n these habit courses.";
  static const String sortby = "Sort By:";
  static const String thirtySevenLessons = "37 Lessons (2h 41m)";
  static const String introduction = "1. Introduction";
  static const String adoptingPrompts = "2. Adopting Prompts to Covid-19..";
  static const String choosingANotebook = "3. Choosing a Notebook";
  static const String optionalSupplies = "4. Optional Supplies";
  static const String dayOne = "5. Day 1";
  static const String cdtime = "2:16";
  static const String checkYourProfile = "Check Your Profile";
  static const String emailId = "jonathansmith@gmail.com";
  static const String view = "View";
  static const String general = "General";
  static const String support = "Support";
  static const String customizeNotifications = "Customize notifications";
  static const String moreCustomization = "More customization";
  static const String customizeItMore = "Customize it more to fit your usage";
  static const String contact = "Contact";
  static const String feedback = "Feedback";
  static const String privacyPolicy = "Privacy Policy";
  static const String about = "About";
  static const String premium = "Premium";
  static const String sixtyPercentOff = "60% off on your upgrade";
  static const String expiresIn = "Expires in";
  static const String twentyThree = "23";
  static const String fiftySix = "56";
  static const String fortyEight = "48";
  static const String unlockMonumental = "Unlock Monumental Habits";
  static const String unlimitedHabits = "Unlimited habits";
  static const String accessToAllCourses = "Access to all courses";
  static const String accessToAllAvatar = "Access to all avatar illustrations";
  static const String nineteen = "\$19.00";
  static const String sixMonthPlan = "6-month plan for 39.99 usd";
  static const String monthly = "Monthly";
  static const String mostPopular = "Most Popular";
  static const String twentyNine = "\$29.00";
  static const String yearly = "Yearly";
  static const String fortyNine = "\$49.00";
  static const String lifetime = "Lifetime";
  static const String subscribeNow = "Subscribe Now";
  static const String securedWithGooglePlay =
      "Secured with Google Play.Cancel anytime";
  static const String restorePurchase = "Restore Purchase";
  static const String termsOfServices = "Terms of Service";
  static const String name = "Name";
  static const String totalWorkHours = "Total Work Hours";
  static const String eighteen = "18";
  static const String taskCompleted = "Task Completed";
  static const String twelve = "12";
  static const String yourPosts = "Your posts";
  static const String billingMethods = "Billing methods";
  static const String longestStreak = "Longest Streak";
  static const String twentyDays = "20 days";
  static const String createYourAccount = "CREATE YOUR ACCOUNT";
  static const String email = "  Email";
  static const String createAccount = "Create Account";
  static const String orSignInWith = "Or sign in with";
  static const String google = "Google";
  static const String facebook = "Facebook";
  static const String alreadyHaveAnAccount = "Already have an account? ";
  static const String signIn = "Sign In";
  static const String signUp = "Sign Up";
  static const String searchForCourses = "Search for courses";
  static const String course = "Course ";
  static const String randomSearch = "fdvfdvfdvdfv sdcds";
  static const String forgotYourPassword = "Forgot Your Password?";
  static const String enterYourRegisteredEmailBelow =
      "Enter your registered email below to receive \n password reset instruction";
  static const String enterEmail = "Enter Email";
  static const String sendResetLink = "Send Reset Link";
  static const String rememberPassword = "Remember Password? ";
  static const String login = "Login";
  static const String welcomeToMonumentalHabits =
      "WELCOME TO \n MONUMENTAL HABITS";
  static const String weCan = "WE CAN";
  static const String helpYou = " HELP YOU";
  static const String toBeBetter = " TO BE BETTER";
  static const String versionOf = " VERSION OF";
  static const String yourself = " YOURSELF.";
  static const String createNewHabitsEasily = "CREATE NEW \n HABITS EASILY";
  static const String keepTrackOfYourProgress =
      "KEEP TRACK OF YOUR \n PROGRESS";
  static const String joinASupportiveCommunity =
      "JOIN A SUPPORTIVE \n COMMUNITY";
  static const String getStarted = "Get Started";
  static const String skip = "Skip";
  static const String next = "Next";
  static const String post = "POST";
  static const String show = "Show";
  static const String hide = "Hide";
  static const String addNewPost = "Add new post";
  static const String writeSomethingHere = "Write something here";
  static const String continueWithGoogle = "Continue with Google";
  static const String continueWithFacebook = "Continue with Facebook";
  static const String logInWithEmail = "Log in with email";
  static const String password = "Password";
  static const String dontHaveAnAccount = "Don't have an account? ";
  static const String viewProfile = "View Profile";
  static const String bookmarks = "Bookmarks";
  static const String comments = "Comments";
  static const String save = "Save";
  static const String cancel = "Cancel";
  static const String am = "am";
  static const String pm = "pm";
  static const String addReminder = "Add Reminder";
  static const String logout = "Log out";
  static const String courseDuration = "2h 41m";
  static const String lessons = "37 Lessons";
  static const String ago = "41m ago";
  static const String likes = "3.1k";
  static const String twentytwo = "22";
  static const String commentRandom =
      "sdcsdcsd csdc dscdsc scds cdscdsc cdscdscdsc sdcdscdsc....!!!!!! ";
  static const String manYouAreMy =
      "Man you're my new guru!Viewing the lessons for a  second time.Thoroughly pleased And impressed that you draw from scientific literature in telling memorable...";
  static const String keepMeSignedIn = "Keep me signed in";
  static const String emailMeAbout = "Email me about special pricing and more";

  static const List<String> weeks = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thur',
    'Fri',
    'Sat'
  ];
  static const List<String> time = [
    '06:00 AM',
    '06:30 AM',
    '07:00 AM',
    '07:30 AM',
    '08:00 AM',
    '08:30 AM',
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
  ];
  static const List<String> options = ['This week', 'B', 'C', 'D'];
  static const List<String> comUsers = ['Jerome', 'Gretchen', 'Al', 'Colin'];
  static const List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  static const List<String> sortbyList = [
    'Popular',
    'Relevance',
    'Price-Low to High',
    'Price-High to Low',
    'Filter'
  ];
  static const List<String> searchResults = [
    "Course 1",
    "Course 2",
    "Course 3",
    "Course 4",
    "Course 5"
  ];
  static const Map<int, String> hFreq = {
    0: "Option 1",
    2: "Option 2",
    3: "Option 3",
    4: "Custom"
  };

  static UserModel user = UserModel(
      id: 12,
      email: 'abc@gmail.com',
      name: 'Marilyn Aminoff',
      age: 15,
      imgUrl: 'assets/images/man.jfif');
}

class Resource {
  static const String bg1 = 'assets/images/background/mountain2_bg.png';
  static const String addIcon = 'assets/images/icons/add_icon.svg';
  static const String doneIcon = 'assets/images/icons/done2_icon.svg';
  static const String doneIcon2 = 'assets/images/icons/done_icon.svg';
  static const String editIcon = 'assets/images/icons/edit_icon.svg';
  static const String menuIcon = 'assets/images/icons/menu_icon.svg';
  static const String girlIcon = 'assets/images/icons/girl_icon.png';
  static const String searchIcon = 'assets/images/icons/search_icon.svg';
  static const String homeIcon = 'assets/images/icons/home_icon.png';
  static const String courseIcon = 'assets/images/icons/courses_icon.png';
  static const String communityIcon = 'assets/images/icons/community_icon.png';
  static const String settingsIcon = 'assets/images/icons/settings_icon.png';
  static const String bookmarkIcon = 'assets/images/icons/bookmark_icon.svg';
  static const String fireIcon = 'assets/images/icons/fire_icon.svg';
  static const String shareIcon = 'assets/images/icons/share_icon.svg';
  static const String barIcon = 'assets/images/icons/bar_icon.svg';
  static const String leafIcon = 'assets/images/icons/leaf_icon.svg';
  static const String contactIcon = 'assets/images/icons/contact_icon.svg';
  static const String feedbackIcon = 'assets/images/icons/feedback_icon.svg';
  static const String privacyIcon = 'assets/images/icons/privacy_icon.svg';
  static const String flagIcon = 'assets/images/icons/flag_icon.svg';
  static const String billIcon = 'assets/images/icons/bill_icon.svg';
  static const String streakIcon = 'assets/images/icons/streak_icon.svg';
  static const String googleIcon = 'assets/images/icons/google_icon.svg';
  static const String fbIcon = 'assets/images/icons/fb_icon.svg';
  static const String lockIcon = 'assets/images/icons/lock.png';
  static const String alarmIcon = 'assets/images/icons/alarm_icon.svg';
  static const String helpIcon = 'assets/images/icons/help_icon.svg';
  static const String hsHeader = 'assets/images/settings_header.png';
  static const String hdHeader = 'assets/images/hdetail_header.png';
  static const String nhFooter = 'assets/images/new_habit_footer.png';
  static const String congoHeader = 'assets/images/congo_header.png';
  static const String courseHeader = 'assets/images/course_header.png';
  static const String course1 = 'assets/images/course_1.png';
  static const String course2 = 'assets/images/course2.png';
  static const String settingsHeader = 'assets/images/settings_header.png';
  static const String prmHeader = 'assets/images/pricing_header.png';
  static const String colon = 'assets/images/colon.png';
  static const String resetHeader = 'assets/images/lock.png';
  static const String signupHeader = 'assets/images/signup.png';
  static const String onboarding1 = 'assets/images/onboarding1.png';
  static const String onboarding2 = 'assets/images/onboarding2.png';
  static const String onboarding3 = 'assets/images/onboarding3.png';
  static const String onboarding4 = 'assets/images/onboarding4.png';
  static const String loginBg = 'assets/images/background/login_bg.png';
  static const String iconsFolder = 'assets/images/icons/';
  static const List<String> comUsers = [
    '_com1.png',
    '_com2.png',
    '_com3.png',
    '_com4.png'
  ];
}

class ViewRouter {
  static const String addPost = '/addPost';
  static const String yourPosts = '/your_posts';
  static const String newHabit = '/new';
  static const String profile = '/profile';
  static const String searchPage = '/search_page';
  static const String videoPlayer = '/vplayer';
  static const String pricing = '/pricing';
  static const String home = '/home';
  static const String login = '/login';
  static const String details = '/details';
  static const String habitDetails = '/habit_detail';
  static const String reset = '/reset';
  static const String signIn = '/sign';
  static const String bookmarks = '/bookmarks';
  static const String comments = '/comments';
  static const String a = '';
}

ThemeData appThemeData = ThemeData(
    primaryColor: const Color.fromRGBO(87, 51, 83, 1),
    brightness: Brightness.light,
    backgroundColor: const Color.fromRGBO(255, 241, 229, 1),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(252, 157, 6, 1),
        splashColor: Color.fromRGBO(242, 187, 137, 1)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.orange),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.5.h))))),
    primaryIconTheme: const IconThemeData(color: Color.fromRGBO(87, 51, 83, 1)),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.orange,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 19.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      headline3: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      headline4: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      headline6: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
        color: const Color.fromRGBO(87, 51, 83, 1),
      ),
      bodyText1: TextStyle(
          color: const Color.fromRGBO(87, 51, 83, 1),
          fontWeight: FontWeight.bold,
          fontSize: 12.sp),
      bodyText2: TextStyle(
          color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 12.sp),
      caption: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 8.sp,
          color: const Color.fromRGBO(87, 51, 83, 1)),
    ));
