.class public Lcom/fenghuo/utils/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static ALL_MEM:Ljava/lang/String;

.field private static IP_DEVICE:Ljava/lang/String;

.field public static ROOT_FLAG:I

.field public static SIMSTATE:I

.field public static TIMEZONE:Ljava/lang/String;

.field public static USER_DIVISION:Ljava/lang/String;

.field public static absolutePath_:Ljava/lang/String;

.field public static absolutefilesPath_:Ljava/lang/String;

.field public static esnPath_:Ljava/lang/String;

.field private static gInstance_:Lcom/fenghuo/utils/Global;

.field public static mSdCardPath_:Ljava/lang/String;

.field public static modelDevice:Ljava/lang/String;

.field public static uploadPath_:Ljava/lang/String;

.field public static zipEsnPath_:Ljava/lang/String;

.field public static zipTestPath:Ljava/lang/String;


# instance fields
.field public SN:Ljava/lang/String;

.field public SimSN:Ljava/lang/String;

.field private appIP_:Ljava/lang/String;

.field private appPORT_:Ljava/lang/String;

.field public imei_:Ljava/lang/String;

.field public imsi_:Ljava/lang/String;

.field private localIP_:Ljava/lang/String;

.field public macAddress:Ljava/lang/String;

.field public macBlueBooth:Ljava/lang/String;

.field public manufacturerDevice:Ljava/lang/String;

.field public modeRealDevice:Ljava/lang/String;

.field public versionDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->uploadPath_:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->modelDevice:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/fenghuo/utils/Global;->ROOT_FLAG:I

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->TIMEZONE:Ljava/lang/String;

    .line 69
    const/16 v0, 0x9

    sput v0, Lcom/fenghuo/utils/Global;->SIMSTATE:I

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->IP_DEVICE:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->zipTestPath:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->modeRealDevice:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->versionDevice:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SimSN:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SN:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static checkRootFlag()V
    .locals 2

    .prologue
    .line 884
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/System/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x1

    sput v0, Lcom/fenghuo/utils/Global;->ROOT_FLAG:I

    .line 895
    :goto_0
    return-void

    .line 886
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/System/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    const/4 v0, 0x1

    sput v0, Lcom/fenghuo/utils/Global;->ROOT_FLAG:I

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    goto :goto_0

    .line 889
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/fenghuo/utils/Global;->ROOT_FLAG:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static convertIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    const-string v0, ""

    .line 711
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 716
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    :cond_2
    const-string v0, "192.168.43.1"

    goto :goto_0
.end method

