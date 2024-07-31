import {CustomButton} from './CustomButton'
import {ItalicText} from './ItalicText'
import { promptAction } from '@kit.ArkUI'

@Extend(Text)
function TextStyle(fontSize: number = 50, fontColor: ResourceStr | Color = '#f00') {
  .fontSize(fontSize)
  .fontColor(fontColor)
  .fontWeight(FontWeight.Bold)
  .id('HelloWorld')
}
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State clickCount: number = 0;
  @Styles
  StyleClass() {
    .backgroundColor(Color.Yellow)
    .border({ width: { bottom: 5 }, color: '#ccc'})
    .margin({ bottom: 10 })
  }
  @Builder
  SubTitle() {
    // 计数
    Text(`message is ${this.message}, count=${this.clickCount}`)
      .margin({
        bottom: 10
      })
      .fontSize(12)
      .fontColor('#999')
  }
  build() {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center
    }){
      Text(this.message)
        .StyleClass()
        .TextStyle(34, '#06c')
      this.SubTitle()
      ItalicText({text: 'ItalicText'})
      CustomButton({
        text: '点击次数',
        count: this.clickCount,
        onClickMyButton: () => {
          this.clickCount += 1
          // promptAction.showToast({
          //   message: '点击弹窗非常方便'
          // })
        }
      })

    }
    // RelativeContainer() {
    //   Text(this.message)
    //     .id('HelloWorld')
    //     .fontSize(50)
    //     .fontWeight(FontWeight.Bold)
    //     .alignRules({
    //       center: { anchor: '__container__', align: VerticalAlign.Center },
    //       middle: { anchor: '__container__', align: HorizontalAlign.Center }
    //     })
    // }
    .height('100%')
    .width('100%')
  }
}