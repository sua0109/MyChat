//
//  ChatModel.swift
//  MyChat
//
//  Created by sua on 6/19/24.
//

import Foundation
import CoreLocation
import MessageKit

// 메시지 구조체
struct Message: MessageType {
    public var sender: SenderType // 발신자
    public var messageId: String // 메시지 ID
    public var sentDate: Date // 전송 날짜
    public var kind: MessageKind // 메시지 종류
}

// MessageKind 확장
extension MessageKind {
    var messageKindString: String {
        switch self {
        case .text(_):
            return "text" // 텍스트
        case .attributedText(_):
            return "attributed_text" // 속성 텍스트
        case .photo(_):
            return "photo" // 사진
        case .video(_):
            return "video" // 비디오
        case .location(_):
            return "location" // 위치
        case .emoji(_):
            return "emoji" // 이모지
        case .audio(_):
            return "audio" // 오디오
        case .contact(_):
            return "contact" // 연락처
        case .custom(_):
            return "custom" // 사용자 정의
        case .linkPreview(_):
            return "link" // 링크 미리보기
        }
    }
}

// 발신자 구조체
struct Sender: SenderType {
    public var photoURL: String // 사진 URL
    public var senderId: String // 발신자 ID
    public var displayName: String // 발신자 이름
}

// 미디어 구조체
struct Media: MediaItem {
    var url: URL? // URL
    var image: UIImage? // 이미지
    var placeholderImage: UIImage // 플레이스홀더 이미지
    var size: CGSize // 크기
}

// 위치 구조체
struct Location: LocationItem {
    var location: CLLocation // 위치 정보
    var size: CGSize // 크기
}
