## /lib/tutorial : ColumnFastor

### Feature Fastor 
* Have Decoration
* Have Space : Margin, Padding
* Have Alignment
* Can Set Fixed size width/height


### ColumnFastor

Using Fastor widget Scroll Horizontal for get ride of RenderFlex overflowed by pixels

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/lib/tutorial/column/thump.png" 
 height="300"/>

See source code compare between Fastor and Normal at this page

```
    ColumnFastor(
        children: getChildren(),
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.yellow //background color
        ),
    );
```
 

<hr class="solid">