import 'package:flutter/material.dart';

class SliversPage extends StatefulWidget {
  static const routeName = 'slivers';
  const SliversPage({super.key});

  @override
  State<SliversPage> createState() => _SliversPageState();
}

class _SliversPageState extends State<SliversPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Slivers'),
                floating: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://picsum.photos/seed/picsum/200/300',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 9,
                  (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 9,
                  (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.red,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Item',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
