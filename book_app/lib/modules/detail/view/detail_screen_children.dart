part of 'detail_screen.dart';

extension _DetailChildern on DetailScreen {
  Widget _inforBook({required DetailBookUIModel? bookItem}) {
    if (bookItem == null) {
      return const SizedBox.shrink();
    }
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: FCoreImage(
              bookItem.bookImage ?? '',
              width: 150,
              height: 170,
              fit: BoxFit.cover,
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
                Text(bookItem.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextAppStyle().textRestPasswordStyle()),
                const SizedBox(
                  height: 8,
                ),
                Text(bookItem.author?.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextAppStyle().textAuthorBookStyle()),
                const SizedBox(
                  height: 8,
                ),
                _genresBook(lstgenres: bookItem.genres ?? []),
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

  Widget _genresBook({required List<GenreUIItem> lstgenres}) {
    return Wrap(
        runSpacing: 8,
        children: List<Widget>.generate(lstgenres.length, (index) {
          return Text(lstgenres[index].genreName ?? '',
              style: TextAppStyle().textAddressStyle());
        }));
  }

  Widget _readMoreDescription({
    required String description,
    required String rating_point,
    required String status,
    required Function onChangeData,
  }) {
    double result = double.parse(rating_point);
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
              Row(
                children: [
                  RatingBar.builder(
                    onRatingUpdate: (rating) {
                      print('$rating');
                    },
                    itemSize: 20,
                    initialRating: result,
                    minRating: 1.0,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_sharp,
                      color: Colors.amber,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      onChangeData();
                    },
                    icon: Icon(
                      Icons.create_outlined,
                      color: AppColor.contractInfoColor,
                    ),
                  ),
                ],
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

  Widget _listChapters({required List<Episode> lstEpisode}) {
    return Container(
        child: ListView.separated(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                title: Text(
                  lstEpisode[index].name ?? '',
                  style: TextAppStyle().textWalletStyle(),
                ),
                subtitle: Text(
                  '${lstEpisode[index].status}',
                  style: TextAppStyle().textContentOnboardingStyle(),
                ),
                onTap: () {
                  Get.toNamed(Routes.READING_BOOK,
                      arguments: lstEpisode[index].contentUrl);
                },
              );
            },
            separatorBuilder: (context, index) => Container(
                height: 1, color: AppColor.dividerColorLightBottomSheet),
            itemCount: lstEpisode.length));
  }

  Widget _commentBook({required List<Comment> lstComment}) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 18,
                    child: ClipOval(
                        child: FCoreImage(ImageConstants.background_login)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      lstComment[index].user?.username ?? '',
                      style: TextAppStyle().textTitleExpantedStyle(),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: ReadMoreText(
                  lstComment[index].commentContent ?? '',
                  trimLines: 2,
                  style: TextAppStyle().textTitleExpantedStyle(),
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              )
            ],
          ),
        );
      },
      itemCount: lstComment.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 12,
      ),
    );
  }

  Widget _bottomBarDetail() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: AppColor.dividerColorLightBottomSheet,
        width: 1,
      ))),
      padding: const EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 16),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.share_outlined,
              color: Colors.pink,
              size: 24.0,
            ),
          ),
          Expanded(
              flex: 3,
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.contractInfoColor),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Center(
                      child:
                          Text('Read', style: TextAppStyle().textNextStyle())),
                ),
              )),
        ],
      ),
    );
  }

  Widget _pushCommentBook({
    required TextEditingController controler,
    required BuildContext context,
    required FormFieldValidator<String>? validator,
    required String hintText,
    required Function onChangeData,
    bool? isRequiredIconSearch = true,
    required Function onPressed,
    
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColor.color45C152.withOpacity(0.1),
            AppColor.color0ADC90.withOpacity(0.1),
          ],
        ),
      ),
      child: TextFormField(
        controller: controler,
        validator: validator,
       // onChanged: onChangeData(),
        maxLines: 1,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
        decoration: InputDecoration(
          contentPadding:
              isRequiredIconSearch! ? null : const EdgeInsets.only(left: 12),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: IconButton(
            onPressed:()=> onPressed(),
            // onPressed,
            icon: Icon(
              Icons.send_outlined,
              color: AppColor.contractInfoColor,
            ),
          ),
        ),
      ),
    );
  }
}
