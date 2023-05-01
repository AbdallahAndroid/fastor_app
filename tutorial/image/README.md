
## Tutorial : ButtonFastor

### Feature Fastor
* Background color/image without use Container
* Padding without use Container
* Aspect Ratio Image 
* Radius Corner for Image
* On tap without use GestureDetector

### Image Square Shape + Corner Radius + Background


<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/image/thump.png" height="300"/>

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

<hr class="solid">
