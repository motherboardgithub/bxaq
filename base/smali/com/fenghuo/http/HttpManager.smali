.class public final Lcom/fenghuo/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x78

.field private static ggetMethod:Lorg/apache/http/client/methods/HttpGet;

.field private static gis:Ljava/io/InputStream;

.field private static gpostMethod:Lorg/apache/http/client/methods/HttpPost;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public static httpqueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fenghuo/http/HttpConnectionQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static params:Lorg/apache/http/params/HttpParams;

.field private static socketFactory:Lcom/fenghuo/http/TrustAllSSLSocketFactory;


# instance fields
.field private canceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v2, 0x1d4c0

    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 47
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    .line 53
    sput-object v1, Lcom/fenghuo/http/HttpManager;->socketFactory:Lcom/fenghuo/http/TrustAllSSLSocketFactory;

    .line 57
    sput-object v1, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    .line 59
    sput-object v1, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    .line 60
    sput-object v1, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 61
    sput-object v1, Lcom/fenghuo/http/HttpManager;->gis:Ljava/io/InputStream;

    .line 66
    sget-object v0, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    sget-object v0, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    sget-object v0, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 72
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v2, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 75
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v2, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fenghuo/http/HttpManager;->canceled:Z

    .line 85
    return-void
.end method

.method private static addHttpHeader()V
    .locals 3

    .prologue
    .line 216
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "esn"

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    iget-object v2, v2, Lcom/fenghuo/utils/Global;->imei_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "imsi"

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    iget-object v2, v2, Lcom/fenghuo/utils/Global;->imsi_:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "model"

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fenghuo/utils/Global;->loadModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=-----------------------7d91e4315304ba"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;
    .locals 1

    .prologue
    .line 201
    packed-switch p0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    new-instance v0, Lcom/fenghuo/http/response/RspZIPEvent;

    invoke-direct {v0}, Lcom/fenghuo/http/response/RspZIPEvent;-><init>()V

    goto :goto_0

    .line 206
    :pswitch_1
    new-instance v0, Lcom/fenghuo/http/response/ModelResponse;

    invoke-direct {v0}, Lcom/fenghuo/http/response/ModelResponse;-><init>()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static cancelConnection(J)V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpManager.cancelConnection====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->i(Ljava/lang/String;)V

    .line 277
    invoke-static {p0, p1}, Lcom/fenghuo/http/HttpManager;->cancelHttpQueueById(J)V

    .line 280
    :try_start_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gis:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gis:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    .line 291
    sget-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 293
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    .line 294
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public static cancelHttpQueueById(J)V
    .locals 4

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 336
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/http/HttpConnectionQueue;

    .line 337
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/fenghuo/http/HttpConnectionQueue;->id_:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_1

    .line 339
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fenghuo/http/HttpConnectionQueue;->canceled_:Z

    .line 344
    :cond_0
    return-void

    .line 334
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static doGetGcEvent(Lcom/fenghuo/http/request/ReqEvent;)Lcom/fenghuo/http/response/RspEvent;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 94
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v1, Lcom/fenghuo/http/HttpManager;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 97
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 99
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getReqUrl()Ljava/lang/String;

    move-result-object v0

    .line 103
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    .line 104
    invoke-static {}, Lcom/fenghuo/http/HttpManager;->addHttpHeader()V

    .line 105
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    const-string v0, ""

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->getHttpFileBody(Ljava/lang/String;)Lorg/apache/http/entity/FileEntity;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curTime.......................................="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/fenghuo/http/HttpManager;->gpostMethod:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 115
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time.......................................="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v0, v4, v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statuscode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 117
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_1

    .line 120
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 122
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 123
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 125
    invoke-virtual {v0, v2}, Lcom/fenghuo/http/response/RspEvent;->parserResponse(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 176
    :goto_1
    return-object v0

    .line 130
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 131
    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpManager.SocketTimeoutException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 139
    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 144
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpManager.UnknownHostException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 146
    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1

    .line 149
    :catch_2
    move-exception v0

    .line 151
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpManager.IOException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 153
    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    goto/16 :goto_1

    .line 156
    :catch_3
    move-exception v0

    .line 158
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpManager.Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/fenghuo/http/request/ReqEvent;->getCmdType()I

    move-result v0

    invoke-static {v0}, Lcom/fenghuo/http/HttpManager;->buildRspEvent(I)Lcom/fenghuo/http/response/RspEvent;

    move-result-object v0

    .line 161
    if-eqz v1, :cond_2

    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 163
    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V

    .line 169
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setisValid(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    goto/16 :goto_1

    .line 167
    :cond_2
    :try_start_6
    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\uff01"

    invoke-virtual {v0, v1}, Lcom/fenghuo/http/response/RspEvent;->setDetailMsg(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    sput-object v9, Lcom/fenghuo/http/HttpManager;->ggetMethod:Lorg/apache/http/client/methods/HttpGet;

    throw v0
.end method

.method public static getCancelHttpQueueById(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 354
    .line 355
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 357
    :goto_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 359
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/http/HttpConnectionQueue;

    .line 360
    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/fenghuo/http/HttpConnectionQueue;->id_:J

    cmp-long v3, v4, p0

    if-nez v3, :cond_1

    .line 362
    iget-boolean v2, v0, Lcom/fenghuo/http/HttpConnectionQueue;->canceled_:Z

    .line 367
    :cond_0
    return v2

    .line 357
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static getCmdType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, ""

    .line 191
    return-object v0
.end method

.method private static getHttpFileBody(Ljava/lang/String;)Lorg/apache/http/entity/FileEntity;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 376
    sget-object v1, Lcom/fenghuo/utils/Global;->uploadPath_:Ljava/lang/String;

    .line 379
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 390
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/fenghuo/utils/Util;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 395
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 402
    const-string v4, "UTF-8"

    .line 405
    :try_start_2
    const-string v1, "-------------------------7d91e4315304ba\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 406
    const-string v1, "Content-Disposition: form-data; name=\"WIFI_Req_Zip\"\r\n\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 408
    const-string v1, "\r\n\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 410
    new-instance v5, Ljava/io/File;

    sget-object v1, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->loadModel()Ljava/lang/String;

    move-result-object v6

    .line 412
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_1
    if-eqz v6, :cond_6

    .line 419
    const-string v7, " "

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 420
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 422
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 433
    invoke-static {v1}, Lcom/fenghuo/utils/Util;->isContainsInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".zip"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename.................="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    const-string v6, "-------------------------7d91e4315304ba\r\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\"\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 439
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fenghuo/utils/Util;->getContentTypeByFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\r\n\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 442
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 443
    const/16 v5, 0x1000

    new-array v5, v5, [B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :goto_2
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_3

    .line 450
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 454
    :catch_0
    move-exception v5

    .line 459
    :cond_3
    :try_start_4
    const-string v5, "\r\n"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 470
    :cond_4
    :goto_3
    :try_start_6
    const-string v1, "-------------------------7d91e4315304ba--\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 471
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 491
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 499
    :goto_4
    new-instance v0, Lorg/apache/http/entity/FileEntity;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 500
    :goto_5
    return-object v0

    .line 425
    :cond_5
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 429
    :cond_6
    const-string v1, ""
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 473
    :catch_1
    move-exception v1

    .line 475
    :try_start_9
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 491
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 493
    :catch_2
    move-exception v1

    goto :goto_5

    .line 478
    :catch_3
    move-exception v1

    .line 480
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 491
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 493
    :catch_4
    move-exception v1

    goto :goto_5

    .line 483
    :catch_5
    move-exception v1

    .line 491
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_5

    .line 493
    :catch_6
    move-exception v1

    goto :goto_5

    .line 489
    :catchall_0
    move-exception v0

    .line 491
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 496
    :goto_6
    throw v0

    .line 464
    :catch_7
    move-exception v1

    goto :goto_3

    .line 493
    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_6

    .line 397
    :catch_a
    move-exception v1

    goto :goto_5

    .line 385
    :catch_b
    move-exception v2

    goto/16 :goto_0
.end method

.method private static getHttpReponseHead(Lorg/apache/http/HttpResponse;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 244
    aget-object v3, v2, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method

.method public static removeHttpQueueById(J)V
    .locals 4

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 309
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fenghuo/http/HttpConnectionQueue;

    .line 310
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/fenghuo/http/HttpConnectionQueue;->id_:J

    cmp-long v0, v2, p0

    if-nez v0, :cond_1

    .line 313
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpqueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_1
    return-void

    .line 307
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpManager.removeHttpQueueById e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/fenghuo/http/HttpManager;->canceled:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/http/HttpManager;->canceled:Z

    .line 262
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 265
    sget-object v0, Lcom/fenghuo/http/HttpManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method
