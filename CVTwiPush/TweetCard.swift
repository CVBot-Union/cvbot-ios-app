//
//  TweetCard.swift
//  CVTwiPush
//
//  Created by 范艺晨 on 2020/10/7.
//

import SwiftUI

struct TweetCard: View {
    @State var mediaAmount:Int = 1
    @State var userName:String = "用户名"
    @State var type:String = "类型"
    @State var time:String = "时间"
    @State var tweetText:String = "正文"
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image(systemName:"person.circle.fill")
                    .font(.largeTitle)
                    .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(20.0)
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        HStack(alignment:.bottom){
                            Text(userName)
                                .font(.body)
                            Text(type)
                                .font(.subheadline)
                                .foregroundColor(Color(AppColor.subHeadlineColor.rawValue))
                                .padding(.leading, 6.0)
                            Spacer()
                        }
                        Text(time)
                            .font(.subheadline)
                            .foregroundColor(Color(AppColor.subHeadlineColor.rawValue))
                    }.padding(.vertical, 20.0)
                    
                    Text(tweetText) //正文
                        .padding(.bottom)
                    
                    switch(mediaAmount){
                    case 1:
                        HStack{
                            Image(systemName: "photo.fill")
                                .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                            Spacer(minLength: 12.0)
                        }
                    case 2:
                        HStack{
                            Image(systemName: "photo.fill")
                            Image(systemName: "photo.fill")
                            Spacer(minLength: 12.0)
                        }
                    case 3:
                        HStack{
                            Image(systemName: "photo.fill")
                            VStack{
                                Image(systemName: "photo.fill")
                                Image(systemName: "photo.fill")
                            }
                            Spacer(minLength: 12.0)
                        }
                    case 4:
                        HStack{
                            VStack{
                                Image(systemName: "photo.fill")
                                Image(systemName: "photo.fill")
                            }
                            VStack{
                                Image(systemName: "photo.fill")
                                Image(systemName: "photo.fill")
                            }
                            Spacer(minLength: 12.0)
                        }
                    default:
                        Text("")
                            .frame(width: 0, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                .foregroundColor(Color(AppColor.colorPrimary.rawValue))
            }
        }
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard()
    }
}
