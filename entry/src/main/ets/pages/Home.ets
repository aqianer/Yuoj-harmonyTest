import TabBar from '../view/TabBar';
import { CommonConstant as Const } from '../common/constant/CommonConstant';
import SearchViewModel from '../viewmodel/SearchViewModel';
import SearchInput from '../view/SearchInput';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Home {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()
  @State searchArr: Array<string> = SearchViewModel.getSearchArrData();
  pathStack: NavPathStack = new NavPathStack()

  // 全局设置一个NavPathStack
  aboutToAppear(): void {
    AppStorage.setOrCreate("PathStack", this.pathStack)
  }

  @Builder
  tabBuilder(title: string, targetIndex: number) {
    Column() {
      Text(title).fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }.width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Navigation(this.pathStack) {
      Column() {
        Tabs({ barPosition: BarPosition.End, controller: this.controller, index: this.currentIndex }) {
          TabContent() {
            Column() {
              // 搜索框
              SearchInput({ searchArr: $searchArr })
              TabBar()
            }
            .width(Const.FULL_WIDTH)
            .backgroundColor($r('app.color.listColor'))
            .justifyContent(FlexAlign.Center)
          }.tabBar(this.tabBuilder('首页', 0))

          TabContent() {
            Column() {
              Text('发现的内容')
            }.width('100%').height('100%').backgroundColor('#007DFF').justifyContent(FlexAlign.Center)
          }.tabBar(this.tabBuilder('发现', 1))

          TabContent() {
            Column() {
              Text('推荐的内容')
            }.width('100%').height('100%').backgroundColor('#FFBF00').justifyContent(FlexAlign.Center)
          }.tabBar(this.tabBuilder('推荐', 2))

          TabContent() {
            Column() {
              Text('我的内容')
            }.width('100%').height('100%').backgroundColor('#E67C92').justifyContent(FlexAlign.Center)
          }.tabBar(this.tabBuilder('我的', 3))
        }
        .vertical(false)
        .barMode(BarMode.Fixed)
        .barHeight(Const.TabBars_BAR_HEIGHT)
        .barWidth(Const.TabBars_BAR_WIDTH)
        .animationDuration(0)
        .onChange((index: number) => {
          this.currentIndex = index
        })
        .width('100%')
        .backgroundColor('#F1F3F5')
        .scrollable(false)
      }.width('100%').height('100%')
    }
    .mode(NavigationMode.Auto)

  }
}
