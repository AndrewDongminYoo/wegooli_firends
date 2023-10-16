import '../../../core/app_export.dart';
import 'list_item_model.dart';

/// This class defines the variables used in the [contact_us_inquiry_history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactUsInquiryHistoryModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(8, (index) => ListItemModel()));
}
