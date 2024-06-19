//
//  ConversationModel.swift
//  MyChat
//
//  Created by sua on 6/19/24.
//

import Foundation

// 대화 구조체
struct Conversation {
    let id: String // 대화 ID
    let name: String // 대화 이름
    let otherUserEmail: String // 상대방 이메일
    let latestMessage: LatestMessage // 최신 메시지 정보
}

// 최신 메시지 구조체
struct LatestMessage {
    let date: String // 메시지 날짜
    let text: String // 메시지 내용
    let isRead: Bool // 읽음 여부
}
