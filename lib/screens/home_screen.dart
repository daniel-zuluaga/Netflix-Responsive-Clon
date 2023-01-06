import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clon_responsive/cubits/cubits.dart';
import 'package:netflix_clon_responsive/data/data.dart';
import 'package:netflix_clon_responsive/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        context.read<AppBarCubit>().setOffset(_scrollController.offset);
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 50),
          child: BlocBuilder<AppBarCubit, double>(
            builder: (context, scrollOffset) {
              return CustomAppBar(scroolOffset: scrollOffset);
            },
          )),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
          SliverToBoxAdapter(
              child: ContentHeader(
            featuredContent: sintelContent,
          )),
          SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: PageStorageKey("previews"),
                title: "Previews",
                contentList: previews,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("myList"),
                title: "My List",
                contentList: myList,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("originals"),
                title: "Netflix Originals",
                contentList: originals,
                isOriginals: true,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: PageStorageKey("trending"),
                title: "Trending",
                contentList: trending,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[900],
        child: const Icon(Icons.cast_rounded),
      ),
    );
  }
}
