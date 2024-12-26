/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
import NewsTypeModel from '../../viewmodel/NewsTypeModel';

export class CommonConstant {

  /**
   * The host address of the server.
   */
  static readonly SERVER: string = 'http://10.242.174.164:9588';

  /**
   * Get the news type.
   */
  static readonly GET_NEWS_TYPE: string = 'news/getNewsType';

  /**
   * Get the news list.
   */
  static readonly GET_NEWS_LIST: string = 'news/getNewsList';

  /**
   * The request success status code.
   */
  static readonly SERVER_CODE_SUCCESS: number = 0;

  /**
   * The off set coefficient.
   */
  static readonly Y_OFF_SET_COEFFICIENT: number = 0.1;

  /**
   * The page size.
   */
  static readonly PAGE_SIZE: number = 4;

  /**
   * The refresh and load height.
   */
  static readonly CUSTOM_LAYOUT_HEIGHT: number = 70;

  /**
   * Http request success status code.
   */
  static readonly HTTP_CODE_200: number = 200;

  /**
   * The animation delay time.
   */
  static readonly DELAY_ANIMATION_DURATION: number = 300;

  /**
   * The delay time.
   */
  static readonly DELAY_TIME: number = 1000;

  /**
   * The animation duration.
   */
  static readonly ANIMATION_DURATION: number = 2000;

  /**
   * The http timeout duration.
   */
  static readonly HTTP_READ_TIMEOUT: number = 10000;

  /**
   * Full the width.
   */
  static readonly FULL_WIDTH: string = '100%';

  /**
   * Full the height.
   */
  static readonly FULL_HEIGHT: string = '100%';

  /**
   * The TabBars constants.
   */
  static readonly TabBars_UN_SELECT_TEXT_FONT_SIZE: number = 18;
  static readonly TabBars_SELECT_TEXT_FONT_SIZE: number = 24;
  static readonly TabBars_UN_SELECT_TEXT_FONT_WEIGHT: number = 400;
  static readonly TabBars_SELECT_TEXT_FONT_WEIGHT: number = 700;
  static readonly TabBars_BAR_HEIGHT: string = '7.2%';
  static readonly TabBars_HORIZONTAL_PADDING: string  = '2.2%';
  static readonly TabBars_BAR_WIDTH: string = '100%';
  static readonly TabBars_DEFAULT_NEWS_TYPES: Array<NewsTypeModel> = [
    { id: 0, name: '全部' },
    { id: 1, name: '国内' },
    { id: 2, name: '国际' },
    { id: 3, name: '娱乐' },
    { id: 4, name: '军事' },
    { id: 5, name: '体育' },
    { id: 6, name: '科技' },
    { id: 7, name: '财经' }
  ];

  /**
   * The NewsListConstant constants.
   */
  static readonly NewsListConstant_LIST_DIVIDER_STROKE_WIDTH: number = 0.5;
  static readonly NewsListConstant_GET_TAB_DATA_TYPE_ONE: number = 1;
  static readonly NewsListConstant_ITEM_BORDER_RADIUS: number = 16;
  static readonly NewsListConstant_NONE_IMAGE_SIZE: number = 120;
  static readonly NewsListConstant_NONE_TEXT_opacity: number = 0.6;
  static readonly NewsListConstant_NONE_TEXT_size: number = 16;
  static readonly NewsListConstant_NONE_TEXT_margin: number = 12;
  static readonly NewsListConstant_ITEM_MARGIN_TOP: string = '1.5%';
  static readonly NewsListConstant_LIST_MARGIN_LEFT: string = '3.3%';
  static readonly NewsListConstant_LIST_MARGIN_RIGHT: string = '3.3%';
  static readonly NewsListConstant_ITEM_HEIGHT: string = '32%';
  static readonly NewsListConstant_LIST_WIDTH: string =  '93.3%';

