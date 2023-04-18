import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 40),
          Text('Best Seller', style: Styles.textStyle18),
          SizedBox(height: 20),
          BestSellerLitViewItem(),
        ],
      ),
    );
  }
}

class BestSellerLitViewItem extends StatelessWidget {
  const BestSellerLitViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(width: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and theGoblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
