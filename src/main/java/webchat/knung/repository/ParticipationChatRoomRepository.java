package webchat.knung.repository;

import webchat.knung.domain.ParticipationChatRoom;
import webchat.knung.dto.ChatRoomDto;

import java.util.List;
import java.util.Optional;

public interface ParticipationChatRoomRepository {
    public ParticipationChatRoom save(ParticipationChatRoom pChatRoom);
    public Optional<ParticipationChatRoom> findByChatRoomId(Long chatRoomId);
    public List<ChatRoomDto> findByMemberId(Long memberId);
}
