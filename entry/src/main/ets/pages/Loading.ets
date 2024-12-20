@Entry
@Component
struct PageLoading {
  @State isLoading: Boolean = true;

  aboutToAppear(): void {
    // 模拟网络请求操作，请求网络3秒后得到数据，通知组件，变更列表数据
    setTimeout(() => {
      this.isLoading = false;
    }, 60000);
  }

  build() {
    Stack() {
      if (this.isLoading) {
        Column() {
          LoadingProgress()
            .color(Color.White)
            .width(80).height(80)
          Text('努力加载中..')
            .fontSize(16)
            .fontColor(Color.White)
        }
        .width('100%')
        .height('100%')
        .backgroundColor('#40000000')
        .justifyContent(FlexAlign.Center)
      } else {
        Column(){
          Text('主页')
        }
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}