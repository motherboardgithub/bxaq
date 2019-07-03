.class public Lcom/fenghuo/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field static hexdigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fenghuo/utils/MD5Util;->hexdigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToHexString([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 92
    const/16 v1, 0x20

    new-array v2, v1, [C

    move v1, v0

    .line 96
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 98
    aget-byte v3, p0, v0

    .line 100
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/fenghuo/utils/MD5Util;->hexdigits:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v1

    .line 102
    add-int/lit8 v1, v4, 0x1

    sget-object v5, Lcom/fenghuo/utils/MD5Util;->hexdigits:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 110
    return-object v0
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 30
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/16 v3, 0x800

    :try_start_1
    new-array v3, v3, [B

    .line 38
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 40
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 50
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    :goto_2
    return-object v0

    .line 44
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/fenghuo/utils/MD5Util;->byteToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 58
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 60
    :catch_1
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 60
    :catch_2
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 58
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 64
    :goto_4
    throw v0

    .line 60
    :catch_3
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 56
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 48
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method
