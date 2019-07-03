.class public Lcom/fenghuo/utils/CTelephoneInfo;
.super Ljava/lang/Object;
.source "CTelephoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field private static CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private imeiSIM1:Ljava/lang/String;

.field private imeiSIM2:Ljava/lang/String;

.field private imsiSIM1:Ljava/lang/String;

.field private imsiSIM2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM1:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM2:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM1:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM2:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/fenghuo/utils/CTelephoneInfo;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/fenghuo/utils/CTelephoneInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/fenghuo/utils/CTelephoneInfo;

    invoke-direct {v0}, Lcom/fenghuo/utils/CTelephoneInfo;-><init>()V

    sput-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    .line 22
    :cond_0
    sput-object p0, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v1, ""

    .line 85
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 90
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 91
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 92
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 96
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    new-instance v0, Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException;

    invoke-direct {v0, p1}, Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getImeiSIM1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiSIM2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSIM2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public setCTelephoneInfo()V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 48
    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM1:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    const-string v2, ""

    iput-object v2, v1, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM2:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM1:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM2:Ljava/lang/String;

    .line 53
    :try_start_0
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getDeviceIdGemini"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM1:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getDeviceIdGemini"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM2:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriberIdGemini"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM1:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriberIdGemini"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM2:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getDeviceId"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM1:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imeiSIM2:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriberId"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM1:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/fenghuo/utils/CTelephoneInfo;->CTelephoneInfo:Lcom/fenghuo/utils/CTelephoneInfo;

    sget-object v1, Lcom/fenghuo/utils/CTelephoneInfo;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fenghuo/utils/CTelephoneInfo;->getOperatorBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fenghuo/utils/CTelephoneInfo;->imsiSIM2:Ljava/lang/String;
    :try_end_1
    .catch Lcom/fenghuo/utils/CTelephoneInfo$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_0
.end method
