.class public Lcom/fenghuo/http/response/RspZIPEvent;
.super Lcom/fenghuo/http/response/RspEvent;
.source "RspZIPEvent.java"


# instance fields
.field public responseStatusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/fenghuo/http/response/RspEvent;-><init>(I)V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/http/response/RspZIPEvent;->responseStatusCode:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public parserResponse(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/response/RspZIPEvent;->responseStatusCode:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/http/response/RspZIPEvent;->isValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return v2

    .line 28
    :catch_0
    move-exception v0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fenghuo/http/response/RspZIPEvent;->isValid:Z

    goto :goto_0
.end method
