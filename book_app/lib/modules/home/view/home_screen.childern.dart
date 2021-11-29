part of 'home_screen.dart';

extension _OnboardingChildern on HomeScreen {


  Widget _lstGenres({required List<GenreUIItem> lstGenres}) {
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 16,
          ),
          child: Row(
            children: List<Widget>.generate(
              lstGenres.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: FCoreImage(
                        lstGenres[index].genreImage ?? '',
                        height: 170,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(lstGenres[index].genreName ?? 'Literary Fiction',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColor.primaryTextColorLight,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
