.class public Lcom/fenghuo/utils/FromEndRF;
.super Ljava/lang/Object;
.source "FromEndRF.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 11
    .line 12
    const-string v1, ""

    .line 14
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 17
    add-long/2addr v4, v6

    const-wide/16 v8, 0x3

    sub-long/2addr v4, v8

    .line 18
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    :goto_0
    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 22
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 23
    const/16 v8, 0xa

    if-eq v0, v8, :cond_0

    const/16 v8, 0xd

    if-ne v0, v8, :cond_2

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 31
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    const/4 v1, 0x0

    .line 41
    if-eqz v3, :cond_1

    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 51
    :cond_1
    :goto_2
    return-object v0

    .line 28
    :cond_2
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 29
    :try_start_4
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 35
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 41
    if-eqz v2, :cond_1

    .line 44
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 45
    :catch_1
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 45
    :catch_2
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 36
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 38
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 41
    if-eqz v2, :cond_1

    .line 44
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 45
    :catch_4
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_3

    .line 44
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 48
    :cond_3
    :goto_6
    throw v0

    .line 45
    :catch_5
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 41
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 36
    :catch_6
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_4

    .line 33
    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