  /**
   * The NewsTitle constants.
   */
  static readonly NewsTitle_TEXT_MAX_LINES: number = 3;
  static readonly NewsTitle_TEXT_FONT_SIZE: number = 20;
  static readonly NewsTitle_TEXT_FONT_WEIGHT: number = 500;
  static readonly NewsTitle_TEXT_MARGIN_LEFT: string = '2.4%';
  static readonly NewsTitle_TEXT_MARGIN_TOP: string = '7.2%';
  static readonly NewsTitle_TEXT_HEIGHT: string = '9.6%';
  static readonly NewsTitle_TEXT_WIDTH: string = '78.6%';
  static readonly NewsTitle_IMAGE_MARGIN_LEFT: string = '3.5%';
  static readonly NewsTitle_IMAGE_MARGIN_TOP: string = '7.9%';
  static readonly NewsTitle_IMAGE_HEIGHT: string = '8.9%';
  static readonly NewsTitle_IMAGE_WIDTH: string = '11.9%';

  /**
   * The NewsContent constants.
   */
  static readonly NewsContent_WIDTH: string = '93%';
  static readonly NewsContent_HEIGHT: string = '16.8%';
  static readonly NewsContent_MARGIN_LEFT: string = '3.5%';
  static readonly NewsContent_MARGIN_TOP: string = '3.4%';
  static readonly NewsContent_MAX_LINES: number = 2;
  static readonly NewsContent_FONT_SIZE: number = 15;

  /**
   * The NewsSource constants.
   */
  static readonly NewsSource_MAX_LINES: number = 1;
  static readonly NewsSource_FONT_SIZE: number = 12;
  static readonly NewsSource_MARGIN_LEFT: string = '3.5%';
  static readonly NewsSource_MARGIN_TOP: string = '3.4%';
  static readonly NewsSource_HEIGHT: string = '7.2%';
  static readonly NewsSource_WIDTH: string = '93%';

  /**
   * The NewsGrid constants.
   */
  static readonly NewsGrid_MARGIN_LEFT: string = '3.5%';
  static readonly NewsGrid_MARGIN_RIGHT: string = '3.5%';
  static readonly NewsGrid_MARGIN_TOP: string = '5.1%';
  static readonly NewsGrid_WIDTH: string = '93%';
  static readonly NewsGrid_HEIGHT: string = '31.5%';
  static readonly NewsGrid_ASPECT_RATIO: number = 4;
  static readonly NewsGrid_COLUMNS_GAP: number = 5;
  static readonly NewsGrid_ROWS_TEMPLATE: string = '1fr';
  static readonly NewsGrid_IMAGE_BORDER_RADIUS: number = 8;

  /**
   * The RefreshLayout constants.
   */
  static readonly RefreshLayout_MARGIN_LEFT: string = '40%';
  static readonly RefreshLayout_TEXT_MARGIN_BOTTOM: number = 1;
  static readonly RefreshLayout_TEXT_MARGIN_LEFT: number = 7;
  static readonly RefreshLayout_TEXT_FONT_SIZE: number = 17;
  static readonly RefreshLayout_IMAGE_WIDTH: number = 18;
  static readonly RefreshLayout_IMAGE_HEIGHT: number = 18;

  /**
   * The NoMoreLayout constants.
   */
  static readonly NoMoreLayoutConstant_NORMAL_PADDING: number = 8;
  static readonly NoMoreLayoutConstant_TITLE_FONT: string = '16fp';

  /**
   * The RefreshConstant constants.
   */
  static readonly RefreshConstant_DELAY_PULL_DOWN_REFRESH: number = 50;
  static readonly RefreshConstant_CLOSE_PULL_DOWN_REFRESH_TIME: number = 150;
  static readonly RefreshConstant_DELAY_SHRINK_ANIMATION_TIME: number = 500;
}

/**
 * The refresh state enum.
 */
export const enum RefreshState {
  DropDown = 0,
  Release = 1,
  Refreshing = 2,
  Success = 3,
  Fail = 4
}

/**
 * The newsList state enum.
 */
export const enum PageState {
  Loading = 0,
  Success = 1,
  Fail = 2
}

/**
 * The request content type enum.
 */
export const enum ContentType {
  JSON = 'application/json'
}

/**
 * common full length.
 */
export const FULL_LENGTH = '100%';

/**
 * default layout weight.
 */
export const DEFAULT_LAYOUT_WEIGHT = 1;

/**
 * Transition animation duration.
 */
