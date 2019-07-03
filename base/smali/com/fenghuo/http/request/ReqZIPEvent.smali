.class public Lcom/fenghuo/http/request/ReqZIPEvent;
.super Lcom/fenghuo/http/request/ReqEvent;
.source "ReqZIPEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v1}, Lcom/fenghuo/http/request/ReqEvent;-><init>(I)V

    .line 15
    const-string v0, "http://%s/"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fenghuo/http/request/ReqZIPEvent;->reqIPPORT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqZIPEvent;->reqUrl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getFileEntity()Lorg/apache/http/entity/FileEntity;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fenghuo/utils/Global;->zipEsnPath_:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v1, Lorg/apache/http/entity/FileEntity;

    const-string v2, "multipart/form-data"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    return-object v1
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fenghuo/http/request/ReqZIPEvent;->reqUrl:Ljava/lang/String;

    return-object v0
.end method
