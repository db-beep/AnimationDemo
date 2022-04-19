//页面间转场：自定义2动效
@Entry
@Component
struct FullCustomTransition {
  @State myProgress:number = 1
  build() {
    Stack() {
      Image($rawfile('image1.jpg'))
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
    .opacity(this.myProgress)
    .scale({x:this.myProgress,y:this.myProgress})
    .rotate({x:0,y:0,z:1,angle:360*this.myProgress})

  }
// 页面转场通过全局transition方法配置转场参数
  pageTransition() {
    // 页面入场组件： 进场过程中会逐帧触发onEnter回调，入参为动效的归一化进度(0% -- 100%)
    PageTransitionEnter({duration:800,curve:Curve.Smooth})
      .onEnter((type:RouteType,progress:number) => {
        this.myProgress = progress  // 页面入场式myProgress从0变化到1
      })
    // 页面退场组件： 进场过程中会逐帧触发onExit回调，入参为动效的归一化进度(0% -- 100%)
    PageTransitionExit({duration:800,curve:Curve.Smooth})
      .onExit((type:RouteType,progress:number) => {
        this.myProgress = 1 - progress  // 页面退场式myProgress从1变化到0
      })
  }
}