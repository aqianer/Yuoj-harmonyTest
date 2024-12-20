import { PromptAction, router } from '@kit.ArkUI';
import http from '@ohos.net.http'
import { JSON } from '@kit.ArkTS';
import { CommonConstant } from '../common/constant/CommonConstant';
import { promptAction } from '@kit.ArkUI';
import { Type, plainToClass } from 'class-transformer'
import { httpRequestPost } from '../common/utils/HttpUtil';
import { LoginPostData } from '../viewmodel/LoginPostData';
import ResponseResult from '../viewmodel/ResponseResult';
// import { DialogComponent } from '../view/DialogComponent';

@Extend(TextInput)
function inputStyle() {
  .placeholderColor($r('app.color.placeholder_color'))
  .backgroundColor(($r('app.color.start_window_background')))
  .height($r('app.float.login_input_height'))
  .fontSize($r('app.float.big_text_size'))
  .padding({
    left: $r('app.float.input_padding'),
    right: $r('app.float.input_padding')
  })
}

@Extend(Text)
function blueTextStyle() {
  .fontColor($r('app.color.login_blue_text_color'))
  .fontSize($r('app.float.small_text_size'))
  .fontWeight(FontWeight.Medium)
  .margin({
    left: $r('app.float.forgot_margin'),
    right: $r('app.float.forgot_margin')
  })
}

@Entry
@Component
struct Login {
  @State username: string = '';
  @State password: string = '';
  @State usernameError: string = '';
  @State passwordError: string = '';
  @State passwordState: boolean = false
  @State text: string = '';
  @State startLogin: boolean = false
  @State message: string = ''
  promptAction: PromptAction = this.getUIContext().getPromptAction();

  @Builder
  customDialogComponent() {
    // DialogComponent({ message: this.message })
  }

  handleLogin() {
    if (!this.usernameError && !this.passwordError) {
      // 处理登录逻辑
      console.log('登录成功');
    }
  }

  validateUsername(value: string) {
    const regex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+$/;
    if (!regex.test(value)) {
      this.usernameError = '账号必须为字母与数字组合';
    } else {
      this.usernameError = '';
    }
  }

