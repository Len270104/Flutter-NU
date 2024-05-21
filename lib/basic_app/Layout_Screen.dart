import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildPageViewSlideShow(),
      ),
    );
  }

  List<Widget> containerList = [
    Container(width: 350, height: 350, color: Colors.red),
    Container(width: 150, height: 120, color: Colors.blue),
    Container(width: 80, height: 140, color: Colors.green),
    Container(width: 80, height: 180, color: Colors.pink),
    Container(width: 90, height: 100, color: Colors.lime),
    Container(width: 110, height: 120, color: Colors.indigo),
    Container(width: 120, height: 170, color: Colors.purple),
    Container(width: 110, height: 180, color: Colors.amber),
  ];

  Widget _buildPageViewSlideShow(){
    return Container(
      height: 300,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: containerList,
      ),
    );
  }

  Widget _buildPageView(){
    return PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: containerList,
    );
  }

  Widget _buildGridViewExtent(){
    return GridView.extent(
      maxCrossAxisExtent: 100,
      childAspectRatio: 3/4,
      physics: BouncingScrollPhysics(),
      children: containerList,
    );
  }

  Widget _buildGridView(){
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 3/4,
      physics: BouncingScrollPhysics(),
      children: containerList,
    );
  }

  Widget _buildListViewHorizontal(){
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: containerList,
      ),
    );
  }

  Widget _buildListView(){
    return ListView(
      physics: BouncingScrollPhysics(),
      children: containerList,
    );
  }

  Widget _buildStack(){
    return Stack(
      alignment: Alignment.center,
      children: containerList,
    );
  }

  Widget _buildColumn(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: containerList,
      ),
    );
  }

  Widget _buildRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: containerList,
    );
  }

}
