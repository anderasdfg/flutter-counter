import 'package:flutter/material.dart';


class ContadorPage  extends StatefulWidget {

  @override
 createState(){
  return _ContadorPageState();  
 }

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _count = 0;   
 
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,        
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Número de taps:', style: _estiloTexto,),
             Text('$_count', style: _estiloTexto,)
           ],
          ),
        ),  
       floatingActionButton: _crearBotones()        
     ); 
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _minus,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _add ,),
      ],
    );    
  }

  void _add(){    
    setState(() => _count++);
  }
  void _minus(){    
    setState(() => _count--);
  }
  void _reset(){    
    setState(() => _count=0);
  }
}