.class public Lcom/fenghuo/calllog/CallLogHelper;
.super Ljava/lang/Object;
.source "CallLogHelper.java"


# static fields
.field public static final CALL_INFO:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;

.field private static sInstance:Lcom/fenghuo/calllog/CallLogHelper;


# instance fields
.field public callgroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/calllog/CallLogFhItem;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field public loginHandler_:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private position:I

.field private tempGroupNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/fenghuo/calllog/CallLogHelper;->URI:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fenghuo/calllog/CallLogHelper;->CALL_INFO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->tempGroupNumber:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->loginHandler_:Landroid/os/Handler;

    .line 40
    iput v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->count:I

    .line 41
    iput v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->position:I

    .line 65
    iput-object p1, p0, Lcom/fenghuo/calllog/CallLogHelper;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private addGroupItem(Landroid/content/Context;Lcom/fenghuo/calllog/CallLogFhItem;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->tempGroupNumber:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->tempGroupNumber:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fenghuo/calllog/CallLogHelper;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/fenghuo/calllog/CallLogHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fenghuo/calllog/CallLogHelper;->sInstance:Lcom/fenghuo/calllog/CallLogHelper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/fenghuo/calllog/CallLogHelper;

    invoke-direct {v0, p0}, Lcom/fenghuo/calllog/CallLogHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fenghuo/calllog/CallLogHelper;->sInstance:Lcom/fenghuo/calllog/CallLogHelper;

    .line 60
    :cond_0
    sget-object v0, Lcom/fenghuo/calllog/CallLogHelper;->sInstance:Lcom/fenghuo/calllog/CallLogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMssage(I)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 46
    iput p1, v0, Landroid/os/Message;->what:I

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "count"

    iget v3, p0, Lcom/fenghuo/calllog/CallLogHelper;->count:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v2, "poistion"

    iget v3, p0, Lcom/fenghuo/calllog/CallLogHelper;->position:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 51
    iget-object v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public getCallHtml()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 218
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    const-string v0, "<h2 id=\"Dialing\"><a href=\"#PhoneInfo\" style=\"text-decoration:none;\">Dialing</a></h2>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v0, "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v0, "<TR bgcolor=\"#C0C0C0\">"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v0, "<TD>ID</TD><TD>CallType</TD><TD>Name</TD><TD>Number</TD><TD>StartTime</TD><TD>Duration</TD></TR>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v0, "<TR>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, "<TD></TD></TR>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    move v0, v3

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 229
    add-int/lit8 v1, v0, 0x1

    .line 230
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/calllog/CallLogFhItem;

    .line 231
    const-string v4, "<TR>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->type:I

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->formatCallLogType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v8, v0, Lcom/fenghuo/calllog/CallLogFhItem;->lastTime:J

    invoke-static {v8, v9}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v4, "<TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v8, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mDuration:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v4, "</TR>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v7, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    move v4, v3

    .line 240
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 242
    add-int/lit8 v5, v1, 0x1

    .line 243
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fenghuo/calllog/CallLogItem;

    .line 244
    const-string v8, "<TR>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v1, Lcom/fenghuo/calllog/CallLogItem;->type:I

    invoke-static {v9}, Lcom/fenghuo/utils/Util;->formatCallLogType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v1, Lcom/fenghuo/calllog/CallLogItem;->mDate:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</TD>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v8, "<TD>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v10, v1, Lcom/fenghuo/calllog/CallLogItem;->mDuration:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "</TD>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string v1, "</TR>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto/16 :goto_1

    .line 227
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 254
    :cond_1
    const-string v0, "</table>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method public getHelperData()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 175
    .line 176
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    const-string v0, "<Dialings>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v0, "<Count>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</Count>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    move v0, v3

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 181
    add-int/lit8 v1, v0, 0x1

    .line 182
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/calllog/CallLogFhItem;

    .line 183
    const-string v4, "<Dialing>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v4, "<ID>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</ID>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v4, "<Type>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->type:I

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->formatCallLogType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Type>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v4, "<Name>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Name>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v4, "<Number>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Number>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v4, "<StartTime>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v8, v0, Lcom/fenghuo/calllog/CallLogFhItem;->lastTime:J

    invoke-static {v8, v9}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</StartTime>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v4, "<Duration>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v8, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mDuration:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</Duration>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v4, "<INTERCEPT_STATE>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</INTERCEPT_STATE>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v4, "</Dialing>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v7, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mChildItems:Ljava/util/ArrayList;

    move v4, v3

    .line 193
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 195
    add-int/lit8 v5, v1, 0x1

    .line 196
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fenghuo/calllog/CallLogItem;

    .line 197
    const-string v8, "<Dialing>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v8, "<ID>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</ID>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v8, "<Type>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v1, Lcom/fenghuo/calllog/CallLogItem;->type:I

    invoke-static {v9}, Lcom/fenghuo/utils/Util;->formatCallLogType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</Type>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v8, "<Name>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</Name>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v8, "<Number>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</Number>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v8, "<StartTime>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v1, Lcom/fenghuo/calllog/CallLogItem;->mDate:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "</StartTime>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v8, "<Duration>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-wide v10, v1, Lcom/fenghuo/calllog/CallLogItem;->mDuration:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "</Duration>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v1, "<INTERCEPT_STATE>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, "</INTERCEPT_STATE>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, "</Dialing>"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto/16 :goto_1

    .line 179
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 208
    :cond_1
    const-string v0, "</Dialings>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public queryAllLog(Landroid/os/Handler;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 82
    iput-object p1, p0, Lcom/fenghuo/calllog/CallLogHelper;->loginHandler_:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->tempGroupNumber:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/calllog/CallLogHelper;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/fenghuo/calllog/CallLogHelper;->CALL_INFO:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->count:I

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    const-string v0, "name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 99
    const-string v0, "type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 100
    const-string v0, "date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 101
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 102
    const-string v0, "number"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 103
    const-string v0, "duration"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move v0, v6

    .line 104
    :goto_1
    iget v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->count:I

    if-ge v0, v1, :cond_5

    .line 106
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 107
    iput v0, p0, Lcom/fenghuo/calllog/CallLogHelper;->position:I

    .line 108
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    new-instance v11, Lcom/fenghuo/calllog/CallLogFhItem;

    invoke-direct {v11}, Lcom/fenghuo/calllog/CallLogFhItem;-><init>()V

    .line 112
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 113
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const-string v12, "\u0000"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 116
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const v12, 0xffff

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 117
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 118
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const v12, 0xff00

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 119
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const v12, 0xcccc

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 120
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 121
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const/16 v12, 0x14

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 122
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const/16 v12, 0xa11

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 123
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 124
    iget-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    const/16 v12, 0x1b

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mName:Ljava/lang/String;

    .line 126
    :cond_3
    iput-object v10, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mNumber:Ljava/lang/String;

    .line 127
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/fenghuo/calllog/CallLogFhItem;->lastTime:J

    .line 128
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->type:I

    .line 129
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/fenghuo/calllog/CallLogFhItem;->id:Ljava/lang/String;

    .line 130
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/fenghuo/calllog/CallLogFhItem;->mDuration:J

    .line 131
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lcom/fenghuo/calllog/CallLogHelper;->sendMssage(I)V

    .line 132
    iget-object v1, p0, Lcom/fenghuo/calllog/CallLogHelper;->callgroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    if-eqz v10, :cond_4

    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "country_code"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 165
    :cond_5
    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
