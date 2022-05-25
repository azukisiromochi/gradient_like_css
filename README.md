# gradient_like_css

The `gradient_like_css` package for Flutter allows you to experience CSS-like gradients in your Flutter app.

<br>

## Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  gradient_like_css: ^0.5.0
```

### 2. Install it

You can install packages from the command line:

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:gradient_like_css/gradient_like_css.dart';
```

<br>

## Usage

To import `CssLike`:

```dart
import 'package:gradient_like_css/gradient_like_css.dart';
```

To use `CssLike` with the `BoxDecoration`:

```dart
BoxDecoration(
  gradient: linearGradient(-225, ['#69EACB', '#EACCF8 48%', "#6654F1"]),
);
```

<br> 

## Example

### `CssLike.linearGradient()`

#### 🎨 Gradient at the default angle

<img src="https://raw.githubusercontent.com/azukisiromochi/gradient_like_css/main/display/CssLike_linearGradient__example1.png" align="right" height="300px">

with `CSS`:

```css
background: linear-gradient(#e66465, #9198e5);
```

with `Flutter`:

```dart
Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    gradient: linearGradient(null, ['#e66465', '#9198e5']),
  ),
);
```

>  _\*Note: If the first argument is `null`, a 180 degree angular gradient is created._

<br>

#### 🎨 Gradient at a 45-degree angle

<img src="https://raw.githubusercontent.com/azukisiromochi/gradient_like_css/main/display/CssLike_linearGradient__example2.png" align="right" height="300px">

with `CSS`:

```css
background: linear-gradient(45deg, red, blue);
```

with `Flutter`:

```dart
Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    gradient: linearGradient(45, ['red', 'blue']),
  ),
);
```

>  _\*Note: The `color` argument  can use [X11/CSS3 color](https://en.wikipedia.org/wiki/Web_colors#X11_color_names) names._

<br>

#### 🎨 Gradient that starts at 60% of the gradient line

<img src="https://raw.githubusercontent.com/azukisiromochi/gradient_like_css/main/display/CssLike_linearGradient__example3.png" align="right" height="300px">

with `CSS`:

```css
background: linear-gradient(135deg, orange, orange 60%, cyan);
```

with `Flutter`:

```dart
Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    gradient: linearGradient(135, ['orange', 'orange 60%', 'cyan']),
  ),
);
```

>  _\*Note: You can add a color-stop points using the `stop` argument. It can be used with % such as `'orange 60%'`._

<br>

#### 🎨 Gradient with multi-position color stops

<img src="https://raw.githubusercontent.com/azukisiromochi/gradient_like_css/main/display/CssLike_linearGradient__example4.png" align="right" height="300px">

with `CSS`:

```css
background: linear-gradient(to right,
     red 20%, orange 20% 40%, yellow 40% 60%, green 60% 80%, blue 80%);
```

with `Flutter`:

```dart
Container(
  height: 300,
  width: 300,
  decoration: BoxDecoration(
    gradient: linearGradient(Alignment.centerRight, 
      ['red 20%', 'orange 20% 40%', 'yellow 40% 60%', 'green 60% 80%', 'blue 80%']),
  ),
);
```

>  _\*Note: The first argument can be `Alignment` as well as angle._

<br>

### `WebColors` / `X11Colors`

To use `X11Colors`:

```dart
Container(
    color: X11Colors.MediumSpringGreen.color,
);
```

To use `WebColors`  by [X11/CSS3 color](https://en.wikipedia.org/wiki/Web_colors#X11_color_names) names:

```dart
Container(
    // Can be used in lowercase too
    color: WebColors.of('MediumSpringGreen').color,
);
```

<br>

## Features

- `radialGradient()`
- `conicGradient()` ( `sweepGradient`  )

<br>

## Bugs or Requests

If you encounter any problems feel free to open an [issue](https://github.com/azukisiromochi/gradient_like_css/issues/new?template=bug_report.md). If you feel the library is missing a feature, please raise a [ticket](https://github.com/azukisiromochi/gradient_like_css/issues/new?template=feature_request.md) on GitHub and I'll look into it. Pull request are also welcome.