.method public static copyAllDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 822
    .line 825
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 831
    :goto_0
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_4

    .line 835
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 837
    invoke-static {p2}, Lcom/fenghuo/utils/Util;->createFile(Ljava/lang/String;)Ljava/io/File;

    .line 839
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 840
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 842
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 844
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 846
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 852
    :catch_0
    move-exception v0

    .line 880
    :cond_2
    :goto_2
    return-void

    .line 827
    :catch_1
    move-exception v1

    .line 829
    const/4 v1, 0x0

    goto :goto_0

    .line 849
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 850
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 863
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 866
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 867
    invoke-virtual {v2, v5, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 868
    invoke-virtual {v2, v5, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 869
    invoke-virtual {v2, v5, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 871
    :cond_5
    array-length v2, v1

    .line 872
    :goto_3
    if-ge v0, v2, :cond_2

    .line 874
    aget-object v3, v1, v0

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-static {p0, v4, v3}, Lcom/fenghuo/utils/Global;->copyAllDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getGlobal()Lcom/fenghuo/utils/Global;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/fenghuo/utils/Global;->gInstance_:Lcom/fenghuo/utils/Global;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/fenghuo/utils/Global;

    invoke-direct {v0}, Lcom/fenghuo/utils/Global;-><init>()V

    sput-object v0, Lcom/fenghuo/utils/Global;->gInstance_:Lcom/fenghuo/utils/Global;

    .line 88
    :cond_0
    sget-object v0, Lcom/fenghuo/utils/Global;->gInstance_:Lcom/fenghuo/utils/Global;

    return-object v0
.end method

.method private static getLocalInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 291
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v2

    .line 292
    :goto_0
    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 294
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 295
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    .line 297
    :try_start_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 303
    :goto_2
    if-eqz v0, :cond_1

    .line 311
    :goto_3
    return-object v0

    :cond_0
    move-object v1, v2

    .line 300
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 306
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 309
    :goto_4
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_3

    .line 307
    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private static getLocalMacAddressFromIp()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 253
    const/4 v0, 0x0

    .line 256
    :try_start_0
    invoke-static {}, Lcom/fenghuo/utils/Global;->getLocalInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 257
    if-nez v2, :cond_0

    .line 259
    const-string v0, ""

    .line 279
    :goto_0
    return-object v0

    .line 261
    :cond_0
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 262
    if-nez v3, :cond_1

    .line 264
    const-string v0, ""

    goto :goto_0

    .line 266
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    .line 267
    :goto_1
    array-length v1, v3

    if-ge v2, v1, :cond_4

    .line 268
    if-eqz v2, :cond_2

    .line 269
    const/16 v1, 0x3a

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    :cond_2
    aget-byte v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMemInfoType(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 899
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/partitions"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 902
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 904
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 905
    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    .line 964
    :goto_0
    return-void

    .line 907
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 908
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 909
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 910
    :goto_1
    if-eqz v0, :cond_1

    .line 911
    const-string v3, "mmcblk0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 920
    :cond_1
    if-eqz v1, :cond_2

    .line 921
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 924
    :cond_2
    if-eqz v2, :cond_3

    .line 925
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 928
    :cond_3
    const-string v1, "mmcblk0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 929
    const/4 v1, 0x0

    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 930
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 933
    :cond_4
    const-string v1, "sda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 934
    const/4 v1, 0x0

    const-string v2, "sda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 935
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 938
    :cond_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 939
    const-wide/16 v2, 0x200

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 940
    const-string v0, "1024GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 961
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 914
    :cond_6
    const-string v3, "sda"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 917
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 941
    :cond_7
    const-wide/16 v2, 0x100

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 942
    const-string v0, "512GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 943
    :cond_8
    const-wide/16 v2, 0x80

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    .line 944
    const-string v0, "256GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 945
    :cond_9
    const-wide/16 v2, 0x40

    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    .line 946
    const-string v0, "128GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 947
    :cond_a
    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 948
    const-string v0, "64GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 949
    :cond_b
    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 950
    const-string v0, "32GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 951
    :cond_c
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 952
    const-string v0, "16GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 953
    :cond_d
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    .line 954
    const-string v0, "8GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 955
    :cond_e
    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 956
    const-string v0, "4GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    goto/16 :goto_0

    .line 958
    :cond_f
    const-string v0, "2GB"

    sput-object v0, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static getNewMac()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 320
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    move-object v0, v1

    .line 346
    :goto_0
    return-object v0

    .line 325
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 326
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 329
    if-nez v3, :cond_2

    move-object v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    array-length v5, v3

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_3

    aget-byte v2, v3, v0

    .line 335
    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 341
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v1

    .line 346
    goto :goto_0
.end method

.method public static getSimState(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 979
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 980
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 981
    const/4 v0, 0x1

    sput v0, Lcom/fenghuo/utils/Global;->SIMSTATE:I

    .line 987
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_1

    .line 983
    const/16 v0, 0x9

    sput v0, Lcom/fenghuo/utils/Global;->SIMSTATE:I

    goto :goto_0

    .line 985
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/fenghuo/utils/Global;->SIMSTATE:I

    goto :goto_0
.end method

.method public static getTimeZone()V
    .locals 3

    .prologue
    .line 967
    const-string v0, "GMT+8"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    const-string v0, "+8:00"

    .line 975
    :cond_0
    :goto_0
    sput-object v0, Lcom/fenghuo/utils/Global;->TIMEZONE:Ljava/lang/String;

    .line 976
    return-void

    .line 971
    :cond_1
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    const-string v1, "GMT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static installPreload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 794
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "preload"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 800
    array-length v2, v1

    .line 801
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 803
    aget-object v3, v1, v0

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 806
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preload/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    invoke-static {p0, v3, v4}, Lcom/fenghuo/utils/Global;->copyAllDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 796
    :catch_0
    move-exception v0

    .line 817
    :cond_1
    return-void
.end method


# virtual methods
.method public GetLocalMainMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 395
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<UNKNOWN>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_3
    if-nez v0, :cond_4

    .line 410
    const-string v0, ""

    .line 412
    :cond_4
    return-object v0
.end method

.method public LoadBlueBoothMAC(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    .line 488
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "<UNKNOWN>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_4

    .line 474
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "<UNKNOWN>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    :cond_3
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->GetLocalMainMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->GetLocalMainMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hardware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public getAppIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIPPORT()Ljava/lang/String;
    .locals 4

    .prologue
    .line 561
    const-string v0, ""

    .line 562
    iget-object v1, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 564
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_0
    return-object v0
.end method

.method public getAppPORT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisionUser(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 502
    const-string v0, ""

    .line 503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 504
    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 505
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 506
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 508
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    const-string v1, ""

    .line 511
    sget-object v2, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    sget-object v1, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    sget-object v2, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    .line 527
    :cond_2
    :goto_0
    return-void

    .line 522
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object v0, v1

    .line 526
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHtmlHead()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 726
    const-string v1, "<HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    const-string v1, "<TITLE>CellHunter Reporter</TITLE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    const-string v1, "<META http-equiv=\"content-type\" content=\"text/html\" charset=utf-8>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    const-string v1, "<STYLE TYPE=\"text/css\"></STYLE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    const-string v1, "</HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    return-object v0
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneData(JJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 679
    const-string v1, "<General>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    const-string v1, "<Manufacturer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Manufacturer>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    const-string v1, "<Model>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/fenghuo/utils/Global;->modelDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Model>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v1, "<RealModel>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->modeRealDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</RealModel>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 683
    const-string v1, "<IMEI>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</IMEI>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    const-string v1, "<IMSI>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</IMSI>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    const-string v1, "<ICCID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</ICCID>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    const-string v1, "<PhoneSN>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->SN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</PhoneSN>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    const-string v1, "<OSVersion>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->versionDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</OSVersion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    const-string v1, "<WifiMac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</WifiMac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    const-string v1, "<BlueBoothMac>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->macBlueBooth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</BlueBoothMac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    const-string v1, "<TZI>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Pacific Standard Time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TZI>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const-string v1, "<Dump>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "LogicalDump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Dump>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    const-string v1, "<ConnectType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</ConnectType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string v1, "<Cable>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Cable>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    const-string v1, "<Date>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/fenghuo/utils/Util;->formatDateStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</Date>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string v1, "<StartTime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</StartTime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    const-string v1, "<EndTime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3, p4}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</EndTime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    const-string v1, "<DeviceName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "MobileHunter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</DeviceName>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    const-string v1, "<PlatformType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</PlatformType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    const-string v1, "<USER_DIVISION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/fenghuo/utils/Global;->USER_DIVISION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</USER_DIVISION>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const-string v1, "<TIMEZONE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/fenghuo/utils/Global;->TIMEZONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TIMEZONE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    const-string v1, "<PHONE_STORAGE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/fenghuo/utils/Global;->ALL_MEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</PHONE_STORAGE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    const-string v1, "<CRACK_STATE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/fenghuo/utils/Global;->ROOT_FLAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</CRACK_STATE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    const-string v1, "<SIM_STATE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget v2, Lcom/fenghuo/utils/Global;->SIMSTATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</SIM_STATE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    const-string v1, "<IP_ADDRESS>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/fenghuo/utils/Global;->IP_DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</IP_ADDRESS>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInfo(JJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 739
    const-string v1, "<h2 id=\"PhoneInfo\">PhoneInfo</h2>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    const-string v1, "<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    const-string v1, "<tr><td bgcolor=\"#C0C0C0\" height=\"23\" colspan=\"2\"></td></tr><TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    const-string v1, "<TD width=\"35%\">Manufacturer</td><td>Android</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    const-string v1, "<TD width=\"35%\">Model</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(WIFI)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    const-string v1, "<TD width=\"35%\">RealModel</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(WIFI)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    const-string v1, "<TD width=\"35%\">IMEI</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    const-string v1, "<TD width=\"35%\">IMSI</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    const-string v1, "<TD width=\"35%\">ConnectType</td><td>WIFI</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    const-string v1, "<TD width=\"35%\">StartTime</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    const-string v1, "<TD width=\"35%\">EndTime</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3, p4}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    const-string v1, "<TD width=\"35%\">Date</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/fenghuo/utils/Util;->formatDateStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    const-string v1, "<TD width=\"35%\">TZI</td><td>Pacific Standard Time</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    const-string v1, "<TD width=\"35%\">Version</td><td>1.0.0</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    const-string v1, "<TD width=\"35%\">SN</td><td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/fenghuo/utils/Util;->formatDateMonthStampString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</TD></TR>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    return-object v0
.end method

.method public getSN()V
    .locals 5

    .prologue
    .line 418
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 419
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 420
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ril.serialnumber"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SN:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->SN:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 424
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 425
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ro.serialno"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "unknown"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 775
    const-string v1, "<h2>Selection</h2><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-size:11pt;border-collapse:collapse;\ttext-align:left;padding-left:5px;line-height:18pt;\" bordercolor=\"#111111\" width=\"100%\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    const-string v1, "<tr><td bgcolor=\"#C0C0C0\" height=\"23\" colspan=\"2\"></td></tr><TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    const-string v1, "<TD width=\"35%\"><a style=\"text-decoration:none\" href=\"#Contact\">Contact</a></td><td>Select</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    const-string v1, "<TD width=\"35%\"><a style=\"text-decoration:none\" href=\"#Dialing\">Dialing</a></td><td>Select</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    const-string v1, "<TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const-string v1, "<TD width=\"35%\"><a style=\"text-decoration:none\" href=\"#Message\">Message</a></td><td>Select</TD></TR>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    const-string v1, "</table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    return-object v0
.end method

.method public getwifimac(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->loadWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_11

    .line 100
    sput-object v0, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "qzj/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "uploadfile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->uploadPath_:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_1
    invoke-static {}, Lcom/fenghuo/utils/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 124
    :cond_2
    const-string v0, "192.168.43.*"

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Global;->convertIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    .line 128
    const v0, 0x7f070002

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/fenghuo/utils/CTelephoneInfo;->getInstance(Landroid/content/Context;)Lcom/fenghuo/utils/CTelephoneInfo;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->setCTelephoneInfo()V

    .line 131
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImeiSIM1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 134
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImeiSIM2()Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    .line 143
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    :cond_5
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->loadESN(Landroid/content/Context;)Ljava/lang/String;

    .line 147
    :cond_6
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImsiSIM1()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 150
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImsiSIM2()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_7

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    .line 159
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    :cond_8
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->loadIMSI(Landroid/content/Context;)Ljava/lang/String;

    .line 163
    :cond_9
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->loadSN(Landroid/content/Context;)Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/fenghuo/utils/Global;->getSN()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->getDivisionUser(Landroid/content/Context;)V

    .line 166
    new-instance v0, Lcom/fenghuo/utils/Global$1;

    invoke-direct {v0, p0, p1}, Lcom/fenghuo/utils/Global$1;-><init>(Lcom/fenghuo/utils/Global;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fenghuo/utils/Global$1;->start()V

    .line 179
    invoke-virtual {p0}, Lcom/fenghuo/utils/Global;->loadM()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 182
    :cond_a
    const-string v0, "Android"

    .line 184
    :cond_b
    sput-object v0, Lcom/fenghuo/utils/Global;->modelDevice:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/fenghuo/utils/Global;->loadRealModel()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 188
    :cond_c
    const-string v0, "Android"

    .line 190
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/fenghuo/utils/Global;->modelDevice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->modeRealDevice:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/fenghuo/utils/Global;->loadManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/fenghuo/utils/Global;->loadVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->versionDevice:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 197
    const-string v0, "Android_Device"

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->manufacturerDevice:Ljava/lang/String;

    .line 199
    :cond_e
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->versionDevice:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->versionDevice:Ljava/lang/String;

    .line 204
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/temp.zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->zipTestPath:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 221
    :cond_10
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 223
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 225
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 226
    :goto_4
    array-length v1, v2

    if-ge v0, v1, :cond_15

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "hardware"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    :cond_11
    const-string v0, "/data/data/com.fiberhome.wifiserver/files"

    sput-object v0, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    .line 105
    const-string v0, "/data/data/com.fiberhome.wifiserver/"

    goto/16 :goto_1

    .line 141
    :cond_12
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImeiSIM2()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    goto/16 :goto_2

    .line 157
    :cond_13
    invoke-virtual {v0}, Lcom/fenghuo/utils/CTelephoneInfo;->getImsiSIM2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    goto/16 :goto_3

    .line 232
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hardware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    :cond_15
    invoke-static {}, Lcom/fenghuo/utils/Global;->checkRootFlag()V

    .line 236
    invoke-static {}, Lcom/fenghuo/utils/Global;->getTimeZone()V

    .line 237
    invoke-static {p1}, Lcom/fenghuo/utils/Global;->getMemInfoType(Landroid/content/Context;)V

    .line 238
    invoke-static {p1}, Lcom/fenghuo/basestation/BaseStation;->saveStation(Landroid/content/Context;)V

    .line 239
    invoke-static {p1}, Lcom/fenghuo/utils/Global;->getSimState(Landroid/content/Context;)V

    .line 240
    invoke-static {p1}, Lcom/fenghuo/utils/Util;->getIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fenghuo/utils/Global;->IP_DEVICE:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/fenghuo/utils/Global;->IP_DEVICE:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 242
    const-string v0, ""

    sput-object v0, Lcom/fenghuo/utils/Global;->IP_DEVICE:Ljava/lang/String;

    .line 244
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/utils/Global;->modelDevice:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public loadESN(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 574
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 577
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    return-object v0
.end method

.method public loadIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 600
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    return-object v0
.end method

.method public loadM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public loadManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public loadModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->isContainsInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    :cond_0
    return-object v0
.end method

.method public loadRealModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public loadSN(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 587
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SimSN:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->SimSN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->SimSN:Ljava/lang/String;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->SimSN:Ljava/lang/String;

    return-object v0
.end method

.method public loadVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public loadWifiMac(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 435
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 436
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 437
    :goto_0
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    :cond_1
    invoke-static {}, Lcom/fenghuo/utils/Global;->getLocalMacAddressFromIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    :cond_3
    invoke-static {}, Lcom/fenghuo/utils/Global;->getNewMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    :cond_5
    invoke-virtual {p0, p1}, Lcom/fenghuo/utils/Global;->getwifimac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 459
    :cond_7
    :goto_1
    return-void

    .line 436
    :cond_8
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 457
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hardware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/utils/Global;->macAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->appendAppListFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public loadWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 355
    const-string v0, ""

    .line 356
    const-string v0, ""

    .line 357
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/net/wlan0/address"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 361
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_1
    :goto_1
    return-object v0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 369
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/net/eth0/address"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 373
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 374
    goto :goto_2

    .line 376
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 377
    :catch_1
    move-exception v1

    .line 378
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAppIP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/fenghuo/utils/Global;->appIP_:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setAppPORT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/fenghuo/utils/Global;->appPORT_:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public setLocalIP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/fenghuo/utils/Global;->localIP_:Ljava/lang/String;

    .line 532
    return-void
.end method
