import {CustomButton} from './CustomButton'
import {ItalicText} from './ItalicText'
import {router} from '@kit.ArkUI'
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
      // CustomButton({
      //   text: '点击跳转',
      //   count: this.clickCount,
      //   onClickMyButton: () => {
      //   }
      // })
      Button('点击跳转')
        .onClick(() => {
          let option: router.RouterOptions = {
            url: 'pages/AList'
          }
          router.pushUrl(option)
        })
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
        }
      })

    }
    .height('100%')
    .width('100%')
  }
}