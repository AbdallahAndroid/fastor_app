## /lib/tutorial : CheckboxFastor

### Feature Fastor 
+ set color from constructor for active/inactive: color_inactive, color_active
+ Set Text Style : color, font size, weight.
+ Remove default padding found when use normal checkbox widget.
 
### Get Start 

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/lib/tutorial/checkbox/thump.png"
height="300"/>

#### Simple Example
* Create Variable at class
```
  bool isAgree = false;
```

* Create Widget

```
    return CheckboxFastor( context: context, value: isAgree,
        margin: EdgeInsets.only(top: 10),
        text: "Are you agree to terms and condition.",
        text_color: Colors.brown,
        text_dimen: 20,
        color_inactive : Colors.brown,
        color_active: Colors.green,
        onChanged:  (updatedValue) {
          setState(() {
            isAgree = updatedValue!;
          });
        }
    );
```
  
---

---