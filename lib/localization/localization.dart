import 'package:get/get.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "id": {
          "welcome": "Selamat datang !",
          "somethingWentWrong": "Terjadi kesalahan",
          "enterYourEmail": "Masukkan email Anda",
          "password": "Kata sandi",
          "enterYourPassword": "Masukkan kata sandi Anda",
          "forgotPassword": "Lupa sandi?",
          "resetPassword": "Ubah Kata Sandi",
          "provideEmail":
              "Harap berikan kami alamat email yang terkait dengan akun Anda. Setelah kami memverifikasi email Anda, kami akan mengirimkan petunjuk rinci tentang cara mengatur ulang kata sandi Anda dengan aman.",
          "yourEmail": "Email Anda :",
          "reset": "Ubah",
          "checkYourEmail": "Periksa Email Anda",
          "checkYourEmailMessage":
              "Email untuk mengatur ulang kata sandi telah berhasil dikirimkan ke alamat email Anda. Silakan cek kotak masuk Anda dan ikuti petunjuk di dalamnya untuk melanjutkan proses pengaturan ulang kata sandi. Terima kasih!",
          "didn'tReceiveEmail":
              "Tidak menerima email? Periksa di spam anda, atau",
          "signInToYourAccount": "Masuk ke akun Anda",
          "tryAnotherEmail": "coba email lain",
          "signIn": "Masuk",
          "or": "Atau",
          "don'tHaveAnAccountYet": "Belum punya akun?",
          "register": "Daftar",
          "createAnAccount": "Daftar akun",
          "name": "Nama",
          "enterYourName": "Masukkan nama Anda",
          "signUp": "Daftar",
          "alreadyHaveAnAccount": "Sudah punya akun?",
          "hadithNarrators": "Perawi Hadis",
          "chooseNarrator": "Pilih perawi",
          "hadithNumber": "Nomor hadis",
          "hadith": "hadis",
          "Hadith": "Hadis",
          "Number": "Nomor",
          "addCard": "Tambah Kartu",
          "review": "Ulas",
          "profile": "Profil",
          "youDon'tHaveAnyFlashcard": "Kamu tidak punya Flashcard",
          "addYourFlashcard": "Tambahkan Flashcard Anda",
          "youDon'tHaveFlashcardsToReview":
              "Kamu tidak mempunyai Flashcard untuk diulas :(",
          "addMoreFlashcards": "Tambahkan lebih banyak Flashcard",
          "youAreInGuestMode": "Anda dalam mode tamu",
          "back": "Kembali",
          "MyFlashcard": "Flashcard Saya",
          "myFlashcard": "Flashcard saya",
          "language": "Bahasa",
          "darkMode": "Mode Gelap",
          "rateUs": "Beri rating",
          "help": "Bantuan",
          "aboutApp": "Tentang aplikasi",
          "privacyPolicy": "Kebijakan privasi",
          "shareApp": "Bagikan aplikasi",
          "chooseLanguage": "Pilih bahasa :",
          "signOut": "Keluar",
          "thisCannotBeEmpty": "Tidak boleh kosong",
          "invalidEmailFormat": "Format email salah",
          "lengthIsTooShort": "Terlalu pendek",
          "nameCannotBeFilledWithNumbers": "Nama tidak bisa diisi dengan angka",
          "stringFailure": "Kesalahan dalam teks",
          "congratsYouHaveCompletedToday'sFlashcard":
              "Selamat! Kamu telah menyelesaikan ulasan kartu hari ini",
          "addToFlashcard": "Tambahkan menjadi flashcard",
          "flashcardAddedSuccessfully": "Flashcard berhasil ditambahkan !",
          "reviewCard": "Ulas kartu",
          "close": "Tutup",
          "delete": "Hapus",
          "areYouSureWannaDelete": "Apakah Anda ingin menghapus",
          "areYouSureWantToResetYourFlashcardProgress":
              "Flashcard ini telah ditambahkan, jika kamu menambahkan ulang proses flashcard akan direset. Apakah kamu yakin?",
          "yes": "Ya",
          "no": "Tidak",
          "helpSection":
              "Anda akan melihat pertanyaan dari Flashcard, coba lantunkan hadis dari pertanyaan tersebut. Setelah selesai melantunkannya semampu Anda, tekan kartu untuk membalik pertanyaan menjadi jawaban. Kemudian nilai secara subjektif sejauh mana Anda dapat mengingat hadis tersebut dalam skala 0 hingga 5. Selanjutnya, tekan tombol kualitas yang sesuai dengan tingkat ingatan yang Anda rasakan. Berikut keterangan tentang tombol kualitas :",
          "quality0": "Sama sekali tidak ingat",
          "quality1": "Menjawab salah, jawaban yang benar masih bisa diingat",
          "quality2": "Menjawab salah, jawaban yang benar mudah untuk diingat",
          "quality3": "Menjawab benar, mengingat dengan susah payah",
          "quality4": "Menjawab benar, tetapi dengan keragu - raguan",
          "quality5": "Menjawab benar dengan sempurna",
          "privacyPolicyText":
              "Saat Anda menggunakan aplikasi Hadith Flashcard kami, Anda mempercayai kami dengan informasi Anda. Karena kami sangat berkomitmen terhadap privasi Anda, maka Kebijakan Privasi ini dimaksudkan untuk membantu Anda memahami data apa yang kami kumpulkan dan mengapa kami memerlukannya. Ini sangat penting; Kami harap Anda meluangkan waktu untuk membacanya dengan seksama. Kami akan menjelaskannya dengan sejelas mungkin.",
          "privacyPolicyTitle1": "Mengumpulkan Informasi Perangkat :",
          "privacyPolicyTitle2": "Mengumpulkan Email :",
          "privacyPolicyTitle3": "Informasi Keamanan :",
          "privacyPolicyText1":
              "Aplikasi Hadith Flashcard ini menggunakan Google Firebase Analytics (salah satu produk milik Google) untuk mengumpulkan informasi seperti model perangkat, versi sistem operasi, dan fitur apa saja yang sering dibuka pada aplikasi ini. Informasi ini kami gunakan untuk memahami pengalaman pengguna di aplikasi ini, sehingga aplikasi ini dapat menjadi lebih baik pada pembaruan berikutnya. Penting untuk diketahui, hampir seluruh aplikasi yang ada di Google Play Store menggunakan Google Firebase Analytics.",
          "privacyPolicyText2":
              "Aplikasi Hadith Flashcard ini menggunakan Google Firebase Authentication untuk \"Sign-In\" di aplikasi kami, sehingga kami dapat mengidentifikasi data Terakhir Baca dan Bookmark milik Anda saat menggunakan fitur otomatis menyimpan data tersebut ke Server kami. Jadi, secara tidak langsung, alamat Email Anda akan tersimpan di dashboard Firebase dan Server kami. Penting untuk diketahui, Firebase adalah salah satu produk milik Google, dan Google tidak akan mengizinkan seluruh pengembang (termasuk kami) untuk mengetahui kata sandi (password) Anda dengan cara apa pun. Jadi, Anda tidak perlu khawatir akan kehilangan akun Email Anda karena \"Sign-In\" di aplikasi kami. Kami hanya mengumpulkan alamat Email untuk mempermudah identifikasi Flashcard milik Anda, dan kami tidak akan membagikan alamat Email Anda kepada siapa pun untuk tujuan apa pun.",
          "privacyPolicyText3":
              "Kami telah menerapkan langkah-langkah keamanan administratif dan teknis yang dianggap sangat canggih untuk melindungi data dan privasi Anda.",
          "youDon'tHaveNarratorflashcards":
              "Anda tidak memiliki flashcard perawi @narrator"
        },
        "en": {
          "welcome": "Welcome !",
          "somethingWentWrong": "Something went wrong",
          "enterYourEmail": "Enter your email",
          "password": "Password",
          "enterYourPassword": "Enter your password",
          "forgotPassword": "Forgot password?",
          "resetPassword": "Reset Password",
          "provideEmail":
              "Please provide us with the email address associated with your account. Once we verify your email, we will send you detailed instructions on how to reset your password securely.",
          "yourEmail": "Your Email :",
          "reset": "Reset",
          "checkYourEmail": "Check Your Email",
          "checkYourEmailMessage":
              "The email to reset your password has been successfully sent to your email address. Please check your inbox and follow the instructions in it to continue the password reset process. Thank You!",
          "didn'tReceiveEmail":
              "Didn't receive the email? Check your spam filter, or",
          "signInToYourAccount": "Sign in to your account",
          "tryAnotherEmail": "try another email address",
          "signIn": "Sign In",
          "or": "Or",
          "don'tHaveAnAccountYet": "Don't have an account yet?",
          "register": "Register",
          "createAnAccount": "Create an account",
          "name": "Name",
          "enterYourName": "Enter your name",
          "signUp": "Sign Up",
          "alreadyHaveAnAccount": "Already have an account?",
          "hadithNarrators": "Hadith Narrators",
          "chooseNarrator": "Choose narrator",
          "hadithNumber": "Hadith number",
          "hadith": "hadith",
          "Hadith": "Hadith",
          "Number": "Number",
          "addCard": "Add Card",
          "review": "Review",
          "profile": "Profile",
          "youDon'tHaveAnyFlashcard": "You don't have any flashcards",
          "addYourFlashcard": "Add Your Flashcard",
          "youDon'tHaveFlashcardsToReview":
              "You don't have flashcards to review :(",
          "addMoreFlashcards": "Add More Flashcards",
          "youAreInGuestMode": "You are in guest mode",
          "back": "Back",
          "MyFlashcard": "My Flashcard",
          "myFlashcard": "My flashcard",
          "language": "Language",
          "darkMode": "Dark Mode",
          "rateUs": "Rate us",
          "help": "Help",
          "aboutApp": "About app",
          "privacyPolicy": "Privacy policy",
          "shareApp": "Share app",
          "chooseLanguage": "Choose language :",
          "signOut": "Sign Out",
          "thisCannotBeEmpty": "This cannot be empty",
          "invalidEmailFormat": "Invalid email format",
          "lengthIsTooShort": "Length is too short",
          "nameCannotBeFilledWithNumbers": "Name cannot be filled with numbers",
          "stringFailure": "String failure",
          "congratsYouHaveCompletedToday'sFlashcard":
              "Congrats! You have completed today's flashcard review",
          "addToFlashcard": "Add to flashcard",
          "flashcardAddedSuccessfully": "Flashcard added successfully !",
          "reviewCard": "Review Card",
          "close": "Close",
          "delete": "Delete",
          "areYouSureWannaDelete": "Are you sure want to delete",
          "areYouSureWantToResetYourFlashcardProgress":
              "This flashcard has already been added, if it is added again the flashcard process will be reset. Are you sure?",
          "yes": "Yes",
          "no": "No",
          "helpSection":
              "As you encounter a question on the flashcard, try to recite the hadith based on the question. After finishing reciting to the best of your ability, tap the card to flip the question into the answer. Then, subjectively rate how well you remember the hadith on a scale of 0 to 5. Subsequently, press the quality button that aligns with your perceived memory level. The following is an explanation about the quality button :",
          "quality0": "Complete blackout",
          "quality1": "Incorrect response, the correct one remembered",
          "quality2":
              "Incorrect response, where the correct one seemed easy to recall",
          "quality3": "Correct response, recalled with serious difficulty",
          "quality4": "Correct response, after a hesitation",
          "quality5": "Perfect response",
          "privacyPolicyText":
              "When you use our Hadith Flashcard app, you trust us with your information. Because we are deeply committed to your privacy, this Privacy Policy is intended to help you understand what data we collect and why we need it. This is important; we hope you take the time to read it carefully. We will explain it as clearly as possible.",
          "privacyPolicyTitle1": "Collecting Device Information :",
          "privacyPolicyTitle2": "Collecting Email :",
          "privacyPolicyTitle3": "Security Information :",
          "privacyPolicyText1":
              "The Hadith Flashcard app uses Google Firebase Analytics (a product owned by Google) to collect information such as device model, operating system version, and which features are frequently accessed in the app. We use this information to understand user experience and improve the app in future updates. It's important to note that nearly all apps on Google Play Store use Google Firebase Analytics.",
          "privacyPolicyText2":
              "The Hadith Flashcard app uses Google Firebase Authentication for \"Sign-In\" in our app, allowing us to identify your Last Read and Bookmark data by automatically saving it to our server. Therefore, your email address will be indirectly stored in our Firebase dashboard and server. It's important to know that Firebase is a Google product, and Google does not allow developers (including us) to know your password in any way. So, you don't need to worry about losing your email account due to \"Sign-In\" in our app. We only collect your email address to facilitate the identification of your Flashcard, and we will not share your email address with anyone for any purpose.",
          "privacyPolicyText3":
              "We have implemented administrative and technical security measures believed to be very advanced to protect your data and privacy.",
          "youDon'tHaveNarratorflashcards":
              "You don't have narrator @narrator flashcards"
        },
      };
}
