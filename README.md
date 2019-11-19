A simple package including "builder wrappers" for Rows, Columns and Wraps.

Adds the three new classes wich provide `ListView.builder(..)` and `ListView.seperated(...)` functionality to Columns, Rows and Wraps . All standard attributes can be passed through.

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
