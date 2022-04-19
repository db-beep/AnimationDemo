import router from '@system.router';
@Entry
@Component
struct ShareItem{
  build() {
    Flex() {
      Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
        Stack() {
          Image($rawfile('image2.jpg'))
          // 设置共享元素转场属性
            .sharedTransition('imageId', { duration: 600, curve: Curve.Smooth, delay: 100 })
            .onClick(() => {
              router.push({ uri: 'pages/share/SharePage' })
            })
            .objectFit(ImageFit.Cover)
            .height('100%')
            .width('100%')
            .borderRadius(15)
        }
        .height('100%')
        .width('100%')

        Text('点击查看共享元素转场动效')
          .fontSize(20)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Regular)
          .margin({ left: 10, right: 10 })

      }
      .height(120)
      .backgroundColor('rgb(181,222,224)')
      .borderRadius(15)
      .margin({ top: 20 })
    }
    .width('100%')
    .padding({ left: 16, right: 16 })
    .backgroundColor('#FFECECEC')
  }
}