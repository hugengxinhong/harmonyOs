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
        .onClick(() => {
          if(typeof this.onClickMyButton === 'function') {
            this.onClickMyButton()
          }
          // promptAction.showToast({
          //   message: '点击弹窗非常方便'
          // })
        })
        if(this.count % 2 === 0) {
          Text('双数').fontColor(Color.Red).margin({ top: 10 })
        }else {
          Text('单数').fontColor(Color.Blue).margin({ top: 10 })
        }
    }
    .onAttach(() => {
      this.count = 3
      this.onChange()
    })
  }
}