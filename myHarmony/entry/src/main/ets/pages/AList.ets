@Entry
@Component
struct AList {
  @State data: string[] = ['事项1','事项2','事项3']

  build() {
    Column() {
      Text('列表页面')
    }
  }
}