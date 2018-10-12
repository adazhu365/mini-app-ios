# ios-mini-app-zhangzhu

Guangda Zhu & Siteng Zhang

Device Name: iphone 5s

Project/App Title: iosbucket app

Basic instructions on usage:

1) Click + button on the top right corner to add new items
2) Swipe left on each item to edit/mark as done
3) Items that are marked as done will move to bottom 

Any special info we need to run the app:
No

Lessons learned:
Similar to the Android Bucketlist App, we have functions add, edit, done on this ios one. In this practice, we learned to open new page with pre-set information that asks for new inputs and saves those inputs back to the main page. This is quite similar to what we do on android, but when draging items from storyboard to view controller, it is important to differentiate between IB outlet and action. I didn't pay attention to this part at first and ended up spending a lot of time trying to set up the save button for "add". We also learn to make sure that once "save" is clicked, we will go back to the main page instead of staying on the new one till "back" is clicked. 

We also learned to apply the swipe action that can then show edit / done. We also learn to change the picture for app when shown on the screen, and add names to the launch screen storyboard. Another thing we learn is to change the color of the item when its state is changed. 

To move the completed item down to bottom of the list, we also learned to add new boolean field done to the bucket item which is default to be false and flip when done is clicked. We then sort the list based on date and done status. 


Basic Functionality added: when click on the plus sign on top right corner, a new activity will open, asking for inputs in name, description, etc. This is related to the overall app project because we will need to have add function and store inputs back to the bucket list. 
