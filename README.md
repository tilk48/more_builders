A simple package including "builder wrappers" for Rows, Columns and Wraps.

Adds the three new classes wich provide `ListView.builder(..)` and `ListView.seperated(...)` functionality to Columns, Rows and Wraps . All standard attributes can be passed through. Alternatively the plugin provides extensions on Row, Column and Wrap. As dart [does currently not support](https://github.com/dart-lang/language/issues/723) factories in extensions you have call the extension on an actual instance of Row, Column or Wrap like this `Row().builder(..)`.

# Example

    final  List<String> items;
    
    @override
    Widget build(BuildContext context) {
	    return BuilderRow(
		    itemNumber: items.length,
		    itemBuilder: (context, index){
			    return  Text(items[index]);
		    },
		    seperatorBuilder: (context, index){
			    return  VerticalDivider(width:  10,);
		    },
	     );
    }
