@Entry
@Component
struct SharePage{
  build() {
    Stack() {
      Image($rawfile('image2.jpg'))
      // 设置共享元素转场属性
        .sharedTransition('imageId', { duration: 1000, curve: Curve.Smooth, delay: 100 })
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}