export const TRANSITION_ANIMATION_DURATION: number = 600;

/**
 * Share transition id.
 */
export const SHARE_TRANSITION_ID: string = 'shareId';

/**
 * Component transition scale.
 */
export const COMPONENT_TRANSITION_SCALE: CustomTransition = { x: 0.5, y: 0.5 };

/**
 * Component transition opacity.
 */
export const COMPONENT_TRANSITION_OPACITY = 0;

class ComponentTransitionRotate {
  x: number = 0;
  y: number = 0;
  z: number = 0;
  angle: number = 360;
}

/**
 * Component transition rotate.
 */
export const COMPONENT_TRANSITION_ROTATE: ComponentTransitionRotate = { x: 0, y: 1, z: 0, angle: 360 };

class CustomTransition {
  x: number = 0;
  y: number = 0;
}

/**
 * Custom transition scale.
 */
export const CUSTOM_TRANSITION_SCALE: CustomTransition = { x: 0, y: 0 };

/**
 * Custom transition opacity.
 */
export const CUSTOM_TRANSITION_OPACITY = 0.2;

/**
 * Custom transition translate.
 */
export const CUSTOM_TRANSITION_TRANSLATE: CustomTransition = { x: 500, y: 500 };

/**
 * Full custom transition default animation value.
 */
export const FULL_CUSTOM_TRANSITION_DEFAULT_ANIM_VALUE = 1;

/**
 * Full custom transition rotate z.
 */
export const FULL_CUSTOM_TRANSITION_ROTATE_Z = 1;

/**
 * Full custom transition angle 360.
 */
export const FULL_CUSTOM_TRANSITION_ANGLE = 360;

/**
 * Share item animation delay.
 */
export const SHARE_ITEM_ANIMATION_DELAY = 100;

/**
 * Share item animation duration.
 */
export const SHARE_ITEM_DURATION = 1000;

/**
 * Share page url.
 */
export const SHARE_PAGE_URL = 'pages/SharePage';

/**
 * Border radius of row.
 */
export const BORDER_RADIUS = 32;

/**
 * Domain of log.
 */
export const DOMAIN = 0xFF00;

/**
 * Prefix of log.
 */
export const PREFIX = '[ReadingRecorder]';

/**
 * Format of log.
 */
export const FORMAT = `%{public}s, %{public}s`;

export enum FontSize {
  SMALL = 14,
  MIDDLE = 16,
  LARGE = 20,
};

/**
 * The font weight of application.
 */
export enum FontWeight {
  BOLD = '400',
  BOLDER = '500',
};

/**
 * The weight is global default value for component size.
 */
export const WEIGHT = '100%';

/**
 * The duration of toast.
 */
export const TIME = 1000;

/**
 * The interval time of exit.
 */
export const APP_EXIT_INTERVAL: number = 4500;

/**
 * The tag is the page name,which is used to print.
 */
export const TAG: string = 'RankPage';

/**
 * The title of TitleComponent.
 */
export const TITLE: Resource = $r('app.string.title');

class style {
  RANK_PADDING: number = 15;
  CONTENT_WIDTH: string = '90%';
  BORDER_RADIUS: number = 20;
  STROKE_WIDTH: number = 1;
  HEADER_MARGIN_TOP: number = 20;
  HEADER_MARGIN_BOTTOM: number = 15;
  LIST_HEIGHT: string = '65%';
}

/**
 * The Style of RankPage.
 */
export const Style: style = {
  /**
   * The padding of ranking.
   */
  RANK_PADDING: 15,

  /**
   * The width of ranking content.
   */
  CONTENT_WIDTH: '90%',

  /**
   * The border radius.
   */
  BORDER_RADIUS: 20,

  /**
   * The stroke width of divider.
   */
  STROKE_WIDTH: 1,

  /**
   * The top margin of ranking header.
   */
  HEADER_MARGIN_TOP: 20,

  /**
   * The bottom margin of ranking header.
   */
  HEADER_MARGIN_BOTTOM: 15,

  /**
   * The height of list.
   */
  LIST_HEIGHT: '75%'
};

