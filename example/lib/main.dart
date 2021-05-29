import 'package:flutter/material.dart';
import 'package:youtube_metadata/youtube_metadata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Metadata Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String hintText = "Paste the link here....";
  static MetaDataModel metaData;

  void _fetchMetadata(String link) async {
    try {
      metaData = await YoutubeMetaData.getData(link);
    } catch (e) {
      metaData = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onSubmitted: (e) => _fetchMetadata(e),
              decoration: InputDecoration(hintText: hintText),
            ),
            metaData == null
                ? Container()
                : Container(
                    child: Column(
                      children: [
                        Image.network(metaData.thumbnailUrl),
                        Divider(),
                        Text(metaData.title),
                        Divider(color: Colors.transparent),
                        Text(
                          '''channel name :  ${metaData.authorName} \n\nchannel url :${metaData.authorUrl}
                          ''',
                        ),
                        Divider(color: Colors.transparent),
                        Text('description: ${metaData.description}')
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
