import 'package:get/get.dart';
import 'bookmark_item_model.dart';

class BookmarkModel {
  RxList<BookmarkItemModel> bookmarkItemList =
      RxList.filled(0, BookmarkItemModel());
}
