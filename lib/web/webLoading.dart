import "dart:html";
import "LoadingClass.dart";
abstract class LoadingClass{

  static void RemoveHeader() =>
          () {
            DivElement loadingElement = querySelector(".loading");
            if (loadingElement != null) loadingElement.remove();
          };
}