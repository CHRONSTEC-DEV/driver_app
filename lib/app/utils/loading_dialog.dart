import 'package:get/get.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

progressDialogLoading(context, String text,
    {String loadingText = "En Cours"}) async {
  ProgressDialog pd = ProgressDialog(context: context);

  /// show the state of preparation first.
  pd.show(
    barrierDismissible: true,
    msg: '$text...',
    progressType: ProgressType.valuable,
    max: 100,
  );

  /// Added to test late loading starts
  await Future.delayed(Duration(milliseconds: 5000));
  // for (int i = 0; i <= 100; i++) {
  //   /// You can indicate here that the download has started.
  //   // pd.update(value: i, msg: '$loadingText ...');
  //   // i++;
  //   await Future.delayed(Duration(milliseconds: 25));
  // }
  Get.back();
}
