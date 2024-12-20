export class LoginPostData {
  userAccount: string = ''

  userPassword: string = ''

  constructor(userAccount: string, userPassword: string) {
    this.userAccount=userAccount
    this.userPassword=userPassword
  }
}