  validatePassword(value: string) {
    const regex = /^(?=.*[a-zA-Z])(?=.*\d)[A-Za-z\d]{8,}$/;
    if (!regex.test(value)) {
      this.passwordError = '密码至少8位，且包含字母与数字';
    } else {
      this.passwordError = '';
    }
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Column() {
        Image($r("app.media.logo"))
          .width($r('app.float.logo_image_size'))
          .height($r('app.float.logo_image_size'))
          .margin({
            top: $r('app.float.logo_margin_top'),
            bottom: $r('app.float.logo_margin_bottom')
          })
        Text($r('app.string.login_page'))
          .fontSize($r('app.float.page_title_text_size'))
          .fontWeight(FontWeight.Medium)
          .fontColor($r('app.color.title_text_color'))
        Text($r('app.string.login_more'))
          .fontSize($r('app.float.normal_text_size'))
          .fontColor($r('app.color.login_more_text_color'))
          .margin({
            bottom: $r('app.float.login_more_margin_bottom'),
            top: $r('app.float.login_more_margin_top')
          })
        Column() {
          // TODO 用户名 失去焦点以后触发格式校验
          TextInput({ placeholder: '请输入用户名', text: this.username })
            .showUnderline(true)
            .showError(this.usernameError)
            .inputStyle()
            .onChange((value: string) => {
              this.username = value
            })// textInput的onsubmit在使用回车时触发
            .onSubmit((_enterKey: EnterKeyType, event: SubmitEvent) => {
              // 用户名不正确会清空输入框和用户名并提示错误文本
              console.info("username:", this.username)
              const regex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+$/;
              if (regex.test(this.username)) {
                this.usernameError = ''
              } else {
                this.usernameError = '账号必须为字母与数字组合'
                this.username = ''
                // 调用keepEditableState方法，输入框保持编辑态
                event.keepEditableState()
              }
            })
          Line()
            .width(CommonConstant.FULL_PARENT)
            .height($r('app.float.line_height'))
            .backgroundColor($r('app.color.line_color'))
            .margin({
              left: $r('app.float.line_margin'),
              right: $r('app.float.line_margin')
            })

          // 输入密码
          TextInput({ placeholder: '请输入用户密码', text: this.password })
            .inputStyle()
            .type(InputType.Password)
            .showError(this.passwordError)
            .showPassword(this.passwordState)
            .onChange((value: string) => {
              this.password = value
            })
            .onSubmit((_enterKey: EnterKeyType, event: SubmitEvent) => {
              // 用户名不正确会清空输入框和用户名并提示错误文本
              console.info("password:", this.password)
              const regex = /^(?=.*[a-zA-Z])(?=.*\d)[A-Za-z\d]{8,}$/;
              if (regex.test(this.password)) {
                this.passwordError = ''
              } else {
                this.passwordError = '密码至少8位，且包含字母与数字'
                this.password = ''
                // 调用keepEditableState方法，输入框保持编辑态
                event.keepEditableState()
              }
            })
        }
        .padding({
          top: $r('app.float.background_text_margin'),
          bottom: $r('app.float.background_text_margin')
        })
        .width(CommonConstant.FULL_PARENT)
        .backgroundColor($r('app.color.start_window_background'))
        .borderRadius($r('app.float.background_border_radius'))

        Row() {
          Text($r('app.string.message_login')).blueTextStyle()
          Text($r('app.string.forgot_password')).blueTextStyle()
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width(CommonConstant.FULL_PARENT)
        .margin({ top: $r('app.float.forgot_margin_top') })

        Blank()

        Button('登录', { type: ButtonType.Capsule, stateEffect: false })
          .width(CommonConstant.BUTTON_WIDTH)
          .height($r('app.float.login_button_height'))
          .fontSize($r('app.float.normal_text_size'))
          .fontWeight(FontWeight.Medium)
          .margin({
            top: $r('app.float.login_button_margin_top'),
            bottom: $r('app.float.login_button_margin_bottom')
          })
          .onClick(() => {
            // 校验用户名格式
            console.info("username:", this.username)
            this.validateUsername(this.username)
            // 校验密码格式
            console.info("password:", this.password)
            this.validatePassword(this.password)
            console.info("usernameErrorError:", this.usernameError)
            console.info("passwordError:", this.passwordError)
            // 格式符合则才发http请求
            if (this.usernameError == this.passwordError) {
              // 展示加载loading动画
              this.startLogin = true
              console.info("+++++")
              httpRequestPost('http://172.24.80.1:8101/api/user/login',
                new LoginPostData(this.username, this.password)).then((data: ResponseResult) => {
                if (data.code != 0) {
                  console.info("===========")
                  // login failed
                  this.startLogin = false
                  // 弹窗提示
                  this.message = data.message.toString()
                  this.promptAction.openCustomDialog({
                    builder: () => {
                      this.customDialogComponent()
                    },
                    alignment: DialogAlignment.Center,
                    maskColor: 'rgba(0, 0, 0, 0.2)',
                  }).then((dialogId: number) => {
                    AppStorage.setOrCreate('dialogId', dialogId);
                  })
                } else {
                  // login success
                  this.startLogin = false
                  router.pushUrl({ url: 'pages/Home' }).then().catch()
                }
              }).catch((err: Error) => {
                // 系统异常
                console.error("==system error==", err)
                this.startLogin = false
              })
            }
          })
        Text($r('app.string.register_account'))
          .fontColor($r('app.color.login_blue_text_color'))
          .fontSize($r('app.float.normal_text_size'))
          .fontWeight(FontWeight.Medium)
          .margin({ bottom: $r('app.float.login_register_margin_bottom') })
      }

      if (this.startLogin) {
        Column() {
          LoadingProgress()
            .color(Color.White)
            .width(80).height(80)
          Text('登录中..')
            .fontSize(16)
            .fontColor(Color.White)
        }
        .width('100%')
        .height('100%')
        .backgroundColor('#40000000')
        .justifyContent(FlexAlign.Center)
      }
    }
  }
}
