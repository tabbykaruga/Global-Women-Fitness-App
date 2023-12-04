import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ColorManager.dart';
import 'Padding.dart';
import 'Strings.dart';
import 'assetsManager.dart';

void genericErrorMessage(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s14)
          ),
          elevation: AppSize.s1_5,
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: ColorManager.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(AppSize.s14),
                boxShadow: const [BoxShadow(color: Colors.black26,
                    blurRadius: AppSize.s12,
                    offset: Offset(AppSize.s0,AppSize.s12))]
            ),
            child:Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: AppSize.s100,
                  width: AppSize.s100,
                  child: Lottie.asset(JsonAssets.error),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p18),
                    child: Text(message),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p18),
                  child: SizedBox(
                    width: AppSize.s180,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        style:  ButtonStyle(
                          backgroundColor:MaterialStatePropertyAll<Color>(ColorManager.primary),
                        ),
                        child: Text(AppString.retryAgain)),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
void message(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: ColorManager.blue,
          title: Column(
            children: [
              Center(
                child: Text(
                  message,
                  style: TextStyle(color: ColorManager.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p18),
                child: SizedBox(
                  width: AppSize.s180,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      style:  ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll<Color>(ColorManager.primary),
                      ),
                      child: const Text(AppString.OK)),
                ),
              ),
            ],
          ),
        );
      });
}
void loadingAnimation(BuildContext context){
  showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: SizedBox(
            height: AppSize.s100,
            width: AppSize.s100,
            child: Lottie.asset(JsonAssets.loading),
          ),
        );
      });
}

