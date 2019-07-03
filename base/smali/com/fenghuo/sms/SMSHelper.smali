.class public Lcom/fenghuo/sms/SMSHelper;
.super Ljava/lang/Object;
.source "SMSHelper.java"


# static fields
.field public static final SMS_INFO:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;

.field private static sInstance:Lcom/fenghuo/sms/SMSHelper;


# instance fields
.field private count:I

.field private flage:Z

.field public loginHandler_:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private position:I

.field public smsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/sms/SMSItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/sms/SMSHelper;->URI:Landroid/net/Uri;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fenghuo/sms/SMSHelper;->SMS_INFO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    .line 27
    iput-boolean v1, p0, Lcom/fenghuo/sms/SMSHelper;->flage:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->loginHandler_:Landroid/os/Handler;

    .line 39
    iput v1, p0, Lcom/fenghuo/sms/SMSHelper;->count:I

    .line 40
    iput v1, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    .line 53
    iput-object p1, p0, Lcom/fenghuo/sms/SMSHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fenghuo/sms/SMSHelper;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/fenghuo/sms/SMSHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fenghuo/sms/SMSHelper;->sInstance:Lcom/fenghuo/sms/SMSHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/fenghuo/sms/SMSHelper;

    invoke-direct {v0, p0}, Lcom/fenghuo/sms/SMSHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fenghuo/sms/SMSHelper;->sInstance:Lcom/fenghuo/sms/SMSHelper;

    .line 48
    :cond_0
    sget-object v0, Lcom/fenghuo/sms/SMSHelper;->sInstance:Lcom/fenghuo/sms/SMSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSimExist()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 146
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 151
    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    if-nez v0, :cond_2

    move v0, v2

    .line 157
    goto :goto_0

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method private sendMssage(I)V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 59
    iput p1, v0, Landroid/os/Message;->what:I

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "count"

    iget v3, p0, Lcom/fenghuo/sms/SMSHelper;->count:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "poistion"

    iget v3, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/fenghuo/sms/SMSHelper;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    return-void
.end method


