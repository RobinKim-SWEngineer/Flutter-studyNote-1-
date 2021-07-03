# Flutter-studyNote-1-
Widget, the rough equivalent to Android's View

## Widget ?
-	Widgets are immutable. Flutter creates new widget instances whenever there is a change in widgets.

-	They are not directly drawing anything ( Since they aren't views ) but rather describing UI

## How to update it ?
-	We need to work with the widget's `state` because they aren’t updated directly. In android, views are updated by just mutating them.

-	Conceptually there are two widgets, which are `Stateful` and `Stateless`. Both rebuild every frame, but StatefulWidget can store and restore the state data through it’s `State object`
    >> If the widget changes, then it is stateful. If not, for example, like ImageView or text, which doesn't change during the runtime is stateless.

- See attached file ‘Example_StatefulWidget’ to see how to change the text using `StatefulWidget` dynamically.
