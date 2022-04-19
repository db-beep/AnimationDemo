//页面间转场：自定义1动效
@Entry
@Component
struct CustomTransition {
  build() {
    Stack() {
      Image($rawfile('image2.jpg'))
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
  }
// 页面入场组件
  pageTransition() {
    // 页面入场组件
    PageTransitionEnter({duration:600,curve:Curve.Smooth})
      .opacity(0.2)// 入场时候透明度从0.2到1
      .scale({x:0,y:0})// 入场时x、y轴缩放从0变化到1
    // 页面退场组件
    PageTransitionExit({duration:600,curve:Curve.Smooth})
      .translate({x:500,y:500})// 退场时x、y轴的偏移量为500
  }
}