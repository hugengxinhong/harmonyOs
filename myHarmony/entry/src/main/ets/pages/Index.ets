import {CustomButton} from './CustomButton'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  @Styles
  SyleClass() {
    .backgroundColor(Color.Yellow)
    .border({ width: { bottom: 5 }, color: '#ccc'})
    .margin({ bottom: 10 })
  }
  build() {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.Center,
      alignItems: ItemAlign.Center
    }){
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .SyleClass()
      CustomButton()
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