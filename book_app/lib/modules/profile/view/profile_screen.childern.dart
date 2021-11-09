part of 'profile_screen.dart';

extension _ProfileScreenChildren on ProfileScreen {
  Widget _detailEditText({
    required BuildContext context,
    required String lable,
    TextInputType? inputType,
    required bool enableController,
    required TextEditingController controller,
    bool? obscureText,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(lable, style: TextAppStyle().textTitleTypeStyle()),
          const SizedBox(
            height: 8,
          ),
          TextField(
            enabled: enableController,
            style: const TextStyle(
              color: AppColor.textBlack,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            controller: controller,
            keyboardType: inputType,
            obscureText: obscureText!,
            decoration: const InputDecoration(
                isDense: true,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(0)),
          ),
        ],
      ),
    );
  }

  Widget _infoDetail({required List<InfoDetailModel> lstInfoDetail}) {
    return ListView.separated(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              
            },
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(lstInfoDetail[index].title,
                      textAlign: TextAlign.center,
                      style: TextAppStyle().textTitleTypeStyle()),
                  const Icon(
                    Icons.navigate_next_rounded,
                    size: 20,
                    color: Color(0xff333333),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemCount: 2);
  }
}

class InfoDetailModel {
  final String title;
  InfoDetailModel(this.title);
}
