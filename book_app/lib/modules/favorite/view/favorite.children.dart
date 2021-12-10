part of 'favorite_screen.dart';

extension _FavoriteChildernScreen on FavoriteScreen {
  Widget _tabdata(
      {required List<UIItem> lstData, required Function(int) onclick}) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () => onclick(lstData[index].id ?? 0),
            child: itemDetail(itemModel: lstData[index]));
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 32,
      ),
      itemCount: lstData.length,
    );
  }

  Widget itemDetail({required UIItem itemModel, bool isRequired = true}) {
    return Container(
      width: isRequired ? Get.width : (Get.width - 64) / 3,
      child: isRequired
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FCoreImage(
                      itemModel.bookImage ?? '',
                      height: 170,
                      width: 150,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(itemModel.name ?? 'Literary Fiction',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColor.kLightBlackColor,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            )
          : Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: FCoreImage(
                      itemModel.bookImage ?? '',
                      height: 170,
                      width: 150,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Text(itemModel.name ?? 'Literary Fiction',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColor.kLightBlackColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
    );
  }

  Widget _suggestData({required List<UIItem> lstData}) {
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
