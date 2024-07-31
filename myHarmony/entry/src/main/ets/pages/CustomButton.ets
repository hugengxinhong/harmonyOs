// import { promptAction } from '@kit.ArkUI'
@Component
export struct CustomButton {
  onClickMyButton?: () => void
  @Prop text: string = 'My Button1'
  @Prop @Watch('onChange') count: number = 0
  // 内部状态？
  @State private double: number = 0

  private onChange() {
    this.double = this.count * 2
  }
  build() {
    Column() {
      Button(`${this.text}(${this.count} * 2  = ${this.double})`)
        .onClick((event) => {
          if(typeof this.onClickMyButton === 'function') {
            this.onClickMyButton()
          }
          // promptAction.showToast({
          //   message: '点击弹窗非常方便'
          // })
        })
    }
  }
}