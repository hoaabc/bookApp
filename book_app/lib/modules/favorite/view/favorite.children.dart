part of 'favorite_screen.dart';

extension _FavoriteChildernScreen on FavoriteScreen {
  Widget _tabdata({required List<FavoriteModel> lstData}) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return itemDetail(itemModel: lstData[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 32,
      ),
      itemCount: lstData.length,
    );
  }

  Widget itemDetail(
      {required FavoriteModel itemModel, bool isRequired = true}) {
    return Container(
      width: isRequired ? Get.width : (Get.width - 64) / 3,
      child: isRequired
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FCoreImage(itemModel.image,
                      width: (Get.width - 64) / 3,
                      height: (Get.width - 64) / 3,
                      fit: BoxFit.fill),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(itemModel.title,
                            style: TextAppStyle().textTitleTypeStyle()),
                        const SizedBox(height: 8),
                        Text(itemModel.content,
                            style: TextAppStyle().textTitleExpantedStyle())
                      ]),
                )
              ],
            )
          : Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FCoreImage(itemModel.image,
                      width: (Get.width - 64) / 3,
                      height: (Get.width - 64) / 3,
                      fit: BoxFit.fill),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(itemModel.title,
                    style: TextAppStyle().textTitleTypeStyle())
              ],
            ),
    );
  }

  Widget _suggestData({required List<FavoriteModel> lstData}) {
    return Container(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return itemDetail(itemModel: lstData[index], isRequired: false);
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: lstData.length),
    );
  }
}
