
## Tutorial : ButtonFastor

### Feature Fastor
* Background color/image without use Container
* Padding without use Container
* Aspect Ratio Image 
* Radius Corner for Image
* On tap without use GestureDetector

### Set Image type url + Corner Radius + Background color + opacity + onPressed + margin


<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/image/landscape.png" height="300"/>

```
      ImageFastor(
        context:  context,
        width: 278,
        height: 181,
        margin: EdgeInsets.all( 10),
        radius_all: 25,
        boxFit_background: BoxFit.cover,
        urlBackground: square_url_image_example,
        colorBackground: Colors.amber,
        opacity: 0.7,
        onPressed: (){
          print("click on image");
        },
      );
    }
``` 

### Set Image type assets + Corner Radius

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/image/assets![img.png](img.png).png" height="300"/>

```
      return ImageFastor(
        context:  context,
        width: 300,
        height: 600,
        radius_all: 25,
        assetAspectRatio:  AssetImage("assets/images/background.png"),
      );
```
<hr class="solid">
