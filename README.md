# frankified-hello-world

Trying out Frank by using it to automate IOS hello world app

### To run tests

Install Frank (see http://testingwithfrank.com/)

git clone [this repo]

cd HelloWorld/Frank/

cucumber features/main_window.feature 

### Notes

If the simulator locks up with black screen when using 'frank launch' you need to select 'Reset Content and Settings...' in the IOS simulator menu

Scenarios do not start in a default state every time as it takes too long to launch the app in the simulator. For now, I have added a background task which resets the text field back to its original state before each scenario is executed.