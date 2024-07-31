@Component
export struct ItalicText {
  @Prop text: string = 'asd'
  build() {
    Column() {
      Text(`${this.text}`)
    }
  }
}