# Luvit Table

A few useful functions that luas builtin table lib lacks  

```
> lit install kaustavha/luvit-table
local table = require('luvit-table').table
```

## table.tablePrint(table, indent, done)

Prints a table with the specified indentation.  
Default indent is 0.  
Default done is {}.  

## table.toString(arg)

Wrapper around table print. Handles nil and string type values as well. 

## table.tableToString(tbl, delim)

Converts a table to a string with the specified delimiter, defaults to `,`.

## table.merge(...)

Merges a series of lua tables.  

## table.safeMerge(table1, table2)

Similiar to merge but will do a table.insert if the second argument is a string, and a merge if the second arg is a table. 

## table.contains(func, table)

Executes function `func` on each member of the supplied table returning true on the first member which results in a positive bool result form the function. 

## table.includes(value, data)

Wrapper over table.contains, checks talbe for value `value`

## table.deepCopy(table)

Returns a copy of the supplied table with a recursive deep copy and cloned metatable. 

## table.valueToStr(value)

Converts a value to a string

## table.keyToStr(key)

Converts a key to a string. Relies on valueToStr for non-string keys to convert to a string and returns a key quoted string i.e. `"[key]"`

## Testing:
```
lit install luvit/tap
luvit test.lua
```

## TODO:
Add tests and improve docs.
