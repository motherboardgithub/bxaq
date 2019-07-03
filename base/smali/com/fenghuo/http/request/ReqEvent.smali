.class public Lcom/fenghuo/http/request/ReqEvent;
.super Ljava/lang/Object;
.source "ReqEvent.java"


# static fields
.field protected static final XML_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>"

.field public static final ZIP_EVENT:I = 0x1


# instance fields
.field protected cmdType:I

.field protected paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reqIPPORT:Ljava/lang/String;

.field protected reqUrl:Ljava/lang/String;

.field protected xmlContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->reqUrl:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->reqIPPORT:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->paramsMap:Ljava/util/Map;

    .line 34
    iput p1, p0, Lcom/fenghuo/http/request/ReqEvent;->cmdType:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->xmlContent:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fenghuo/utils/Global;->getAppIPPORT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->reqIPPORT:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public addParamMapItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->paramsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public getCmdType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fenghuo/http/request/ReqEvent;->cmdType:I

    return v0
.end method

.method public getEventXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->xmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFileEntity()Lorg/apache/http/entity/FileEntity;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsMap()Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    iget-object v1, p0, Lcom/fenghuo/http/request/ReqEvent;->paramsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 83
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, "&"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "@"

    const-string v2, "%40"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fenghuo/http/request/ReqEvent;->reqUrl:Ljava/lang/String;

    return-object v0
.end method
