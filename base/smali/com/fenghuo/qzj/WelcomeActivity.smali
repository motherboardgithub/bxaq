.class public Lcom/fenghuo/qzj/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# static fields
.field public static id:J


# instance fields
.field protected final XML_HEADER:Ljava/lang/String;

.field endtime:J

.field public hCount:I

.field private ipTextView:Landroid/widget/TextView;

.field private isEnd:Z

.field private loadButton:Landroid/widget/Button;

.field private loadTextView:Landroid/widget/TextView;

.field private loginHandler_:Landroid/os/Handler;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field public minCount:I

.field private phoneNumber:Ljava/lang/String;

.field private progressTimer:Ljava/util/Timer;

.field scandir_app_count:I

.field scandir_app_position:I

.field scandir_count:I

.field scandir_position:I

.field private sdP:Ljava/lang/String;

.field public secondCount:I

.field private sendProgressLayout:Landroid/widget/LinearLayout;

.field private sendTextView:Landroid/widget/TextView;

.field private startS:J

.field starttime:J

.field private tipTextView:Landroid/widget/TextView;

.field private tv:Landroid/widget/TextView;

.field private tvTimer:Landroid/widget/TextView;

.field private uiHandler:Landroid/os/Handler;

.field private uninstall:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->XML_HEADER:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    .line 81
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    .line 82
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadTextView:Landroid/widget/TextView;

    .line 83
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendTextView:Landroid/widget/TextView;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendProgressLayout:Landroid/widget/LinearLayout;

    .line 86
    iput-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tv:Landroid/widget/TextView;

    .line 90
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    .line 91
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    .line 92
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->hCount:I

    .line 94
    iput-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    .line 95
    iput-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->isEnd:Z

    .line 97
    iput-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->startS:J

    .line 99
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_count:I

    .line 100
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_position:I

    .line 101
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_count:I

    .line 102
    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_position:I

    .line 115
    new-instance v0, Lcom/fenghuo/qzj/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/fenghuo/qzj/WelcomeActivity$1;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method private IsExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 890
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 891
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 892
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 893
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 895
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private PlayCameraVoice()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 351
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/high16 v0, 0x7f050000

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 355
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 356
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->progressTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->progressTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/fenghuo/qzj/WelcomeActivity;->setMessageDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->setHintVisisble()V

    return-void
.end method

