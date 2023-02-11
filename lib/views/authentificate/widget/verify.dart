class Verify {
  ///si type =0 => text, si type =1 => email,si type =2 => password,si type =3 => numero
  verifyForm(type, data) {
    bool error = false;
    if (type == 1) {
      if (data.isNotEmpty) {
        if (!data.contains(RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$"))) {
         

          error = true;
        } else {
          error = false;
        }
        if (data.isEmpty) {
          error = false;
        }
      }
    } else if (type == 0) {
      error = !(RegExp(r"^[a-zA-Z0-9]").hasMatch(data) &&
              data.length > 3 &&
              data.length < 10 /* &&
          isNumeric(data) */
          );
    } else if (type == 3) {
      error = !(RegExp(r'^(0|[1-9]\d*)$').hasMatch(data) && data.length == 9);
     
    }

    return error;
  }

  bool isNumeric(String s) {
    print('object');
    print(s);
    if (s == null) {
      return true;
    }
    // ignore: deprecated_member_use, unnecessary_null_comparison
    return (double.parse(s) != null);
  }
}