# virtual methods
.method public getHelperData()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 168
    .line 169
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    const-string v0, "<Messages>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v0, "<Count>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</Count>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    move v0, v2

    .line 172
    :goto_0
    iget-object v3, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 174
    add-int/lit8 v3, v0, 0x1

    .line 175
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/sms/SMSItem;

    .line 176
    const-string v5, "<Message>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v5, "<ID>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</ID>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v5, "<Storage>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mStorage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</Storage>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v5, "<SMSType>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mSMSType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</SMSType>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v5, "<Folder>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</Folder>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v5, "<CenterNumber>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mCenterNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</CenterNumber>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v5, "<Number>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</Number>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v5, "<Time>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, v0, Lcom/fenghuo/sms/SMSItem;->mTime:J

    invoke-static {v6, v7}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</Time>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v5, "<Text>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    invoke-static {v6}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</Text>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v5, "<Type>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v0, v0, Lcom/fenghuo/sms/SMSItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "</Type>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v0, "<INTERCEPT_STATE>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "</INTERCEPT_STATE>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v0, "</Message>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    .line 189
    :cond_0
    const-string v0, "</Messages>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method public getSMSHtml()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 199
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    const-string v1, "<h2 id=\"Message\"><a href=\"#PhoneInfo\" style=\"text-decoration:none;\">Message</a></h2>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v1, "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, "<TR bgcolor=\"#C0C0C0\">"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v1, "<TD>ID</TD><TD>SmsStorage</TD><TD>SmsType</TD><TD>Folder</TD><TD>CenterNumber</TD><TD>TelePhone</TD><TD>SmsTime</TD><TD>Type</TD><TD>Text</TD></TR>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v1, "<TR>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, "<TD Style=\"WIDTH:2%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:5%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:6%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:6%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:12%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:7%\" HEIGHT=\"0\"></TD><TD Style=\"WIDTH:13%\" HEIGHT=\"0\"></TD><TD HEIGHT=\"0\"></TD></TR>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const-string v1, "<TR>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v1, "<TD></TD></TR>"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 212
    add-int/lit8 v2, v0, 0x1

    .line 213
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/sms/SMSItem;

    .line 214
    const-string v3, "<TR>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v0, Lcom/fenghuo/sms/SMSItem;->mStorage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v3, "1"

    iget-object v6, v0, Lcom/fenghuo/sms/SMSItem;->mSMSType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Read"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "N/A"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v3, v0, Lcom/fenghuo/sms/SMSItem;->mCenterNumber:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "N/A"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v0, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-wide v6, v0, Lcom/fenghuo/sms/SMSItem;->mTime:J

    invoke-static {v6, v7}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, v0, Lcom/fenghuo/sms/SMSItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "</TD>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v3, "<TD>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->escapexml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "</TD>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, "</TR>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    .line 217
    :cond_0
    const-string v3, "Send"

    goto/16 :goto_1

    .line 219
    :cond_1
    iget-object v3, v0, Lcom/fenghuo/sms/SMSItem;->mCenterNumber:Ljava/lang/String;

    goto :goto_2

    .line 226
    :cond_2
    const-string v0, "</table>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public getSimSms(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 234
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "address"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "body"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "date"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "type"

    aput-object v3, v2, v1

    .line 239
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 243
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 249
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/sms/SMSHelper;->flage:Z

    .line 252
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/fenghuo/sms/SMSHelper;->count:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    .line 255
    :cond_0
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    const-string v0, ""

    .line 257
    const-string v0, ""

    .line 259
    const-string v0, ""

    .line 261
    const-string v0, "address"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 262
    const-string v0, "body"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 263
    const-string v0, "date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 264
    const-string v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 267
    :cond_1
    iget v0, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    .line 268
    new-instance v8, Lcom/fenghuo/sms/SMSItem;

    invoke-direct {v8}, Lcom/fenghuo/sms/SMSItem;-><init>()V

    .line 269
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    if-nez v0, :cond_8

    .line 272
    const-string v0, ""

    move-object v1, v0

    .line 273
    :goto_1
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "country_code"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_3

    .line 280
    const-string v0, ""

    .line 282
    :cond_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 283
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    if-nez v2, :cond_4

    .line 286
    const-string v2, ""

    .line 288
    :cond_4
    iput-object v1, v8, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    .line 289
    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 290
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_5

    .line 293
    :try_start_3
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const-string v1, "\u0000"

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/lang/String;

    iget-object v1, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v9, "UTF-8"

    invoke-direct {v0, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 295
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 296
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 297
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v1, 0xff00

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 298
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v1, 0xcccc

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 299
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 300
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 301
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v1, 0xa11

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 302
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 303
    iget-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 309
    :cond_5
    :goto_2
    :try_start_4
    iput-wide v10, v8, Lcom/fenghuo/sms/SMSItem;->mTime:J

    .line 310
    iput-object v2, v8, Lcom/fenghuo/sms/SMSItem;->mType:Ljava/lang/String;

    .line 311
    const-string v0, "SIM"

    iput-object v0, v8, Lcom/fenghuo/sms/SMSItem;->mStorage:Ljava/lang/String;

    .line 312
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/fenghuo/sms/SMSHelper;->sendMssage(I)V

    .line 313
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_6
    if-eqz v3, :cond_7

    .line 318
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_7
    :goto_3
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, v6

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 320
    :catch_2
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public queryAllSMS(Landroid/os/Handler;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 69
    iput-object p1, p0, Lcom/fenghuo/sms/SMSHelper;->loginHandler_:Landroid/os/Handler;

    .line 70
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iput-boolean v6, p0, Lcom/fenghuo/sms/SMSHelper;->flage:Z

    .line 77
    iget-object v0, p0, Lcom/fenghuo/sms/SMSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/sms/SMSHelper;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/fenghuo/sms/SMSHelper;->SMS_INFO:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/fenghuo/sms/SMSHelper;->count:I

    .line 82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 84
    const-string v0, "address"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 85
    const-string v0, "date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 86
    const-string v0, "read"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 87
    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 88
    const-string v0, "service_center"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 89
    const-string v0, "type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move v0, v6

    .line 90
    :goto_1
    iget v1, p0, Lcom/fenghuo/sms/SMSHelper;->count:I

    if-ge v0, v1, :cond_4

    .line 92
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 93
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fenghuo/sms/SMSHelper;->position:I

    .line 94
    new-instance v6, Lcom/fenghuo/sms/SMSItem;

    invoke-direct {v6}, Lcom/fenghuo/sms/SMSItem;-><init>()V

    .line 95
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mID:Ljava/lang/String;

    .line 96
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mSMSType:Ljava/lang/String;

    .line 97
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mCenterNumber:Ljava/lang/String;

    .line 98
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    .line 99
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
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

    iget-object v12, v6, Lcom/fenghuo/sms/SMSItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/fenghuo/sms/SMSItem;->mTime:J

    .line 104
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 105
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mType:Ljava/lang/String;

    .line 106
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 109
    :try_start_0
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const-string v11, "\u0000"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/String;

    iget-object v11, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v1, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 111
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v11, 0xffff

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 112
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 113
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v11, 0xff00

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 114
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const v11, 0xcccc

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 115
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v11, 0xe

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 116
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v11, 0x14

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 117
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v11, 0xa11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 118
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    .line 119
    iget-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;

    const/16 v11, 0x1b

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_3
    :goto_2
    const-string v1, "N/A"

    iput-object v1, v6, Lcom/fenghuo/sms/SMSItem;->mStorage:Ljava/lang/String;

    .line 126
    const/16 v1, 0x69

    invoke-direct {p0, v1}, Lcom/fenghuo/sms/SMSHelper;->sendMssage(I)V

    .line 127
    iget-object v1, p0, Lcom/fenghuo/sms/SMSHelper;->smsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 129
    :cond_4
    if-eqz v2, :cond_5

    .line 131
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_5
    invoke-direct {p0}, Lcom/fenghuo/sms/SMSHelper;->isSimExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "content://sms/icc"

    invoke-virtual {p0, v0}, Lcom/fenghuo/sms/SMSHelper;->getSimSms(Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/fenghuo/sms/SMSHelper;->flage:Z

    if-nez v0, :cond_0

    .line 139
    const-string v0, "content://sms/sim"

    invoke-virtual {p0, v0}, Lcom/fenghuo/sms/SMSHelper;->getSimSms(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
