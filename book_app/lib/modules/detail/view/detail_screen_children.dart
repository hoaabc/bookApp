part of 'detail_screen.dart';

extension _DetailChildern on DetailScreen {
  Widget _inforBook({required BookDetailModel? bookItem}) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
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
                Text(bookItem!.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextAppStyle().textRestPasswordStyle()),
                const SizedBox(
                  height: 8,
                ),
                Text(' vu trung klien',
                    overflow: TextOverflow.ellipsis,
                    style: TextAppStyle().textAuthorBookStyle()),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.primaryHintColorLight.withOpacity(0.5),
                  ),
                  child: Text(' Ngoon tinhf ',
                      style: TextAppStyle().texttitleStyle()),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FCoreImage(ImageConstants.icon_like_count,
                                fit: BoxFit.cover, height: 25, width: 25),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(bookItem.likeCount.toString(),
                                style: TextAppStyle().textdescriptionStyle()),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FCoreImage(ImageConstants.icon_view_count,
                                fit: BoxFit.cover, height: 25, width: 25),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(bookItem.viewCount.toString(),
                                style: TextAppStyle().textdescriptionStyle()),
                          ],
                        ),
                      )
                    ])
              ],
            ),
          ),
         
        ]));
  }

  Widget _readMoreDescription(
      {required String description,
      required int rating_point,
      required String status}) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(status,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600)),
              RatingBar.builder(
                onRatingUpdate: (rating) {
                  print('$rating');
                },
                itemSize: 20,
                initialRating: rating_point.toDouble(),
                minRating: 1.0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star_sharp,
                  color: Colors.amber,
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            ReadMoreText(
              description,
              trimLines: 5,
              style: TextAppStyle().textTitleExpantedStyle(),
              colorClickableText: Colors.blue,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Show more',
              trimExpandedText: ' show less',
            ),
          ],
        ));
  }

  Widget _listChapters() {
    return Container(
        child: Scrollbar(
      child: ListView.separated(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReadingChapter()),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chapter', style: TextAppStyle().textWalletStyle()),
                    const SizedBox(
                      height: 12,
                    ),
                    Text('Date',
                        style: TextAppStyle().textContentOnboardingStyle()),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Container(
              height: 1, color: AppColor.dividerColorLightBottomSheet),
          itemCount: 10),
    ));
  }
}
