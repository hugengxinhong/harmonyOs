@Component
export struct ItalicText {
  @Prop text: string = 'asd'
  build() {
    Column() {
      Text(`${this.text}`).fontSize(14).fontStyle(FontStyle.Italic).margin({ bottom: 10 })
    }
  }
}