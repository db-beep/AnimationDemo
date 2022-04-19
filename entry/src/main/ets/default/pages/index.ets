// @ts-nocheck
import router from '@system.router';
@Entry
@Component
struct Index {
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      Item({text:'页面间转场：底部滑入',uri:'pages/BottomTransition'})
      Item({text:'页面间转场：自定义1',uri:'pages/CustomTransition'})
      Item({text:'页面间转场：自定义2',uri:'pages/FullCustomTransition'})
      Item({text:'组件内转场',uri:'pages/ComponentTransition'})
      Item({text:'共享元素转场',uri:'pages/share/ShareItem'})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFECECEC')
  }
}

@Component
struct Item{
  //文本信息
  private text:String
  //页面跳转uri
  private uri:String
  build() {
    Stack({alignContent:Alignment.Center}) {
      Image($rawfile('image3.png'))
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height(100)
        .borderRadius(15)

      Text(this.text)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Black)
    }
    .onClick(() =>{
      router.push({uri:this.uri})
    })
    .height(100)
    .borderRadius(15)
    .width('80%')
    .margin({bottom:20})
  }
}