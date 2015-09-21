When starting animation programmaticaly offset table content

```
contentOffset = CGPointMake(0, -refresh.bounds.size.height)
refresh.beginRefreshing()
```

On interaction completion do following

1) Stop animation

```
(controller.table as! TableWithRefresh).refresh.endRefreshing()
```

2) Set table data

```
setTableCells()
```

3) Reset table content offset. Set animated true if table was previously empty.

```
(controller.table as! TableWithRefresh).setContentOffset(CGPointZero, animated: wasEmpty)
```
