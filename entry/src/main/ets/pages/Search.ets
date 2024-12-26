import { TitleBarStyle, TRANSITION_ANIMATION_DURATION } from '../common/constant/CommonConstant';
import StyleConstants from '../common/constant/StyleConstants';
import FlexLayout from '../view/FlexLayout';
import SearchInput from '../view/SearchInput';
import SearchViewModel from '../viewmodel/SearchViewModel';
import { inputMethod } from '@kit.IMEKit';
import RankPage from '../view/RankPage';

@Entry
@Component
struct SearchPage {
  @State searchArr: Array<string> = SearchViewModel.getSearchArrData();
  pathStack: NavPathStack = AppStorage.get("PathStack") as NavPathStack
  @State isRefreshData: boolean = true; // User click the button to decide whether to switch data.
  @State isSwitchDataSource: boolean = true;
  @State title: Resource = $r('app.string.title');

  aboutToAppear(): void {
    // build之前去请求数据
    // 历史搜索 应该存在本地
    // 猜你喜欢 用户强相关
    // 热门话题排行 站点搜索
  }

  build() {
    NavDestination() {
      Column() {
        // 搜索框 点击不跳转
        SearchInput({ searchArr: $searchArr, allowJump: false, isSearchPage: true })
        // 历史搜索
        if (!(this.searchArr.length == 0)) {
          Flex({ alignItems: ItemAlign.Center }) {
            Text($r('app.string.recent_searches'))
              .fontSize($r('app.float.font_size'))
              .fontColor($r('app.color.recent_search_font_color'))
              .fontWeight(StyleConstants.FONT_WEIGHT)
              .height(StyleConstants.RECENT_TEXT_HEIGHT)
              .layoutWeight(StyleConstants.LAYOUT_WEIGHT)
              .margin({
                left: $r('app.float.margin_left'),
                top: $r('app.float.clear_text_top'),
                bottom: $r('app.float.clear_text_bottom')
              })

            Image($r('app.media.ic_delete'))
              .height(StyleConstants.DELETE_IMAGE_HEIGHT)
              .width(StyleConstants.DELETE_IMAGE_WIDTH)
              .margin({ right: $r('app.float.clear_image_right') })
              .onClick(() => {
                // TODO 弹框确认
                this.searchArr.splice(0, this.searchArr.length);
                this.searchArr.length = 0;
              })
          }

          FlexLayout({ searchArr: $searchArr })
        }
        // 猜你喜欢
        Flex({ alignItems: ItemAlign.Center }) {
          // TODO 插入小火苗图片
          Text($r('app.string.guess_likes'))
            .fontSize($r('app.float.font_size'))
            .fontColor($r('app.color.recent_search_font_color'))
            .fontWeight(StyleConstants.FONT_WEIGHT)
            .height(StyleConstants.RECENT_TEXT_HEIGHT)
            .layoutWeight(StyleConstants.LAYOUT_WEIGHT)
            .margin({
              left: $r('app.float.margin_left'),
              top: $r('app.float.clear_text_top'),
              bottom: $r('app.float.clear_text_bottom')
            })
        }
        // 弹性布局渲染数据
        FlexLayout({ searchArr: $searchArr })
        // 热帖，热门话题，排行榜
        Flex({ alignItems: ItemAlign.Center }) {
          Text(this.title)
            .fontSize($r('app.float.font_size'))
            .fontColor($r('app.color.recent_search_font_color'))
            .fontWeight(StyleConstants.FONT_WEIGHT)
            .height(StyleConstants.RECENT_TEXT_HEIGHT)
            .layoutWeight(StyleConstants.LAYOUT_WEIGHT)
            .margin({
              left: $r('app.float.margin_left'),
              top: $r('app.float.clear_text_top'),
              bottom: $r('app.float.clear_text_bottom')
            })


          Image($r('app.media.loading'))
            .height(StyleConstants.REFRESH_IMAGE_HEIGHT)
            .width(StyleConstants.REFRESH_IMAGE_WIDTH)
            .margin({ right: $r('app.float.clear_image_right') })
            .onClick(() => {
              this.isRefreshData = !this.isRefreshData;
            })
        }

        Row() {
          // TODO 先解决样式参考 https://developer.huawei.com/consumer/cn/codelabsPortal/carddetails/tutorials_NEXT-RankingDemo
          RankPage({isRefreshData: $isSwitchDataSource})

        }
      }
      .onTouch(()=>{
        inputMethod.getController().stopInputSession();
      })
      .height(StyleConstants.FULL_PERCENT)
      .width(StyleConstants.FULL_PERCENT)
      .alignItems(HorizontalAlign.Center)
      .backgroundColor($r('app.color.index_background'))
    }
    .hideTitleBar(true)
    .mode(NavDestinationMode.STANDARD)
  }



  /**
   * Page transition parameters are configured using the global pageTransition method.
   *
   * SlideEffect.Bottom Slides in from the bottom of the screen when entering.
   * SlideEffect.Bottom slides out from the bottom of the screen when exiting.
   */
  pageTransition() {
    PageTransitionEnter({ duration: TRANSITION_ANIMATION_DURATION, curve: Curve.Smooth }).slide(SlideEffect.Bottom);
    PageTransitionExit({ duration: TRANSITION_ANIMATION_DURATION, curve: Curve.Smooth }).slide(SlideEffect.Bottom);
  }
}

@Builder
export function SearchBuilder() {
  SearchPage()
}
