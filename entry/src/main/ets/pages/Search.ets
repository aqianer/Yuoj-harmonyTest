import SearchInput from '../view/SearchInput';
import SearchViewModel from '../viewmodel/SearchViewModel';

@Entry
@Component
struct SearchPage {
  @State searchArr: Array<string> = SearchViewModel.getSearchArrData();

  build() {
    Column() {
      // 搜索框
      SearchInput({ searchArr: $searchArr, allowJump: false })
      // 历史搜索

      // 猜你喜欢

      // 热帖，热门话题，排行榜
      Row() {

      }
    }

  }
}