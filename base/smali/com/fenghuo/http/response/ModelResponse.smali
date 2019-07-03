.class public Lcom/fenghuo/http/response/ModelResponse;
.super Lcom/fenghuo/http/response/RspEvent;
.source "ModelResponse.java"


# instance fields
.field public responseStatusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fenghuo/http/response/RspEvent;-><init>(I)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/fenghuo/http/response/ModelResponse;->responseStatusCode:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public parserResponse(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/http/response/ModelResponse;->responseStatusCode:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fenghuo/http/response/ModelResponse;->isValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return v2

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fenghuo/http/response/ModelResponse;->isValid:Z

    goto :goto_0
.end method
