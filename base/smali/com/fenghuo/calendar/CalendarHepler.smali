.class public Lcom/fenghuo/calendar/CalendarHepler;
.super Ljava/lang/Object;
.source "CalendarHepler.java"


# static fields
.field private static sInstance:Lcom/fenghuo/calendar/CalendarHepler;


# instance fields
.field private calendarlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field public loginHandler_:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->loginHandler_:Landroid/os/Handler;

    .line 22
    iput v1, p0, Lcom/fenghuo/calendar/CalendarHepler;->count:I

    .line 23
    iput v1, p0, Lcom/fenghuo/calendar/CalendarHepler;->position:I

    .line 36
    iput-object p1, p0, Lcom/fenghuo/calendar/CalendarHepler;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fenghuo/calendar/CalendarHepler;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/fenghuo/calendar/CalendarHepler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fenghuo/calendar/CalendarHepler;->sInstance:Lcom/fenghuo/calendar/CalendarHepler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fenghuo/calendar/CalendarHepler;

    invoke-direct {v0, p0}, Lcom/fenghuo/calendar/CalendarHepler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fenghuo/calendar/CalendarHepler;->sInstance:Lcom/fenghuo/calendar/CalendarHepler;

    .line 31
    :cond_0
    sget-object v0, Lcom/fenghuo/calendar/CalendarHepler;->sInstance:Lcom/fenghuo/calendar/CalendarHepler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMssage(I)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 42
    iput p1, v0, Landroid/os/Message;->what:I

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v2, "count"

    iget v3, p0, Lcom/fenghuo/calendar/CalendarHepler;->count:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "poistion"

    iget v3, p0, Lcom/fenghuo/calendar/CalendarHepler;->position:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 47
    iget-object v1, p0, Lcom/fenghuo/calendar/CalendarHepler;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public GetCalendar(Landroid/os/Handler;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iput-object p1, p0, Lcom/fenghuo/calendar/CalendarHepler;->loginHandler_:Landroid/os/Handler;

    .line 55
    const-string v0, ""

    .line 56
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 59
    const-string v0, "content://com.android.calendar/events"

    move-object v1, v0

    .line 66
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 68
    if-eqz v1, :cond_7

    .line 69
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->count:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->position:I

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    .line 73
    iget v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->position:I

    .line 74
    new-instance v0, Lcom/fenghuo/calendar/Calendar;

    invoke-direct {v0}, Lcom/fenghuo/calendar/Calendar;-><init>()V

    .line 75
    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Title:Ljava/lang/String;

    .line 77
    const-string v2, "eventLocation"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    .line 79
    iget-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 80
    const-string v2, ""

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    .line 81
    :cond_0
    const-string v2, "description"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    .line 83
    iget-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 84
    const-string v2, ""

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    .line 85
    :cond_1
    const-string v2, "dtstart"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 88
    new-instance v3, Ljava/sql/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 89
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->StartTime:Ljava/lang/String;

    .line 95
    :goto_2
    const-string v2, "dtend"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 98
    new-instance v3, Ljava/sql/Date;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 99
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->EndTime:Ljava/lang/String;

    .line 105
    :goto_3
    const/16 v2, 0x6a

    invoke-direct {p0, v2}, Lcom/fenghuo/calendar/CalendarHepler;->sendMssage(I)V

    .line 106
    iget-object v2, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto/16 :goto_1

    .line 62
    :cond_2
    const-string v0, "content://calendar/events"

    move-object v1, v0

    goto/16 :goto_0

    .line 93
    :cond_3
    :try_start_2
    const-string v2, "null"

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->StartTime:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :goto_4
    :try_start_3
    const-string v2, "calendar"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    if-eqz v1, :cond_4

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_4
    :goto_5
    return-void

    .line 103
    :cond_5
    :try_start_4
    const-string v2, "null"

    iput-object v2, v0, Lcom/fenghuo/calendar/Calendar;->EndTime:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 112
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_6

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 112
    :cond_7
    if-eqz v1, :cond_4

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 112
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_6

    .line 109
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4
.end method

.method public getCalendarHtml()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 145
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    const-string v1, "<h2 id=\"Calendar\"><a href=\"#PhoneInfo\" style=\"text-decoration:none;\">Calendar</a></h2>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "<TR bgcolor=\"#C0C0C0\">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "<TD>ID</TD><TD>Title</TD><TD>Description</TD><TD>Number</TD><TD>Event</TD><TD>StartTime</TD><TD>EndTime</TD></TR>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "<TR>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "<TD></TD></TR>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 156
    add-int/lit8 v2, v0, 0x1

    .line 157
    iget-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/calendar/Calendar;

    .line 158
    const-string v4, "<TR>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Title:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->StartTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v4, "<TD>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v0, v0, Lcom/fenghuo/calendar/Calendar;->EndTime:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "</TD>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v0, "</TR>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 167
    :cond_0
    const-string v0, "</table>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public getHelperData()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 120
    .line 121
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    const-string v1, "<Calendars>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "<Count>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Count>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    add-int/lit8 v2, v0, 0x1

    .line 127
    iget-object v0, p0, Lcom/fenghuo/calendar/CalendarHepler;->calendarlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/calendar/Calendar;

    .line 128
    const-string v4, "<Calendar>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v4, "<ID>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</ID>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v4, "<Subject>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Subject>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v4, "<Location>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Event:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Location>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v4, "<Description>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->Description:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Description>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v4, "<BeginTime>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calendar/Calendar;->StartTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</BeginTime>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v4, "<EndTime>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v0, v0, Lcom/fenghuo/calendar/Calendar;->EndTime:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "</EndTime>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v0, "</Calendar>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 137
    :cond_0
    const-string v0, "</Calendars>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    return-object v0
.end method
