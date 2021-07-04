# Flutter-studyNote-1-
Widget, the rough equivalent to Android's View

## Widget ?
-	Widgets are immutable. Flutter creates new widget instances whenever there is a change in widgets.

-	They are not directly drawing anything ( Since they aren't views ) but rather *describing UI* with current configuration and state.

-   A widget's main job is to implement a `build()` function and describe the widget.
    
    >> In Flutter, layout is written in a widget tree unlike Android, which is in XML.

## How to update it ?
-	We need to work with the widget's `state` because they aren’t updated directly. In android, views are updated by just mutating them.

-	Conceptually there are two widgets, which are `Stateful` and `Stateless`. Both rebuild every frame, but StatefulWidget can store and restore the state data through it’s `State object`
    >> If the widget changes, then it is stateful. If it doesn't alter during the runtime ( Background image, App title text etc.), then it is stateless.

-   You will often author new widgets that are subclasses of either StatelessWidget or StatefulWidget.

-   Attached file ‘Ex_StatefulWidget’ shows how to change the text using `StatefulWidget` dynamically.
