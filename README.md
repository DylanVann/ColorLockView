#DVColorLockView

<p align="center"><img src="http://i.imgur.com/5yQZ0Wn.gif"/></p>

UITableViewCell highlighting does not change the color of DVColorLockViews.

- DVColorLockView overides the backgroundColor setter for UIView. 
- Highlighting a UITableViewCell changes the background color of all it's subviews, it's annoying.
- Highlighting a UITableViewCell won't change the color of its DVColorLockView subviews.

##Installation
In your podfile:
<pre>pod 'DVColorLockView', :git => 'https://github.com/DylanVann/DVColorLockView.git', :tag => 'v0.1.0'</pre>

##Licence
MIT
