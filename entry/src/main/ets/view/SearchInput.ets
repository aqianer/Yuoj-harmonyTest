/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import StyleConstants from '../common/constant/StyleConstants';

@Component
export default struct SearchInput {
  @State searchInput: string = '';
  @Link searchArr: Array<string>;
  @State allowJump: boolean = true
  @State defaultText: string = ''
  @State isSearchPage: boolean = false
  pathStack: NavPathStack = new NavPathStack()
  controller: SearchController = new SearchController()

  aboutToAppear() {
    // query navigation info
    let navigationInfo: NavigationInfo = this.queryNavigationInfo() as NavigationInfo
    this.pathStack = navigationInfo.pathStack;
  }

  build() {
    Flex({ alignItems: ItemAlign.Center }) {
      // Search component.
      // TODO 焦点管理
      // TODO placeholder的滚动显示
      Search({
        value: this.searchInput,
        placeholder: StyleConstants.SEARCH_PLACEHOLDER,
        icon: StyleConstants.SEARCH_ICON
      })
        .placeholderColor($r('app.color.placeholder_color'))
        .placeholderFont({ size: $r('app.float.font_size') })
        .textFont({ size: $r('app.float.font_size') })
        .height(StyleConstants.SEARCH_HEIGHT)
        .width(StyleConstants.SEARCH_WIDTH)
        .backgroundColor(Color.White)
        .margin({
          left: $r('app.float.margin_left'),
          right: $r('app.float.margin_right'),
          top: $r('app.float.margin_top_bottom'),
          bottom: $r('app.float.margin_top_bottom')
        })
        .border({
          width: $r('app.float.border_width'),
          color: $r('app.color.border_color'),
          radius: $r('app.float.border_radius'),
          style: BorderStyle.Solid
        })
        .cancelButton({
          style: CancelButtonStyle.INPUT,
          icon: {
            // TODO 待替换
            src: $r('app.media.ic_no_search')
          }
        })
        .onChange((value: string) => {
          this.searchInput = value;
        })// .cancelButton()
        .onClick(() => {
          if (this.allowJump) {
            this.pathStack.pushPath({ name:'Search' })
            // router.pushUrl({ url: 'pages/Search' }).then().catch()
          }
        })// TODO 搜索框事件回调
        .onSubmit(() => {
          if (this.searchInput !== '' && this.searchInput.trim().length > 0) {
            // Use unshift to add data to the array header.
            this.searchArr.unshift(this.searchInput.trim());
          }
          this.searchInput = '';
        })
      // Search Text.
      if (this.isSearchPage) {
        Text('取消')
          .fontSize($r('app.float.font_size'))
          .fontColor($r('app.color.search_font_color'))
          .onClick(() => {
            this.pathStack.clear()
          })
      } else {
        // 首页
        // 默认是 加号
        // TODO 更多按钮
        Text('更多')
          .fontSize($r('app.float.font_size'))
          .fontColor($r('app.color.search_font_color'))
      }
    }
    .width(StyleConstants.FULL_PERCENT)
  }
}
