FROM bluenviron/mediamtx:latest-ffmpeg

# শুধুমাত্র HLS ট্রাফিকের জন্য পোর্ট ১০০০০ উন্মুক্ত করা
ENV MTX_PROTOCOLS=tcp
ENV MTX_HLSADDRESS=:10000

# ওবিএস থেকে সরাসরি HTTP ট্রাফিকের মাধ্যমে ইনপুট নেওয়ার সেটিংস
ENV MTX_WEBRTC=no
ENV MTX_RTMP=no
ENV MTX_SRT=no

EXPOSE 10000
