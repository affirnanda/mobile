

class ContainerEcample extends StatelessWwidght{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar:AppBar(
          title: Text("Container Example"),
        ),

        //body
        body: Center(
          child: Container(
            witdh:200,
            height:200,

            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.red, width: 5),
            ),
            child: Text("This is Container Example"),
          )
        )
      )
    );

    
  }
}