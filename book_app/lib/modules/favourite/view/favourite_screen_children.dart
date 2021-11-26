part of 'favourite_screen.dart';

extension _FavouriteChildren on FavouriteScreen {
  Widget _itemBookFavouriteHistory({required BookDetailModel? bookItem}) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: FCoreImage(
              ImageConstants.book_demo,
              width: 150,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' vu trung kien',
                    overflow: TextOverflow.ellipsis,
                    style: TextAppStyle().textAuthorBookStyle()),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Lần trước xem đến: Cheapter 1 [65%]',
                  style: TextAppStyle().textTitleProductStyle(),
                ),
                // Container(
                //   padding: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: AppColor.primaryHintColorLight.withOpacity(0.5),
                //   ),
                //   child: Text(' Ngôn tình ',
                //       style: TextAppStyle().texttitleStyle()),
                // ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          )
        ]));
  }

  Widget _getListBookItemHistory(
      {required List<FavoriteModel> lstFavouriteBook}) {
    return ListView.separated(
        // padding: const EdgeInsets.all(4),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _itemBookFavouriteHistory(bookItem: BookDetailModel());
        },
        separatorBuilder: (context, index) => const SizedBox(
              width: 16,
            ),
        itemCount: lstFavouriteBook.length);
  }

  // Widget itemDetail(
  //     {required FavoriteModel itemModel, bool isRequired = true}) {
  //   return Container(
  //     width: isRequired ? Get.width : (Get.width - 64) / 3,
  //     child: isRequired
  //         ? Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               ClipRRect(
  //                 borderRadius: BorderRadius.circular(8),
  //                 child: FCoreImage(itemModel.image,
  //                     width: (Get.width - 64) / 3,
  //                     height: (Get.width - 64) / 3,
  //                     fit: BoxFit.fill),
  //               ),
  //               const SizedBox(
  //                 width: 16,
  //               ),
  //               Expanded(
  //                 child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(itemModel.title,
  //                           style: TextAppStyle().textTitleContactStyle()),
  //                       const SizedBox(height: 8),
  //                       Text(itemModel.content,
  //                           style: TextAppStyle().textTitleExpantedStyle())
  //                     ]),
  //               )
  //             ],
  //           )
  //         : Column(
  //             children: [
  //               ClipRRect(
  //                 borderRadius: BorderRadius.circular(8),
  //                 child: FCoreImage(itemModel.image,
  //                     width: (Get.width - 64) / 3,
  //                     height: (Get.width - 64) / 3,
  //                     fit: BoxFit.fill),
  //               ),
  //               const SizedBox(
  //                 width: 16,
  //               ),
  //               Text(itemModel.title,
  //                   style: TextAppStyle().textTitleContactStyle())
  //             ],
  //           ),
  //   );
  // }

  // Widget _suggestData({required List<FavoriteModel> lstData}) {
  //   return GridView.extent(
  //       maxCrossAxisExtent: 150,
  //       padding: const EdgeInsets.all(4),
  //       mainAxisSpacing: 4,
  //       crossAxisSpacing: 4,
  //       children: _buildGridTileList(count: lstData.length, lstData: lstData));
  // }

  // List<Container> _buildGridTileList(
  //         {count, required List<FavoriteModel> lstData}) =>
  //     List.generate(
  //         count,
  //         (i) => Container(
  //             child: itemDetail(itemModel: lstData[i], isRequired: false)));
}
