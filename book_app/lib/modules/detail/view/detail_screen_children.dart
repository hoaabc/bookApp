part of 'detail_screen.dart';

extension _DetailChildern on DetailScreen {
  Widget _inforBook() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: FCoreImage(
              ImageConstants.book_demo,
              height: 100,
              width: 150,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('kien trun vu',
                  overflow: TextOverflow.ellipsis,
                  style: TextAppStyle().textRestPasswordStyle()),
              const SizedBox(height: 4),
              Text('kien trun vu',
                  overflow: TextOverflow.ellipsis,
                  style: TextAppStyle().textAuthorBookStyle()),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.primarySelectedColorLight,
                ),
                // child: Text(),
              )
            ],
          )
        ]));
  }
}
