

## Getting started

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
 SizedBox(
      width: context.width,
      child: Column(children: [
        TimelineFlutter(
          title: "11",
          width: context.width,
          height: WidgetSizes.spacingOneHundred,
          circleWidget: _circleTextWidget(context, "1"),
          contentChild: Container(
            color: Colors.red,
          ),
        ),
        TimelineFlutter(
          title: "11",
          width: context.width,
          height: WidgetSizes.spacingTwoHundred,
          circleWidget: _circleTextWidget(context, "2"),
          contentChild: ColoredBox(color: Colors.blue),
        ),
        TimelineFlutter(
          contentChild: ColoredBox(color: Colors.black45),
          title: "11",
          width: context.width,
          height: WidgetSizes.spacingTwoHundredFifty,
          circleWidget: _circleTextWidget(context, "3"),
        )
      ]),
    );
```

##  Example UI




