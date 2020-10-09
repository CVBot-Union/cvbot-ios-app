//
//  TweetCard.swift
//  CVTwiPush
//
//  Created by 范艺晨 on 2020/10/7.
//

import SwiftUI

struct TweetCard: View {
    @State var mediaAmount:Int = 1
    @State var mediaType:TwitterMedia.TwitterMediaType? = .video
    @State var userName:String = "用户名"
    @State var type:String = "类型"
    @State var time:String = "时间"
    @State var tweetText:String = "正文"
    @State var images:[UIImage]?
    @State var videoPreviewImage:UIImage?
    @State var imagePlaceHolder:UIImage = UIImage(systemName: "photo.fill")!
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image(systemName:"person.circle.fill")
                    .font(.system(size: 42))
                    .foregroundColor(Color.gray)
                    .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(20.0)
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        HStack(alignment:.bottom){
                            Text(userName)
                                .font(.body)
                            Text(type)
                                .font(.subheadline)
                                .foregroundColor(Color("subHeadlineColor"))
                                .padding(.leading, 6.0)
                            Spacer()
                        }
                        Text(time)
                            .font(.subheadline)
                            .foregroundColor(Color("subHeadlineColor"))
                    }.padding(.vertical, 20.0)
                    
                    Text(tweetText) //正文
                        .padding(.bottom)
                    
                    if((mediaAmount != 0)  && (mediaType == TwitterMedia.TwitterMediaType.image)){
                        switch(mediaAmount){
                        case 1:
                            HStack{
                                HStack{
                                    Image(uiImage: self.images?[0] ?? imagePlaceHolder)
                                    .foregroundColor(Color.gray)
                                    .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                                }.clipShape(RoundedRectangle(cornerRadius:5))
                                Spacer(minLength: 12.0)
                            }
                        case 2:
                            HStack{
                                HStack{
                                    Image(uiImage: self.images?[0] ?? imagePlaceHolder)
                                        .foregroundColor(Color.gray)
                                        .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                                    Image(uiImage: self.images?[1] ?? imagePlaceHolder)
                                        .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                                    Spacer(minLength: 12.0)
                                }.clipShape(RoundedRectangle(cornerRadius:5))
                                .frame(width: .infinity, height: 180, alignment: .center)
                            }
                        case 3:
                            HStack{
                                HStack{
                                    Image(uiImage: self.images?[0] ?? imagePlaceHolder)
                                        .foregroundColor(Color.gray)
                                        .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                                    VStack{
                                        Image(uiImage: self.images?[1] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                        Image(uiImage: self.images?[2] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                    }
                                }.clipShape(RoundedRectangle(cornerRadius:5))
                                Spacer(minLength: 12.0)
                            }
                        case 4:
                            HStack{
                                HStack{
                                    VStack{
                                        Image(uiImage: self.images?[0] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                        Image(uiImage: self.images?[2] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                    }
                                    VStack{
                                        Image(uiImage: self.images?[1] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                        Image(uiImage: self.images?[3] ?? imagePlaceHolder)
                                            .foregroundColor(Color.gray)
                                            .frame(maxWidth: .infinity, maxHeight: 90, alignment: .center)
                                    }
                                }.clipShape(RoundedRectangle(cornerRadius:5))
                                Spacer(minLength: 12.0)
                            }
                        default:
                            Text("")
                                .frame(width: 0, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    } else if((mediaAmount != 0) && (mediaType == TwitterMedia.TwitterMediaType.video)){
                        HStack{
                            Button(action: {}) {
                                ZStack{
                                    if(videoPreviewImage != nil){
                                        Image(uiImage: self.videoPreviewImage!)
                                    }
                                    RoundedRectangle(cornerRadius: 5.0)
                                        .foregroundColor(Color.black)
                                        .opacity(0.3)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    Image(systemName:"play.circle.fill")
                                        .font(.system(size: 42))
                                        .foregroundColor(Color.white)
                                }.clipShape(RoundedRectangle(cornerRadius:5))
                            }
                            Spacer(minLength: 12.0)
                        }
                    }
                }
            }
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Image(systemName: "square.and.arrow.down.on.square.fill")
                        Text("快速保存")
                    }
                }).padding()
                .foregroundColor(Color("colorPrimary"))
            }
        }
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard()
    }
}
