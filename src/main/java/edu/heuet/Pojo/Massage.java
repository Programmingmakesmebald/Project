package edu.heuet.Pojo;

public class Massage {
    private Long inforid;
    private Integer sender;
    private Integer receiver;
    private Long Sendtime;
    private String content;
    private String formatTime;
    private Integer msgstate;

    public Integer getMsgstate() {
        return msgstate;
    }

    public void setMsgstate(Integer msgstate) {
        this.msgstate = msgstate;
    }

    public Long getInforid() {
        return inforid;
    }

    public String getFormatTime() {
        return formatTime;
    }

    public void setFormatTime(String formatTime) {
        this.formatTime = formatTime;
    }

    public void setInforid(Long inforid) {
        this.inforid = inforid;
    }

    public Integer getSender() {
        return sender;
    }

    public void setSender(Integer sender) {
        this.sender = sender;
    }

    public Integer getReceiver() {
        return receiver;
    }

    public void setReceiver(Integer receiver) {
        this.receiver = receiver;
    }

    public Long getSendtime() {
        return Sendtime;
    }

    public void setSendtime(Long sendtime) {
        Sendtime = sendtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