.method static synthetic access$1400(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->sendReq()V

    return-void
.end method

.method static synthetic access$1500(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$1700(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/fenghuo/qzj/WelcomeActivity;->sendMssage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/fenghuo/qzj/WelcomeActivity;)J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->startS:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/fenghuo/qzj/WelcomeActivity;J)J
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->startS:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/fenghuo/qzj/WelcomeActivity;->onLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getAllApps()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/fenghuo/qzj/WelcomeActivity;->readAppData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tvTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->execContinue()V

    return-void
.end method

.method static synthetic access$800(Lcom/fenghuo/qzj/WelcomeActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->isEnd:Z

    return v0
.end method

.method static synthetic access$802(Lcom/fenghuo/qzj/WelcomeActivity;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->isEnd:Z

    return p1
.end method

.method static synthetic access$900(Lcom/fenghuo/qzj/WelcomeActivity;Landroid/net/wifi/WifiManager;)I
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/fenghuo/qzj/WelcomeActivity;->getConnectionWifiSsid(Landroid/net/wifi/WifiManager;)I

    move-result v0

    return v0
.end method

.method private execContinue()V
    .locals 1

    .prologue
    .line 848
    new-instance v0, Lcom/fenghuo/qzj/WelcomeActivity$12;

    invoke-direct {v0, p0}, Lcom/fenghuo/qzj/WelcomeActivity$12;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity$12;->start()V

    .line 886
    return-void
.end method

.method private getAllApps()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 929
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 930
    if-nez v4, :cond_0

    .line 932
    const-string v0, ""

    .line 1047
    :goto_0
    return-object v0

    .line 934
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 935
    if-nez v0, :cond_1

    .line 937
    const-string v0, ""

    goto :goto_0

    .line 944
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 946
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 949
    new-instance v8, Lcom/fenghuo/utils/AppInfo;

    invoke-direct {v8}, Lcom/fenghuo/utils/AppInfo;-><init>()V

    .line 950
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 952
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManager;

    const-string v10, "getPackageSizeInfo"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/content/pm/IPackageStatsObserver;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 953
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/fenghuo/qzj/WelcomeActivity$13;

    invoke-direct {v13, p0, v8}, Lcom/fenghuo/qzj/WelcomeActivity$13;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;Lcom/fenghuo/utils/AppInfo;)V

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 986
    :goto_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 987
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 988
    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->getCodeSize()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->getCodeSize()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->getCodeSize()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 990
    :cond_2
    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 991
    new-instance v11, Ljava/io/File;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 993
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/fenghuo/utils/AppInfo;->setCodeSize(Ljava/lang/String;)V

    .line 999
    :cond_3
    invoke-virtual {v8, v10}, Lcom/fenghuo/utils/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v8, v9}, Lcom/fenghuo/utils/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 1001
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/fenghuo/utils/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 1003
    :try_start_1
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v8, v10, v11}, Lcom/fenghuo/utils/AppInfo;->setTime(J)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    .line 1007
    :goto_3
    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/fenghuo/utils/AppInfo;->setAppPath(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0, v3}, Lcom/fenghuo/qzj/WelcomeActivity;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1010
    invoke-virtual {v8, v14}, Lcom/fenghuo/utils/AppInfo;->setIsSystemApp(Z)V

    .line 1018
    :goto_4
    invoke-direct {p0, v0, v8}, Lcom/fenghuo/qzj/WelcomeActivity;->setAppInfo(Landroid/content/pm/PackageInfo;Lcom/fenghuo/utils/AppInfo;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "app_list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1023
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1025
    iget v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_position:I

    .line 1026
    const-string v0, ""

    .line 1027
    if-nez v1, :cond_5

    .line 1029
    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1036
    add-int/lit8 v0, v1, 0x1

    .line 1038
    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1045
    :goto_7
    iget v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_count:I

    move v1, v0

    .line 1046
    goto/16 :goto_1

    .line 969
    :catch_0
    move-exception v3

    .line 971
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NoSuchMethodException:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_2

    .line 973
    :catch_1
    move-exception v3

    .line 975
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalAccessException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 977
    :catch_2
    move-exception v3

    .line 979
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalArgumentException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 981
    :catch_3
    move-exception v3

    .line 983
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InvocationTargetException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2

    .line 1013
    :cond_4
    invoke-virtual {v8, v2}, Lcom/fenghuo/utils/AppInfo;->setIsSystemApp(Z)V

    goto/16 :goto_4

    .line 1033
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/fenghuo/utils/AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 1043
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "scandir_apps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fenghuo/utils/Util;->appendFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 1047
    :cond_7
    const-string v0, ""

    goto/16 :goto_0

    .line 1004
    :catch_4
    move-exception v10

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_6
.end method

.method private getConnectionWifiSsid(Landroid/net/wifi/WifiManager;)I
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    return v0
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1249
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 1089
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fenghuo/utils/Global;->init(Landroid/content/Context;)V

    .line 1090
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 513
    new-instance v0, Lcom/fenghuo/qzj/WelcomeActivity$3;

    invoke-direct {v0, p0}, Lcom/fenghuo/qzj/WelcomeActivity$3;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    .line 621
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 692
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    .line 693
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tvTimer:Landroid/widget/TextView;

    .line 694
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendProgressLayout:Landroid/widget/LinearLayout;

    .line 696
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tv:Landroid/widget/TextView;

    .line 697
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->onLoading(Ljava/lang/String;Z)V

    .line 698
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/fenghuo/qzj/WelcomeActivity$7;

    invoke-direct {v1, p0}, Lcom/fenghuo/qzj/WelcomeActivity$7;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.43.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 711
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 712
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$8;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$8;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$9;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$9;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 731
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 734
    :cond_1
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadButton:Landroid/widget/Button;

    .line 735
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->uninstall:Landroid/widget/Button;

    .line 736
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->uninstall:Landroid/widget/Button;

    new-instance v1, Lcom/fenghuo/qzj/WelcomeActivity$10;

    invoke-direct {v1, p0}, Lcom/fenghuo/qzj/WelcomeActivity$10;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadButton:Landroid/widget/Button;

    new-instance v1, Lcom/fenghuo/qzj/WelcomeActivity$11;

    invoke-direct {v1, p0}, Lcom/fenghuo/qzj/WelcomeActivity$11;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loadTextView:Landroid/widget/TextView;

    .line 842
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendTextView:Landroid/widget/TextView;

    .line 843
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tipTextView:Landroid/widget/TextView;

    .line 844
    return-void
.end method

.method private onLoading(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1325
    if-eqz p2, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendProgressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1334
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sendProgressLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private readAppData(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    .line 1095
    invoke-direct {p0, p1}, Lcom/fenghuo/qzj/WelcomeActivity;->saveHelperFile(Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    .line 1097
    const-string v0, "true/false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    :goto_0
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->zipHelperFiles()V

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starttime\t\t\t  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endtime\t\t\t  ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endtime - starttime ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    iget-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->reportHtml()V

    goto :goto_0
.end method

.method private reportHtml()V
    .locals 6

    .prologue
    .line 1267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1268
    const-string v1, "<HTML>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1269
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->getHtmlHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    const-string v1, "<BODY>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1271
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    iget-wide v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    iget-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fenghuo/utils/Global;->getPhoneInfo(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1272
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    invoke-static {p0}, Lcom/fenghuo/sms/SMSHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/sms/SMSHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/sms/SMSHelper;->getSMSHtml()Ljava/lang/String;

    move-result-object v1

    .line 1275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    invoke-static {p0}, Lcom/fenghuo/contact/ContactsHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/contact/ContactsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/contact/ContactsHelper;->getContactHtml()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    invoke-static {p0}, Lcom/fenghuo/calllog/CallLogHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/calllog/CallLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/calllog/CallLogHelper;->getCallHtml()Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1286
    const-string v1, "</BODY>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    const-string v1, "</HTML>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "report.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1290
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1292
    return-void
.end method

.method private requestPermissions()V
    .locals 3

    .prologue
    .line 415
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private saveHelperFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1114
    const-string v0, "true/false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    .line 1147
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->sendMssage(Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    iget-wide v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->starttime:J

    iget-wide v4, p0, Lcom/fenghuo/qzj/WelcomeActivity;->endtime:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fenghuo/utils/Global;->getPhoneData(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PhoneData.cha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Phone>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1150
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->phoneNumber:Ljava/lang/String;

    .line 1151
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1153
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->phoneNumber:Ljava/lang/String;

    .line 1155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "phone.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1156
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->writeDeviceN()V

    .line 1157
    return-void

    .line 1120
    :cond_1
    invoke-static {p0}, Lcom/fenghuo/contact/ContactsHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/contact/ContactsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/fenghuo/contact/ContactsHelper;->testReadAll(Landroid/os/Handler;)V

    .line 1121
    invoke-static {p0}, Lcom/fenghuo/contact/ContactsHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/contact/ContactsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/contact/ContactsHelper;->getHelperData()Ljava/lang/String;

    move-result-object v0

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Contact.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1127
    invoke-static {p0}, Lcom/fenghuo/calllog/CallLogHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/calllog/CallLogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/fenghuo/calllog/CallLogHelper;->queryAllLog(Landroid/os/Handler;)V

    .line 1128
    invoke-static {p0}, Lcom/fenghuo/calllog/CallLogHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/calllog/CallLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/calllog/CallLogHelper;->getHelperData()Ljava/lang/String;

    move-result-object v0

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Dialing.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1133
    invoke-static {p0}, Lcom/fenghuo/sms/SMSHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/sms/SMSHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/fenghuo/sms/SMSHelper;->queryAllSMS(Landroid/os/Handler;)V

    .line 1134
    invoke-static {p0}, Lcom/fenghuo/sms/SMSHelper;->getInstance(Landroid/content/Context;)Lcom/fenghuo/sms/SMSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/sms/SMSHelper;->getHelperData()Ljava/lang/String;

    move-result-object v0

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Messages.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1139
    invoke-static {p0}, Lcom/fenghuo/calendar/CalendarHepler;->getInstance(Landroid/content/Context;)Lcom/fenghuo/calendar/CalendarHepler;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/fenghuo/calendar/CalendarHepler;->GetCalendar(Landroid/os/Handler;)V

    .line 1140
    invoke-static {p0}, Lcom/fenghuo/calendar/CalendarHepler;->getInstance(Landroid/content/Context;)Lcom/fenghuo/calendar/CalendarHepler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/calendar/CalendarHepler;->getHelperData()Ljava/lang/String;

    move-result-object v0

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Calendar.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private sendMssage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1173
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1175
    const-string v2, "msgStr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1177
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1178
    return-void
.end method

.method private sendReq()V
    .locals 3

    .prologue
    .line 1318
    new-instance v0, Lcom/fenghuo/http/request/ReqZIPEvent;

    invoke-direct {v0}, Lcom/fenghuo/http/request/ReqZIPEvent;-><init>()V

    .line 1319
    new-instance v1, Lcom/fenghuo/http/HttpThread;

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->loginHandler_:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/fenghuo/http/HttpThread;-><init>(Landroid/os/Handler;Lcom/fenghuo/http/request/ReqEvent;)V

    .line 1320
    invoke-virtual {v1}, Lcom/fenghuo/http/HttpThread;->start()V

    .line 1321
    return-void
.end method

.method private setAppInfo(Landroid/content/pm/PackageInfo;Lcom/fenghuo/utils/AppInfo;)V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "MD5"

    invoke-static {p0, v0, v1}, Lcom/fenghuo/utils/Sign;->getSingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-virtual {p2, v0}, Lcom/fenghuo/utils/AppInfo;->setMd5(Ljava/lang/String;)V

    .line 921
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, v0}, Lcom/fenghuo/utils/AppInfo;->setVersionCode(I)V

    .line 924
    return-void
.end method

.method private setHintVisisble()V
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ":;"

    sget-object v1, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdcard0:;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tipTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tipTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMessageDialog(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    return-void
.end method

.method private showAlertDialog()V
    .locals 3

    .prologue
    .line 625
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 626
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 629
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$4;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$4;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$5;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$5;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$6;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$6;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 679
    return-void
.end method

.method private unZip()V
    .locals 3

    .prologue
    .line 1298
    :try_start_0
    sget-object v0, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    const-string v1, ".zip"

    invoke-static {}, Lcom/fenghuo/utils/Util;->getCurrentDateAndTime2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    sget-object v1, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fenghuo/utils/XZip;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :goto_0
    return-void

    .line 1301
    :catch_0
    move-exception v0

    .line 1303
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUi()V
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lcom/fenghuo/qzj/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/fenghuo/qzj/WelcomeActivity$2;-><init>(Lcom/fenghuo/qzj/WelcomeActivity;)V

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity$2;->start()V

    .line 483
    return-void
.end method

.method private writeDeviceN()V
    .locals 3

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppParse.prop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CPU_ABI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BOARD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HARDWARE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DEVICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1168
    return-void
.end method

.method private zipHelperFiles()V
    .locals 2

    .prologue
    .line 1254
    sget-object v0, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 1257
    :try_start_0
    sget-object v0, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    sget-object v1, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fenghuo/utils/XZip;->ZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_0
    return-void

    .line 1259
    :catch_0
    move-exception v0

    .line 1261
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public appendFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1183
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->appendFile(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1188
    :goto_0
    return v0

    .line 1184
    :catch_0
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1188
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public appendFile(Ljava/lang/String;[B)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return v0

    .line 1200
    :cond_1
    const v1, 0x8003

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1201
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1202
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1203
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    const/4 v0, 0x1

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 905
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 910
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    const/4 v4, 0x0

    .line 493
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    new-array v1, v5, [B

    .line 496
    :goto_0
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 498
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 499
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 504
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 505
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 371
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->setContentView(I)V

    .line 372
    invoke-static {p0}, Lcom/fenghuo/utils/OpenAssetsToFiles;->unZipAssetsAndChomd(Landroid/content/Context;)V

    .line 373
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->init()V

    .line 374
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->initHandler()V

    .line 375
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->initLayout()V

    .line 376
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    .line 377
    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, ""

    .line 379
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3

    .line 380
    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    .line 390
    invoke-static {p0, v3}, Lcom/fenghuo/utils/Util;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_4
    invoke-static {p0, v3}, Lcom/fenghuo/utils/Util;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 400
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->sdP:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1340
    packed-switch p1, :pswitch_data_0

    .line 1346
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1343
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1340
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 488
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 489
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 438
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 439
    aget v0, p3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v0, "\u5df2\u62d2\u7edd\u6743\u9650\uff01"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 364
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-static {}, Lcom/fenghuo/utils/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fenghuo/utils/Global;->setLocalIP(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->ipTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1052
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/error_file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    const-string v1, ""

    .line 1056
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    invoke-static {v2}, Lcom/fenghuo/utils/Util;->readFileByLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1061
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1063
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1064
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/fenghuo/utils/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1068
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scandir_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fenghuo/utils/Util;->readFileCountByLines(Ljava/io/File;)I

    move-result v1

    .line 1069
    if-lez v1, :cond_2

    .line 1071
    invoke-direct {p0}, Lcom/fenghuo/qzj/WelcomeActivity;->PlayCameraVoice()V

    .line 1073
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1074
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1075
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1076
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1078
    const-string v4, "scandir_count"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_3
    const-string v4, "count"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    const-string v0, "position"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const-string v0, "time"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1084
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1085
    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1216
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->writeFile(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1221
    :goto_0
    return v0

    .line 1217
    :catch_0
    move-exception v0

    .line 1219
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeFile(Ljava/lang/String;[B)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1233
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1234
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1235
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    const/4 v0, 0x1

    goto :goto_0

    .line 1237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected writePreferences(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method
