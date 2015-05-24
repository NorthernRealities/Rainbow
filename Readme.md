# Rainbow UIColor Extension

The primary function of the Rainbow UIColor extension is to provide developers with more colour choices within their applications.  Apple provides a limited number of pre-defined colours such as UIColor.blackColor() and UIColor.greenColor().  This library adds over 1500 more colours to be used.  I think it makes code much easier to read and much more understandable when someone comes across

    let backgroundColour = UIColor.airForceBlueRAFColor()

versus having to use the RGB values

    let backgroundColour = UIColor ( red: 93.0/255.0, green: 138.0/255.0, blue: 168.0/255.0, alpha: 1.0 )


Except for some obvious cases I'm not very good at looking at RGB values and determining what they will display.

The other function of the extension is to provide a helper function for the UIColor class that allows you to create color instances using Int values between 0 and 255 for the RBG values.  The value for the opacity (alpha) has a default value of 1.0.

As of May 7, 2015 I've release a set of files that you can download called [Rainbow-Palettes](https://github.com/NorthernRealities/Rainbow-Palettes) which will add the colours defined in this library to the colour picker in Xcode.

## Usage

To use the library download the file you want and import it into your project.  If you don't want all of colours then choose one of the subsets.  I will try to make sure that multiple subsets can be used together.  If you encounter a problem please let me know.

* __UIColor+Rainbow.swift__ - The complete palette of colours.  If you import this one into your project don't use any others.
* __UIColor+RainbowCrayons.swift__ - A subset that only includes colours that are or have been Crayola colours.
* __UIColor+RainbowGoogleDesign.swift__ - A subset that contains the colours from the Google design guidelines.  (Also known as their Material UI Colors.)
* __UIColor+RainbowLight.swift__ - A subset that contains the more common colours.  Please let me know if you think a colour should be in here.  This palette is one that I am choosing the colours for on my own.
* __UIColor+RainbowX11.swift__ - A palette that contains a subset which are the defined X11 colours.  They are also known as the web colours because all of the browsers define them along with the 16 colours defined in the HTML spec.  I've created this subset because I figured that it's probably a nice light-weight and balanced palette to make available.

If you can't find a colour in the library then take a look at the [Rainbow Creator](https://github.com/NorthernRealities/Rainbow-Creator) UIColor extension that allows you to create custom colours using Int values between 0 and 255 or hexidecimal values.  (It was part of this repository but I moved it into it's own to get ready for CocoaPods and Carthage support.)

## Future

In the short term I hope to release an app that will let you view the colours and perform searching.  I am continuing work on the app.  If anyone knows of a good library that lets you choose a colour from a colour wheel or something similar I would appreciate hearing about it.

In the longer term I want to add more colours to the library, either individually or through collections.  Ideally it would be great to get one or more of the paint manufacturers to give their permission to use their their palette.  I know that Pantone would achive the same thing but it would cost money to get the information and they would probably be opposed to it being publicly posted.  All information for the colours was obtained from Wikipedia.  I cleaned up any broken links or incorrect information that I came across while working on this project.  If you contribute a colour to the library please also let me know if I can add it to the list of colours on Wikipedia.

In the meantime you can view the colours at Wikipedia where I got the data for all of the colours at the pages.

* [List of Colors: A-F](https://en.wikipedia.org/wiki/List_of_colors:_A–F)
* [List of Colors: G-M](https://en.wikipedia.org/wiki/List_of_colors:_G–M)
* [List of Colors: N-Z](https://en.wikipedia.org/wiki/List_of_colors:_N–Z)
* [List of Crayola Crayon Colors](https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors)
* [X11 Color Names](https://en.wikipedia.org/wiki/X11_color_names)
* [Color - Style - Google Design Guidelines](http://www.google.com/design/spec/style/color.html#)


## Contact

If you find a problem, want to suggest a colour (or know someone I could approach about asking to use their colour set), suggest how something that can be done differently, or even say hi you can reach me on [@NrthrnRealities](https://twitter.com/NrthrnRealities) on Twitter.

## A Note About Spelling

I am terribly sorry about mixing up the spellings of colour and color.  I'm from Canada and we spell it with the 'u' and I can't get out of the habit.  However when it comes to function names, parameters, and other cases when it really counts I've strived to go against my instincts and spelt it without the extra letter as per the Apple standard.  In other cases I've allowed myself to spell it the proper way. :)  Please forgive me my little indulgence.