class listHeaderStyle {
  FONT_WEIGHT: number = 400;
  LAYOUT_WEIGHT_LEFT: string = '30%';
  LAYOUT_WEIGHT_CENTER: string = '50%';
  LAYOUT_WEIGHT_RIGHT: string = '20%';
}

/**
 * The Style of ListHeaderComponent.
 */
export const ListHeaderStyle: listHeaderStyle = {
  /**
   * The weight of font.
   */
  FONT_WEIGHT: 400,

  /**
   * The layout weight of left.
   */
  LAYOUT_WEIGHT_LEFT: '30%',

  /**
   * The layout weight of center.
   */
  LAYOUT_WEIGHT_CENTER: '50%',

  /**
   * The layout weight of right.
   */
  LAYOUT_WEIGHT_RIGHT: '20%',
};

class itemStyle {
  TEXT_LAYOUT_SIZE: number = 24;
  CIRCLE_TEXT_BORDER_RADIUS: number = 24;
  CIRCLE_TEXT_SIZE: number = 24;
  CIRCLE_TEXT_COLOR_STOP_1: number = 0.5;
  CIRCLE_TEXT_COLOR_STOP_2: number = 1.0;
  BAR_HEIGHT: number = 48;
  LAYOUT_WEIGHT_LEFT: string = '30%';
  LAYOUT_WEIGHT_CENTER: string = '50%';
  LAYOUT_WEIGHT_RIGHT: string = '20%';
  BORDER_WIDTH: number = 1;
  COLOR_BLUE: Resource = $r('app.color.item_color');
  COLOR_BLACK: Resource = $r('app.color.item_color_black');
}

/**
 * The Style of ListItemComponent.
 */
export const ItemStyle: itemStyle = {
  /**
   * The line height of text.
   */
  TEXT_LAYOUT_SIZE: 24,

  /**
   * The border radius of circle text.
   */
  CIRCLE_TEXT_BORDER_RADIUS: 24,

  /**
   * The size of circle text.
   */
  CIRCLE_TEXT_SIZE: 24,

  /**
   * Gradient color proportion.
   */
  CIRCLE_TEXT_COLOR_STOP_1: 0.5,

  /**
   * Gradient color proportion.
   */
  CIRCLE_TEXT_COLOR_STOP_2: 1.0,

  /**
   * The height of item.
   */
  BAR_HEIGHT: 48,

  /**
   * The layout weight of left.
   */
  LAYOUT_WEIGHT_LEFT: '30%',

  /**
   * The layout weight of center.
   */
  LAYOUT_WEIGHT_CENTER: '50%',

  /**
   * The layout weight of right.
   */
  LAYOUT_WEIGHT_RIGHT: '20%',

  /**
   * The width of border.
   */
  BORDER_WIDTH: 1,

  /**
   * The blue color of item.
   */
  COLOR_BLUE: $r('app.color.item_color'),

  /**
   * The black color of item.
   */
  COLOR_BLACK: $r('app.color.item_color_black')
};

class titleBarStyle {
  IMAGE_BACK_SIZE: number = 21;
  IMAGE_BACK_MARGIN_RIGHT: number = 18;
  IMAGE_LOADING_SIZE: number = 22;
  BAR_HEIGHT: number = 47;
  BAR_MARGIN_HORIZONTAL: number = 26;
  BAR_MARGIN_TOP: number = 10;
  WEIGHT: string = '50%';
}

/**
 * The Style of TitleComponent.
 */
export const TitleBarStyle: titleBarStyle = {
  /**
   * The image size of back button.
   */
  IMAGE_BACK_SIZE: 21,

  /**
   * The right margin of back button.
   */
  IMAGE_BACK_MARGIN_RIGHT: 18,

  /**
   * The size of loading image.
   */
  IMAGE_LOADING_SIZE: 22,

  /**
   * The height of TitleComponent.
   */
  BAR_HEIGHT: 47,

  /**
   * The horizontal margin of TitleComponent.
   */
  BAR_MARGIN_HORIZONTAL: 26,

  /**
   * The top margin of TitleComponent.
   */
  BAR_MARGIN_TOP: 10,

  /**
   * The weight of Row layout.
   */
  WEIGHT: '50%',
};
