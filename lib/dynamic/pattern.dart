
// root element
sealed class Element {
  String get();
}


// html element
sealed class HtmlElement extends Element {

}

final class Div extends HtmlElement {
  String get() {
    return "";
  }
}

final class Span extends HtmlElement {
  String get() {
    return "";
  }
}

final class Paragraph extends HtmlElement {
  String get() {
    return "";
  }
}

final class Image extends HtmlElement {
  String get() {
    return "";
  }
}


// internal element
sealed class InternalElement extends Element {

}

final class Text extends InternalElement {
  String get() {
    return "";
  }
}

final class HtmlLiteral extends InternalElement {
  String get() {
    return "";
  }
}

final class Nothing extends InternalElement {
  String get() {
    return "";
  }
}


// custom element
sealed class CustomElement extends Element {

}



String getElement(Element element) {
  return switch (element) {
    HtmlElement html => switch (html) {
      Div div => '<div>' + div.get() + '</div>',
      Span span => '<span>' + span.get() + '</span>',
      Paragraph paragraph => '<p>' + paragraph.get() + '</p>',
      Image image => '<img src="' + image.get() + '" />',
      _ => throw UnimplementedError(),
    },
    InternalElement internal => switch (internal) {
      Text text => text.get(),
      HtmlLiteral htmlLiteral => htmlLiteral.get(),
      Nothing nothing => nothing.get(),
      _ => throw UnimplementedError(),
    },
    CustomElement custom => custom.toString(),
    _ => throw UnimplementedError(),
  };
}
